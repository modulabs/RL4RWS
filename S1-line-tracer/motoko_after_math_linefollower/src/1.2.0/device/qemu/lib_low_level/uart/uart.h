#ifndef _UART_H_
#define _UART_H_

#include "../lib_low_level.h"

void uart_write(char c);
char uart_read();
void uart_init();

#endif