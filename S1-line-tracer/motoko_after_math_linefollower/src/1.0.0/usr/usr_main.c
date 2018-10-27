#include "usr_main.h"
#include "../lib_usr/line_sensor.h"
#include "../lib_usr/imu.h"
#include "../lib_usr/camera.h"
#include "../lib_usr/math.h" 

#include "line_follower.h"
#include "broken_line.h" 
#include "obstacle.h" 
#include "predictor.h"

#include "test.h" 

#define SAMPLIG_PERIOD		(u32)4
#define I2C_SAMPLIG_PERIOD	(u32)20

void line_sensor_thread()
{ 
	line_sensor_init();

 	event_timer_set_period(EVENT_TIMER_0_ID, SAMPLIG_PERIOD);
	

 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_0_ID);
		line_sensor_read();
 	}
}  

void i2c_sensor_thread()
{
	imu_init();
	camera_init();

 	event_timer_set_period(EVENT_TIMER_1_ID, I2C_SAMPLIG_PERIOD);

 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_1_ID);
 		imu_read();
 		camera_read();
 	}
}


 
void line_follower()
{
	u32 cnt = 0;

	line_follower_init();

 	event_timer_set_period(EVENT_TIMER_2_ID, SAMPLIG_PERIOD);


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
	}
}  
 
void main_thread()
{
	printf_(OS_WELCOME_MESSAGE);
	create_thread(line_sensor_thread, line_sensor_thread_stack, sizeof(line_sensor_thread_stack), PRIORITY_MAX);
	create_thread(i2c_sensor_thread, i2c_sensor_thread_stack, sizeof(i2c_sensor_thread_stack), PRIORITY_MAX);


	drv8834_run(0, 0); 

 
	//sensor_test();

	broken_line_init();
	obstacle_init();

	while (1) 
	{
		if (get_key() != 0)
		{
			timer_delay_ms(1000);
			line_follower();
		}



		led_on(LED_0);
        timer_delay_ms(100);

        led_off(LED_0); 
       	timer_delay_ms(200); 
	}
}
