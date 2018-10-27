#ifndef _SPI_H_
#define _SPI_H_

#include "../lib_low_level.h"

#define SPI_DELAY_CYCLES	1 



void spi_init();
u8 spib(u8 b);
void spi_block_read(u8 *buffer, u32 buffer_size);


void SPI_CS_INIT();
void SPI_CS_LOW();
void SPI_CS_HIGH();


#endif