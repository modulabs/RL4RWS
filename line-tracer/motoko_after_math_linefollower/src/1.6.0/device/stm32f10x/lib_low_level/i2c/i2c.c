#include "i2c.h"

/*
#define SDA         7
#define SCL         6
#define I2C_GPIO    GPIOB
*/

#define SDA         1
#define SCL         0
#define I2C_GPIO    GPIOC

 

void i2c_delay()
{
    u32 loops = 1; //20 
    while (loops--)
        __asm("nop"); 
}

void SetLowSDA() 
{
    __disable_irq();
  
    GPIOC->BRR = 1<<SDA;       /*pin to 0*/

   // GPIOC->CRL&=~( ((1<<(SDA+0)*4)) | ((1<<(SDA+1)*4)) | ((1<<(SDA+2)*4)) | ((1<<(SDA+3)*4)));

    GPIOC->CRL&=~(0x0f<<(SDA*4));
    GPIOC->CRL|= 1<<(SDA*4);    /*pin as output*/

    __enable_irq();
    i2c_delay();
}

void SetHighSDA() 
{   
    __disable_irq();

    //GPIOC->CRL&=~( ((1<<(SDA+0)*4)) | ((1<<(SDA+1)*4)) | ((1<<(SDA+2)*4)) | ((1<<(SDA+3)*4)));
    GPIOC->CRL&=~(0x0f<<(SDA*4));
    
    // GPIOC->CRL|= 1<<((SDA+2)*4);    /*pin as input*/
    GPIOC->CRL|= 1<<(2+SDA*4);    /*pin as input*/


    __enable_irq(); 
    i2c_delay(); 
}

void SetLowSCL() 
{   
    GPIOC->BRR = (1<<SCL);
    i2c_delay();
} 

void SetHighSCL()
{
    GPIOC->BSRR = (1<<SCL);
    i2c_delay();
}

void i2c_0_init()
{
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);
    
    GPIOC->CRL|= 1<<(SCL*4);    /*pin as output*/
    GPIOC->CRL|= 1<<(SDA*4);    /*pin as output*/

    SetHighSCL();
    SetLowSDA(); 
    SetHighSDA();
}



void i2cStart()
{
    SetHighSCL();
    SetHighSDA();

    SetHighSCL();
    SetLowSDA();

    SetLowSCL();
    SetHighSDA();
}


void i2cStop()
{ 
    SetLowSCL();
    SetLowSDA();

    SetHighSCL();
    SetLowSDA();

    SetHighSCL();
    SetHighSDA();
}



int i2cWrite(u8 a)
{
    u8  i;
    u8  return_ack;

    for (i=0; i<8; i++)
    {
        SetLowSCL();
    
        if (a & 0x80)          
            SetHighSDA();
        else
            SetLowSDA();

        SetHighSCL();
        a <<= 1;
    }

    SetLowSCL();
    SetHighSDA();
    SetHighSCL();


    if (GPIOC->IDR&(1<<SDA))
        return_ack = NO_I2C_ACK;      
    else
        return_ack = OK_I2C_ACK;
    
    SetLowSCL();

    i2c_delay();
  
    return(return_ack);
}


u8 i2cRead(u8  ack)
{
    u8  i;
    u8  caracter = 0x00;

    SetLowSCL();
    SetHighSDA();

    for (i=0; i<8; i++)
    {
        caracter = caracter << 1;
        SetHighSCL();
        
        if (GPIOC->IDR&(1<<SDA))
            caracter = caracter  + 1;
        
        SetLowSCL();
    }

    if (ack)
    {                          
        SetLowSDA();
    }
    
    SetHighSCL();
    SetLowSCL();

    i2c_delay();

    return (caracter);
}


void i2c_write_reg(u8 dev_adr, u8 reg_adr, u8 value)
{
    i2cStart();
    i2cWrite(dev_adr);  /*slave address, write command*/
    i2cWrite(reg_adr);  /*send reg address*/
    i2cWrite(value);
    i2cStop();
}

u8 i2c_read_reg(u8 dev_adr, u8 reg_adr)
{
    u8 res;
    
    i2cStart();
    i2cWrite(dev_adr);  /*slave address, write command*/
    i2cWrite(reg_adr);  /*send reg address*/
    
    i2cStart();
    i2cWrite(dev_adr|0x01); /*slave address, read command*/
    res = i2cRead(0);   /*read data*/
    i2cStop();
        
    return res;
}