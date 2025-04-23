/*
 * Author : Stanley Cokro and Katherine Trusinski
 * ID: 115120484
 * Lab Section: 1
 * Description: Using the SerLCD with the repeated start.
 */

#include <avr/io.h>
#include <stdint.h>
#include <stdio.h>

#define F_CPU 4000000UL
#include <util/delay.h>

// for display
char dsp_buff1[21];
char dsp_buff2[21];
char dsp_buff3[21];
char dsp_buff4[21];

/*
// for interrupts (why am I doing this)
// this is literally optional
#define ADDR_LCD 0
#define MSG_LCD 1
#define ADDR_DEV 2
#define MSG_DEV 3

uint8_t mode = 0;

uint8_t device_addr; 
uint8_t data_to_send;

#include <avr/interrupt.h>
*/

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

	// Set enable interrupt
	/*
	sei();
	TWI0.CTRLA = TWI_RIEN_bm | TWI_WIEN_bm;
	*/
	return;
}

void init_twi0_scd41(void)
{
	TWI0.CTRLA = TWI_INPUTLVL_I2C_gc | TWI_SDASETUP_8CYC_gc | TWI_SDAHOLD_50NS_gc;
	TWI0.MBAUD = 1;
	TWI0.MCTRLA = TWI_ENABLE_bm;
	TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc;
	return;
}

/*
// TWI interrupt service routine (for master)
// only one interrupt routine.
ISR(TWI0_TWIM_vect)
{
	// Clear global interrupts
	cli();
	
	switch(mode)
	{
		case ADDR_LCD:
		
		case ADDR_DEV:
		
		case MSG_DEV:
		
		case MSG_LCD:
		
	}
	
	// Re-enable global interrupts
	sei();
}
*/

