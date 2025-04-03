/*
 * write_SerLCD_image_TWI0.c
 *
 * Created: 3/24/2025 22:1:12 PM
 *
 * Author : Stanley Cokro and Katherine Trusinski
 * ID: 115120484
 * Lab Section: 1
 * Description: Using the SerLCD with the setup
 *              using I2C configuration.
 */

#include <avr/io.h>
#include <stdint.h>
#include <stdio.h>

#define F_CPU 4000000UL
#include <util/delay.h>


char dsp_buff1[21];
char dsp_buff2[21];
char dsp_buff3[21];
char dsp_buff4[21];

void init_twi0_SerLCD (void)
{
    // 29.3.2.1 Initialization
    // 29.5.1   Control Register A
    // This configuration gives us
    // I2C, SDASETUP for 8 clock cycles, SDAHOLD is 50 nano seconds (for some time) and disable fast mode
    TWI0.CTRLA = TWI_INPUTLVL_I2C_gc | TWI_SDASETUP_8CYC_gc | TWI_SDAHOLD_50NS_gc;

    // 29.3.2.1.1 Master Initialization
    // The Master Baud Rate
    // because we set the mbaud (master baud) rate to 1,
    // the F_{SCL} = around 304 KHz
    // this is "as fast" as possible that we can get it running with a 4 MHz clock.
    TWI0.MBAUD = 1;

    // Must write a '1' to the enable twi master
    // "Writing a '1' to the Enable TWI Master (ENABLE) bit in the Master Control A (TWIn.MCTRLA) register will enable the TWI master"
    TWI0.MCTRLA = TWI_ENABLE_bm;

    // "The Bus State (BUSSTATE) bit field from the Master Status (TWIn.MSTATUS) register must be set to 0x1, to force the bus state to Idle."
    TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc;
}

int write_twi0_SerLCD(uint8_t saddr, uint8_t data)
{
    // 29.3.2.2.4 Transmitting Data Packets


    // 29.5.8 Master Address
    // this is to setup the M1 case where you must transmit the address packet first.

    // Case M1: Address Packet Transmit Complete - Direction Bit Set to '0'
    // If a slave device responds to the address packet with an ACK, the Write Interrupt Flag (WIF) is set to '1', the
    // Received Acknowledge (RXACK) flag is set to '0', and the Clock Hold (CLKHOLD) flag is set to '1'. The WIF, RXACK
    // and CLKHOLD flags are located in the Master Status (TWIn.MSTATUS) register.
    // The clock hold is active at this point, forcing the SCL low. This will stretch the low period of the clock to slow down the
    // overall clock frequency, forcing delays required to process the data and preventing further activity on the bus.
    // The software can prepare to:
    // Transmit data packets to the slave

    // the default address is 0x72
	// bitshift to the right and then bit mask for the write
    TWI0.MADDR =  saddr << 1 | 0x0;

    // check to see if the write interrupt flag is ready
    // otherwise, wait.
    while (!(TWI0.MSTATUS & TWI_WIF_bm)){}

    // check to see if the rxack bit is 1. If it is a 1
    // then that means that it is not ready
    /*"
    When this flag is read as '0', it indicates that the most recent Acknowledge bit from the slave was ACK and the slave
    is ready for more data.
    When this flag is read as '1', it indicates that the most recent Acknowledge bit from the slave was NACK and the
    slave is not able to or does not need to receive more data.
    ""*/

    // check NACK or ACK
    if (TWI0.MSTATUS & TWI_RXACK_bm)
    {
        return 1;
    }

    // "transmitting data by writing to the Master Data (TWI0.MDATA) register, which will also clear the Write Interrupt Flat (WIF)"
    TWI0.MDATA = data;

    // again, wait until we can write again.
    while (!(TWI0.MSTATUS & TWI_WIF_bm)){}

    // Check to see if you have received an acknolwedgement bit...
    if (TWI0.MSTATUS & TWI_RXACK_bm) {
        // return a non-zero value for an error
        return 1;
    }

    // we can send another piece of data, or... we can write in
    TWI0.MCTRLB |= TWI_MCMD_STOP_gc;
    // to terminate the communication
	
	_delay_ms(1);
	return 0;
}

