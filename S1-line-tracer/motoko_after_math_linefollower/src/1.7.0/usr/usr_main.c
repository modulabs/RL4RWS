#include "usr_main.h"

#include "line_follower.h"
#include "broken_line.h"
#include "obstacle.h"
#include "q_predictor.h"

#include "test.h"
#include "error.h"

#define SAMPLIG_PERIOD		(u32)4
#define I2C_SAMPLIG_PERIOD	(u32)10

volatile u32 g_error ;


void telemetry_thread()
{
	u32 i;
	while (1)
	{
		printf_(">>>\n");

		for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
	    printf_("%i ", g_line_sensor.raw_data_dif[i]);

	  for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
	    printf_("%i ", g_rgb.ambient[i]);

	  for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
	    printf_("%i ", g_rgb.r[i]);

	  for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
	    printf_("%i ", g_rgb.g[i]);

	  for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
	    printf_("%i ", g_rgb.b[i]);

	  printf_("%i ", g_rgb.proximity[RGB_SENSORS_COUNT-1]);
	  printf_("%i ", LINE_SENSOR_TRESHOLD);
	  printf_("%i ", OBSTACLE_SENSOR_TRESHOLD);

	  printf_("%i ", g_line_sensor.line_position);
	  printf_("%i ", g_line_sensor.on_line);

		printf_("%i %i %i ", g_lsm9ds0_imu.gx, g_lsm9ds0_imu.gy, g_lsm9ds0_imu.gz);
		printf_("%i %i %i ", g_lsm9ds0_imu.mx, g_lsm9ds0_imu.my, g_lsm9ds0_imu.mz);
		printf_("%i %i %i ", g_lsm9ds0_imu.ax, g_lsm9ds0_imu.ay, g_lsm9ds0_imu.az);
		printf_("%i %i %i ", g_lsm9ds0_imu.roll, g_lsm9ds0_imu.pitch, g_lsm9ds0_imu.yaw);

		printf_("%i %i %i %i ", (i32)(CONFIG_KP*1000), (i32)(CONFIG_KD*1000), (i32)(CONFIG_KS*1000), (i32)(CONFIG_KS_2*1000));
		printf_("%i %i ", (i32)(CONFIG_SPEED_MIN*1000), (i32)(CONFIG_SPEED_MAX*1000));

	  printf_("\n\n");


		timer_delay_ms(100);
	}
}


void line_sensor_thread()
{
	u32 init_res = line_sensor_init();

	if (init_res != 0)
	{
		g_error = 1;
		abort_error_(ERROR_LINE_SENSOR, init_res);
	}

 	event_timer_set_period(EVENT_TIMER_0_ID, SAMPLIG_PERIOD);


 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_0_ID);
		line_sensor_read(0);
 	}
}

void i2c_sensor_thread()
{
	u32 init_res;
	#ifdef USE_LSM9DS0
	init_res = lsm9ds0_init();					/*IMU*/
	if (init_res != 0)
	{
		g_error = 1;
		abort_error_(ERROR_IMU, init_res);
	}
	#endif

	#ifdef USE_L3G4200
	init_res = l3g4200_init();					/*gyro*/
	if (init_res != 0)
	{
		g_error = 1;
		abort_error_(ERROR_GYRO, init_res);
	}
	#endif

	#ifdef USE_HMC5883
	init_res = hmc5883_init();					/*compass*/
	if (init_res != 0)
	{
		g_error = 1;
		abort_error_(ERROR_COMPASS, init_res);
	}
	#endif


 	event_timer_set_period(EVENT_TIMER_1_ID, I2C_SAMPLIG_PERIOD);

 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_1_ID);

		#ifdef USE_LSM9DS0
 		lsm9ds0_read();
		#endif

		#ifdef USE_L3G4200
		l3g4200_read();
		#endif

		#ifdef USE_HMC5883
		hmc5883_read();
		#endif
 	}
}



void line_follower()
{
	u32 cnt = 0;

	line_follower_init();
	obstacle_init();

 	event_timer_set_period(EVENT_TIMER_2_ID, SAMPLIG_PERIOD);

	u32 time_stop = timer_get_time() + 100*1000;

	while (1)
	{
		event_timer_wait(EVENT_TIMER_2_ID);

		if ( ((g_line_sensor.obstacle_position > OBSTACLE_SENSOR_TRESHOLD) && (g_lsm9ds0_imu.ax > 8000) && (get_mode_jumper() == 0)) ||
				 ((g_line_sensor.obstacle_position > OBSTACLE_SENSOR_TRESHOLD) && (g_lsm9ds0_imu.ax > 15000) && (get_mode_jumper() == 1)) )
			obstacle_main();
		else
		if (g_line_sensor.on_line == IR_ON_LINE)
			line_follower_main();
		else
			broken_line_main();


	 	cnt++;
	 	if ((cnt%20) == 0)
	 		led_on(LED_0);
	 	else
	 		led_off(LED_0);

		if (time_stop < timer_get_time())
			break;
	}

	drv8834_run(0, 0);
}


void main_thread()
{
	printf_(OS_WELCOME_MESSAGE);

	timer_delay_ms(300);

	g_error = 0;

	create_thread(line_sensor_thread, line_sensor_thread_stack, sizeof(line_sensor_thread_stack), PRIORITY_MAX);
	create_thread(i2c_sensor_thread, i2c_sensor_thread_stack, sizeof(i2c_sensor_thread_stack), PRIORITY_MAX);
	create_thread(telemetry_thread, telemetry_thread_stack, sizeof(telemetry_thread_stack), PRIORITY_MAX + 20);

	broken_line_init();
	obstacle_init();
	#if CONFIG_USE_CAMERA == 1
	camera_init();
	#endif

	u32 mode = get_mode_jumper();

	printf_("mode = %u\n", mode);

	while (1)
	{
		if (g_error != 0)
		{
			while (1)
			{
				printf_("system aborted\n");
				timer_delay_ms(2000);
			}
		}

		if (get_key() != 0)
		{
			timer_delay_ms(1000);
			line_follower();

			//motor_test();
		//	line_sensor_test();
			//sensor_test();
			//rotation_test();
	//		imu_test();
			//camera_test();
		}

		led_on(LED_0);
    timer_delay_ms(100);

    led_off(LED_0);
    timer_delay_ms(200);
	}
}
