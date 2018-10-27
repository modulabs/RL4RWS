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

void CBrokenLine::process(u32 test_enabled)
{
	u32 state = 1;

	u32 dist_end = 0;

	i32 motor_left = 0;
	i32 motor_right = 0;

	i32 motor_left_ = 0;
	i32 motor_right_ = 0;

	u32 line_search_distance = 190;

	i32 line_position = robot->get_line_position_sensor()->line_position;

	dist_end = encoder_get_distance() + line_search_distance;
	while ( (robot->get_line_position_sensor()->on_line != ROBOT_LINE_SENSOR_FLAG_ON_LINE) && (encoder_get_distance() < dist_end))
	{
		if (line_position > 0)
		{
			motor_left = (0*SPEED_MAX)/100;
			motor_right = (line_search_speed*SPEED_MAX)/100;
		}
		else
		{
			motor_left = (line_search_speed*SPEED_MAX)/100;
			motor_right = (0*SPEED_MAX)/100;
		}

		drv8834_run(motor_left, motor_right);
		timer_delay_ms(10);

		if (robot->get_line_position_sensor()->on_line == ROBOT_LINE_SENSOR_FLAG_ON_LINE)
			return;
	}

	dist_end = 0;

	while ( (robot->get_line_position_sensor()->on_line != ROBOT_LINE_SENSOR_FLAG_ON_LINE) || test_enabled)
	{
			switch (state)
			{
				case 0:
								if (encoder_get_distance() >= dist_end)
								{
									dist_end = encoder_get_distance() + line_search_distance;

									if (line_position > 0)
									{
										motor_left = 0;
										motor_right = (line_search_speed*SPEED_MAX)/100;
									}
									else
									{
										motor_left = (line_search_speed*SPEED_MAX)/100;
										motor_right = 0;
									}

									motor_left_ = 0;
									motor_right_ = 0;

									state = 1;
								}
								break;

				case 1:
								if (encoder_get_distance() >= dist_end)
								{
									dist_end = encoder_get_distance() + line_search_distance;

									if (line_position > 0)
									{
										motor_left = 0;
										motor_right = -(line_search_speed*SPEED_MAX)/100;
									}
									else
									{
										motor_left = -(line_search_speed*SPEED_MAX)/100;
										motor_right = 0;
									}

									motor_left_ = 0;
									motor_right_ = 0;

									state = 2;
								}
								break;


				case 2:
							if (encoder_get_distance() >= dist_end)
							{
								dist_end = encoder_get_distance() + line_search_distance;

								if (line_position > 0)
								{
									motor_left = (line_search_speed*SPEED_MAX)/100;
									motor_right = 0;
								}
								else
								{
									motor_left = 0;
									motor_right = (line_search_speed*SPEED_MAX)/100;
								}

								motor_left_ = 0;
								motor_right_ = 0;

								state = 3;
							}
							break;

			case 3:
							if (encoder_get_distance() >= dist_end)
							{
								dist_end = encoder_get_distance() + line_search_distance;

								if (line_position > 0)
								{
									motor_left = -(line_search_speed*SPEED_MAX)/100;
									motor_right = 0;
								}
								else
								{
									motor_left = 0;
									motor_right = -(line_search_speed*SPEED_MAX)/100;
								}

								motor_left_ = 0;
								motor_right_ = 0;

								state = 4;
							}
							break;

			case 4:
							if (encoder_get_distance() >= dist_end)
							{
								dist_end = encoder_get_distance() + line_search_distance;

								motor_left = (40*SPEED_MAX)/100;
								motor_right = (40*SPEED_MAX)/100;

								motor_left_ = 0;
								motor_right_ = 0;

								state = 0;
							}
							break;

			}

			if (m_abs_int(motor_left_) < m_abs_int(motor_left))
				motor_left_+= m_sgn_int(motor_left);

			if (m_abs_int(motor_right_) < m_abs_int(motor_right))
				motor_right_+= m_sgn_int(motor_right);


			drv8834_run(motor_left_, motor_right_);

			timer_delay_ms(10);
	}

	drv8834_run(0, 0);


	/*
	i32 motor_right = 0, motor_left = 0;

	u32 state = 0;
	i32 cnt = 0;

	i32 tmp = 0;

	while ( (robot->get_line_position_sensor()->on_line != ROBOT_LINE_SENSOR_FLAG_ON_LINE) || test)
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
	*/
}

void CBrokenLine::test()
{
	process(1);
}