void init_twi0_LM75 (void)
{
    // 29.3.2.1 Initialization
    // 29.5.1   Control Register A
    // This configuration gives us
    // I2C, SDASETUP for 8 clock cycles, SDAHOLD is 50 nano seconds (for some time) and disable fast mode
    TWI0.CTRLA = TWI_INPUTLVL_I2C_gc | TWI_SDASETUP_8CYC_gc | TWI_SDAHOLD_50NS_gc;

    // 29.3.2.1.1 Master Initialization
    // The Master Baud Rate
    // because we set the mbaud (master baud) rate to 1,
    // the F_{SCL} = around 304 KHz
    // this is "as fast" as possible that we can get it running with a 4 MHz clock.
    TWI0.MBAUD = 1;

    // Must write a '1' to the enable twi master
    // "Writing a '1' to the Enable TWI Master (ENABLE) bit in the Master Control A (TWIn.MCTRLA) register will enable the TWI master"
    TWI0.MCTRLA = TWI_ENABLE_bm;

    // "The Bus State (BUSSTATE) bit field from the Master Status (TWIn.MSTATUS) register must be set to 0x1, to force the bus state to Idle."
    TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc;
}


uint8_t temp_reg_high; // check high byte of LM75
uint8_t temp_reg_low;  // check low byte of LM75
// read the LM75
uint16_t TWI0_LM75_read(uint8_t saddr)
{
    // send slave address read command
    TWI0.MADDR = ((saddr << 1) | 0x01);

    // wait until the RIF flag is received
    while (!(TWI0.MSTATUS & 0x80));

    // clears the RIF flag
    temp_reg_high = TWI0.MDATA;

    // MCMD issue ack followed by a byte read operation
    TWI0.MCTRLB = 0x02;

    // RIF flag, wait until data received
    while (!(TWI0.MSTATUS & 0x80));

    // clears the RIF f;ag
    temp_reg_low = TWI0.MDATA;

    // MCMD issue nack followed by a stop
    TWI0.MCTRLB = 0x07;

    // wait until idle
    while ((TWI0.MSTATUS & 0x03) != 0x01);

    // actually returns it
    volatile uint16_t result = (uint16_t)((temp_reg_high << 8) | (temp_reg_low & 0x80));
	
	return result;
}

// this initializes the SerLCD
void init_spi0_SerLCD (void) { // Configure SPI0
    PORTA.DIR |= PIN4_bm; // Set MOSI pin to output
    PORTA.DIR &= ~PIN5_bm; // Set MISO pin to input
    PORTA.DIR |= PIN6_bm; // Set SCK pin to output
    PORTA.DIR |= PIN7_bm; // Set SS pin to output

    // start it logical high
    PORTA.OUT |= PIN7_bm;

    SPI0.CTRLB = SPI_SSD_bm | SPI_MODE_0_gc;
    SPI0.CTRLA = SPI_ENABLE_bm | SPI_MASTER_bm | SPI_PRESC_DIV64_gc;

}

// this sends a single character
// writes a single character.
void write_spi0_SerLCD(unsigned char data) { // Writing a character
    PORTA.OUT &= ~PIN7_bm; // Writing data... set SS pin value to LOW
    SPI0.DATA = data; // loads the data register
    while (!(SPI0.INTFLAGS & SPI_IF_bm)); // Waiting for data to be exchanged
    PORTA.OUT |= PIN7_bm; // Done! Set SS pin value to HIGH
}

