#ifndef _GPIO_H_
#define _GPIO_H_

#include "../lib_low_level.h"
#include "stm32f30x_gpio.h"
#include "stm32f30x_exti.h"
#include "../stm32f30x_syscfg.h"

#ifdef __cplusplus
extern "C" {
#endif

#define GPIO_BASE	GPIOB

#define LED_0		((u32)(1<<15))
//#define KEY 		(1<<9)
#define KEY 		(1<<12)

#define ENCODER_CONSTANT ((u32)750) //670



void gpio_init();
void led_on(u32 led);
void led_off(u32 led);
u32 get_key();
u32 get_mode_jumper();

//return distance in mm
u32 left_encoder_read();

//return distance in mm
u32 right_encoder_read();

//return averaged distance in mm
u32 encoder_get_distance();


void encoder_reset();

#ifdef __cplusplus
}
#endif


#endif
