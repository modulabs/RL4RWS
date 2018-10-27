#include "line_follower.h"

#include "../lib_usr/line_sensor.h"
#include "../lib_usr/math.h"
#include "pid.h"
#include "fuzzy_mux.h"
#include "predictor.h"

struct sPID g_line_pid_0, g_line_pid_1;

void line_follower_init()
{
	g_line_follower.base_speed = 1.0;
	g_line_follower.base_speed_ = 0.0;
	g_line_follower.dif_speed = 0.0;


	//POLOLU WHEELS 32MM

	//controller for straight line
	float b0 = 0.09211;
	float a0 = 0.98;

	//controller for curved line
	float b1 = 0.09211;
	float a1 = 0.97;
	float a2 = 0.0;

	pid_init(&g_line_pid_0, SPEED_MAX, 0.0, 0.0, 0.0, 0.0);
	pid_synthetise(&g_line_pid_0, 1.0/b0, -(a0 + 1.0)/b0, a0/b0, 0.0);

	pid_init(&g_line_pid_1, SPEED_MAX, 0.0, 0.0, 0.0, 0.0);
	pid_synthetise(&g_line_pid_1, 1.0/b1, -(a1 + 1.0)/b1, a1/b1, a2/b1);


	predictor_init();
}

void line_follower_main()
{
	float pid_a = pid_process(&g_line_pid_0, (1.0*g_line_sensor.line_position)/LINE_MAX);	//fast
	float pid_b = pid_process(&g_line_pid_1, (1.0*g_line_sensor.line_position)/LINE_MAX);	//curves

	float tmp = 1.0 - m_abs((1.0*g_line_sensor.line_position)/LINE_MAX);

	g_line_follower.dif_speed = fuzzy_mux_process(tmp, pid_a, pid_b);


	g_line_follower.base_speed = 0.7;

	g_line_follower.base_speed = (1.0*predictor_process(g_line_sensor.line_position))/SPEED_MAX;

	//float ks = 0.007;
	//float ks = 0.008;
	float ks = 0.02;



	g_line_follower.base_speed_ = m_min(g_line_follower.base_speed_ + tmp*ks, tmp);
	g_line_follower.base_speed_ = m_saturate(g_line_follower.base_speed_, 0.4, 1.5*g_line_follower.base_speed);


	//g_line_follower.base_speed_ = 0.4;

	i32 motor_right = (g_line_follower.base_speed_ + g_line_follower.dif_speed)*SPEED_MAX;
	i32 motor_left = (g_line_follower.base_speed_ - g_line_follower.dif_speed)*SPEED_MAX;


	drv8834_run(motor_left, motor_right);
}
