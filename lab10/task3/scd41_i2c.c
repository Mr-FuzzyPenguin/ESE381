/*
 * scd41_i2c.c
 *
 * Created: 4/23/2025 7:33:03 PM
 * Authors : Katherine Trusinski and Stanley Cokro
 * Description: Implementation file for the SCD41 sensor interface. Contains functions for initialization, starting/stopping communication, writing data, and reading data using I2C.
 *
 */

#include "scd41_i2c.h"
#define F_CPU 4000000UL
#include <util/delay.h> // Required for delay functions
#include <avr/io.h>     // Required for AVR register manipulation

void init_twi0_scd41(void) {
    // Initialize TWI (I2C) for the SCD41 sensor
    TWI0.CTRLA = TWI_INPUTLVL_I2C_gc | TWI_SDASETUP_8CYC_gc | TWI_SDAHOLD_50NS_gc;
    TWI0.MBAUD = 1; // Set baud rate to achieve ~304kHz SCL frequency with 4MHz clock
    TWI0.MCTRLA = TWI_ENABLE_bm; // Enable TWI master
    TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc; // Force bus state to idle
}

int start_communication_twi0_scd41(uint8_t saddr, uint8_t rw) {
    // Start communication by sending slave address and read/write bit
    TWI0.MADDR = saddr << 1 | rw;

    // Wait for write interrupt flag (WIF) to be set
    while (!(TWI0.MSTATUS & TWI_WIF_bm)) {}

    return 0; // Successful start
}

int end_communication_twi0_scd41(void) {
    // Send stop condition to terminate communication
    TWI0.MCTRLB |= TWI_MCMD_STOP_gc;

    return 0; // Successful end
}

int write_twi0_scd41(uint8_t saddr, uint8_t data) {
    // Start communication with the sensor in write mode
    start_communication_twi0_scd41(saddr, WRITE);

    // Check if the slave acknowledged (ACK or NACK)
    if (TWI0.MSTATUS & TWI_RXACK_bm) {
        end_communication_twi0_scd41(); // End communication in case of NACK
        return 1; // Error occurred
    }

    // Transmit data packet
    TWI0.MDATA = data;

    // Wait for the next write interrupt flag (WIF) to be set
    while (!(TWI0.MSTATUS & TWI_WIF_bm)) {}

    // Check again for ACK or NACK
    if (TWI0.MSTATUS & TWI_RXACK_bm) {
        return 1; // Error occurred
    }

    _delay_ms(1); // Small delay to prevent rapid communication
    return 0; // Successful write
}

uint16_t read_twi0_scd41(uint8_t saddr, uint8_t* checksum) {
    // Variables to hold received bytes
    uint8_t high_byte, low_byte;

    // Start communication with the sensor in read mode
    start_communication_twi0_scd41(saddr, READ);

    // Wait for read interrupt flag (RIF) and get high byte
    while (!(TWI0.MSTATUS & TWI_RIF_bm)) {}
    high_byte = TWI0.MDATA;
    TWI0.MCTRLB = 0x02; // Send ACK after receiving high byte

    // Wait for next read interrupt flag (RIF) and get low byte
    while (!(TWI0.MSTATUS & TWI_RIF_bm)) {}
    low_byte = TWI0.MDATA;
    TWI0.MCTRLB = 0x02; // Send ACK after receiving low byte

    // Wait for next read interrupt flag (RIF) and get checksum
    while (!(TWI0.MSTATUS & TWI_RIF_bm)) {}
    *checksum = TWI0.MDATA;

    // Send stop condition to terminate communication
    TWI0.MCTRLB = TWI_MCMD_STOP_gc;

    // Wait until bus is idle
    while ((TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_IDLE_gc) {}

    // Combine high byte and low byte into a 16-bit result
    return (uint16_t)((high_byte << 8) | low_byte);
}
