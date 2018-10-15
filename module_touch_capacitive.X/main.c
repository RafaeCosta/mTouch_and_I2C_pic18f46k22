/*
 * File:   main.c
 * Author: Guilherme Diniz
 *
 * Created on 9 de Outubro de 2018, 11:31
 */
#include "main.h"


void interrupt interrupcoes(){    // interrupt handler
    if(PIR1bits.TMR2IF == 1){
        PIR1bits.TMR2IF = 0;
        MTouchAcquisition(); //Adquire amostras dos Touchs 
    }      
}

void my_delay_ms(int tempo) {
    for (int x = 1; x <= tempo; x++) {
        __delay_ms(1);
    }
}

void main(void) {
    PIN_MANAGER_Initialize();
    TMR2_Initialize();
    configuration_mTouch();
    I2C_Master_Init(100000);
    
    while (1) {
        touch_step_5();
        // STEP 6
        if(MTouchGetButtonState(BUTTON_MENU) == CONTROL_PRESSED) {
            if(!LedMenuStatus()){
                LedMenuOn();
                I2C_Master_Init();                                                           //Initialize I2C Master with 100KHz clock
                (void)I2C_Master_Start();                                                    //Start condition
                (void)I2C_Master_Write((I2C_LCD_SLAVE_ADDRESS << 1) | I2C_WRITE_TO_BUS);     //7 bit address + Write
                (void)I2C_Master_Write(BUTTON_MENU);  
                I2C_Master_Stop(); 
            }
        }
        else{
            LedMenuOff();
        }
        if(MTouchGetButtonState(BUTTON_ENTER) == CONTROL_PRESSED) {
            if(!LedEnterStatus()){
                LedEnterOn();
                I2C_Master_Init();                                                           //Initialize I2C Master with 100KHz clock
                (void)I2C_Master_Start();                                                    //Start condition
                (void)I2C_Master_Write((I2C_LCD_SLAVE_ADDRESS << 1) | I2C_WRITE_TO_BUS);     //7 bit address + Write
                (void)I2C_Master_Write(BUTTON_ENTER);  
                I2C_Master_Stop(); 
            }
        }
        else{
            LedEnterOff();
        }
        if(MTouchGetButtonState(BUTTON_RIGHT) == CONTROL_PRESSED) { 
            if(!LedRightStatus()){                            
                LedRightOn();
                I2C_Master_Init();                                                           //Initialize I2C Master with 100KHz clock
                (void)I2C_Master_Start();                                                    //Start condition
                (void)I2C_Master_Write((I2C_LCD_SLAVE_ADDRESS << 1) | I2C_WRITE_TO_BUS);     //7 bit address + Write
                (void)I2C_Master_Write(BUTTON_RIGHT);  
                I2C_Master_Stop(); 
            }
        }
        else{
            LedRightOff();
        }
        if(MTouchGetButtonState(BUTTON_UP) == CONTROL_PRESSED) { 
            if(!LedUpStatus()){            
                LedUpOn();
                I2C_Master_Init();                                                           //Initialize I2C Master with 100KHz clock
                (void)I2C_Master_Start();                                                    //Start condition
                (void)I2C_Master_Write((I2C_LCD_SLAVE_ADDRESS << 1) | I2C_WRITE_TO_BUS);     //7 bit address + Write
                (void)I2C_Master_Write(BUTTON_UP);  
                I2C_Master_Stop(); 
            }
        }
        else{
            LedUpOff();
        }
        if(MTouchGetButtonState(BUTTON_LEFT) == CONTROL_PRESSED) {
            if(!LedLeftStatus()){      
                LedLeftOn();
                I2C_Master_Init();                                                           //Initialize I2C Master with 100KHz clock
                (void)I2C_Master_Start();                                                    //Start condition
                (void)I2C_Master_Write((I2C_LCD_SLAVE_ADDRESS << 1) | I2C_WRITE_TO_BUS);     //7 bit address + Write
                (void)I2C_Master_Write(BUTTON_LEFT);  
                I2C_Master_Stop(); 
            }
        }
        else{
            LedLeftOff();
        }
        if(MTouchGetButtonState(BUTTON_DOWN) == CONTROL_PRESSED) {
            if(!LedDownStatus()){
                LedDownOn();
                I2C_Master_Init();                                                           //Initialize I2C Master with 100KHz clock
                (void)I2C_Master_Start();                                                    //Start condition
                (void)I2C_Master_Write((I2C_LCD_SLAVE_ADDRESS << 1) | I2C_WRITE_TO_BUS);     //7 bit address + Write
                (void)I2C_Master_Write(BUTTON_DOWN);  
                I2C_Master_Stop(); 
            }
        }
        else{
            LedDownOff();
        }
        if(MTouchGetButtonState(BUTTON_POWER) == CONTROL_PRESSED) {
            if(!LedPowerStatus()){
                LedPowerOn();
                I2C_Master_Init();                                                           //Initialize I2C Master with 100KHz clock
                (void)I2C_Master_Start();                                                    //Start condition
                (void)I2C_Master_Write((I2C_LCD_SLAVE_ADDRESS << 1) | I2C_WRITE_TO_BUS);     //7 bit address + Write
                (void)I2C_Master_Write(BUTTON_POWER);  
                I2C_Master_Stop(); 
            }
        }
        else{
            LedPowerOff();
        }
    }
}