#ifndef _SPI_H_
#define _SPI_H_

#include "../lib_low_level.h"

#define SPI_GPIO	GPIOA
#define SCK     	(1<<5)
#define MOSI     	(1<<7)
#define MISO     	(1<<6)

#define SPI_CS_GPIO	GPIOB
#define SPI_CS_PIN	(1<<6)

#define SPI_DELAY_CYCLES	1 




void spi_init();
u8 spib(u8 b);
void spi_block_read(u8 *buffer, u32 buffer_size);


void SPI_CS_INIT();
void SPI_CS_LOW();
void SPI_CS_HIGH();


#endif