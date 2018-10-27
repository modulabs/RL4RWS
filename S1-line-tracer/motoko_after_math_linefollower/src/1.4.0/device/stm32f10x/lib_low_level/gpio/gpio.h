#ifndef _GPIO_H_
#define _GPIO_H_

#include "../lib_low_level.h"
#include "stm32f10x_gpio.h"

/*on GPIOB */
#define LED_G	(1<<15)
//#define LED_G	(1<<10)
#define LED_1	(LED_G)




#define USER_KEY	(1<<9)

void gpio_init();
void led_on(u32 led);
void led_off(u32 led);


u32 get_key();

#endif