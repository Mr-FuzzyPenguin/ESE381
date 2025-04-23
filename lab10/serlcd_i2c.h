/*
 * serlcd_i2c.h
 *
 * Created: 4/1/2025 4:53:32 PM
 * Authors : Katherine Trusinski and Stanley Cokro
 * Description: This is the header file for the SerLCD module, which declares the functions for initializing the SerLCD and writing data to it over the I2C communication interface. 
 *
 */

#include "serlcd_utils.h"

// required for a delay every time you call the update_twi0_SerLCD
#define F_CPU 4000000UL
#include <util/delay.h>

#include <avr/io.h>
#include <stdint.h>

// init, update, write (in header)
// for serLCD in I2C mode

// Initializes the SerLCD
void init_twi0_SerLCD (void);	// Function definition 

// Updates the SerLCD
void update_twi0_SerLCD(void);	// Function definition 

// Writes to the SerLCD
int write_twi0_SerLCD(uint8_t saddr, uint8_t data);	// Function definition, definitions (saddr, data) b, a, n