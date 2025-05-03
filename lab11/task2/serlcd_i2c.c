/*
 * serlcd_i2c.c
 *
 * Created: 4/1/2025 4:53:32 PM
 * Authors : Katherine Trusinski and Stanley Cokro
 * Description: This program file contains implementations of functions to interface with the serlcd display module over the I2C protocol. 
 * It includes initialization of the TWI (I2C) interface and functions for updating the LCD display with formatted data from buffers. 
 *
 */

#include "serlcd_i2c.h"
#include "serlcd_utils.h"

// required for a delay every time you call the update_twi0_serlcd
#define F_CPU 4000000UL
#include <util/delay.h>

#include <string.h>
void init_twi0_serlcd (void)
{
    sei();
    TWI0.CTRLA = TWI_INPUTLVL_I2C_gc | TWI_SDASETUP_8CYC_gc | TWI_SDAHOLD_50NS_gc;
    TWI0.MBAUD = 1;
    TWI0.MCTRLA = TWI_ENABLE_bm;
    TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc;
	return;
}

void write_twi0_serlcd(uint8_t saddr, uint8_t data)
{
    uint8_t one_byte[1] = {data};
    i2c_write(saddr, one_byte, 1);
}


void update_twi0_serlcd(uint8_t addr){

    // variable to hold the length of a display buffer before sending cursor shift command
    uint8_t aux;

	// clear
    write_twi0_serlcd(addr, '|');
    write_twi0_serlcd(addr, '-');

    // cursor shift command
    write_twi0_serlcd(addr, 254);
    write_twi0_serlcd(addr, 128);

    // write out the first line
    for (uint8_t i = 0; dsp_buff1[i];){
        write_twi0_serlcd(addr, dsp_buff1[i++]);
    }

	// write out the second line
	write_twi0_serlcd(addr, 254);
    write_twi0_serlcd(addr, 64);
    for (uint8_t i = 0; dsp_buff2[i];){
        write_twi0_serlcd(addr, dsp_buff2[i++]);
    }

    // write out the third line
    write_twi0_serlcd(addr, 254);
    write_twi0_serlcd(addr, 148);
    for (uint8_t i = 0; dsp_buff3[i];){
        write_twi0_serlcd(addr, dsp_buff3[i++]);
    }

	// write out the fourth line
    write_twi0_serlcd(addr, 254);
    write_twi0_serlcd(addr, 128+84);
    for (uint8_t i = 0; dsp_buff4[i];){
        write_twi0_serlcd(addr, dsp_buff4[i++]);
    }

    TWI0.MCTRLB = TWI_MCMD_STOP_gc;
	_delay_ms(50);
}