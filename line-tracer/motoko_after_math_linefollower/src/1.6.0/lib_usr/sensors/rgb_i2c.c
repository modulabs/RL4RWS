#include "rgb_i2c.h"

#define RGB_I2C_DELAY_LOOPS 4

u8 rgb_raw[RGB_SENSORS_COUNT];


void rgb_i2c_delay()
{
    u32 loops = RGB_I2C_DELAY_LOOPS;
    while (loops--)
        __asm("nop");
}

u16 g_rgb_all_mask;

void RGBSetLowSDA()
{
    GPIO_InitTypeDef GPIO_InitStruct;

    GPIO_InitStruct.GPIO_Pin = g_rgb_all_mask&((1<<RGB_SDA_0)|(1<<RGB_SDA_1)|(1<<RGB_SDA_2)|(1<<RGB_SDA_3)|(1<<RGB_SDA_4)|(1<<RGB_SDA_5)|(1<<RGB_SDA_6)|(1<<RGB_SDA_7));

#ifdef STM303
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
#endif
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
#ifdef STM303
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
#endif
    GPIO_Init(GPIOA, &GPIO_InitStruct);

    GPIOA->BRR = g_rgb_all_mask&((1<<RGB_SDA_0)|(1<<RGB_SDA_1)|(1<<RGB_SDA_2)|(1<<RGB_SDA_3)|(1<<RGB_SDA_4)|(1<<RGB_SDA_5)|(1<<RGB_SDA_6)|(1<<RGB_SDA_7));
    //GPIO_ResetBits(GPIOA, g_rgb_all_mask&((1<<RGB_SDA_0)|(1<<RGB_SDA_1)|(1<<RGB_SDA_2)|(1<<RGB_SDA_3)|(1<<RGB_SDA_4)|(1<<RGB_SDA_5)|(1<<RGB_SDA_6)|(1<<RGB_SDA_7)) );


 	GPIO_InitStruct.GPIO_Pin = (1<<RGB_SDA_8);

#ifdef STM303
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
#endif
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
#ifdef STM303
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
#endif
    GPIO_Init(GPIOB, &GPIO_InitStruct);

    GPIOB->BRR = (1<<RGB_SDA_8);
    //GPIO_ResetBits(GPIOB, (1<<RGB_SDA_8));


    rgb_i2c_delay();
}

void RGBSetHighSDA()
{
    GPIO_InitTypeDef GPIO_InitStruct;

    GPIO_InitStruct.GPIO_Pin = g_rgb_all_mask&((1<<RGB_SDA_0)|(1<<RGB_SDA_1)|(1<<RGB_SDA_2)|(1<<RGB_SDA_3)|(1<<RGB_SDA_4)|(1<<RGB_SDA_5)|(1<<RGB_SDA_6)|(1<<RGB_SDA_7));

#ifdef STM303
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
#endif
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
    //GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
#ifdef STM303
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
#endif
    GPIO_Init(GPIOA, &GPIO_InitStruct);

    GPIOA->BSRR = g_rgb_all_mask&((1<<RGB_SDA_0)|(1<<RGB_SDA_1)|(1<<RGB_SDA_2)|(1<<RGB_SDA_3)|(1<<RGB_SDA_4)|(1<<RGB_SDA_5)|(1<<RGB_SDA_6)|(1<<RGB_SDA_7));
    // GPIO_SetBits(GPIOA, g_rgb_all_mask&((1<<RGB_SDA_0)|(1<<RGB_SDA_1)|(1<<RGB_SDA_2)|(1<<RGB_SDA_3)|(1<<RGB_SDA_4)|(1<<RGB_SDA_5)|(1<<RGB_SDA_6)|(1<<RGB_SDA_7)) );

#ifdef STM303
 	GPIO_InitStruct.GPIO_Pin = (1<<RGB_SDA_8);
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
#endif
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
    //GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
#ifdef STM303
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
#endif
    GPIO_Init(GPIOB, &GPIO_InitStruct);

    GPIOB->BSRR = (1<<RGB_SDA_8);
    //GPIO_SetBits(GPIOB, (1<<RGB_SDA_8));

    rgb_i2c_delay();
}

