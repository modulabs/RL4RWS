#include "lib_low_level.h"

void lib_low_level_init()
{
	#ifdef _GPIO_H_
	gpio_init();
	#endif

	#ifdef _UART_H_
	uart_init(); 
	#endif

	#ifdef _TIMER_H_
	timer_init();
	#endif

	#ifdef _PWM_H_
	pwm_init();
	#endif

	#ifdef _I2C_H_
	i2c_0_init();
	#endif

	#ifdef _ADC_H_
	adc_init();
	#endif
}
