#ifndef _VERSATILEPB_H_
#define _VERSATILEPB_H_

#include "stdlib.h"
#include "sys/types.h"


// typedef long unsigned int time_t ;



#define PIC ((volatile unsigned int*)0x10140000)
#define PIC_TIMER01 0x10
/* http://infocenter.arm.com/help/topic/com.arm.doc.ddi0181e/I1006461.html */
#define VIC_INTENABLE 0x4 /* 0x10 bytes */


/* http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0271d/index.html */
#define TIMER0 ((volatile unsigned int*)0x101E2000)
#define TIMER_VALUE 0x1 /* 0x04 bytes */
#define TIMER_CONTROL 0x2 /* 0x08 bytes */
#define TIMER_INTCLR 0x3 /* 0x0C bytes */
#define TIMER_MIS 0x5 /* 0x14 bytes */
/* http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0271d/Babgabfg.html */
#define TIMER_EN 0x80
#define TIMER_PERIODIC 0x40
#define TIMER_INTEN 0x20
#define TIMER_32BIT 0x02
#define TIMER_ONESHOT 0x01




typedef volatile struct 
{
	uint32_t DR;
	uint32_t RSR_ECR;
	uint8_t reserved1[0x10];
	const uint32_t FR;
	uint8_t reserved2[0x4];
	uint32_t LPR;
	uint32_t IBRD;
	uint32_t FBRD;
	uint32_t LCR_H;
	uint32_t CR;
	uint32_t IFLS;
	uint32_t IMSC;
	const uint32_t RIS;
	const uint32_t MIS;
	uint32_t ICR;
	uint32_t DMACR;
} pl011_T;
 
enum 
{
 RXFE = 0x10,
 TXFF = 0x20,
};
 
#define UART0  ((pl011_T *)0x101f1000)
#define UART1  ((pl011_T *)0x101f2000)
#define UART2  ((pl011_T *)0x101f3000)

#endif
