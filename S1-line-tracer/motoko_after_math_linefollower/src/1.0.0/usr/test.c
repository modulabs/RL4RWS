#include "../lib_usr/line_sensor.h"
#include "../lib_usr/imu.h"
#include "../lib_usr/camera.h"
#include "../lib_usr/math.h" 
#include "test.h"


void sensor_test()
{ 
	u32 i;
	
	while (1)
	{
        led_on(LED_0);
	
		for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
			printf_("%i ", g_line_sensor.raw_data_off[i] - g_line_sensor.raw_data_on[i]);
				printf_("\n");

        /*
        #ifdef QRE113_SENSOR
		for (i = 0; i < SENSORS_COUNT; i++)
			printf_("%u ", g_line_sensor.raw_data_dif[i]);
		#endif

		#ifdef RGB_SENSOR

		for (i = 0; i < SENSORS_COUNT; i++)
			printf_("%u ", g_rgb.ambient[i]);
		printf_("\n");

		for (i = 0; i < SENSORS_COUNT; i++) 
			printf_("%u ", g_rgb.r[i]);
		printf_("\n");

		for (i = 0; i < SENSORS_COUNT; i++)
			printf_("%u ", g_rgb.g[i]);
		printf_("\n");

		for (i = 0; i < SENSORS_COUNT; i++)
			printf_("%u ", g_rgb.b[i]);
		printf_("\n");

		for (i = 0; i < SENSORS_COUNT; i++)
			printf_("%u ", g_rgb.proximity[i]);
		printf_("\n");

		#endif 
 		*/
		printf_(" %i %i %i %i %i %i %i\n", 
										g_line_sensor.line_position, 
										g_line_sensor.on_line,
										g_camera.line_position, 
										g_camera.state,
										g_imu.gyro_z,
										g_line_sensor.obstacle_position,
										g_rgb.proximity[SENSORS_COUNT-1]
										);
		
		printf_("\n");

		led_off(LED_0);
		timer_delay_ms(200); 
	}
}