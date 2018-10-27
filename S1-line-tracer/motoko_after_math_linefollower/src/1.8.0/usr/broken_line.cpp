#include "broken_line.h"


#define LINE_SEARCH_TIME_DT		5

CBrokenLine::CBrokenLine()
{
	init(NULL);
}

CBrokenLine::~CBrokenLine()
{

}

void CBrokenLine::init(class CRobot *robot_)
{
	if (robot_ == NULL)
		return;
		
	this->robot = robot_;


	line_search_time = robot->get_robot_configure()->line_search_time;
	line_search_speed = robot->get_robot_configure()->line_search_speed;
}

void CBrokenLine::process()
{
	i32 motor_right = 0, motor_left = 0;

	u32 state = 0;
	i32 cnt = 0;

	i32 tmp = 0;

	while (robot->get_line_position_sensor()->on_line != ROBOT_OBSTACLE_SENSOR_FLAG_OBSTACLE)
	{
		timer_delay_ms(LINE_SEARCH_TIME_DT);

		switch (state)
		{
			case 0:
					if (cnt == 0)
					{
						if (robot->get_line_position_sensor()->line_position > 0)
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = (line_search_speed*SPEED_MAX)/100;
						}
						else
						{
							motor_left = (line_search_speed*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}

						cnt = line_search_time/LINE_SEARCH_TIME_DT;
						state = 1;
					}
					else
						cnt--;
					break;

			case 1:
					if (cnt == 0)
					{
						if (robot->get_line_position_sensor()->line_position > 0)
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = -(line_search_speed*SPEED_MAX)/100;
						}
						else
						{
							motor_left = -(line_search_speed*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}

						cnt = line_search_time/LINE_SEARCH_TIME_DT;
						state = 2;
					}
					else
						cnt--;
					break;

			case 2:
					if (cnt == 0)
					{
						if (robot->get_line_position_sensor()->line_position > 0)
						{
							motor_left = (line_search_speed*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}
						else
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = (line_search_speed*SPEED_MAX)/100;
						}

						cnt = line_search_time/LINE_SEARCH_TIME_DT;
						state = 3;
					}
					else
						cnt--;
					break;

			case 3:
					if (cnt == 0)
					{
						if (robot->get_line_position_sensor()->line_position > 0)
						{
							motor_left = -(line_search_speed*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}
						else
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = -(line_search_speed*SPEED_MAX)/100;
	 					}

						cnt = line_search_time/LINE_SEARCH_TIME_DT;
						state = 4;
					}
					else
						cnt--;
					break;

			case 4:
					if (cnt == 0)
					{
						motor_left = 0;
						motor_right = 0;

						cnt = line_search_time/(2*LINE_SEARCH_TIME_DT);
						tmp = 0;
						state = 5;
					}
					else
						cnt--;
					break;

			case 5:

					if (cnt == 0)
					{
						state = 0;
					}
					else
					{
						if (tmp < (line_search_speed*SPEED_MAX))
							tmp+=50;

						motor_left = tmp/SPEED_MAX;
						motor_right = tmp/SPEED_MAX;

						cnt--;
					}
					break;
		}

		robot->set_motors(motor_left, motor_right);
	}


	robot->set_motors(0, 0);
}
