
#include <xc.h>
#include "tmr2.h"

void TMR2_Initialize(void){
    // Set TMR2 to the options selected in the User Interface
    // PR2 249; 
    PR2 = 0xF9;
    // TMR2 0; 
    TMR2 = 0x00;
    // Clearing IF flag before enabling the interrupt.
    PIR1bits.TMR2IF = 0;
    // Enabling TMR2 interrupt.
    PIE1bits.TMR2IE = 1;
    // T2CKPS 1:16; T2OUTPS 1:4; TMR2ON on; 
    T2CON = 0x1E;
}

void TMR2_StartTimer(void){
    // Start the Timer by writing to TMRxON bit
    T2CONbits.TMR2ON = 1;
}

void TMR2_StopTimer(void){
    // Stop the Timer by writing to TMRxON bit
    T2CONbits.TMR2ON = 0;
}

/**
  End of File
*/