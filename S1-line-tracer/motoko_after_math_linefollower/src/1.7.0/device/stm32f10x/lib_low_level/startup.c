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
	while (1)
		__asm("nop");
}


// Handle hard faults
static void __attribute__((naked)) HardFault_Handler(void) 
{
    u32 loops;
    while (1)
    {
        led_on(LED_1);
        loops = 10000000;
        while (loops--)
            __asm("nop");
        

        led_off(LED_1);
        loops = 10000000;
        while (loops--)
            __asm("nop");
    }

    while (1)
        __asm("nop");
}

/* Weak definitions of handlers point to Default_Handler if not implemented */
void NMI_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void MemManage_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void BusFault_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void UsageFault_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void DebugMon_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void PendSV_Handler()       __attribute__ ((weak, alias("Default_Handler")));
void SVC_Handler()          __attribute__ ((weak, alias("Default_Handler")));
void SysTick_Handler()      __attribute__ ((weak, alias("Default_Handler")));

void WWDG_IRQHandler() __attribute__((weak, alias("Default_Handler")));                   /* Window WatchDog              */
void PVD_IRQHandler() __attribute__((weak, alias("Default_Handler")));                    /* PVD through EXTI Line detection */
void TAMP_STAMP_IRQHandler() __attribute__((weak, alias("Default_Handler")));             /* Tamper and TimeStamps through the EXTI line */
void RTC_WKUP_IRQHandler() __attribute__((weak, alias("Default_Handler")));               /* RTC Wakeup through the EXTI line */

void FLASH_IRQHandler() __attribute__((weak, alias("Default_Handler")));                  /* FLASH                        */
void RCC_IRQHandler() __attribute__((weak, alias("Default_Handler")));                    /* RCC                          */
void EXTI0_IRQHandler() __attribute__((weak, alias("Default_Handler")));                  /* EXTI Line0                   */
void EXTI1_IRQHandler() __attribute__((weak, alias("Default_Handler")));                  /* EXTI Line1                   */
void EXTI2_IRQHandler() __attribute__((weak, alias("Default_Handler")));                  /* EXTI Line2                   */
void EXTI3_IRQHandler() __attribute__((weak, alias("Default_Handler")));                  /* EXTI Line3                   */
void EXTI4_IRQHandler() __attribute__((weak, alias("Default_Handler")));                  /* EXTI Line4                   */

void DMA1_Stream0_IRQHandler() __attribute__((weak, alias("Default_Handler")));           /* DMA1 Stream 0                */
void DMA1_Stream1_IRQHandler() __attribute__((weak, alias("Default_Handler")));           /* DMA1 Stream 1                */
void DMA1_Stream2_IRQHandler() __attribute__((weak, alias("Default_Handler")));           /* DMA1 Stream 2                */
void DMA1_Stream3_IRQHandler() __attribute__((weak, alias("Default_Handler")));           /* DMA1 Stream 3                */
void DMA1_Stream4_IRQHandler() __attribute__((weak, alias("Default_Handler")));           /* DMA1 Stream 4                */
void DMA1_Stream5_IRQHandler() __attribute__((weak, alias("Default_Handler")));           /* DMA1 Stream 5                */
void DMA1_Stream6_IRQHandler() __attribute__((weak, alias("Default_Handler")));           /* DMA1 Stream 6                */

 void ADC1_2_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void USB_HP_CAN_TX_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void USB_LP_CAN_RX0_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void CAN_RX1_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void CAN_SCE_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void EXTI9_5_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM1_BRK_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM1_UP_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM1_TRG_COM_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM1_CC_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM2_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM3_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM4_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void I2C1_EV_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void I2C1_ER_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void I2C2_EV_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void I2C2_ER_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void SPI1_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void SPI2_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void USART1_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void USART2_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void USART3_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void EXTI15_10_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void RTCAlarm_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void USBWakeup_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM8_BRK_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM8_UP_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM8_TRG_COM_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM8_CC_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void ADC3_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void FSMC_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void SDIO_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM5_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void SPI3_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void UART4_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void UART5_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM6_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void TIM7_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void DMA2_Channel1_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void DMA2_Channel2_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void DMA2_Channel3_IRQHandler() __attribute__((weak, alias("Default_Handler")));
 void DMA2_Channel4_5_IRQHandler() __attribute__((weak, alias("Default_Handler"))); 




