#include "usr_main.h"

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
#include "error.h"

#define SAMPLIG_PERIOD		(u32)4
#define I2C_SAMPLIG_PERIOD	(u32)10

volatile u32 g_error ;


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
		line_sensor_read();
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

 	event_timer_set_period(EVENT_TIMER_2_ID, SAMPLIG_PERIOD);

	u32 time_stop = timer_get_time() + 100*1000;

	while (1)
	{
		event_timer_wait(EVENT_TIMER_2_ID);

		if (g_line_sensor.obstacle_position > OBSTACLE_SENSOR_TRESHOLD)
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

	broken_line_init();
	obstacle_init();

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

			//line_sensor_test();
			//sensor_test();
			//rotation_test();
			//im1u_test();
		}

		led_on(LED_0);
    timer_delay_ms(100);

    led_off(LED_0);
    timer_delay_ms(200);
	}
}
