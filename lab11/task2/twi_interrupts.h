#include <avr/interrupt.h>
#include <avr/io.h>

void read_interrupt_enable(void);
void write_interrupt_enable(void);

void read_interrupt_disable(void);
void write_interrupt_disable(void);

void wait_until_can_read(void);
void wait_until_can_write(void);