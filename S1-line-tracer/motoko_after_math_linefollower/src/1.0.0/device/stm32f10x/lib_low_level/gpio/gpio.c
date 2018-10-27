#include "gpio.h"
 
  
void gpio_init()
{
	GPIO_InitTypeDef  GPIO_InitStructure;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);


    /* Configure the GPIO_LED pin */                   
    GPIO_InitStructure.GPIO_Pin = LED_1;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure);

    /* Configure the GPIO_KEY pin */                 
    GPIO_InitStructure.GPIO_Pin = USER_KEY;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure);

    GPIO_WriteBit(GPIOB, LED_1, Bit_RESET);

    led_off(LED_1);
}

void led_on(u32 led)
{
    if (led == LED_1)
        GPIO_ResetBits(GPIOB, LED_1);
}

void led_off(u32 led)
{
    if (led == LED_1)
        GPIO_SetBits(GPIOB, LED_1);
}


u32 get_key()
{
    return ((~GPIO_ReadInputData(GPIOB))&USER_KEY);
}