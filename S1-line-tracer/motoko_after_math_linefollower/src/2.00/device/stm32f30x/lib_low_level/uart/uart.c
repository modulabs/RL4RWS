#include "uart.h"
#include "stm32f30x_usart.h"


#define USART   USART1

#define UART_RX_BUFFER_SIZE   32

volatile u32 g_uart_rd_ptr, g_uart_wr_ptr;
volatile u8 g_uart_rx_buffer[UART_RX_BUFFER_SIZE];



void uart_write(char c)
{
  while( !(USART->ISR & USART_FLAG_TXE) )
		__asm("nop");

	USART->TDR = c;
}


char uart_read()
{
	u16 res;

	while( (res = uart_is_char()) == 0xffff )
		__asm("nop");

  return res;
}

/*
u16 uart_is_char()
{
  u16 res;
  if (USART->ISR & USART_FLAG_RXNE)
    res = USART->RDR;
  else
    res = 0xffff;

  return res;
}
*/

u16 uart_is_char()
{
  u16 res;
  if (g_uart_rd_ptr == g_uart_wr_ptr)
    res = 0xffff;
  else
  {
    res = g_uart_rx_buffer[g_uart_rd_ptr];

    g_uart_rd_ptr++;
    if (g_uart_rd_ptr >= UART_RX_BUFFER_SIZE)
      g_uart_rd_ptr = 0;
  }

  return res;
}



void uart_init()
{
  g_uart_wr_ptr = 0;
  g_uart_rd_ptr = 0;

	GPIO_InitTypeDef  GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

  /* Enable GPIO clock */
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);

  /* Enable USART clock */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);


   //Connect USART pins to A
  	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_10;
  	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
  	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  	GPIO_Init(GPIOA, &GPIO_InitStructure);


  	GPIO_PinAFConfig(GPIOA, GPIO_PinSource9, GPIO_AF_7);
  	GPIO_PinAFConfig(GPIOA, GPIO_PinSource10, GPIO_AF_7);

  USART_InitStructure.USART_BaudRate = UART_BAUD_RATE*1;
  USART_InitStructure.USART_WordLength = USART_WordLength_8b;
  USART_InitStructure.USART_StopBits = USART_StopBits_1;
  USART_InitStructure.USART_Parity = USART_Parity_No;
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;

  USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

  USART_Init(USART, &USART_InitStructure);

  USART_Cmd(USART, ENABLE);

  NVIC_InitTypeDef NVIC_InitStructure;      // this is used to configure the NVIC (nested vector interrupt controller)
  USART_ITConfig(USART, USART_IT_RXNE, ENABLE); // enable the USART2 receive interrupt

      NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;             // we want to configure the USART1 interrupts
      NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;         // this sets the priority group of the USART1 interrupts
      NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;        // this sets the subpriority inside the group
      NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;           // the USART2 interrupts are globally enabled
      NVIC_Init(&NVIC_InitStructure);                       // the properties are passed to the NVIC_Init function which takes care of the low level stuff

      // finally this enables the complete USART2 peripheral
      USART_Cmd(USART, ENABLE);
}

void USART1_IRQHandler(void)
{
  if (USART_GetITStatus(USART, USART_IT_RXNE) != RESET) // Received character?
  {
    char rx =  USART_ReceiveData(USART);

    g_uart_rx_buffer[g_uart_wr_ptr] = rx;
      g_uart_wr_ptr++;
    if (g_uart_wr_ptr >= UART_RX_BUFFER_SIZE)
      g_uart_wr_ptr = 0;
  }

  USART_ClearITPendingBit(USART, USART_IT_RXNE);
}

void uart_clear_buffer()
{
  u32 i;

  __disable_irq();
  for (i = 0; i < UART_RX_BUFFER_SIZE; i++)
    g_uart_rx_buffer[i] = 0;
  __enable_irq();
}
