#include "spi.h"


void spi_init()
{
	u32 i;

	for (i = 0; i < 32; i++) 
		spib(0xff);
} 

#if SPI_DELAY_CYCLES > 1

void spi_delay() 
{
	u32 i = SPI_DELAY_CYCLES; 
	while (i--)
		__asm("nop");
}

#else

#define spi_delay() __asm("nop");

#endif

u8 spib(u8 b)
{
	return b;
}


void spi_block_read(u8 *buffer, u32 buffer_size)
{
	u32 i;

	for (i = 0; i < buffer_size; i++)
		buffer[i] = spib(0xff);
}

void SPI_CS_INIT()
{

}

void SPI_CS_LOW()
{

}

void SPI_CS_HIGH()
{

}