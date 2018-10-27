#include "../lib_usr/line_sensor.h"
#include "../lib_usr/lsm9ds0.h"
#include "../lib_usr/l3g4200.h"
#include "../lib_usr/hmc5883.h"
#include "../lib_usr/camera.h"

#include "test.h"


void sensor_test()
{
	while (1)
	{
		led_on(LED_0);

		printf_("\n****************************************************\n");

		printf_("LINE : ");
		printf_("%i %i \n", g_line_sensor.line_position, g_line_sensor.on_line);

		printf_("LSM9DS0 : ");
		#ifdef USE_LSM9DS0
		printf_("%i %i %i , ", g_lsm9ds0_imu.gx, g_lsm9ds0_imu.gy, g_lsm9ds0_imu.gz);
		printf_("%i %i %i , ", g_lsm9ds0_imu.mx, g_lsm9ds0_imu.my, g_lsm9ds0_imu.mz);
		printf_("%i %i %i", g_lsm9ds0_imu.ax, g_lsm9ds0_imu.ay, g_lsm9ds0_imu.az);
		printf_("\n");
		#else
		printf_("not present\n");
		#endif

		printf_("L3G4200 : ");
		#ifdef USE_L3G4200
		printf_("%i %i %i \n", g_l3g4200.gx, g_l3g4200.gy, g_l3g4200.gz);
		#else
		printf_("not present\n");
		#endif

		printf_("HMC5883 : ");
		#ifdef USE_HMC5883
		printf_("%i %i %i \n", g_hmc5883.mx, g_hmc5883.my, g_hmc5883.mz);
		#else
		printf_("not present\n");
		#endif

		printf_("\n");
		led_off(LED_0);


		timer_delay_ms(100);
	}
}

void line_sensor_test()
{
	u32 i;
	while (1)
	{
    led_on(LED_0);

		for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
			printf_("%i ", g_line_sensor.raw_data_off[i] - g_line_sensor.raw_data_on[i]);

        /*
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
 		*/

		printf_("\n");

		led_off(LED_0);
		timer_delay_ms(200);
	}
}
