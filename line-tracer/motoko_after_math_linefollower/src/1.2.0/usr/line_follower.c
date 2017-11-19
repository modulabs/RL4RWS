#include "line_follower.h"

#include "../lib_usr/line_sensor.h"
#include "../lib_usr/math.h"
#include "pid.h"
#include "q_predictor.h"

struct sPID g_line_pid;

void line_follower_init()
{
	g_line_follower.base_speed = 0.5;
	g_line_follower.base_speed_max = 0.7;

	g_line_follower.dif_speed = 0.0;


	float kp = 0.326;
	float ki = 0.0;
	float kd = 10.53;
	float kd2 = 0.0;

	pid_init(&g_line_pid, SPEED_MAX, kp, ki, kd, kd2);

	q_predictor_init();

}

void line_follower_main()
{
	float line_position = (1.0*g_line_sensor.line_position)/LINE_MAX;

	float reward = (1.0 - line_position) + 0.3*g_line_follower.base_speed;
	float predictor_output = q_predictor_process(line_position, reward);


	float error = 0.0 - line_position;
	g_line_follower.dif_speed = pid_process(&g_line_pid, error);


	g_line_follower.base_speed_max = predictor_output;
	float tmp = 1.0 - m_abs(line_position);

	tmp+= 0.00001*predictor_output;

	float ks = 0.02;

	g_line_follower.base_speed = m_min(g_line_follower.base_speed + ks*tmp, tmp);
	g_line_follower.base_speed = m_saturate(g_line_follower.base_speed, 0.5, g_line_follower.base_speed_max);


	i32 motor_right = (g_line_follower.base_speed - g_line_follower.dif_speed)*SPEED_MAX;
	i32 motor_left = (g_line_follower.base_speed + g_line_follower.dif_speed)*SPEED_MAX;

	drv8834_run(motor_left, motor_right);
}
