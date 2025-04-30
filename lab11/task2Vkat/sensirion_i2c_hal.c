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

#include "sensirion_i2c_hal.h"
#include "sensirion_common.h"
#include "sensirion_config.h"

#include <avr/io.h>
#include <avr/interrupt.h>

#define F_CPU 4000000UL
#include <util/delay.h>

volatile enum OperationMode operation_mode;
int write_complete_flag = 0;
int read_complete_flag = 0;
char data_buffer[80] = {0};
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
    // wait until bus is idle or we own the bus
    while ((TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_IDLE_gc && (TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_OWNER_gc) {}

    // bitshift to the right and then bit mask for the write
    TWI0.MADDR = address << 1 | 0x01;

    // wait until the address is done shifted out
    while (!(TWI0.MSTATUS & TWI_RIF_bm)){}

    // check if nack or ack
    // if 1 == NACK
    // if 0 == ACK
    if (TWI0.MSTATUS & TWI_RXACK_bm)
    {
        TWI0.MCTRLB = TWI_MCMD_STOP_gc;
        return 1;
    }

    for (uint8_t i = 0; i < count - 1; i++)
    {
        // wait until I can read
        while (!(TWI0.MSTATUS & TWI_RIF_bm)){}

        // data available, put in pointer at idx i
        data[i] = TWI0.MDATA;

        // Receiver always sends acknowledge
        TWI0.MCTRLB = TWI_MCMD_RECVTRANS_gc;

    }

    // wait until I can read the final bit
    while (!(TWI0.MSTATUS & TWI_RIF_bm)){}

    // place it in the final index
    data[count - 1] = TWI0.MDATA;

    // terminate by sending NACK and stop condition
    TWI0.MCTRLB = TWI_ACKACT_NACK_gc | TWI_MCMD_STOP_gc;
    return NO_ERROR;
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

     // Wait until the bus state is idle before writing
     while ((TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_IDLE_gc && (TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_OWNER_gc) {}

     // the default address is 0x62
     // bitshift to the right and then bit mask for the write
     TWI0.MADDR =  address << 1;

     // wait until the address is done shifted out
     while (!(TWI0.MSTATUS & TWI_WIF_bm)){}

     // check if nack or ack
     // if 1 == NACK
     // if 0 == ACK
     if (TWI0.MSTATUS & TWI_RXACK_bm)
     {
         TWI0.MCTRLB = TWI_MCMD_STOP_gc;
         return 1;
     }

     // otherwise, from here on forth, writing is possible.
     for (int i = 0; i < count-1; i++)
     {
         TWI0.MDATA = data[i];

         // Wait until you can write more data
         while (!(TWI0.MSTATUS & TWI_WIF_bm)){}

         // verify constant ACKS
         if (TWI0.MSTATUS & TWI_RXACK_bm)
         {
             TWI0.MCTRLB = TWI_MCMD_STOP_gc;
             return 1;
         }
     }

     // last chunk of data to be sent
     TWI0.MDATA = data[count-1];

     // Verified that there is no more data to be shifted out
     while (!(TWI0.MSTATUS & TWI_WIF_bm)){}

     // finally, send the stop condition
     TWI0.MCTRLB = TWI_MCMD_STOP_gc;
     return NO_ERROR;
}

ISR(TWI0_TWIM_vect) {
	// Clear global interrupts
	cli();
	
	//check first if idle mode
	int buffer_index = 0, count = 0;
	
	// Check the current operation mode
	if (operation_mode == WRITE) {
		// Handle write logic
		if (buffer_index < count) {
			TWI0.MDATA = data_buffer[buffer_index++];
			} else {
			TWI0.MCTRLB = TWI_MCMD_STOP_gc; // End write transaction
			write_complete_flag = 1;       // Notify completion
		}
		} else if (operation_mode == READ) {
		// Handle read logic
		if (buffer_index < count) {
			data_buffer[buffer_index++] = TWI0.MDATA; // Store received byte
			TWI0.MCTRLB = TWI_MCMD_RECVTRANS_gc;      // Continue reading
			} else {
			TWI0.MCTRLB = TWI_ACKACT_NACK_gc | TWI_MCMD_STOP_gc; // End read transaction
			read_complete_flag = 1;                              // Notify completion
		}
	}

	sei();
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

