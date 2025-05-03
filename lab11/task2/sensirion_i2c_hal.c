/*
 * Copyright (c) 2018, Sensirion AG
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * * Neither the name of Sensirion AG nor the names of its
 *   contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

/*
 * sensirion_i2c_hal.c
 *
 * Created: 4/30/2025 5:14:00 PM
 * Author : Katherine Trusinski and Stanley Cokro
 * Description: Program includes the modified logic of the associated header file which implements the ISR (interrupt driven).
 */ 

#include "sensirion_i2c_hal.h"
#include "sensirion_common.h"

#include <avr/io.h>
#include <stdint.h>

#define F_CPU 4000000UL
#include <util/delay.h>

#include "i2c_interrupt_handler.h"

/*
 * INSTRUCTIONS
 * ============
 *
 * Implement all functions where they are marked as IMPLEMENT.
 * Follow the function specification in the comments.
 */

/**
 * Select the current i2c bus by index.
 * All following i2c operations will be directed at that bus.
 *
 * THE IMPLEMENTATION IS OPTIONAL ON SINGLE-BUS SETUPS (all sensors on the same
 * bus)
 *
 * @param bus_idx   Bus index to select
 * @returns         0 on success, an error code otherwise
 */
int16_t sensirion_i2c_hal_select_bus(uint8_t bus_idx) {
    /* TODO:IMPLEMENT or leave empty if all sensors are located on one single
     * bus
     */
    return NOT_IMPLEMENTED_ERROR;
}

/**
 * Initialize all hard- and software components that are needed for the I2C
 * communication.
 */
void sensirion_i2c_hal_init(void) {
    sei();
    TWI0.CTRLA = TWI_INPUTLVL_I2C_gc | TWI_SDASETUP_8CYC_gc | TWI_SDAHOLD_50NS_gc;
    TWI0.MBAUD = 0;
    TWI0.MCTRLA = TWI_ENABLE_bm;
    TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc;
}

/**
 * Release all resources initialized by sensirion_i2c_hal_init().
 */
void sensirion_i2c_hal_free(void) {
    /* TODO:IMPLEMENT or leave empty if no resources need to be freed */
}

/**
 * Execute one read transaction on the I2C bus, reading a given number of bytes.
 * If the device does not acknowledge the read command, an error shall be
 * returned.
 *
 * @param address 7-bit I2C address to read from
 * @param data    pointer to the buffer where the data is to be stored
 * @param count   number of bytes to read from I2C and store in the buffer
 * @returns 0 on success, error code otherwise
 */
int8_t sensirion_i2c_hal_read(uint8_t address, uint8_t* data, uint8_t count) {
    return i2c_read(address, data, count);
}

/**
 * Execute one write transaction on the I2C bus, sending a given number of
 * bytes. The bytes in the supplied buffer must be sent to the given address. If
 * the slave device does not acknowledge any of the bytes, an error shall be
 * returned.
 *
 * @param address 7-bit I2C address to write to
 * @param data    pointer to the buffer containing the data to write
 * @param count   number of bytes to read from the buffer and send over I2C
 * @returns 0 on success, error code otherwise
 */
int8_t sensirion_i2c_hal_write(uint8_t address, const uint8_t* data,
                               uint8_t count) {
    return i2c_write(address, data, count);
}

/**
 * Sleep for a given number of microseconds. The function should delay the
 * execution for at least the given time, but may also sleep longer.
 *
 * Despite the unit, a < 10 millisecond precision is sufficient.
 *
 * @param useconds the sleep time in microseconds
 */
void sensirion_i2c_hal_sleep_usec(uint32_t useconds) {
    // Unique delays from the file.
    // I typecasted the stuff'
    /*
    sensirion_i2c_hal_sleep_usec(1 * 1000);
    sensirion_i2c_hal_sleep_usec(30 * 1000);
    sensirion_i2c_hal_sleep_usec((uint32_t) 50 * 1000);
    sensirion_i2c_hal_sleep_usec((uint32_t) 400 * 1000);
    sensirion_i2c_hal_sleep_usec((uint32_t) 500 * 1000);
    sensirion_i2c_hal_sleep_usec((uint32_t) 800 * 1000);
    sensirion_i2c_hal_sleep_usec((uint32_t) 1200 * 1000);
    sensirion_i2c_hal_sleep_usec((uint32_t) 5000 * 1000);
    sensirion_i2c_hal_sleep_usec((uint32_t) 10000 * 1000);
    */

    // handles all the cases from the file.
    switch(useconds){
        case 1000:
            _delay_ms(1);
            break;
        case 30000:
            _delay_ms(30);
            break;
        case 50000:
            _delay_ms(50);
            break;
        case 400000:
            _delay_ms(400);
            break;
        case 500000:
            _delay_ms(500);
            break;
        case 800000:
            _delay_ms(800);
            break;
        case 1200000:
            _delay_ms(1200);
            break;
        case 5000000:
            _delay_ms(5000);
            break;
        case 10000000:
            _delay_ms(1000);
            _delay_ms(1000);
            _delay_ms(1000);
            _delay_ms(1000);
            _delay_ms(1000);
            _delay_ms(1000);
            _delay_ms(1000);
            break;
        case 0:
            break;
    }
}