void RGBSetLowSCL()
{
    GPIOA->BRR = 1<<RGB_SCL;
    // GPIO_ResetBits(GPIOA, 1<<RGB_SCL);
    rgb_i2c_delay();
}

void RGBSetHighSCL()
{
    GPIOA->BSRR = 1<<RGB_SCL;
    //GPIO_SetBits(GPIOA, 1<<RGB_SCL);
    rgb_i2c_delay();
}

void rgb_i2c_init()
{
    GPIO_InitTypeDef GPIO_InitStruct;

    GPIO_InitStruct.GPIO_Pin = (1<<RGB_SCL);
#ifdef STM303
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
#endif
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
#ifdef STM303
    GPIO_InitStruct.GPIO_OType = GPIO_OType_PP; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
#endif

    GPIO_Init(GPIOA, &GPIO_InitStruct);


    GPIO_InitStruct.GPIO_Pin = g_rgb_all_mask&((1<<RGB_SDA_0)|(1<<RGB_SDA_1)|(1<<RGB_SDA_2)|(1<<RGB_SDA_3)|(1<<RGB_SDA_4)|(1<<RGB_SDA_5)|(1<<RGB_SDA_6)|(1<<RGB_SDA_7));

#ifdef STM303
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
#endif
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
#ifdef STM303
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
#endif
    GPIO_Init(GPIOA, &GPIO_InitStruct);

    GPIO_SetBits(GPIOA, g_rgb_all_mask&((1<<RGB_SDA_0)|(1<<RGB_SDA_1)|(1<<RGB_SDA_2)|(1<<RGB_SDA_3)|(1<<RGB_SDA_4)|(1<<RGB_SDA_5)|(1<<RGB_SDA_6)|(1<<RGB_SDA_7)) );


    GPIO_InitStruct.GPIO_Pin = (1<<RGB_SDA_8);

#ifdef STM303
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
#endif
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
#ifdef STM303
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
#endif
    GPIO_Init(GPIOB, &GPIO_InitStruct);

    GPIO_SetBits(GPIOB, (1<<RGB_SDA_8));


    RGBSetHighSCL();
    RGBSetLowSDA();
    RGBSetHighSDA();
}



void rgb_i2cStart()
{
    RGBSetHighSCL();
    RGBSetHighSDA();

    RGBSetHighSCL();
    RGBSetLowSDA();

    RGBSetLowSCL();
    RGBSetHighSDA();
}


void rgb_i2cStop()
{
    RGBSetLowSCL();
    RGBSetLowSDA();

   	RGBSetHighSCL();
    RGBSetLowSDA();

    RGBSetHighSCL();
    RGBSetHighSDA();
}



void rgb_i2cWrite(u8 a)
{
    u8  i;

    for (i=0; i<8; i++)
    {
        RGBSetLowSCL();

        if (a & 0x80)
            RGBSetHighSDA();
        else
            RGBSetLowSDA();

        RGBSetHighSCL();
        a <<= 1;
    }

    RGBSetLowSCL();
    RGBSetHighSDA();
    RGBSetHighSCL();

    RGBSetLowSCL();

    rgb_i2c_delay();
}


