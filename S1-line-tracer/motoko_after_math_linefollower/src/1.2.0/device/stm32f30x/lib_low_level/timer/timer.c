#include "timer.h"
#include "stm32f30x_tim.h"
#include "../core/core_cmFunc.h"
 

volatile time_t __system_time__;

volatile u16 __event_timer_cnt__[EVENT_TIMER_COUNT];
volatile u16 __event_timer_csr__[EVENT_TIMER_COUNT];
volatile u16 __event_timer_flag__[EVENT_TIMER_COUNT];


void timer_init()
{
	u32 i;
	for (i = 0; i < EVENT_TIMER_COUNT; i++)
	{
		__event_timer_cnt__[i] = 1024;
		__event_timer_csr__[i] = 1024;
		__event_timer_flag__[i] = 0;
	}

	__system_time__ = 0;

 
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);


    TIM_TimeBaseInitTypeDef timer; 
    timer.TIM_Prescaler = 280; //(84 - 1);
    timer.TIM_CounterMode = TIM_CounterMode_Up;
    timer.TIM_Period = 50 - 1; 
    timer.TIM_ClockDivision = TIM_CKD_DIV1;
    timer.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TIM3, &timer); 
    
    TIM_Cmd(TIM3, ENABLE); 

   TIM3->DIER |= TIM_DIER_UIE; // Enable interrupt on update event

 

    NVIC_InitTypeDef nvicStructure;
    nvicStructure.NVIC_IRQChannel = TIM3_IRQn; 
    nvicStructure.NVIC_IRQChannelPreemptionPriority = 0;
    nvicStructure.NVIC_IRQChannelSubPriority = 1;
    nvicStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&nvicStructure);
} 
	 
void TIM3_IRQHandler()
{
	u32 i; 
	for (i = 0; i < EVENT_TIMER_COUNT; i++)
	{
		if (__event_timer_cnt__[i])
			__event_timer_cnt__[i]--;
		else
		{
			__event_timer_cnt__[i] = __event_timer_csr__[i];
			__event_timer_flag__[i] = 1;
		}
	}
	__system_time__++;

	TIM_ClearITPendingBit(TIM3, TIM_IT_Update);
	// TIM6->SR &= ~TIM_SR_UIF; // Interrupt has been handled
}

void timer_delay_loops(u32 loops)
{
	while (loops--)
		__asm("nop");
}

time_t timer_get_time()
{
	volatile time_t time;
	
	__disable_irq();
	time = __system_time__;
	__enable_irq();
	
	return (time/10);
}

void timer_delay_ms(u32 ms)
{
	volatile time_t time_end = (time_t)ms + timer_get_time();
	while (time_end > timer_get_time())
		sleep();
}


void event_timer_set_period(u32 id, u16 period)
{
	__disable_irq();
	period*= 10;
	__event_timer_cnt__[id] = period;
	__event_timer_csr__[id] = period;
	__event_timer_flag__[id] = 0;
	__enable_irq();
}

void event_timer_wait(u32 id)
{
	while (__event_timer_flag__[id] == 0)
		sleep();

	__disable_irq();
	__event_timer_flag__[id] = 0;
	__enable_irq();
}

u32 event_timer_get_flag(u32 id)
{
	volatile u32 res;
	__disable_irq();
	res = __event_timer_flag__[id];
	__enable_irq();

	return res;
}

void event_timer_clear_flag(u32 id)
{
	__disable_irq();
	__event_timer_flag__[id] = 0;
	__enable_irq();
}
