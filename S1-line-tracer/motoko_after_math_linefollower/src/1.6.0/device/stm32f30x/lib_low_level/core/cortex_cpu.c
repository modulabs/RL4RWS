#include "cortex_cpu.h"



void sys_tick_init()
{
  SysTick->LOAD  = 168000;                       /* set reload register */
  NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Systick Interrupt */
  SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                    /* Enable SysTick IRQ and SysTi */
}

/* sleep cpu */
void sleep()
{
  __asm volatile("wfi");
}


/* ----------------------------------------------------------------------------
   -- Core clock
   ---------------------------------------------------------------------------- */


/* ----------------------------------------------------------------------------
   -- SystemInit()
   ---------------------------------------------------------------------------- */

void sytem_clock_init(void) 
{
  SystemInit();
 // SystemCoreClockUpdate();

}