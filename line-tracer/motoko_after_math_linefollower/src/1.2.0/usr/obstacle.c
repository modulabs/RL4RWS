#include "obstacle.h"

#include "../lib_usr/line_sensor.h"
#include "../lib_usr/lsm9ds0.h"
#include "../lib_usr/l3g4200.h"
#include "../lib_usr/hmc5883.h"

#include "../lib_usr/math.h"

i32 abs_(i32 x)
{
	if (x < 0)
		return -x;

	return x;
}

void rotate_robot(i32 angle)
{
	i32 gyro_angle = 0;

	float speed_max = 0.5;
	float speed = 0.0;
	float k = 0.9;

	angle = angle*1400;


	while (abs_(gyro_angle) < abs_(angle))
	{
		gyro_angle+= g_lsm9ds0_imu.gz;

		speed = k*speed + (1.0 - k)*speed_max;

		i32 speed_ = SPEED_MAX*speed;
		if (angle > 0)
			drv8834_run(speed_, -speed_);
		else
			drv8834_run(-speed_, speed_);

		timer_delay_ms(20);
	}

	drv8834_run(0, 0);
	timer_delay_ms(100);
}



i16 g_maneveur_init[OBSTACLE_MANEVEUR_SIZE] =
{

	/*
	-35, -36, -6, 55, 36, 6, 42, 2, 0, 52, 36, -8, 0, -1, -16, -11, 0, 3, -12, -11,
	0, 17, 14, 11, 12, 21, 21, 21, 20, 2, 9, 26
	*/

	/*
	0, -50, -33, -28, -8, 12, 67, 6, 30, 35, 1, 8, 28, 21, 1, 0, 0, 0, 0, 0,
	1, 11, 2, 14, 4, 11, 27, 14, 33, 33, 33, 33
	*/

	/*
	0, -42, -47, -33, -21, 10, 54, 17, 27, 35, 3, 4, 20, 38, 0, 0, 0, 0, 0, 0, 0,
	11, 6, 28, 13, -1, 5, 4, 12, -13, 3, 2
	*/

/*
	1, -41, -74, -49, -35, 3, 97, 43, 49, 35, 0, 6, 27, 59, 17, -1, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0,
*/

	/*
	0, -47, -71, -49, -35, 11, 8, 6, 71, 58, 25, 0, 0, 21, 38, 3, 0, 0, -4, 0, -3, 2,
	21, 56, 57, 34, -31, 34, 34, 18, 37, 49,
	*/

/*
	-25, -81, -22, -6, -1, -3, 11, 80, 41, 41, -10, -18, -7, 6, 4, 1, 16, 4,
	-2, 1, 0, 1, 9, -7, -13, 37, -37, -10, -13, -10, 46, -29,
*/

	-38, -40, -7, 0, 0, 0, 21, 63, 33, 16, -7, -3, 2, 2, 1, 0, 1,
	 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};


void obstacle_init()
{
	u32 i;
	for (i = 0; i < OBSTACLE_MANEVEUR_SIZE; i++)
		g_obstacle.maneuver[i] = g_maneveur_init[i];
}

// #define OBSTACLE_LEARN 1

void obstacle_main()
{
	drv8834_run(0, 0);
	timer_delay_ms(100);
	return;

	u32 i;

	#ifdef OBSTACLE_LEARN
	u32 j;
	i32 P = 25;
	i32 D = 100;
	i32 e0 = 0;
	i32 e1 = 0;
	#else


	drv8834_run(0, 0);
	timer_delay_ms(200);

	drv8834_run(-OBSTACLE_MANEVEUR_SPEED, -OBSTACLE_MANEVEUR_SPEED);
	timer_delay_ms(150);

	drv8834_run(0, 0);
	timer_delay_ms(100);
	#endif


	for (i = 0; i < OBSTACLE_MANEVEUR_SIZE; i++)
	{
		#ifdef OBSTACLE_LEARN

		for (j = 0; j < 5; j++)
		{
			time_t time_stop = timer_get_time() + OBSTACLE_SAMPLIG_PERIOD/5;

			e1 = e0;
			e0 = g_line_sensor.line_position;

			i32 dif = (P*e0 + D*(e0 - e1))/100;

			g_obstacle.maneuver[i] = (31*g_obstacle.maneuver[i] + dif)/32;


			i32 motor_right = OBSTACLE_MANEVEUR_SPEED + dif;
			i32 motor_left =  OBSTACLE_MANEVEUR_SPEED - dif;

			drv8834_run(motor_left, motor_right);

			while (timer_get_time() < time_stop)
		 		__asm("nop");
		}

		#else


		time_t time_stop = timer_get_time() + OBSTACLE_SAMPLIG_PERIOD;


		i32 motor_right = OBSTACLE_MANEVEUR_SPEED + g_obstacle.maneuver[i];
		i32 motor_left =  OBSTACLE_MANEVEUR_SPEED - g_obstacle.maneuver[i];

		drv8834_run(motor_left, motor_right);

		/*
		if ( i > (60*OBSTACLE_MANEVEUR_SIZE)/100 )
		{
			drv8834_run(OBSTACLE_MANEVEUR_SPEED, -OBSTACLE_MANEVEUR_SPEED); //-OBSTACLE_MANEVEUR_SPEED);
			timer_delay_ms(150);

			drv8834_run(0, 0);

			return;
		}
		*/

		if ( i > (50*OBSTACLE_MANEVEUR_SIZE)/100 )
		{
			if  (g_line_sensor.flag&IR_FLAG_ON_LINE_DETECTED)
			{
				drv8834_run(SPEED_MAX, -0*SPEED_MAX); //-OBSTACLE_MANEVEUR_SPEED);
				timer_delay_ms(100);

				drv8834_run(0, 0);
				return;
			}
		}
		else
			line_sensor_clear_flag(IR_FLAG_ON_LINE_DETECTED);


		while (timer_get_time() < time_stop)
		 	__asm("nop");
		#endif
	}

	drv8834_run(0, 0);

	while (1)
		__asm("nop");
}



void obstacle_print()
{
	u32 i;
	for (i = 0; i < OBSTACLE_MANEVEUR_SIZE; i++)
	{
		printf_("%i, ", g_obstacle.maneuver[i]);
	}

	printf_("\n\n");
}
