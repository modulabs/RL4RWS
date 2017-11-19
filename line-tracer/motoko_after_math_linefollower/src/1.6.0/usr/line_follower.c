#include "line_follower.h"
#include "q_predictor.h"

#ifndef STM303
#define SPEED_MAX	((i32)100)
#endif

struct sPID g_line_pid;

void line_follower_init()
{
	g_line_follower.base_speed = CONFIG_SPEED_BASE;
	g_line_follower.base_speed_max = CONFIG_SPEED_MAX;
	g_line_follower.dif_speed = 0.0;


	float kp = CONFIG_KP;
	float ki = CONFIG_KI;
	float kd = CONFIG_KD;
	float kd2 = CONFIG_KD2;

	pid_init(&g_line_pid, SPEED_MAX, kp, ki, kd, kd2);

	q_predictor_init();

}

void line_follower_main()
{
	float line_position = (1.0*g_line_sensor.line_position)/LINE_MAX;

	float required_position;

	#if CONFIG_USE_PREDICTOR == 1
	required_position = q_predictor_process(line_position, CONFIG_REQUIRED_MIN, CONFIG_REQUIRED_MAX);
	#else
	required_position = 0.0;		//line center
	#endif

	float error = required_position - line_position;

	//this is ramp smooth speed up controller
	#if CONFIG_USE_RAMP_SPEED == 1
	float ks = CONFIG_KS;
	float error_ = m_abs(error);
	#if CONFIG_USE_CAMERA == 1
	camera_read();
	if (g_camera.flag == 0)
	{
	 	error_ = 1.0;
	}
	#endif
	g_line_follower.base_speed = m_min(g_line_follower.base_speed + ks*(1.0 - error_), 1.0 - CONFIG_KS_2*error_);
	g_line_follower.base_speed = m_saturate(g_line_follower.base_speed, CONFIG_SPEED_MIN, g_line_follower.base_speed_max);
	#else
	g_line_follower.base_speed = CONFIG_SPEED_BASE;
	#endif

	g_line_follower.dif_speed = pid_process(&g_line_pid, error);

	i32 motor_right = (g_line_follower.base_speed - g_line_follower.dif_speed)*SPEED_MAX;
	i32 motor_left = (g_line_follower.base_speed + g_line_follower.dif_speed)*SPEED_MAX;
#ifdef STM303
	drv8834_run(motor_left, motor_right);
#endif
}
