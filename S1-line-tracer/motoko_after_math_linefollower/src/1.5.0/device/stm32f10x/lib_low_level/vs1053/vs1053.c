#include "vs1053.h"

void vs1053_init()
{
	GPIO_InitTypeDef  GPIO_InitStructure;

	GPIO_InitStructure.GPIO_Pin = VS1053_RESET;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(VS1053_RESET_GPIO, &GPIO_InitStructure);

    GPIO_InitStructure.GPIO_Pin = VS1053_DRQ;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU; //GPIO_Mode_IPD;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(VS1053_DRQ_GPIO, &GPIO_InitStructure);
 
    GPIO_InitStructure.GPIO_Pin = VS1053_DS;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(VS1053_DS_GPIO, &GPIO_InitStructure);

    GPIO_InitStructure.GPIO_Pin = VS1053_CS;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(VS1053_CS_GPIO, &GPIO_InitStructure);

    timer_delay_ms(4);  
 
	VS1053_RESET_CLEAR();
	VS1053_DS_SET();
	VS1053_CS_SET();

	timer_delay_ms(4); 


	VS1053_RESET_SET();
	timer_delay_ms(100);    

	vs1053_sci_write(VS1053_MODE_REG, (1<<11)|(1<<2));

	timer_delay_ms(4);
 	
 	vs1053_sci_write(VS1053_CLOCKF_REG, 0x6000);

 	timer_delay_ms(4);

	vs1053_sci_write(VS1053_MODE_REG, (1<<5)|(1<<11));
	vs1053_sci_write(VS1053_VOL_REG, 0x1010);


	vs1053_sci_write(VS1053_BASS_REG, 0x00F6);

	vs1053_set_volume(4);

 	sine_test();
}  


u32 vs1053_drq_get()
{
	return (VS1053_DRQ_GPIO->IDR & VS1053_DRQ);
}


void vs1053_sci_write(u8 reg_addr, u16 value)
{
	while (vs1053_drq_get() == 0)
		__asm volatile("nop");

	VS1053_CS_CLEAR();

	spib(VS1053_WRITE_CMD);
	spib(reg_addr&0x0F);
	spib(value>>8);
	spib(value&0xff);

	VS1053_CS_SET();
} 


u16 vs1053_sci_read(u8 reg_addr)
{
	u16 res; 

	VS1053_CS_CLEAR();

	spib(VS1053_READ_CMD);
	spib(reg_addr&0x0F);
	res = spib(0xff);
	res<<=8;
	res|= spib(0xff);
	VS1053_CS_SET();

	return res;
}


 
void vs1053_sdi_write(u8 *data, u32 size)
{
	while (vs1053_drq_get() == 0)
		__asm volatile("nop");

	VS1053_DS_CLEAR();

	u32 i;

	for (i = 0; i < size; i++)
		spib(data[i]);

	if (size < 32)
	for (i = 0; i < (32-size); i++)
		spib(0x00);


	VS1053_DS_SET();
}




void sine_test()
{
	u8 sine_test_on[]  = {0x53, 0xEF, 0x6E, 0x44, 0, 0, 0, 0};
	u8 sine_test_off[] = {0x45, 0x78, 0x69, 0x74, 0, 0, 0, 0};



	vs1053_sdi_write(sine_test_on, 8); 
	timer_delay_ms(200);

	vs1053_sdi_write(sine_test_off, 8);
	timer_delay_ms(800);

	// vs1053_sci_write(VS1053_MODE_REG, 0);
}

void vs1053_set_volume(u32 volume)
{
	if (volume > 31)
		volume = 31;

	u32 tmp = ((32 - volume)/32)*8;
	u32 res = tmp|(tmp<<8);

	vs1053_sci_write(VS1053_VOL_REG, res);
}