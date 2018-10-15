/*
 * File:   myConfigTouch.c
 * Author: Guilherme Diniz
 *
 * Created on 9 de Outubro de 2018, 10:07
 */
#include "myConfigTouch.h" 

void touch_step_1(){
    // STEP 1
    // mTouch library initialization.
    MTouchInit();   
}
void touch_step_2(){
    // STEP 2
    // Sensors initialization. All sensors must be initialized (see MTOUCH_SENSORS_NUMBER in mTouchConfig.h).
    // PLEASE READ "SENSOR OPTIMIZATION (DEBUG MODULE)" CHAPTER IN THE HELP FILE TO SELECT OPTIMAL PARAMETERS.
    // For example if sensor is connected to RB1/AN2 pin
    // MTouchSetSensor(0,      // sensor number
    //                 &TRISB, // port B
    //                 &LATB,
    //                 1,      // IO bit number
    //                 2,      // analog channel number
    //                 -1,     // press detection threshold by default (see MTOUCH_DEFAULT_THRESHOLD in mTouchConfig.h)
    //                 -1,     // oversampling by default (see MTOUCH_DEFAULT_OVERSAMPLING in mTouchConfig.h)
    //                 -1 );   // CTMU charge delay by default (see MTOUCH_DEFAULT_CHARGE_DELAY in mTouchConfig.h, not used for CVD acquisition)
    // sensor #0
    MTouchSetSensor(BUTTON_MENU, CH0_TRIS, CH0_LAT, CH0_IO_BIT, CH0_AN_NUM, -1, -1, -1);
    // sensor #1
    MTouchSetSensor(BUTTON_ENTER, CH1_TRIS, CH1_LAT, CH1_IO_BIT, CH1_AN_NUM, -1, -1, -1);  
    // sensor #2
    MTouchSetSensor(BUTTON_RIGHT, CH2_TRIS, CH2_LAT, CH2_IO_BIT, CH2_AN_NUM, -1, -1, -1);  
    // sensor #3
    MTouchSetSensor(BUTTON_UP, CH3_TRIS, CH3_LAT, CH3_IO_BIT, CH3_AN_NUM, -1, -1, -1);  
    // sensor #4
    MTouchSetSensor(BUTTON_LEFT, CH4_TRIS, CH4_LAT, CH4_IO_BIT, CH4_AN_NUM, -1, -1, -1);  
    // sensor #5
    MTouchSetSensor(BUTTON_DOWN, CH5_TRIS, CH5_LAT, CH5_IO_BIT, CH5_AN_NUM, -1, -1, -1);  
    // sensor #6
    MTouchSetSensor(BUTTON_POWER, CH6_TRIS, CH6_LAT, CH6_IO_BIT, CH6_AN_NUM, -1, -1, -1);      
}

void touch_step_3(){
    // STEP 3
    // Buttons initialization. All buttons must be initialized (see MTOUCH_BUTTONS_NUMBER in mTouchConfig.h).
    // For example if button 0 is connected to sensor 5
    // MTouchSetButton(0,              // button number
    //                 5,              // sensor number
    //                 DECODE_TOGGLE); // decode method (see MTOUCHCONTROLDECODE enumeration in mTouchControl.h)
    // Button #0 and #1. Only button with a bigger signal is indicated as pressed.
    MTouchSetButton(BUTTON_MENU, BUTTON_MENU, DECODE_PRESS_REPEAT);
    MTouchSetButton(BUTTON_ENTER, BUTTON_ENTER, DECODE_PRESS_REPEAT);
    MTouchSetButton(BUTTON_RIGHT, BUTTON_RIGHT, DECODE_PRESS_REPEAT);
    MTouchSetButton(BUTTON_UP, BUTTON_UP, DECODE_PRESS_REPEAT);
    MTouchSetButton(BUTTON_LEFT, BUTTON_LEFT, DECODE_PRESS_REPEAT);
    MTouchSetButton(BUTTON_DOWN, BUTTON_DOWN, DECODE_PRESS_REPEAT);
    MTouchSetButton(BUTTON_POWER, BUTTON_POWER, DECODE_PRESS_REPEAT);
}

void touch_step_4(){
    // STEP 4
    // Timer interrupt initialization to call mTouch acquisition pereodically.
    TMR2_StartTimer();  
}

void touch_step_5(){
    // STEP 5
    // Decode all controls.
    MTouchDecode();    
}

void configuration_mTouch(void) {
    touch_step_1();
    touch_step_2();
    touch_step_3();
    touch_step_4();   
}