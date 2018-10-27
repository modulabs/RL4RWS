#include "drv8834.h"


#define DRV8834_M_GPIO		GPIOB
#define DRV8834_M			((u32)(1<<4))

#define DRV8834_A_PHASE_GPIO	GPIOB
#define DRV8834_A_PHASE			((u32)(1<<5))

#define DRV8834_B_PHASE_GPIO	GPIOA
#define DRV8834_B_PHASE			((u32)(1<<15))

//#define CUSTOM_BRIDGE 1

void drv8834_init()
{
	GPIO_InitTypeDef  GPIO_InitStructure;

	GPIO_InitStructure.GPIO_Pin = DRV8834_M;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

	GPIO_Init(DRV8834_M_GPIO, &GPIO_InitStructure);
	DRV8834_M_GPIO->BRR = DRV8834_M;


	GPIO_InitStructure.GPIO_Pin = DRV8834_A_PHASE;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

	GPIO_Init(DRV8834_A_PHASE_GPIO, &GPIO_InitStructure);


	GPIO_InitStructure.GPIO_Pin = DRV8834_B_PHASE;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

	GPIO_Init(DRV8834_B_PHASE_GPIO, &GPIO_InitStructure);

	drv8834_run(0, 0);
}


void drv8834_run(i32 left_pwm, i32 right_pwm)
{
	if (left_pwm > 0)
	{
		DRV8834_B_PHASE_GPIO->BRR = DRV8834_B_PHASE;
	}
	else
	{
		DRV8834_B_PHASE_GPIO->BSRR = DRV8834_B_PHASE;
		left_pwm = -left_pwm;
	}

	if (right_pwm > 0)
	{
		DRV8834_A_PHASE_GPIO->BRR = DRV8834_A_PHASE;
	}
	else
	{
		DRV8834_A_PHASE_GPIO->BSRR = DRV8834_A_PHASE;
		right_pwm = -right_pwm;
	}

	if (left_pwm > SPEED_MAX)
		left_pwm = SPEED_MAX;

	if (right_pwm > SPEED_MAX)
		right_pwm = SPEED_MAX;

	#if CUSTOM_BRIDGE == 1
	pwm_set(SPEED_MAX - right_pwm, SPEED_MAX - left_pwm);
	#else
	pwm_set(right_pwm, left_pwm);
	#endif
}
