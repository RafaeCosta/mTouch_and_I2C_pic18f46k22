#include <xc.h>
#include "pin_manager.h"
#include "stdbool.h"
void PIN_MANAGER_Initialize(void){
    /**
    LATx registers
    */
    LATA = 0b00000001;
    LATB = 0b00111111;
    LATC = 0b00000000;
    LATD = 0b00000000;
    LATE = 0b00000000;

    /**
    TRISx registers
    */
    TRISA = 0b00000001;
    TRISB = 0b00111111;
    TRISC = 0b00000000;
    TRISD = 0b00000000;
    TRISE = 0b00000000;

    /**
    ANSELx registers
    */
    ANSELA = 0b00000001;
    ANSELB = 0b00111111;
    ANSELC = 0b00000000;
    ANSELD = 0b00000000;
    ANSELE = 0b00000000;
    

    /**
     * interruptions enables
     */
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;   
    INTCONbits.RBIF = 0;
  
    // SCS FOSC; IRCF 1MHz_HFINTOSC/16; IDLEN enabled; 
    OSCCON = 0xB0;
    // PRISD enabled; SOSCGO disabled; MFIOSEL disabled; 
    OSCCON2 = 0x04;
    // INTSRC disabled; PLLEN disabled; TUN 0; 
    OSCTUNE = 0x00;
    // Wait for PLL to stabilize
   // while(PLLRDY == 0)
    //{
    //}
}