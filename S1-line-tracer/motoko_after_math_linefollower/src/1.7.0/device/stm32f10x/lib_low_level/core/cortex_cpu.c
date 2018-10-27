#include "cortex_cpu.h"



void sys_tick_init()
{
  SysTick->LOAD  = 32000;                         /* set reload register */
  SysTick->VAL   = 0;                             /* Load the SysTick Counter Value */
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;       /* Enable SysTick IRQ and SysTick */
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
}