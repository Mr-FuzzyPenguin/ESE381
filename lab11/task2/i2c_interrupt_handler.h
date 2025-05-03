// interrupt macro definitions
#define NO_ERROR 0
#define INTENT_WRITE 0
#define INTENT_READ  1

#ifndef ISR
#include <avr/interrupt.h>
#endif

int8_t i2c_read(uint8_t address, uint8_t* data, uint8_t count);
int8_t i2c_write(uint8_t address, const uint8_t* data, uint8_t count);
