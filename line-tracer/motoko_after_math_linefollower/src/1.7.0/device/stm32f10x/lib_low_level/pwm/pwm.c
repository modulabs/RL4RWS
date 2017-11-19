#include "pwm.h"

#include "../stm32f10x_rcc.h"
#include "../gpio/stm32f10x_gpio.h"
#include "../timer/stm32f10x_tim.h"


#define PWM_BASE_CLOCK  SystemCoreClock
//#define PWM_FREQUENCY   4096
#define PWM_FREQUENCY   10000
#define PWM_PERIOD      ((SystemCoreClock/PWM_FREQUENCY) - 1)


#define PWM_CH_1 	(1<<13)	//right
#define PWM_CH_2 	(1<<14)	//left

void pwm_init()
{
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1 | RCC_APB2Periph_GPIOB, ENABLE);

    GPIO_InitTypeDef GPIO_InitStructure;


    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13|GPIO_Pin_14;

    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

    GPIO_Init(GPIOB, &GPIO_InitStructure);

    /* TIM1 Full remapping pins */
    GPIO_PinRemapConfig(GPIO_FullRemap_TIM1, ENABLE); 

    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;


  /* Time Base configuration */
  TIM_TimeBaseStructure.TIM_Prescaler = 0;
  TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
  TIM_TimeBaseStructure.TIM_Period = PWM_PERIOD;
  TIM_TimeBaseStructure.TIM_ClockDivision = 0;
  TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;

  TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);


  pwm_set(0, 0);

  /* TIM1 counter enable */
  TIM_Cmd(TIM1, ENABLE);

  /* TIM1 Main Output Enable */
  TIM_CtrlPWMOutputs(TIM1, ENABLE);

}

void pwm_set(u32 ch1, u32 ch2)
{
    TIM_OCInitTypeDef  TIM_OCInitStructure;


    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM2;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable;
    TIM_OCInitStructure.TIM_Pulse = 0;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
    TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;
    TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Set;
    TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;

  
    TIM_OCInitStructure.TIM_Pulse = (ch1*(PWM_PERIOD-1))/100;
    TIM_OC1Init(TIM1, &TIM_OCInitStructure);

    TIM_OCInitStructure.TIM_Pulse = (ch2*(PWM_PERIOD-1))/100;
    TIM_OC2Init(TIM1, &TIM_OCInitStructure);
}