#include "config.h"
#include "bits.h"
#include "lcd.h"
#include "keypad.h"
#include "pic18f4520.h"
#include "timer.h"
#include<string.h>
#include "delay.h"
#include "ssd.h"
#include "io.h"
#include "so.h"
#include "pwm.h"

unsigned long int timer=0;
char lembrete[16];

void tarefas() {

    unsigned int tecla = 16, i;
    char msg1[16] = "(U)Estudar";
    char msg2[16] = "(L)Limpar casa";
    char msg3[16] = "(D)Mercado";
    char msg4[16] = "(R)Caminhar";
    
    lcdCommand(0x80); //primeira linha(0), coluna 0
    lcdString("Opcao lembrete:");
    tempo(500);
    lcdCommand(0x01);
    lcdString(msg1);
    lcdCommand(0xC0); //segunda Linha(1), coluna 0
    lcdString(msg2);
    tempo(1500);
    lcdCommand(0x01);
    lcdCommand(0x80);
    lcdString(msg3);
    lcdCommand(0xC0);
    lcdString(msg4);
    tempo(1500);
    lcdCommand(0x01);

    for(i=0;i<30;i++){    
        
        kpDebounce();
        
        if (kpRead() != tecla) {

            tecla = kpRead();
            if (bitTst(tecla, 0)) {
                strcpy(lembrete, msg1);
            }
            if (bitTst(tecla, 2)) {
                strcpy(lembrete, msg3);
            }
            if (bitTst(tecla, 3)) {
                strcpy(lembrete, msg4);
            }
            if (bitTst(tecla, 1)) {
                strcpy(lembrete, msg2);
            }
        }
    }
}

void Time() {

    int i;
    unsigned int tecla = 16;
    unsigned long int cont=0;
    
    lcdCommand(0x80); //primeira linha(0), coluna 0
    lcdString("Ajuste tempo:");
    tempo(500);
    lcdCommand(0x01);
    lcdString("(S)m-(s)m+");
    lcdCommand(0xC0);
    lcdString("(A)s-(Y)s+");
    tempo(1000);
    lcdCommand(0x01);

    for (i = 0; i < 50; i++)
    {
        lcdPosition(1, 0);
        lcdChar((cont / 60000) % 6 + 48);
        lcdChar((cont / 6000) % 10 + 48);
        lcdChar(':');
        lcdChar((cont / 1000) % 6 + 48);
        lcdChar((cont / 100) % 10 + 48);

        kpDebounce();
        
        if (kpRead() != tecla) {
            
            tecla = kpRead();
            if (bitTst(tecla, 4))//'S' decrementa minuto 
            {
                cont -= 6000;
                timer -= 60;
            }
            if (bitTst(tecla, 9))//'s' incrementa minuto
            {
                cont += 6000;
                timer+=60;
            }
            if (bitTst(tecla, 8))//'A' decrementa segundo 
            {
                cont -= 100;
                timer-=1;
            }
            if (bitTst(tecla, 6))//'Y' incrementa segundo
            {
                cont += 100;
                timer+=1;
            }
        }
    }   
    lcdCommand(0x01);
}

void SSD() {
    
    int i = 0;
    float tempo;
   	int conts = 0, contm = 0, conth=0,outrotempo;

    while (i<timer) {       
        
        for (tempo = 0; tempo < 5; tempo++); //suprimir o flicker

        outrotempo++;
        if (outrotempo >= 45) {//delay para reproduzir um segundo

            outrotempo = 0;
            conts++;

            if (conts == 60) {
                contm++;
                conts = 0;
            }
            if (contm == 60) {
                contm = 0;
                conth++;
            }

            ssdDigit(((conts / 1) % 10), 3); //0.1s
            ssdDigit(((conts / 10) % 10), 2); //1s
            ssdDigit(((contm / 1) % 10), 1); //10s
            ssdDigit(((contm / 10) % 10), 0); //100s           
            i++;
        }
        ssdUpdate();
    }
}

void sinalizar(){
    
    int i;
    
    TRISD = 0x00;
     
    for(i=0; i<15; i++){
        
        lcdCommand(0x80);
        lcdString("Lembrete!!");
        
        if((i%2)==1){
            
            lcdCommand(0xC0);
            lcdString(lembrete);
            lcdCommand(0x80);
        }
        
        if((i%7)==1) lcdCommand(0x01);       
        if((i%2)==1) PORTD = 0XFF;
        if((i%2)==0) PORTD = 0X00;
        pwmSet(100);
        if((i%2)==0) pwmSet(0);
    }
    lcdCommand(0x01);
    pwmSet(0);
    digitalWrite(DISP_1_PIN,LOW);
    digitalWrite(DISP_2_PIN,LOW);
    digitalWrite(DISP_3_PIN,LOW);
    digitalWrite(DISP_4_PIN,LOW);
    
}

void main(void) {

    int show = 0;
    lcdInit();
    kpInit();
    pwmInit();
    ssdInit();

    for (;;) {

        switch (show) {

            case 0:

                tarefas();
                show = 1;
                break;

            case 1:

                Time();
                show = 2;
                break;

            case 2:

                SSD();
                show = 3;
                break;
                
            case 3:
                
                sinalizar();
                show = 0;
                break;
        }

    }
}