// Sends the start condition and repeated start by sending the address and write
int start_communication_twi0_serLCD(uint8_t saddr)
{
	// Wait until the bus state is idle before writing
	while ((TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_IDLE_gc) {}
	
	// the default address is 0x72
	// bitshift to the right and then bit mask for the write
	TWI0.MADDR =  saddr << 1 | 0x0;
	
	// wait until I can write again
	while (!(TWI0.MSTATUS & TWI_WIF_bm)){}
	return 0;
}

int end_communication_twi0_serLCD()
{
    // we can send another piece of data, or... we can write in
    TWI0.MCTRLB |= TWI_MCMD_STOP_gc;
	
    // to terminate the communication
	return 0;
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

    // check to see if the rxack bit is 1. If it is a 1
    // then that means that it is not ready
    /*"
    When this flag is read as '0', it indicates that the most recent Acknowledge bit from the slave was ACK and the slave
    is ready for more data.
    When this flag is read as '1', it indicates that the most recent Acknowledge bit from the slave was NACK and the
    slave is not able to or does not need to receive more data.
    ""*/

	// start by sending address and write
	start_communication_twi0_serLCD(saddr);

    // check NACK or ACK
    if (TWI0.MSTATUS & TWI_RXACK_bm)
    {
		end_communication_twi0_serLCD();
        return 1;
    }

    // "transmitting data by writing to the Master Data (TWI0.MDATA) register, which will also clear the Write Interrupt Flat (WIF)"
    TWI0.MDATA = data;

    // again, wait until we can write again.
    while (!(TWI0.MSTATUS & TWI_WIF_bm)){}

    // Check to see if you have received an acknowledgement bit...
    if (TWI0.MSTATUS & TWI_RXACK_bm) {
        // return a non-zero value for an error
        return 1;
    }

	// to not write as quickly
    _delay_ms(1);
    return 0;
}

// sends address, followed by read or write bit
#define READ  1
#define WRITE 0
int start_communication_twi0_scd41(uint8_t saddr, uint8_t rw){
	// Wait until the bus state is idle before writing
	while ((TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_IDLE_gc) {}
	
	// the default address is 0x62
	// bitshift to the right and then bit mask for the write
	TWI0.MADDR =  saddr << 1 | rw;
		
	// wait until I can write again
	while (!(TWI0.MSTATUS & TWI_WIF_bm)){}
	return 0;
}

int end_communication_twi0_scd41()
{
	TWI0.MCTRLB |= TWI_MCMD_STOP_gc;
	return 0;
}

int write_twi0_scd41(uint8_t saddr, uint16_t data)
{
	// start by sending address and write
	start_communication_twi0_scd41(saddr, WRITE);

    // check NACK or ACK
    if (TWI0.MSTATUS & TWI_RXACK_bm)
    {
		end_communication_twi0_scd41();
        return 1;
    }

    // "transmitting data by writing to the Master Data (TWI0.MDATA) register, which will also clear the Write Interrupt Flat (WIF)"
    TWI0.MDATA = (uint8_t)((data & 0xff00) >> 8);

    // again, wait until we can write again.
    while (!(TWI0.MSTATUS & TWI_WIF_bm)){}

    // Check to see if you have received an acknowledgement bit...
    if (TWI0.MSTATUS & TWI_RXACK_bm) {
		end_communication_twi0_scd41();
        return 1;
    }
	
	// "transmitting data by writing to the Master Data (TWI0.MDATA) register, which will also clear the Write Interrupt Flat (WIF)"
	TWI0.MDATA = (uint8_t)(data & 0xff);

	// again, wait until we can write again.
	while (!(TWI0.MSTATUS & TWI_WIF_bm)){}
	
	end_communication_twi0_scd41();

	// to not write as quickly
    _delay_ms(5);
    return 0;
}

uint8_t read_data_ready_scd41(uint8_t saddr)
{
	uint8_t byte1, byte2, byte3;
	start_communication_twi0_scd41(0x72, WRITE);
	byte1 = read_data_ready_scd41(0x72,1);
	byte2 = read_data_ready_scd41(0x72,1);
	byte3 = read_data_ready_scd41(0x72,1);
	
	// if all 0, return 1 else return 0
	return (!((uint16_t)(((byte2 & 0x03) << 8) | byte3 )))
}

uint8_t read_twi0_scd41(uint8_t saddr, uint8_t continuing)
{
	// wait until I can read
	while (!(TWI0.MSTATUS & TWI_RIF_bm)){}
		
	uint8_t result = TWI0.MDATA;
	if (continuing)
		TWI0.MCTRLB = 0x02;
	else
		end_communication_twi0_scd41();
	return result
}

/*
uint16_t read_twi0_scd41(uint8_t saddr, uint8_t* c)
{
	uint8_t high_byte, low_byte;
	
	while (!(TWI0.MSTATUS & TWI_RIF_bm)){}
	high_byte = TWI0.MDATA;
	TWI0.MCTRLB = 0x02;
	
	while (!(TWI0.MSTATUS & TWI_RIF_bm)){}
	low_byte = TWI0.MDATA;
	TWI0.MCTRLB = 0x02;
	
	while (!(TWI0.MSTATUS & TWI_RIF_bm)){}
	*c = TWI0.MDATA;
		
	volatile uint16_t result = (uint16_t)((high_byte << 8) | low_byte );
	return result;
}
*/

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

	end_communication_twi0_serLCD();

    // wait so that it doesn't write too frequently
    _delay_us(500);
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
	uint8_t checksum;
	
    init_twi0_SerLCD();
	init_twi0_scd41();
	
	while(1)
	{
		uint16_t raw;
		
		uint16_t co_ppm;
		float temperature;
		float rh;

		// get data ready status
		write_twi0_scd41(0x72,0xe4b8);
		
		// wait until the sensor has valid data
		while (!read_data_ready_scd41(0x72)) {
			_delay_ms(5);
		}
		end_communication_twi0_scd41();

		// from here on forth, the sensor is ready.
		write_twi0_scd41(0x72, 0xec05);
		
		raw = ((uint16_t)(read_twi0_scd41(0x72,1) << 8) | (uint16_t)(read_twi0_scd41(0x72,1)));
		checksum = read_twi0_scd41(0x72,1); // continuously read
		co_ppm = raw;
		
		raw = ((uint16_t)(read_twi0_scd41(0x72,1) << 8) | (uint16_t)(read_twi0_scd41(0x72,1)));
		checksum = read_twi0_scd41(0x72,1); // continuously read
		temperature = -45 + 175 * (raw / 65536);
		
		raw = ((uint16_t)(read_twi0_scd41(0x72,1) << 8) | (uint16_t)(read_twi0_scd41(0x72,1)));
		checksum = read_twi0_scd41(0x72,0); // terminate read
		rh = 100 * (raw / 65536);
		
		_delay_ms(500);
	}
    return 0;
}