void rgb_i2cRead(u8 ack, u8 *result)
{
    u32  i, j;

    for (i = 0; i < RGB_SENSORS_COUNT; i++)
    	result[i] = 0x00;

    RGBSetLowSCL();
    RGBSetHighSDA();

    for (i = 0; i < 8; i++)
    {
  	    for (j = 0; j < RGB_SENSORS_COUNT; j++)
	        result[j] = result[j] << 1;

        RGBSetHighSCL();

        u32 tmp = GPIOA->IDR;

        if (tmp&(1<<RGB_SDA_0))
            result[0]|= 1;

        if (tmp&(1<<RGB_SDA_1))
            result[1]|= 1;

        if (tmp&(1<<RGB_SDA_2))
            result[2]|= 1;

        if (tmp&(1<<RGB_SDA_3))
            result[3]|= 1;

        if (tmp&(1<<RGB_SDA_4))
            result[4]|= 1;

        if (tmp&(1<<RGB_SDA_5))
            result[5]|= 1;

        if (tmp&(1<<RGB_SDA_6))
            result[6]|= 1;

        if (tmp&(1<<RGB_SDA_7))
            result[7]|= 1;

        if (GPIOB->IDR&(1<<RGB_SDA_8))
            result[8]|= 1;

        RGBSetLowSCL();
    }

    if (ack)
    {
        RGBSetLowSDA();
    }

    RGBSetHighSCL();
    RGBSetLowSCL();

    rgb_i2c_delay();
}


void rgb_i2c_write_reg(u8 dev_adr, u8 reg_adr, u8 value)
{
    rgb_i2cStart();
    rgb_i2cWrite(dev_adr);  /*slave address, write command*/
    rgb_i2cWrite(reg_adr);  /*send reg address*/
    rgb_i2cWrite(value);
    rgb_i2cStop();
}

void rgb_i2c_read_reg(u8 dev_adr, u8 reg_adr, u8 *res)
{
    rgb_i2cStart();
    rgb_i2cWrite(dev_adr);  /*slave address, write command*/
    rgb_i2cWrite(reg_adr);  /*send reg address*/

    rgb_i2cStart();
    rgb_i2cWrite(dev_adr|0x01); /*slave address, read command*/
    rgb_i2cRead(0, res);   /*read data*/
    rgb_i2cStop();
}


void rgb_init()
{
	u32 i;

	for (i = 0; i < RGB_SENSORS_COUNT; i++)
	{
		g_rgb.r[i] = 0x00;
		g_rgb.g[i] = 0x00;
		g_rgb.b[i] = 0x00;

		g_rgb.proximity[i] = 0x00;
		g_rgb.ambient[i] = 0x00;
	}

    g_rgb_all_mask = 0xffff;

	rgb_i2c_init();

	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ATIME, 0xFF); 			/*2.4ms time*/
	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_WTIME, 0xFF); 			/*2.4ms time*/

	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_CONFIG, 0); 				/*dont wait long*/
    rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ENABLE, (1<<1)|(1<<0));  /*power on, RGBC enable*/


	/*
		proximity sensor setup
		100mA LED current
		use IR diode
		60x GAIN
	*/
	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_CONTROL, (1<<5)|(1<<0)|(1<<1));


    /*proximity enable*/
    RGBSetHighSDA();
    g_rgb_all_mask = 0x0000;
    rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ENABLE, (1<<2)|(1<<1)|(1<<0));  /*power on, RGBC enable*/

    rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_PPULSE, 8);
    g_rgb_all_mask = 0xffff;

}



void rgb_read()
{
	u32 i, r;

    rgb_i2cStart();
    rgb_i2cWrite(RGB_ADDRESS);
    rgb_i2cWrite(RGB_COMMAND|RGB_CDATAL|(1<<5));

    rgb_i2cStart();
    rgb_i2cWrite(RGB_ADDRESS|0x01);

    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.ambient[i] = rgb_raw[i];

    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.ambient[i]|= ((u16)rgb_raw[i])<<8;

    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.r[i] = rgb_raw[i];

    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.r[i]|= ((u16)rgb_raw[i])<<8;


    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.g[i] = rgb_raw[i];

    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.g[i]|= ((u16)rgb_raw[i])<<8;


    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.b[i] = rgb_raw[i];

    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.b[i]|= ((u16)rgb_raw[i])<<8;


    rgb_i2cRead(1, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.proximity[i] = rgb_raw[i];

    rgb_i2cRead(0, rgb_raw);
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
        g_rgb.proximity[i]|= ((u16)rgb_raw[i])<<8;

    rgb_i2cStop();
}
