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

void obstacle_rotate_robot(i32 angle)
{
	i32 gyro_angle = 0;

	float speed_max = 0.7;
	float speed = 0.0;
	float k = 0.8;

	angle = angle*1600; //2000;


	while (abs_(gyro_angle) < abs_(angle))
	{
		gyro_angle+= g_lsm9ds0_imu.gz;

		speed = k*speed + (1.0 - k)*speed_max;

		i32 speed_ = SPEED_MAX*speed;
		if (angle > 0)
			drv8834_run(speed_, -speed_);
		else
			drv8834_run(-speed_, speed_);

		timer_delay_ms(10);
	}

	drv8834_run(0, 0);
	timer_delay_ms(100);
}

void obstacle_go_forward(u32 speed, u32 time)
{
	u32 time_cnt = 0;
	i32 gyro_angle = 0;

	float error = 0.0;
	float error_prev = 0.0;

	float kp = 0.0003;
	float kd = 0.001; 

	float speed_ = 0.0;
	float ks = 0.8;

	if (speed != 0)
	{
		while (time_cnt < time)
		{
			gyro_angle+= g_lsm9ds0_imu.gz;

			error_prev = error;
			error = 0.0 - gyro_angle;

			float dif = kp*error + kd*(error - error_prev);

			speed_ = ks*speed_ + (1.0 - ks)*speed;

			i32 speed_l = speed_ - dif;
			i32 speed_r = speed_ + dif;
			drv8834_run(speed_l, speed_r);

			timer_delay_ms(10);
			time_cnt+= 10;
		}
	}

	drv8834_run(0, 0);
	timer_delay_ms(100);
}

void obstacle_init()
{

}



void obstacle_main()
{
	#if CONFIG_OBSTACLE_MODE == 0
	obstacle_go_forward(0, 100);
	#endif

	#if CONFIG_OBSTACLE_MODE == 1
	obstacle_go_forward(0, 100);
	obstacle_rotate_robot(180);
	#endif


	#if CONFIG_OBSTACLE_MODE == 2
	obstacle_go_forward(0, 100);

	obstacle_rotate_robot(90);
	obstacle_go_forward(60, 250);
	obstacle_rotate_robot(-90);
	obstacle_go_forward(60, 250);
	obstacle_rotate_robot(-90);
	obstacle_go_forward(60, 250);
	#endif


	return;
}
