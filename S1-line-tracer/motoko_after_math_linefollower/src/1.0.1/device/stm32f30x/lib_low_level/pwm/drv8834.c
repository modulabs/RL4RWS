#include "drv8834.h"

#define DRV8834_PHASE_GPIO	GPIOB
#define DRV8834_A_PHASE		((u32)(1<<(u32)5))
#define DRV8834_B_PHASE		((u32)(1<<(u32)3))
#define DRV8834_M			((u32)(1<<(u32)4))



void drv8834_init()
{
	GPIO_InitTypeDef  GPIO_InitStructure;


	//DBGMCU->CR = 0;

   
	GPIO_InitStructure.GPIO_Pin = DRV8834_A_PHASE | DRV8834_M | DRV8834_B_PHASE;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL; 

	GPIO_Init(DRV8834_PHASE_GPIO, &GPIO_InitStructure); 


	GPIO_InitStructure.GPIO_Pin = DRV8834_B_PHASE;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL; 

	GPIO_Init(DRV8834_PHASE_GPIO, &GPIO_InitStructure); 
	GPIO_PinAFConfig(DRV8834_PHASE_GPIO, GPIO_PinSource3, GPIO_AF_15);


	GPIO_InitStructure.GPIO_Pin = (1<<15);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP; 
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL; 

	GPIO_Init(GPIOA, &GPIO_InitStructure);  


	DRV8834_PHASE_GPIO->BRR = DRV8834_M;
	drv8834_run(0, 0);
}


void drv8834_run(i16 left_pwm, i16 right_pwm)
{
	if (left_pwm > 0)
	{
		DRV8834_PHASE_GPIO->BSRR|= DRV8834_B_PHASE;
		GPIOA->BSRR = (1<<15);
	}
	else
	{
		DRV8834_PHASE_GPIO->BRR|= DRV8834_B_PHASE;
		GPIOA->BRR = (1<<15);
		left_pwm = -left_pwm;
	}
	
	if (right_pwm > 0)
		DRV8834_PHASE_GPIO->BRR|= DRV8834_A_PHASE;
	else
	{
		DRV8834_PHASE_GPIO->BSRR|= DRV8834_A_PHASE;
		right_pwm = -right_pwm;
	}

	if (left_pwm > SPEED_MAX)
		left_pwm = SPEED_MAX;

	if (right_pwm > SPEED_MAX)
		right_pwm = SPEED_MAX;

	pwm_set(right_pwm, left_pwm);
}