#include <avr/io.h>
#include "i2c_interrupt_handler.h"

uint8_t intent;

// flags to signal complete reading or writing
volatile uint8_t write_complete_flag = 0;
volatile uint8_t read_complete_flag = 0;

// receive index
uint8_t data_buffer[80] = {0};
uint8_t rx_idx = 0;
uint8_t rx_expected;

// transmit index
uint8_t tx_idx = 0;
uint8_t tx_expected;

// default value for interrupt error is 0
uint8_t interrupt_error = NO_ERROR;

int8_t i2c_read(uint8_t address, uint8_t* data,
                uint8_t count) {
    // assume no errors until proven wrong
    interrupt_error = NO_ERROR;

    // set the receive index to 0
    rx_idx = 0;

    // assume write is not complete until "magically" completed for you (via interrupts)
    read_complete_flag = 0;

    // set my intent so that when then the ISR calls in, it knows our intent
    intent = INTENT_READ;
    TWI0.MCTRLA |= TWI_RIEN_bm;

    // tell the read interrupt how many bits you should expect
    // and if you don't get that amount of bits, then you sent the interrupt_error
    rx_expected = count;

    // wait until bus is idle or we own the bus
    while ((TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_IDLE_gc && (TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_OWNER_gc) {}

    // bitshift to the right and then bit mask for the write
    TWI0.MADDR = address << 1 | 0x01;

    // if you are reading this:
    // the interrupt should teleport me away a couple of times...
    // and it should read things one by one while I'm waiting...
    while (!read_complete_flag && !interrupt_error) {
        // I will be waiting until I am done reading
        // or if an error ocurred I will stop.
    }

    // by now the data_buffer is populated.
    for (uint8_t i = 0; i<count; i++)
    {
        data[i] = data_buffer[i];
    }
    return interrupt_error;
}

int8_t i2c_write(uint8_t address, const uint8_t* data,
                 uint8_t count) {
    // there is nothing to send if count is 0
    if (count == 0)
    {
        return NO_ERROR;
    }
    // assume no errors until proven wrong
    interrupt_error = NO_ERROR;

    // set the write index to 0
    tx_idx = 0;

    // assume write is not complete until "magically" completed for you (via interrupts)
    write_complete_flag = 0;

    // tell the read interrupt how many bits you should expect
    // and if you don't get that amount of bits, then you sent the interrupt_error
    tx_expected = count;

    // put our data into the data_buffer which the interrupt can touch
    for (uint8_t i = 0; i < count; i++)
    {
        data_buffer[i] = data[i];
    }

    // wait until bus is idle or we own the bus
    while ((TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_IDLE_gc && (TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_OWNER_gc) {}

    // bitshift to the right and then bit mask for the write
    TWI0.MADDR = address << 1;

    // set my intent so that when then the ISR calls in, it knows our intent
    intent = INTENT_WRITE;
    TWI0.MCTRLA |= TWI_WIEN_bm;

    // if you are reading this:
    // the interrupt should teleport me away a couple of times...
    // and it should write things one by one while I'm waiting...
    while (!write_complete_flag && !interrupt_error) {
        // I will be waiting until I am done reading
        // or if an error ocurred I will stop.
    }

    return interrupt_error;
}

ISR(TWI0_TWIM_vect) {
    // Clear global interrupts
    cli();

    switch (intent) {
        case INTENT_READ:
            data_buffer[rx_idx] = TWI0.MDATA;
            // check if I got a nack and I am ended
            // AND that my receive index is as expected
            if (TWI0.MSTATUS & TWI_RXACK_bm && rx_idx != rx_expected-1)
            {
                interrupt_error = 1;
            }
            // in other words, if I got a NACK and I'm not done, error!

            // reached the end
            else if(rx_idx == rx_expected - 1)
            {
                TWI0.MCTRLA &= ~TWI_RIEN_bm;
                read_complete_flag = 1;
                TWI0.MCTRLB = TWI_ACKACT_NACK_gc | TWI_MCMD_STOP_gc;
                break;
            }

            // alrght now that I am done reading that one byte
            // I should probably tell them I got their message
            // here's an ACK
            TWI0.MCTRLB = TWI_MCMD_RECVTRANS_gc;

            // and increment the rx_idx
            rx_idx++;
            break;


        case INTENT_WRITE:

            TWI0.MDATA = data_buffer[tx_idx];

            // check if I got a nack and I am ended
            // AND that my receive index is as expected
            if (TWI0.MSTATUS & TWI_RXACK_bm && tx_idx != tx_expected-1)
            {
                interrupt_error = 1;
            }
            // in other words, if I got a NACK and I'm not done, error!

            // reached the end
            else if(tx_idx == tx_expected - 1)
            {
                TWI0.MCTRLA &= ~TWI_WIEN_bm;
                write_complete_flag = 1;
                TWI0.MCTRLB = TWI_MCMD_STOP_gc;
                break;
            }

            tx_idx++;
            break;
        default:
            break;

    }

    sei();
}