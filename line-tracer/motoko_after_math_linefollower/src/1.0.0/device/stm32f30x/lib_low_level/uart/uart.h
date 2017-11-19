#ifndef _UART_H_
#define _UART_H_

#include "../lib_low_level.h"

//#define UART_BAUD_RATE    9600
//#define UART_BAUD_RATE 		57600

#define UART_BAUD_RATE 		115200


void uart_write(char c);
char uart_read();
void uart_init();

#endif
