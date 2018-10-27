/******************************************************************************
 * @file      start_stm32f10x.c
 * @author    SmartRobot
 * @version   V0.1
 * @date      04/15/2013
 *******************************************************************************/
/* Private typedef -----------------------------------------------------------*/
typedef void( *const intfunc )( void );
/* init value for the stack pointer. defined in linker script */
//extern unsigned long _estack;
//extern unsigned long _ld_stack_address;
/* Private function prototypes -----------------------------------------------*/
void Reset_Handler(void) __attribute__((__interrupt__));

__attribute__ ((section(".isr_vectorsflash")))    //linker scriptor에서 사용됨

/* vector table*/
void (* g_pfnVectors[])(void) =
{
    (intfunc)((unsigned long)0x20000000 + 0x1000), /* The stack pointer after relocation */
    Reset_Handler,                      /* Reset Handler */
};
int a=1;
int b;
void Reset_Handler(void)
{
    unsigned long StartUpCounter = 0, HSEStatus = 0;
    // HSI or HSE 선택
    // PLLSRC
    // 8MHz/2 x 18 = 72MHz
    // 12MHz x 6 = 72MHz


    ////HSI(0x1) or HSE ON(0x1<<16)
    *(volatile unsigned long *) 0x40021000 |= 0x1;            //RCC_CR - HSION    Set HSION bit
    //*(volatile unsigned long *) 0x40021000 |= 0x1<<16;        //RCC_CR  CR_HSEON_Set
    // 설정된 clock 이 설정 되었는지 확인
    do
    {
    //   HSEStatus = (*(volatile unsigned long *) 0x40021000 & 0x1<<17);             // HSE 인경우
       HSEStatus = (*(volatile unsigned long *) 0x40021000 & 0x1<<1);             // HSI 인경우
       StartUpCounter++;
    } while((HSEStatus == 0) && (StartUpCounter != 0x0500));

    /////// PLL 설정 내부 일 경우 36MHz 외부 일 경우 72Mhz로 설정함
    *(volatile unsigned long *) 0x40021004 &= ~(0xF<<18 | 0x1<<17 | 0x1<<16);  //0x3F0000;      //RCC_CFGR
    *(volatile unsigned long *) 0x40021004 |= (0x7<<18);                       //RCC_CFGR       //내부 4MHz
    //*(volatile unsigned long *) 0x40021004 |= (0x7<<18 | 0x1<<16);           //0x1D0000;      //RCC_CFGR    //8MHz
    //*(volatile unsigned long *) 0x40021004 |= (0x4<<18 | 0x1<<16);           //0x110000;      //RCC_CFGR    //12MHz
    *(volatile unsigned long *) 0x40021000 |= 0x01 << 24/*0x1000000*/;         //PLLON
    while( ((*(volatile unsigned long *) 0x40021000) & 0x01 << 25/*0x2000000*/) == 0);       //PLLRDY

    /////PLL을 선택한다.
    /////Bits 1:0 SW : System clock switch
    //00: HSI selected as system clock
    //01: HSE selected as system clock
    //10: PLL selected as system clock   <----------------- 선택됨
    //11: not allowed
    *(volatile unsigned long *) 0x40021004 &= ~0x3;
    *(volatile unsigned long *) 0x40021004 |= 0x2;
    while( ((*(volatile unsigned long *) 0x40021004) & 0xC) != 0x08);

    //APB2에 있는 UART 등 주변장치에 Clock 소스 동작제어
    //UART가 동작되기 위해서는 GPIO와 Alternation Function IO가 동작상태에 있어야 함
    *(volatile unsigned long *) 0x40021018 |= 0x1 << 14 | 0x1 << 2 | 0x1 << 0;         // uart/ IOPA EN / AFIO EN

     /* Configure the GPIO ports */
    *(volatile unsigned long *) 0x40010804 = 0x888444B4;
    *(volatile unsigned long *) 0x40011C00 = 0x33444444;
    *(volatile unsigned long *) 0x40011C04 = 0x44444433;

     /* USART1 configuration ------------------------------------------------------*/
     /* USART1 configured as follow:
      - BaudRate = 19200 baud
      - Word Length = 8 Bits
      - One Stop Bit
      - No parity
      - Hardware flow control disabled (RTS and CTS signals)
      - Receive and transmit enabled
     */
    *(volatile unsigned long *) 0x40013810 = 0x0;              // 1 stop bit
    *(volatile unsigned long *) 0x4001380C = 0x200C;        // 8bit no parity
    *(volatile unsigned long *) 0x40013814 = 0x0;
    *(volatile unsigned long *) 0x40013808 = 19 << 4 | 8;   // 내부 OSC 32Mhz인 경우 115200bps로 통신 속도 설정
    *(volatile unsigned long *) 0x4001380C |= 0x2000;
    while(1)
    {
      while( !((*(volatile unsigned long *) 0x40013800) & 0x80) ) ;
         *(volatile unsigned long *) 0x40013804 = 'c';
    }
}
