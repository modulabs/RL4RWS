#include "gpio.h"

#include "gpio.h"

u32 g_mode_jumper;

volatile u32 	g_left_encoder,	g_right_encoder;

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


	GPIO_InitStructure.GPIO_Pin = KEY;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

	GPIO_Init(GPIO_BASE, &GPIO_InitStructure);

  g_mode_jumper = 0;


  GPIO_InitStructure.GPIO_Pin = 1<<10;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;

  GPIO_Init(GPIOA, &GPIO_InitStructure);

  if (GPIOA->IDR&(1<<10))
    g_mode_jumper = 1;


	led_on(LED_0);


	encoder_reset();


	EXTI_InitTypeDef EXTI_InitStructure;
	NVIC_InitTypeDef   NVIC_InitStructure;


	/* Configure PC6 and PC12 pin as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6|GPIO_Pin_12;
	GPIO_Init(GPIOC, &GPIO_InitStructure);



	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);

	/* Connect EXTI Line6 to PC6 pin */
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOC, EXTI_PinSource6);

	  /* Configure EXTI Line6 */
	EXTI_InitStructure.EXTI_Line = EXTI_Line6;
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

	/* Enable and set EXTI Line9-5 Interrupt to the lowest priority */
	NVIC_InitStructure.NVIC_IRQChannel = EXTI9_5_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x01;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x01;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);



	/* Connect EXTI Line12 to PC12 pin */
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOC, EXTI_PinSource12);

	  /* Configure EXTI Line12*/
	EXTI_InitStructure.EXTI_Line = EXTI_Line12;
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

	/* Enable and set EXTI Line15-10 Interrupt to the lowest priority */
	NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x01;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x01;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

}

void EXTI9_5_IRQHandler(void)
{
	g_left_encoder++;
	EXTI_ClearITPendingBit(EXTI_Line6);
}

void EXTI15_10_IRQHandler()
{
	g_right_encoder++;
	EXTI_ClearITPendingBit(EXTI_Line12);
}


void led_on(u32 led)
{
	if (led&LED_0)
		GPIO_BASE->BSRR = LED_0;
}

void led_off(u32 led)
{
	if (led&LED_0)
		GPIO_BASE->BRR = LED_0;
}

u32 get_key()
{
	return (~GPIO_BASE->IDR)&KEY;
}

u32 get_mode_jumper()
{
  return g_mode_jumper;
}

u32 left_encoder_read()
{
	return (g_left_encoder*ENCODER_CONSTANT)/1000;
}

u32 right_encoder_read()
{
	return (g_right_encoder*ENCODER_CONSTANT)/1000;
}

u32 encoder_get_distance()
{
	return (left_encoder_read() + right_encoder_read())/2;
}

void encoder_reset()
{
	g_left_encoder = 0;
	g_right_encoder = 0;
}
