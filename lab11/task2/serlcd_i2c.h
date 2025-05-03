/*
 * serlcd_i2c.h
 *
 * Created: 4/1/2025 4:53:32 PM
 * Authors : Katherine Trusinski and Stanley Cokro
 * Description: This is the header file for the serlcd module, which declares the functions for initializing the serlcd and writing data to it over the I2C communication interface. 
 *
 */

#include "serlcd_utils.h"
#include "i2c_interrupt_handler.h"

#include <avr/io.h>
#include <stdint.h>

extern char dsp_buff1[21];
extern char dsp_buff2[21];
extern char dsp_buff3[21];
extern char dsp_buff4[21];

// function declarations for init, start, end
void init_twi0_serlcd (void);	 // Initializes the TWI/I2C interface for the serlcd

// Sends data to the serlcd
void write_twi0_serlcd(uint8_t saddr, uint8_t data);	// Function definition, definitions (saddr, data) b, a, n

// Updates the serlcd
void update_twi0_serlcd(uint8_t saddr);	// Function definition 