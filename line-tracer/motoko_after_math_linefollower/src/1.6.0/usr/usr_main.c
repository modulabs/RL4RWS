#include "usr_main.h"

#include "line_follower.h"
#include "broken_line.h"
#include "obstacle.h"
#include "q_predictor.h"

#include "test.h"
#include "error.h"

#define SAMPLIG_PERIOD		(u32)4
#define I2C_SAMPLIG_PERIOD	(u32)10

#ifndef STM303
#define SPEED_MAX	((i32)100)
#define LED_0		((u32)(1<<15))
#endif

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

#ifdef STM303
	drv8834_run(0, 0);
#endif
}


int i2c_test_menu(void)
{
	int key;
	printf_("\r\n\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" I2C MAIN MENU\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" 1. I2C test 1\r\n");
	printf_(" 2. I2C test 2\r\n");
	printf_(" 3. I2C test 3\r\n");
	printf_(" 4. I2C test 4\r\n");
	printf_(" 5. I2C test 5\r\n");
	printf_(" 6. I2C test 6\r\n");
	printf_(" 7. I2C test 7\r\n");
	printf_(" 8. I2C test 8\r\n");
	printf_(" 9. I2C test 9\r\n");
	printf_(" 0. I2C test 0\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" q. I2C test quit\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_("\n\r\n");
	printf_("SELECT THE COMMAND NUMBER : ");
	key=uart_read();
	return key;
}

void i2c_test(void)
{

	int i, key;
	while((key=i2c_test_menu()) != 0)
	{
		switch(key)
		{
			case '0':
				printf_("No.0\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '1':
				printf_("No.1\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '2':
				printf_("No.2\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '3':
				printf_("No.3\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '4':
				printf_("No.4\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '5':
				printf_("No.5\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '6':
				printf_("No.6\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '7':
				printf_("No.7\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '8':
				printf_("No.8\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '9':
				printf_("No.9\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;

			case 'q':
				printf_("exit\r\n");
				return;
		}
	}
}

int drv8834_test_menu(void)
{
	int key;
	printf_("\r\n\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" DRV8834 MAIN MENU\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" 1. drv8834 test 1\r\n");
	printf_(" 2. drv8834 test 2\r\n");
	printf_(" 3. drv8834 test 3\r\n");
	printf_(" 4. drv8834 test 4\r\n");
	printf_(" 5. drv8834 test 5\r\n");
	printf_(" 6. drv8834 test 6\r\n");
	printf_(" 7. drv8834 test 7\r\n");
	printf_(" 8. drv8834 test 8\r\n");
	printf_(" 9. drv8834 test 9\r\n");
	printf_(" 0. drv8834 test 0\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" q. drv8834 test quit\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_("\n\r\n");
	printf_("SELECT THE COMMAND NUMBER : ");
	key=uart_read();
	return key;
}

void drv8834_test(void)
{

	int i, key;
	while((key=drv8834_test_menu()) != 0)
	{
		switch(key)
		{
			case '0':
				printf_("No.0\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '1':
				printf_("No.1\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '2':
				printf_("No.2\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '3':
				printf_("No.3\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '4':
				printf_("No.4\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '5':
				printf_("No.5\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '6':
				printf_("No.6\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '7':
				printf_("No.7\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '8':
				printf_("No.8\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '9':
				printf_("No.9\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;

			case 'q':
				printf_("exit\r\n");
				return;
		}
	}
}

int pwm_test_menu(void)
{
	int key;
	printf_("\r\n\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" PWM TEST MENU\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" 1. Timer Test\r\n");
	printf_(" 2. SKELETON IOCTL 2\r\n");
	printf_(" 3. SKELETON IOCTL 3\r\n");
	printf_(" 4. SKELETON IOCTL 4\r\n");
	printf_(" 5. SKELETON IOCTL 5\r\n");
	printf_(" 6. SKELETON IOCTL 6\r\n");
	printf_(" 7. SKELETON IOCTL 7\r\n");
	printf_(" 8. SKELETON IOCTL 8\r\n");
	printf_(" 9. SKELETON IOCTL 9\r\n");
	printf_(" 0. SKELETON IOCTL 0\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" q. SKELETON IOCTL QUIT\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_("\n\r\n");
	printf_("SELECT THE COMMAND NUMBER : ");
	key=uart_read();
	return key;
}

void pwm_test(void)
{

	int i, key;
	while((key=pwm_test_menu()) != 0)
	{
		switch(key)
		{
			case '0':
				printf_("No.0\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '1':
				printf_("No.1\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '2':
				printf_("No.2\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '3':
				printf_("No.3\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '4':
				printf_("No.4\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '5':
				printf_("No.5\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '6':
				printf_("No.6\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '7':
				printf_("No.7\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '8':
				printf_("No.8\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '9':
				printf_("No.9\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;

			case 'q':
				printf_("exit\r\n");
				return;
		}
	}
}



int timer_test_menu(void)
{
	int key;
	printf_("\r\n\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" TIMER TEST MENU\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" 1. timer test 1\r\n");
	printf_(" 2. timer test 2\r\n");
	printf_(" 3. timer test 3\r\n");
	printf_(" 4. timer test 4\r\n");
	printf_(" 5. timer test 5\r\n");
	printf_(" 6. timer test 6\r\n");
	printf_(" 7. timer test 7\r\n");
	printf_(" 8. timer test 8\r\n");
	printf_(" 9. timer test 9\r\n");
	printf_(" 0. timer test 0\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" q. SKELETON IOCTL QUIT\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_("\n\r\n");
	printf_("SELECT THE COMMAND NUMBER : ");
	key=uart_read();
	return key;
}

void timer_test(void)
{

	int i, key;
	while((key=timer_test_menu()) != 0)
	{
		switch(key)
		{
			case '0':
				printf_("No.0\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '1':
				printf_("No.1\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '2':
				printf_("No.2\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '3':
				printf_("No.3\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '4':
				printf_("No.4\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '5':
				printf_("No.5\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '6':
				printf_("No.6\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '7':
				printf_("No.7\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '8':
				printf_("No.8\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '9':
				printf_("No.9\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case 'q':
				printf_("exit\r\n");
				return;
		}
	}
}


int gpio_test_menu(void)
{
	int key;
	printf_("\r\n\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" GPIO TEST MENU\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" 1. gpio test 1\r\n");
	printf_(" 2. gpio test 2\r\n");
	printf_(" 3. gpio test 3\r\n");
	printf_(" 4. gpio test 4\r\n");
	printf_(" 5. gpio test 5\r\n");
	printf_(" 6. gpio test 6\r\n");
	printf_(" 7. gpio test 7\r\n");
	printf_(" 8. gpio test 8\r\n");
	printf_(" 9. gpio test 9\r\n");
	printf_(" 0. gpio test 0\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" q. SKELETON IOCTL QUIT\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_("\n\r\n");
	printf_("SELECT THE COMMAND NUMBER : ");
	key=uart_read();
	return key;
}

void gpio_test(void)
{
	int i, key;
	while((key=gpio_test_menu()) != 0)
	{
		switch(key)
		{
			case '0':
				printf_("No.0\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '1':
				printf_("No.1\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '2':
				printf_("No.2\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '3':
				printf_("No.3\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '4':
				printf_("No.4\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '5':
				printf_("No.5\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '6':
				printf_("No.6\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '7':
				printf_("No.7\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '8':
				printf_("No.8\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case '9':
				printf_("No.9\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;

			case 'q':
				printf_("exit\r\n");
				return;
		}
	}
}





int debug_main_menu(void)
{
	int key;
	printf_("\r\n\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" MAIN MENU\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" 1. GPIO test\r\n");
	printf_(" 2. Timer test\r\n");
	printf_(" 3. PWM test\r\n");
	printf_(" 4. DRV8834 test\r\n");
	printf_(" 5. I2C test\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_(" q. SKELETON IOCTL QUIT\r\n");
	printf_("-------------------------------------------------\r\n");
	printf_("\n\r\n");
	printf_("SELECT THE COMMAND NUMBER : ");
	key=uart_read();
	return key;
}

void debug_main(void)
{

	int i, key;
	while((key=debug_main_menu()) != 0)
	{
		switch(key)
		{
			case '1':
				printf_("No.1\r\n");
				// ÄÚµå œÃÀÛ
				gpio_test_menu();
				// ÄÚµå ³¡
				break;
			case '2':
				printf_("No.2\r\n");
				// ÄÚµå œÃÀÛ
				timer_test_menu();
				// ÄÚµå ³¡
				break;
			case '3':
				printf_("No.3\r\n");
				// ÄÚµå œÃÀÛ
				pwm_test_menu();
				// ÄÚµå ³¡
				break;
			case '4':
				printf_("No.4\r\n");
				// ÄÚµå œÃÀÛ
				drv8834_test_menu();
				// ÄÚµå ³¡
				break;
			case '5':
				printf_("No.5\r\n");
				// ÄÚµå œÃÀÛ
				i2c_test_menu();
				// ÄÚµå ³¡
				break;
			case '6':
				printf_("No.6\r\n");
				// ÄÚµå œÃÀÛ

				// ÄÚµå ³¡
				break;
			case 'q':
				return;
		}
	}
}

void main_thread()
{
  debug_main();
	printf_(OS_WELCOME_MESSAGE);

	timer_delay_ms(300);

	g_error = 0;

	create_thread(line_sensor_thread, line_sensor_thread_stack, sizeof(line_sensor_thread_stack), PRIORITY_MAX);
	create_thread(i2c_sensor_thread, i2c_sensor_thread_stack, sizeof(i2c_sensor_thread_stack), PRIORITY_MAX);

	broken_line_init();
	obstacle_init();
	#if CONFIG_USE_CAMERA == 1
	camera_init();
	#endif

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
			//line_sensor_test();
			//sensor_test();
			//rotation_test();
			//imu_test();
			//camera_test();
		}

		led_on(LED_0);
    timer_delay_ms(100);

    led_off(LED_0);
    timer_delay_ms(200);
	}
}