void update_twi0_SerLCD(void){
    // clear and write
    write_twi0_SerLCD(0x72, '|');
    write_twi0_SerLCD(0x72, '-');

    // start at the first line
    write_twi0_SerLCD(0x72, 254);
    write_twi0_SerLCD(0x72, 128+0);
    for (uint8_t i = 0; dsp_buff1[i];){
        write_twi0_SerLCD(0x72, dsp_buff1[i++]);
    }
    // move to second line
    write_twi0_SerLCD(0x72, 254);
    write_twi0_SerLCD(0x72, 128+64);
    for (uint8_t i = 0; dsp_buff2[i];){
        write_twi0_SerLCD(0x72, dsp_buff2[i++]);
    }
    // move to third line
    write_twi0_SerLCD(0x72, 254);
    write_twi0_SerLCD(0x72, 128+20);
    for (uint8_t i = 0; dsp_buff3[i];){
        write_twi0_SerLCD(0x72, dsp_buff3[i++]);
    }
    // move to fourth line
    write_twi0_SerLCD(0x72, 254);
    write_twi0_SerLCD(0x72, 128+84);
    for (uint8_t i = 0; dsp_buff4[i];){
        write_twi0_SerLCD(0x72, dsp_buff4[i++]);
    }

    // wait so that it doesn't write too frequently
    _delay_us(500);
}

// all this does is take the dsp_buff* and write it directly into SPI0.DATA
void update_SerLCD(void){
	// clear and write
	write_spi0_SerLCD('|');
	write_spi0_SerLCD('-');

	// start at the first line
	write_spi0_SerLCD(254);
	write_spi0_SerLCD(128+0);
	for (uint8_t i = 0; dsp_buff1[i];){
		write_spi0_SerLCD(dsp_buff1[i++]);
	}
	// move to second line
	write_spi0_SerLCD(254);
	write_spi0_SerLCD(128+64);
	for (uint8_t i = 0; dsp_buff2[i];){
		write_spi0_SerLCD(dsp_buff2[i++]);
	}
	// move to third line
	write_spi0_SerLCD(254);
	write_spi0_SerLCD(128+20);
	for (uint8_t i = 0; dsp_buff3[i];){
		write_spi0_SerLCD(dsp_buff3[i++]);
	}
	// move to fourth line
	write_spi0_SerLCD(254);
	write_spi0_SerLCD(128+84);
	for (uint8_t i = 0; dsp_buff4[i];){
		write_spi0_SerLCD(dsp_buff4[i++]);
	}

	// wait so that it doesn't write too frequently
}

// this clears the display buffers
void clear_display_buffs(void){
    sprintf(dsp_buff1, "                    ");
    sprintf(dsp_buff2, "                    ");
    sprintf(dsp_buff3, "                    ");
    sprintf(dsp_buff4, "                    ");
}



int main(void)
{
    // initialize the LCD
    init_twi0_SerLCD();

	// init LM75
	init_twi0_LM75();

    // display clear
    clear_display_buffs();

    // Clear board
    write_twi0_SerLCD(0x72, '|');
    write_twi0_SerLCD(0x72, '-');

    // alters and writes the clear command
    update_twi0_SerLCD();

    while(1)
    {

		// start with a celcius_accumulator
        int8_t celcius_accumulator = 0;
        // the address for the LM75
        volatile uint16_t totalread = TWI0_LM75_read(0b1001000);
        uint8_t half=0;

        // shift out 7 digits because we only care about the d8 bit
        totalread = totalread >> 7;

        // this is the 0.5 * lsb
        half = 5*totalread % 2;

        uint8_t scale = 1;
        for (int i = 0; i < 7; i++)
        {
			// shift out once more
			totalread = totalread >> 1;
            celcius_accumulator += scale*(totalread % 2);
			scale *= 2;
        }
		
		// shift out once more
		totalread = totalread >> 1;
        celcius_accumulator -= 128*(totalread %2) ;

        sprintf(dsp_buff1, "Human Readable LM75");
        sprintf(dsp_buff2, "%d.%d C",celcius_accumulator, 5*half);
        sprintf(dsp_buff3, "%f F",32+((9.0/5.0)*(celcius_accumulator + (0.5 * half))));

		update_twi0_SerLCD();
    }
    return 0;
}

