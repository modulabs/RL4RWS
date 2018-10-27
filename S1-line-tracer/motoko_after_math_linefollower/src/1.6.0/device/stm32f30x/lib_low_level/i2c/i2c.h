#ifndef _I2C_H_
#define _I2C_H_

#include "../lib_low_level.h"

#define SOFTWARE_I2C    1
// #define HARDWARE_I2C    1


#ifdef SOFTWARE_I2C

#define RCC_AHBPeriph_GPIO_I2C RCC_AHBPeriph_GPIOB

#define SCL     	6 
#define SDA     	7
#define I2C_GPIO    GPIOB

#define NO_I2C_ACK 0
#define OK_I2C_ACK 1

#endif

void i2c_0_init();
u8 i2c_read_reg(u8 dev_addr, u8 reg_addr);
void i2c_write_reg(u8 dev_addr, u8 reg_addr, u8 data);


void i2cStart();
void i2cStop();
int i2cWrite(u8 a); 
u8 i2cRead(u8  ack);

#endif
