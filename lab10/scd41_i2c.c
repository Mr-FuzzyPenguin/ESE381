#include "scd41_i2c.h"
#include <avr/io.h>
#include <stdint.h>
#include <stdio.h>

#define F_CPU 4000000UL
#include <util/delay.h>



void init_twi0_scd41(void)
{
	TWI0.CTRLA = TWI_INPUTLVL_I2C_gc | TWI_SDASETUP_8CYC_gc | TWI_SDAHOLD_50NS_gc;
	TWI0.MBAUD = 0;
	TWI0.MCTRLA = TWI_ENABLE_bm;
	TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc;
	return;
}

int start_communication_twi0_scd41(uint8_t saddr, uint8_t rw){
	// Wait until the bus state is idle before writing
	while ((TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_IDLE_gc && (TWI0.MSTATUS & 0x03) != TWI_BUSSTATE_OWNER_gc) {}

	
	// the default address is 0x62
	// bitshift to the right and then bit mask for the write
	TWI0.MADDR =  saddr << 1 | rw;
	
	if (rw == WRITE)
	{
		// wait until I can write again
		while (!(TWI0.MSTATUS & TWI_WIF_bm)){}
	}
	else
	{
		while (!(TWI0.MSTATUS & TWI_RIF_bm)){}
	}
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

	// to not write as quickly
	//_delay_ms(5);
	return 0;
}

uint8_t read_twi0_scd41(uint8_t saddr, uint8_t continuing)
{
	// wait until I can read
	while (!(TWI0.MSTATUS & TWI_RIF_bm)){}
	
	uint8_t result = TWI0.MDATA;
	if (continuing)
	TWI0.MCTRLB = 0x02;
	else
	TWI0.MCTRLB = 0x07;
	return result;
}

void ensure_ready_scd41(uint8_t saddr)
{
	uint8_t lsbyte, msbyte;
	do {
		// get data ready status
		write_twi0_scd41(SCD41_ADDR,0xe4b8);
		_delay_ms(1);
		start_communication_twi0_scd41(SCD41_ADDR, READ);
		msbyte = read_twi0_scd41(SCD41_ADDR, 1);
		lsbyte = read_twi0_scd41(SCD41_ADDR, 0);
		// if all 0, then it is ready
	} while (!((uint16_t)(((msbyte & 0x03) << 8) | lsbyte )));
	return;
}
