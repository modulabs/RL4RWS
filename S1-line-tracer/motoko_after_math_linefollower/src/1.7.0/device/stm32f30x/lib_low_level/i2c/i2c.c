#include "i2c.h"

#ifdef SOFTWARE_I2C

void i2c_delay()
{
    u32 loops = 10;
    while (loops--)
        __asm("nop"); 
} 
 
void SetLowSDA() 
{
    GPIO_InitTypeDef GPIO_InitStruct;

    GPIO_InitStruct.GPIO_Pin = (1<<SDA); 
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
    GPIO_Init(I2C_GPIO, &GPIO_InitStruct);

    GPIO_ResetBits(I2C_GPIO, 1<<SDA);

    i2c_delay();
} 

void SetHighSDA() 
{    
    GPIO_InitTypeDef GPIO_InitStruct; 

    GPIO_InitStruct.GPIO_Pin = (1<<SDA); 
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
    GPIO_Init(I2C_GPIO, &GPIO_InitStruct);


    GPIO_SetBits(I2C_GPIO, 1<<SDA);

    i2c_delay(); 
} 

void SetLowSCL() 
{   
    GPIO_ResetBits(I2C_GPIO, 1<<SCL);
    i2c_delay();
} 

void SetHighSCL()
{
    GPIO_SetBits(I2C_GPIO, 1<<SCL);
    i2c_delay();
}

void i2c_0_init()
{
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIO_I2C, ENABLE);
 
    GPIO_InitTypeDef GPIO_InitStruct;
    
    GPIO_InitStruct.GPIO_Pin = (1<<SDA)|(1<<SCL); 
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
    GPIO_Init(I2C_GPIO, &GPIO_InitStruct);

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


    if (I2C_GPIO->IDR&(1<<SDA))
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
        
        if (I2C_GPIO->IDR&(1<<SDA))
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

#endif



#ifdef HARDWARE_I2C

#include "stm32f30x_i2c.h"

void i2c_0_init()
{
    GPIO_InitTypeDef GPIO_InitStruct;
    I2C_InitTypeDef I2C_InitStruct;

    // enable APB1 peripheral clock for I2C2
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C2, ENABLE);
    // enable clock for SCL and SDA pins
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOF, ENABLE);


    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_1 | GPIO_Pin_2; // we are going to use PB6 and PB7
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF;   // set pins to alternate function
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;  // set GPIO speed
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // set output to open drain --> the line has to be only pulled low, not driven high
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_UP;   // enable pull up resistors
    GPIO_Init(GPIOF, &GPIO_InitStruct); // init GPIOB

    // Connect I2C2 pins to AF
    GPIO_PinAFConfig(GPIOF, GPIO_PinSource1, GPIO_AF_I2C2); // SCL
    GPIO_PinAFConfig(GPIOF, GPIO_PinSource2, GPIO_AF_I2C2); // SDA
 
    // configure I2C2 
    I2C_InitStruct.I2C_ClockSpeed = 100000; // 100kHz
    I2C_InitStruct.I2C_Mode = I2C_Mode_I2C; // I2C mode
    I2C_InitStruct.I2C_DutyCycle = I2C_DutyCycle_2; // 50% duty cycle --> standard
    I2C_InitStruct.I2C_OwnAddress1 = 0x00;  // own address, not relevant in master mode
    I2C_InitStruct.I2C_Ack = I2C_Ack_Disable;   // disable acknowledge when reading (can be changed later on)
    I2C_InitStruct.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit; // set address length to 7 bit addresses
    I2C_Init(I2C2, &I2C_InitStruct);    // init I2C2

    // enable I2C2
    I2C_Cmd(I2C2, ENABLE);
}


void i2c_write_reg(u8 dev_adr, u8 reg_adr, u8 value)
{
    I2C_GenerateSTART(I2C2, ENABLE);
    /* check start bit flag */
    while (!I2C_GetFlagStatus(I2C2, I2C_FLAG_SB)) 
      __asm("nop");

    /*send write command to chip*/
    I2C_Send7bitAddress(I2C2, dev_adr, I2C_Direction_Transmitter);

    /*check master is now in Tx mode*/
    while(!I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED)) __asm("nop");
    /*mode register address*/
    I2C_SendData(I2C2, reg_adr);
    /*wait for byte send to complete*/
    while(!I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTED)) __asm("nop");
    /*clear bits*/
    I2C_SendData(I2C2, value);
    /*wait for byte send to complete*/
    while(!I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTED)) __asm("nop");
    /*generate stop*/
    I2C_GenerateSTOP(I2C2, ENABLE);
    /*stop bit flag*/
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_STOPF)) __asm("nop");
}

u8 i2c_read_reg(u8 dev_adr, u8 reg_adr)
{
    u8 res;

    /*re-enable ACK bit incase it was disabled last call*/
    I2C_AcknowledgeConfig(I2C2, ENABLE);
    /* Test on BUSY Flag */
    while (I2C_GetFlagStatus(I2C2,I2C_FLAG_BUSY));

    /* Enable the I2C peripheral */

    I2C_GenerateSTART(I2C2, ENABLE);
    /* Test on start flag */
    while (!I2C_GetFlagStatus(I2C2,I2C_FLAG_SB))  __asm("nop");;
    /* Send device address for write */
    I2C_Send7bitAddress(I2C2, dev_adr, I2C_Direction_Transmitter);
    /* Test on master Flag */
    while (!I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))  __asm("nop");;
    /* Send the device's internal address to write to */
    I2C_SendData(I2C2, reg_adr);
    /* Test on TXE FLag (data sent) */
    while (!I2C_GetFlagStatus(I2C2,I2C_FLAG_TXE))  __asm("nop");;

      /* Send START condition a second time (Re-Start) */
    I2C_GenerateSTART(I2C2, ENABLE);
    /* Test start flag */
    while (!I2C_GetFlagStatus(I2C2,I2C_FLAG_SB))  __asm("nop");;
    /* Send address for read */
    I2C_Send7bitAddress(I2C2, dev_adr, I2C_Direction_Receiver);
    /* Test Receive mode Flag */
    while (!I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))  __asm("nop");;
    /* load in all 6 registers */
    while (!I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_BYTE_RECEIVED))  __asm("nop");;
    res = I2C_ReceiveData(I2C2);
   
    /*enable NACK bit */
    I2C_NACKPositionConfig(I2C2, I2C_NACKPosition_Current);
    I2C_AcknowledgeConfig(I2C2, DISABLE);
    
    /* Send STOP Condition */
    I2C_GenerateSTOP(I2C2, ENABLE);
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_STOPF))  __asm("nop");; // stop bit flag
    


        
    return res;
}

#endif