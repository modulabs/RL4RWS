#include "gpio.h"

  
void gpio_init()  
{ 
	GPIO_InitTypeDef  GPIO_InitStructure;

	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOB, ENABLE);
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOC, ENABLE);

     
	GPIO_InitStructure.GPIO_Pin = LED_0;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

	GPIO_Init(GPIO_BASE, &GPIO_InitStructure);


	GPIO_InitStructure.GPIO_Pin = TURBO_FAN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

	GPIO_Init(TURBO_FAN_GPIO, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = KEY;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN; 
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

	GPIO_Init(GPIO_BASE, &GPIO_InitStructure);

	led_on(LED_0);
	led_off(TURBO_FAN);
} 

void led_on(u32 led)
{
	if (led&LED_0)
		GPIO_BASE->BSRR = LED_0;

	if (led&TURBO_FAN)
		TURBO_FAN_GPIO->BRR = TURBO_FAN;
}

void led_off(u32 led)
{
	if (led&LED_0)
		GPIO_BASE->BRR = LED_0;

	if (led&TURBO_FAN)
		TURBO_FAN_GPIO->BSRR = TURBO_FAN;
}

u32 get_key() 
{
	return (~GPIO_BASE->IDR)&KEY;
}
