/*
 * File:   main.h
 * Author: Guilherme Diniz
 *
 * Created on 9 de Outubro de 2018, 11:31
 */

#ifndef MAIN_H
#define	MAIN_H

#include <xc.h>
#include <p18f46k22.h>
#include <stdint.h>
#include <stdbool.h>
#include "includes/deviceconfig/device_config.h"
#include "includes/pinconfig/pin_manager.h"
#include "includes/configtouch/myConfigTouch.h"
#include "includes/I2C/I2CDevice.h"

// LEDS CONTROL
#define LedPowerOn()     {LATAbits.LATA4 = 1;}
#define LedPowerOff()    {LATAbits.LATA4 = 0;}
#define LedPowerStatus() LATAbits.LATA4 == 1? 1:0

#define LedLeftOn()     {LATEbits.LATE0 = 1;}
#define LedLeftOff()    {LATEbits.LATE0 = 0;}
#define LedLeftStatus() LATEbits.LATE0 == 1? 1:0

#define LedUpOn()     {LATEbits.LATE1 = 1;}
#define LedUpOff()    {LATEbits.LATE1 = 0;}
#define LedUpStatus() LATEbits.LATE1 == 1? 1:0


#define LedDownOn()     {LATEbits.LATE2 = 1;}
#define LedDownOff()    {LATEbits.LATE2 = 0;}
#define LedDownStatus() LATEbits.LATE2 == 1? 1:0

#define LedRightOn()     {LATCbits.LATC0 = 1;}
#define LedRightOff()    {LATCbits.LATC0 = 0;}
#define LedRightStatus() LATCbits.LATC0 == 1? 1:0

#define LedMenuOn()     {LATCbits.LATC1 = 1;}
#define LedMenuOff()    {LATCbits.LATC1 = 0;}
#define LedMenuStatus() LATCbits.LATC1 == 1? 1:0

#define LedEnterOn()     {LATCbits.LATC2 = 1;}
#define LedEnterOff()    {LATCbits.LATC2 = 0;}
#define LedEnterStatus() LATCbits.LATC2 == 1? 1:0


#endif	/* MAIN_H */
