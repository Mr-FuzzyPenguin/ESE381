#include "twi_interrupts.h"

#define READ  1
#define WRITE 0
#define DEFAULT 2
uint8_t can_read = 0;
uint8_t can_write = 0;
uint8_t intent = DEFAULT;

void read_interrupt_enable(void)
{
    TWI0.MCTRLA |= TWI_RIEN_bm;
    intent = READ;
}
void write_interrupt_enable(void)
{
    TWI0.MCTRLA |= TWI_WIEN_bm;
    intent = WRITE;
}

void read_interrupt_disable(void)
{
    TWI0.MCTRLA &= ~TWI_RIEN_bm;
    intent = DEFAULT;
    can_read = 0;
}

void write_interrupt_disable(void)
{
    TWI0.MCTRLA &= ~TWI_WIEN_bm;
    intent = DEFAULT;
    can_write = 0;
}

void wait_until_can_read(void)
{
    while (!can_read) {}
    can_read = 0;
    return;
}

void wait_until_can_write(void)
{
    while (!can_write) {}
    can_write = 0;
    return;
}

ISR(TWI0_TWIM_vect)
{
    cli(); // Clear global interrupts

    switch (intent)
    {
        case READ:
            can_read = 1;
        case WRITE:
            can_write = 1;
        case DEFAULT:
        default:
            break;
    }

    sei(); // Re-enable global interrupts
}