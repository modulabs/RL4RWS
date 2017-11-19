#include "error.h"

void abort_error_(u32 error_code, u32 error_param)
{
	u32 i;

	while (1)
	{
		printf_("error code %u:%u\n", error_code, error_param);

		for (i = 0; i < (3+error_code); i++)
		{
			led_on(LED_0);
			timer_delay_ms(50);
			led_off(LED_0);
			timer_delay_ms(100);
		}

		timer_delay_ms(1000);
	}
}
