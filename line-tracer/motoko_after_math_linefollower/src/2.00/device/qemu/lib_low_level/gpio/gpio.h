#ifndef _GPIO_H_
#define _GPIO_H_

#include "../lib_low_level.h"

/*on GPIOB */
#define LED_G	(1<<15)
#define LED_1	(LED_G)

/*on GPIOB A*/
#define LED_IR	(1<<8)
#define LED_2	(LED_IR)



#define USER_KEY	(1<<9)

void gpio_init();
void led_on(u32 led);
void led_off(u32 led);


u32 get_key();

#endif