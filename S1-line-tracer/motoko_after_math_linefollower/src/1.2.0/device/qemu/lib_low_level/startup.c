#include "lib_low_level.h"


// Memory locations defined by the linker
extern uint32_t __heap_start[];
extern uint32_t __StackTop[];
extern uint32_t __data_start__[], __data_end__[];
extern uint32_t __bss_start__[], __bss_end__[];
extern uint32_t __etext[];                // End of code/flash

void _reset_init(void)    __attribute__((naked, aligned(2)));
extern int main(void);       


//  Default interrupt handler
void __attribute__((interrupt("IRQ"))) Default_Handler()
{
    printf("default handler\n" );

    while (1)
		__asm("nop");
}

void __attribute__((interrupt("IRQ"))) Testing_Handler()
{
    printf("inside testing handler\n" );

    while (1)
        __asm("nop");
}


/* Weak definitions of handlers point to Default_Handler if not implemented */
void NMI_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void HardFault_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void SVC_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void PendSV_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void SysTick_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void IRQ_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void TIM_IRQHandler()          __attribute__ ((weak, alias("Default_Handler")));



// ----------------------------------------------------------------------------------
// Interrupt vector table (loaded into flash memory at 0x000)
//


void (* const InterruptVector[])() __attribute__ ((section(".isr_vector"), aligned(2))) = {
    (void(*)(void)) (int)__StackTop,                // Initial stack pointer
    _reset_init,                                    // Reset handler
    NMI_Handler,
    HardFault_Handler,
    0,
    0,
    0,
    0,
    0,
    0, 
    0,
    SVC_Handler,
    0,
    0,
    PendSV_Handler,
    SysTick_Handler,
    IRQ_Handler
};


void _reset_init(void)
{
    // Copy values to initialize data segment
    uint32_t *fr = __etext;
    uint32_t *to = __data_start__;
    unsigned int len = __data_end__ - __data_start__;
    while(len--)
        *to++ = *fr++;

    main(); 
}