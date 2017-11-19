#include "uart.h"
#include "stm32f30x_usart.h"


#define USART   USART1
 
void uart_write(char c)
{
  while( !(USART->ISR & USART_FLAG_TXE) )
		__asm("nop");
	
	USART->TDR = c; 

  
}




char uart_read()
{
	char res;

	while( !(USART->ISR & USART_FLAG_RXNE) )
		__asm("nop");

	res = USART->RDR;

    return res;
}

void uart_init()
{

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
}
