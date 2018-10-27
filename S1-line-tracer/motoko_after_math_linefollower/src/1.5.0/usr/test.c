#include "../lib_usr/line_sensor.h"

#include "../lib_usr/lsm9ds0.h"
#include "../lib_usr/l3g4200.h"
#include "../lib_usr/hmc5883.h"
#include "../lib_usr/camera.h"
#include "../lib_usr/math.h"

#include "line_follower.h"
#include "broken_line.h"
#include "obstacle.h"
#include "q_predictor.h"

#include "test.h"


void sensor_test()
{
	while (1)
	{
		led_on(LED_0);

		printf_("\n****************************************************\n");

		printf_("LINE : ");
		printf_("%i %i\n", g_line_sensor.line_position, g_line_sensor.on_line);

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


		timer_delay_ms(200);
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


void motor_test()
{
	drv8834_run(30, 0);
	timer_delay_ms(800);

	drv8834_run(-30, 0);
	timer_delay_ms(800);

	drv8834_run(0, 30);
	timer_delay_ms(800);

	drv8834_run(0, -30);
	timer_delay_ms(800);


	drv8834_run(30, 30);
	timer_delay_ms(800);

	drv8834_run(-30, -30);
	timer_delay_ms(800);

	drv8834_run(0, 0);
	timer_delay_ms(1000);
}

void rotation_test()
{
	i32 angle = 90;

	obstacle_rotate_robot(-angle);
	obstacle_rotate_robot(-angle);

	timer_delay_ms(500);

	obstacle_rotate_robot(angle);
	obstacle_rotate_robot(angle);

	timer_delay_ms(500);
}


void imu_test()
{
	float roll = 0.0;
	float pitch = 0.0;
	float yaw = 0.0, yaw_ofs = 0.0;;

	u32 dt = 10;

	u32 i, max = 100;
	for (i = 0; i < max; i++)
	{
		yaw_ofs+= g_lsm9ds0_imu.gz;
		timer_delay_ms(dt);
	}

	yaw_ofs/= max;

	while (1)
	{
		led_on(LED_0);

		roll = m_atan2(g_lsm9ds0_imu.ay, m_sqrt(g_lsm9ds0_imu.ax*g_lsm9ds0_imu.ax + g_lsm9ds0_imu.az*g_lsm9ds0_imu.az));
		pitch = m_atan2(g_lsm9ds0_imu.ax, m_sqrt(g_lsm9ds0_imu.ay*g_lsm9ds0_imu.ay + g_lsm9ds0_imu.az*g_lsm9ds0_imu.az));
		yaw+= (g_lsm9ds0_imu.gz - yaw_ofs)*(dt/1000.0)*0.0003; //*(90.0/272063.0);

		printf_("%i %i %i\n", (i32)(roll*180.0/PI_), (i32)(pitch*180.0/PI_), (i32)(yaw*180.0/PI_) );

		led_off(LED_0);

		timer_delay_ms(dt);
	}
}

void camera_test()
{
	camera_init();

	while (1)
	{
		led_on(LED_0);

		u32 timer_start = timer_get_time();
		camera_read();
		u32 timer_stop = timer_get_time();

		u32 i;
		for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
				printf_("%i", g_camera.pixels[i]);
		printf_(" > %i %i %i %u\n", g_camera.flag, g_camera.average, g_camera.line_position, timer_stop - timer_start);
		//printf_("line %i  time %u\n", g_camera.line_position, timer_stop - timer_start);
		led_off(LED_0);

		timer_delay_ms(200);
	}
}
