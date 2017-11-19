#include "i2c.h"

#define SDA     7
#define SCL     6

 

void i2c_0_init()
{

}

void i2c_write_reg(u8 dev_adr, u8 reg_adr, u8 value)
{
	if (dev_adr)
		dev_adr = 0;

	if (reg_adr)
		reg_adr = 0;

	if (value)
		value = 0;
}

u8 i2c_read_reg(u8 dev_adr, u8 reg_adr)
{
	if (dev_adr)
		dev_adr = 0;

	if (reg_adr)
		reg_adr = 0;


    return 0xff;
}


void i2cStart()
{ 
    
}

void i2cStop()
{ 
    
}

int i2cWrite(u8 a)
{
    if (a)
    	return 0xff;

    return 0xff;
}

u8 i2cRead(u8  ack)
{
	if (ack)
		return 0xff;

	return 0xff;
}

