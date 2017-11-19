#ifndef _VS1053_H_
#define _VS1053_H_


#include "../lib_low_level.h" 

#define VS1053_RESET_GPIO		GPIOA
#define VS1053_RESET			(1<<0)	/*PA0*/
#define VS1053_RESET_SET()		GPIO_SetBits(VS1053_RESET_GPIO, VS1053_RESET)
#define VS1053_RESET_CLEAR()	GPIO_ResetBits(VS1053_RESET_GPIO, VS1053_RESET)

#define VS1053_DRQ_GPIO		GPIOA
#define VS1053_DRQ			(1<<1)	/*PA1*/
#define VS1053_DRQ_GET()	(VS1053_DRQ_GPIO->IDR&VS1053_DRQ)

#define VS1053_DS_GPIO		GPIOA
#define VS1053_DS			(1<<4)	/*PA4*/
#define VS1053_DS_SET()		VS1053_DS_GPIO->BSRR = VS1053_DS;
#define VS1053_DS_CLEAR()	VS1053_DS_GPIO->BRR = VS1053_DS;

#define VS1053_CS_GPIO		GPIOB
#define VS1053_CS			(1<<0)	/*PB0*/
#define VS1053_CS_SET()		VS1053_CS_GPIO->BSRR = VS1053_CS;
#define VS1053_CS_CLEAR()	VS1053_CS_GPIO->BRR = VS1053_CS;




/*vs1053 registers*/
#define VS1053_MODE_REG				0x00
#define VS1053_STATUS_REG			0x01
#define VS1053_BASS_REG				0x02
#define VS1053_CLOCKF_REG			0x03
#define VS1053_DECODE_TIME_REG		0x04
#define VS1053_AUDATA_REG			0x05
#define VS1053_WRAM_REG				0x06
#define VS1053_WRAMADDR_REG			0x07
#define VS1053_HDAT0_REG			0x08
#define VS1053_HDAT1_REG			0x09
#define VS1053_AIADDR_REG			0x0A
#define VS1053_VOL_REG				0x0B
#define VS1053_AICTRL0_REG			0x0C
#define VS1053_AICTRL1_REG			0x0D
#define VS1053_AICTRL2_REG			0x0E
#define VS1053_AICTRL3_REG			0x0F


#define VS1053_READ_CMD 			0x03 
#define VS1053_WRITE_CMD 			0x02



void vs1053_init();
void vs1053_sci_write(u8 reg_addr, u16 value);
u16 vs1053_sci_read(u8 reg_addr);
void vs1053_sdi_write(u8 *data, u32 size);
void sine_test();
void vs1053_set_volume(u32 volume);


#endif