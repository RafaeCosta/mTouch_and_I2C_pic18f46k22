/* 
 * File:   myConfigTouch.h
 * Author: Guilherme Diniz
 *
 * Created on 9 de Outubro de 2018, 10:11
 */

#ifndef MYCONFIGTOUCH_H
#define	MYCONFIGTOUCH_H

#include "../mtouch/mTouchConfig.h"
#include "../mtouch/mTouch.h"
#include "../timer/tmr2.h"

// SENSORS CONNECTIONS 
#define CH0_TRIS    &TRISB
#define CH0_LAT     &LATB
#define CH0_IO_BIT  0
#define CH0_AN_NUM  12
#define BUTTON_MENU 0

#define CH1_TRIS    &TRISB
#define CH1_LAT     &LATB
#define CH1_IO_BIT  1
#define CH1_AN_NUM  10
#define BUTTON_ENTER 1

#define CH2_TRIS    &TRISB
#define CH2_LAT     &LATB
#define CH2_IO_BIT  2
#define CH2_AN_NUM  8
#define BUTTON_RIGHT 2

#define CH3_TRIS    &TRISB
#define CH3_LAT     &LATB
#define CH3_IO_BIT  3
#define CH3_AN_NUM  9
#define BUTTON_UP   3

#define CH4_TRIS    &TRISB
#define CH4_LAT     &LATB
#define CH4_IO_BIT  4
#define CH4_AN_NUM  11
#define BUTTON_LEFT 4

#define CH5_TRIS    &TRISB
#define CH5_LAT     &LATB
#define CH5_IO_BIT  5
#define CH5_AN_NUM  13
#define BUTTON_DOWN 5

#define CH6_TRIS    &TRISA
#define CH6_LAT     &LATA
#define CH6_IO_BIT  0
#define CH6_AN_NUM  0
#define BUTTON_POWER 6

void configuration_mTouch(void);
void touch_step_1();
void touch_step_2();
void touch_step_3();
void touch_step_4();
void touch_step_5();
#endif	/* MYCONFIGTOUCH_H */

