#include "cortex_cpu.h"
#include "systick.h"
/**
 @brief return main stack pointer value

 @return stack pointer value
*/
uint32_t __get_MSP(void)
{
  uint32_t result = 0;

  __asm volatile ("MOV %0, sp\n\t" 
                  "MOV r0, %0 \n\t"
                  "BX  lr     \n\t"  : "=r" (result) );
  return(result);
}

/*set main stack pointer value*/

/**
 @brief set main stack pointer value

 @param topOfMainStack stack pointer value
*/
void __set_MSP_(u32 topOfMainStack)   
{   
  __asm volatile ("MOV sp, %0\n\t"   
                  "BX  lr     \n\t" : : "r" (topOfMainStack) );   
} 


void sys_tick_init()
{  
/*  
  *(PIC + VIC_INTENABLE) = PIC_TIMER01;

  *TIMER0 = 100000; 
  *(TIMER0 + TIMER_CONTROL) = TIMER_EN | TIMER_PERIODIC | TIMER_32BIT | TIMER_INTEN;
  */

  SYST_RVR = 4000;
  SYST_CVR = 0;
  SYST_CSR = SysTick_CSR_ENABLE_MASK | SysTick_CSR_TICKINT_MASK | SysTick_CSR_CLKSOURCE_MASK;
  
  
} 


/* sleep cpu */
void sleep()
{
  
}


void sytem_clock_init()
{
  
}