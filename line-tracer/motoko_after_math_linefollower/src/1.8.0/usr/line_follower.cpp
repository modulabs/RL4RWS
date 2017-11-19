#include "line_follower.h"
#include "q_predictor.h"

class CQPredictor c_q_predictor;

CLineFollower::CLineFollower()
{
	init(NULL);
}

CLineFollower::~CLineFollower()
{

}



void CLineFollower::init(class CRobot *robot_)
{
	if (robot_ == NULL)
		return;

	base_speed = 0.0;
	dif_speed = 0.0;

	this->robot = robot_;

	c_q_predictor.init();

	pid_init(&line_pid, SPEED_MAX,
						this->robot->get_robot_configure()->kp/1000.0,
						this->robot->get_robot_configure()->ki/1000.0,
						this->robot->get_robot_configure()->kd/1000.0,
						this->robot->get_robot_configure()->kd2/1000.0);

	this->ks1 = this->robot->get_robot_configure()->ks1/1000.0;
	this->ks2 = this->robot->get_robot_configure()->ks2/1000.0;

	this->speed_min = this->robot->get_robot_configure()->speed_min/1000.0;
	this->speed_max = this->robot->get_robot_configure()->speed_max/1000.0;


}


void CLineFollower::process()
{
	float line_position = (1.0*robot->get_line_position_sensor()->line_position)/ROBOT_LINE_MAX;

	float required_position = 0.0;	//line center

	/*
	if (this->robot->get_robot_configure()->use_predictor != 0)
		required_position = 0.3*c_q_predictor.process(line_position);
		*/


	float error = required_position - line_position;
	float error_ = m_abs(error);

	#if CONFIG_USE_CAMERA == 1
	camera_read();
	if (g_camera.flag == 0)
	{
	 	error_ = 1.0;
	}
	#endif


	base_speed = m_min(base_speed + ks1*(1.0 - error_), 1.0 - ks2*error_);
	base_speed = m_saturate(base_speed, speed_min, speed_max);

	dif_speed = pid_process(&line_pid, error);

	i32 motor_right = (base_speed - dif_speed)*SPEED_MAX;
	i32 motor_left = (base_speed + dif_speed)*SPEED_MAX;

	this->robot->set_motors(motor_left, motor_right);
}
