/*
 * serlcd_utils.c
 *
 * Created: 4/1/2025 4:53:32 PM
 * Authors : Katherine Trusinski and Stanley Cokro
 * Description: This program file contains the implementation of the function that clears the display buffers for the SerLCD. It contains functionality that may also be used with other Serial Protocols such as USART and SPI.
 *
 */

#include "serlcd_i2c.h"
#include <stdio.h>

// required for a delay every time you call the update_twi0_SerLCD
#define F_CPU 4000000UL
#include <util/delay.h>

// this clears the display buffers
void clear_display_buffs(void){	// Function definition
    sprintf(dsp_buff1, "                    ");
    sprintf(dsp_buff2, "                    ");
    sprintf(dsp_buff3, "                    ");
    sprintf(dsp_buff4, "                    ");
}


