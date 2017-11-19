#include "gpio.h"
 
  
void gpio_init()
{

}

void led_on(u32 led)
{
   if (led)
        led = 0;
}

void led_off(u32 led)
{
    if (led)
        led = 0;
}


u32 get_key()
{
    return 0;
}