// ----------------------------------------------------------------------------------
// Interrupt vector table (loaded into flash memory at 0x000)
//
void (* const InterruptVector[])() __attribute__ ((section(".isr_vector"), aligned(2))) = {
    (void(*)(void)) (int)__StackTop,                // Initial stack pointer
    _reset_init,                                    // Reset handler
    NMI_Handler,
    HardFault_Handler,
    MemManage_Handler,
    BusFault_Handler,
    UsageFault_Handler,
    0,
    0,
    0,
    0,
    SVC_Handler,
    DebugMon_Handler,
    0,
    PendSV_Handler,
    SysTick_Handler,

    /* Interrupts */
    WWDG_IRQHandler,                   /* Window WatchDog              */
    PVD_IRQHandler,                    /* PVD through EXTI Line detection */
    TAMP_STAMP_IRQHandler,             /* Tamper and TimeStamps through the EXTI line */
    RTC_WKUP_IRQHandler,               /* RTC Wakeup through the EXTI line */
    FLASH_IRQHandler,                  /* FLASH                        */
    RCC_IRQHandler,                    /* RCC                          */
    EXTI0_IRQHandler,                  /* EXTI Line0                   */
    EXTI1_IRQHandler,                  /* EXTI Line1                   */
    EXTI2_IRQHandler,                  /* EXTI Line2                   */
    EXTI3_IRQHandler,                  /* EXTI Line3                   */
    EXTI4_IRQHandler,                  /* EXTI Line4                   */
    DMA1_Stream0_IRQHandler,           /* DMA1 Stream 0                */
    DMA1_Stream1_IRQHandler,           /* DMA1 Stream 1                */
    DMA1_Stream2_IRQHandler,           /* DMA1 Stream 2                */
    DMA1_Stream3_IRQHandler,           /* DMA1 Stream 3                */
    DMA1_Stream4_IRQHandler,           /* DMA1 Stream 4                */
    DMA1_Stream5_IRQHandler,           /* DMA1 Stream 5                */
    DMA1_Stream6_IRQHandler,           /* DMA1 Stream 6                */
   
    ADC1_2_IRQHandler,
    USB_HP_CAN_TX_IRQHandler,
    USB_LP_CAN_RX0_IRQHandler,
    CAN_RX1_IRQHandler,
    CAN_SCE_IRQHandler,
    EXTI9_5_IRQHandler,
    TIM1_BRK_IRQHandler,
    TIM1_UP_IRQHandler,
    TIM1_TRG_COM_IRQHandler,
    TIM1_CC_IRQHandler,
    TIM2_IRQHandler,
    TIM3_IRQHandler,
    TIM4_IRQHandler,
    I2C1_EV_IRQHandler,
    I2C1_ER_IRQHandler,
    I2C2_EV_IRQHandler,
    I2C2_ER_IRQHandler,
    SPI1_IRQHandler,
    SPI2_IRQHandler,
    USART1_IRQHandler,
    USART2_IRQHandler,
    USART3_IRQHandler,
    EXTI15_10_IRQHandler,
    RTCAlarm_IRQHandler,
    USBWakeup_IRQHandler,
    TIM8_BRK_IRQHandler,
    TIM8_UP_IRQHandler,
    TIM8_TRG_COM_IRQHandler,
    TIM8_CC_IRQHandler,
    ADC3_IRQHandler,
    FSMC_IRQHandler,
    SDIO_IRQHandler,
    TIM5_IRQHandler,
    SPI3_IRQHandler,
    UART4_IRQHandler,
    UART5_IRQHandler,
    TIM6_IRQHandler,
    TIM7_IRQHandler,
    DMA2_Channel1_IRQHandler,
    DMA2_Channel2_IRQHandler,
    DMA2_Channel3_IRQHandler,
    DMA2_Channel4_5_IRQHandler 
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