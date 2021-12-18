# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2
# 1 "./config.h" 1
# 26 "./config.h"
#pragma config OSC=HS
#pragma config FCMEN = OFF
#pragma config IESO = OFF
#pragma config PWRT = OFF
#pragma config BOREN = OFF
#pragma config BORV = 46
#pragma config WDT=OFF
#pragma config WDTPS = 1
#pragma config MCLRE=ON
#pragma config LPT1OSC = OFF
#pragma config PBADEN = ON
#pragma config CCP2MX = PORTC
#pragma config STVREN = OFF
#pragma config LVP=OFF
#pragma config XINST = OFF
#pragma config DEBUG = OFF

#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF
#pragma config CPB = OFF
#pragma config CPD = OFF

#pragma config WRT0 = OFF
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF
#pragma config WRTB = OFF
#pragma config WRTC = OFF
#pragma config WRTD = OFF

#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF
#pragma config EBTRB = OFF
# 1 "main.c" 2

# 1 "./bits.h" 1
# 2 "main.c" 2

# 1 "./lcd.h" 1


  void lcdCommand(char value);
  void lcdChar(char value);
  void lcdString(char msg[]);
  void lcdNumber(int value);
  void lcdPosition(int line, int col);
  void lcdInit(void);
# 3 "main.c" 2

# 1 "./keypad.h" 1


 unsigned int kpRead(void);
    char kpReadKey(void);
 void kpDebounce(void);
 void kpInit(void);
# 4 "main.c" 2

# 1 "./pic18f4520.h" 1
# 5 "main.c" 2

# 1 "./timer.h" 1
# 23 "./timer.h"
 char timerEnded(void);
 void timerWait(void);

 void timerReset(unsigned int tempo);
 void timerInit(void);
# 6 "main.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\string.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\string.h" 2 3






# 1 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\features.h" 1 3
# 10 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\string.h" 2 3
# 25 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\string.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 122 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 168 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 411 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 25 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\string.h" 2 3


void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);
# 65 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c99\\string.h" 3
char *strtok_r (char *restrict, const char *restrict, char **restrict);
int strerror_r (int, char *, size_t);
char *stpcpy(char *restrict, const char *restrict);
char *stpncpy(char *restrict, const char *restrict, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);




void *memccpy (void *restrict, const void *restrict, int, size_t);
# 7 "main.c" 2

# 1 "./delay.h" 1



void tempo(unsigned char x);
# 8 "main.c" 2

# 1 "./ssd.h" 1
# 22 "./ssd.h"
 void ssdDigit(char val, char pos);
 void ssdUpdate(void);
 void ssdInit(void);
# 9 "main.c" 2

# 1 "./io.h" 1
# 12 "./io.h"
enum pin_label{
    PIN_A0,PIN_A1,PIN_A2,PIN_A3,PIN_A4,PIN_A5,PIN_A6,PIN_A7,
    PIN_B0,PIN_B1,PIN_B2,PIN_B3,PIN_B4,PIN_B5,PIN_B6,PIN_B7,
    PIN_C0,PIN_C1,PIN_C2,PIN_C3,PIN_C4,PIN_C5,PIN_C6,PIN_C7,
    PIN_D0,PIN_D1,PIN_D2,PIN_D3,PIN_D4,PIN_D5,PIN_D6,PIN_D7,
    PIN_E0,PIN_E1,PIN_E2,PIN_E3,PIN_E4,PIN_E5,PIN_E6,PIN_E7
};
# 43 "./io.h"
void digitalWrite(int pin, int value);
int digitalRead(int pin);
void pinMode(int pin, int type);
# 10 "main.c" 2

# 1 "./so.h" 1



 void soInit (void);
 void soWrite(int value);
# 11 "main.c" 2

# 1 "./pwm.h" 1
# 23 "./pwm.h"
 void pwmSet(unsigned char porcento);
 void pwmFrequency(unsigned int freq);
 void pwmInit(void);
# 12 "main.c" 2


unsigned long int timer=0;
char lembrete[16];

void tarefas() {

    unsigned int tecla = 16, i;
    char msg1[16] = "(U)Estudar";
    char msg2[16] = "(L)Limpar casa";
    char msg3[16] = "(D)Mercado";
    char msg4[16] = "(R)Caminhar";

    lcdCommand(0x80);
    lcdString("Opcao lembrete:");
    tempo(500);
    lcdCommand(0x01);
    lcdString(msg1);
    lcdCommand(0xC0);
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
            if (((tecla) & (1<<(0)))) {
                strcpy(lembrete, msg1);
            }
            if (((tecla) & (1<<(2)))) {
                strcpy(lembrete, msg3);
            }
            if (((tecla) & (1<<(3)))) {
                strcpy(lembrete, msg4);
            }
            if (((tecla) & (1<<(1)))) {
                strcpy(lembrete, msg2);
            }
        }
    }
}

void Time() {

    int i;
    unsigned int tecla = 16;
    unsigned long int cont=0;

    lcdCommand(0x80);
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
            if (((tecla) & (1<<(4))))
            {
                cont -= 6000;
                timer -= 60;
            }
            if (((tecla) & (1<<(9))))
            {
                cont += 6000;
                timer+=60;
            }
            if (((tecla) & (1<<(8))))
            {
                cont -= 100;
                timer-=1;
            }
            if (((tecla) & (1<<(6))))
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

        for (tempo = 0; tempo < 5; tempo++);

        outrotempo++;
        if (outrotempo >= 45) {

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

            ssdDigit(((conts / 1) % 10), 3);
            ssdDigit(((conts / 10) % 10), 2);
            ssdDigit(((contm / 1) % 10), 1);
            ssdDigit(((contm / 10) % 10), 0);
            i++;
        }
        ssdUpdate();
    }
}

void sinalizar(){

    int i;

    (*(volatile __near unsigned char*)0xF95) = 0x00;

    for(i=0; i<15; i++){

        lcdCommand(0x80);
        lcdString("Lembrete!!");

        if((i%2)==1){

            lcdCommand(0xC0);
            lcdString(lembrete);
            lcdCommand(0x80);
        }

        if((i%7)==1) lcdCommand(0x01);
        if((i%2)==1) (*(volatile __near unsigned char*)0xF83) = 0XFF;
        if((i%2)==0) (*(volatile __near unsigned char*)0xF83) = 0X00;
        pwmSet(100);
        if((i%2)==0) pwmSet(0);
    }
    lcdCommand(0x01);
    pwmSet(0);
    digitalWrite(PIN_D0,0);
    digitalWrite(PIN_D1,0);
    digitalWrite(PIN_D2,0);
    digitalWrite(PIN_D3,0);

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
