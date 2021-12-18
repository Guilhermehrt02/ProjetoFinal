#include "config.h"
#include "delay.h"
#include "proc/pic18f4520.h"
void tempo(unsigned char x) {
    volatile unsigned char j, k, i;
    for(i=0; i<x; i++){
        for(j = 0; j < 41; j++){
            for(k = 0; k < 3; k++); 
        }
    }
}