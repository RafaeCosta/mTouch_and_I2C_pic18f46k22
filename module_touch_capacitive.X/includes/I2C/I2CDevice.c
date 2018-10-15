#include <p18f46k22.h>
#include <xc.h>
#include <htc.h>
#include <stdio.h>
#include <string.h>
#include "I2CDevice.h"

/******************************************************************************************************************************************************
 * 
 *  i2c is enabled in the Master Serial Synchronous Port
 *  Registers associated with i2c operation (p. 259)
 * 
 *  REGISTERS:    Bits:                   Datasheet: Purpose: 
 *  ANSELB        ANSB1, ANSB0            155        Configuration of SDA and SCL pins
 *  INTCON        GIE/GIEH, PEIE/GIEL     120        Global interrupt, Peripheral interrupt enable
 *  IPR1          SSPIP                   129        MSSP Interrupt priority: 1 = High, 0 = Low
 *  IPR2          BCLIP                   130        MSSP Bus collision interrupt priority: 1 = High, 0 = Low
 *  PIE1          SSPIE                   126        MSSP interrupt enable: 1 = enabled, 0 = disabled
 *  PIE2          BCLIE                   127        MSSP collision interrupt enable: 1 = enabled, 0 = disabled
 *  PIR1          SSPIF                   123        MSSP interrupt flag: 1 = transmission/reception complete, 0 = waiting
 *  PIR2          BCLIF                   124        MSSP bus collision interrupt flag: 1 = bus collision, 0 = no collision
 *  PMD1          MSSPMD                  65         MSSP Peripheral module disable control, 1 = disabled, 0 = enabled
 *  SSP1ADD       -                       267        SSP1 Address in slave mode, Baud rate in master mode. SCL pin clock period = ((ADD<7:0> + 1) * 4) / Fosc
 *  SSP1BUF       -                       -          SSP1 Receive/Transmit buffer. Write/Read data to/from this register
 *  SSP1CON1      ALL                     262        i2c modes, check datasheet for specific functions
 *  SSP1CON2      ALL                     264        i2c modes, check datasheet for specific functions, check for ACKSTAT bit for ACK result
 *  SSP1CON3      ALL                     265        i2c modes, check datasheet for specific functions, includes hold time for SDA at SDAHT pin
 *  SSP1MSK       -                       266        -
 *  SSP1STAT      ALL                     261        i2c modes, check datasheet for specific functions
 *  TRISB         TRISB1, TRISB0          156        Configuration of SDA and SCL pins
 * 
 *  For i2c master mode transmission steps, check page 248 of datasheet
 * 
 ***************************************************************************************************************************************************/

void I2C_Master_Init()
{
    SSP1CON1 = I2C_ENABLE_SERIAL_PORT | I2C_MASTER_MODE;
    SSP1CON2 = OFF;                                                                               // 
    SSP1CON3 |= I2C_SDA_HOLD_TIME_300ns;
    SSP1ADD = I2C_CLOCK_100KHZ;                                                           // 100 Khz, check p. 260 for examples
    SSP1STAT = I2C_STANDARD_SPEED;                                                        // SSP1STAT1 register
    ANSELCbits.ANSC3 = 0;                                                                 // Set as digital pin
    ANSELCbits.ANSC4 = 0;                                                                 // Set as digital pin
    
    TRISCbits.TRISC3 = 1;                                                                 // Set as input
    TRISCbits.TRISC4 = 1;                                                                 // Set as input
}

unsigned char I2C_Master_Start()
{
    SSP1CON2 |= I2C_START_IN_PROGRESS;              //Initiate start condition SSP1CON2bits.SEN = 1;
    while(!(PIR1 & I2C_WAITING_TO_TRANSMIT));       // Waiting to transmit/receive
    
    while(SSP1CON2 & I2C_START_IN_PROGRESS);
    
    return 1;
}

unsigned char I2C_Master_Write(unsigned char data)
{
    
    unsigned char temp;
    temp = (unsigned char)SWAP(data);
    //SSP1BUF = temp;                   // Change data nibbles, not fixing the problem so it´s commented out
    SSP1BUF = data; 
    
    while(SSP1STAT & I2C_RW_IN_PROGRESS); 
    return 1;
}

void I2C_Master_Stop()
{
    SSP1CON2 |= I2C_STOP_IN_PROGRESS;
    while(SSP1CON2 & I2C_STOP_IN_PROGRESS);
}
