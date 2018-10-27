#include "broken_line.h"
#include "../lib_usr/line_sensor.h"

#include "../lib_usr/math.h"

#define LINE_SEARCH_TIME_DT		5

void broken_line_init()
{

}

void broken_line_main()
{
	i32 motor_right = 0, motor_left = 0;

	u32 state = 0;
	i32 cnt = 0;

	i32 tmp = 0;

	while (g_line_sensor.on_line != IR_ON_LINE)
	{
		timer_delay_ms(LINE_SEARCH_TIME_DT);

		switch (state)
		{
			case 0:
					if (cnt == 0)
					{
						if (g_line_sensor.line_position > 0)
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = (CONFIG_LINE_SEARCH_SPEED*SPEED_MAX)/100;
						}
						else
						{
							motor_left = (CONFIG_LINE_SEARCH_SPEED*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}

						cnt = CONFIG_LINE_SEARCH_TIME/LINE_SEARCH_TIME_DT;
						state = 1;
					}
					else
						cnt--;
					break;

			case 1:
					if (cnt == 0)
					{
						if (g_line_sensor.line_position > 0)
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = -(CONFIG_LINE_SEARCH_SPEED*SPEED_MAX)/100;
						}
						else
						{
							motor_left = -(CONFIG_LINE_SEARCH_SPEED*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}

						cnt = CONFIG_LINE_SEARCH_TIME/LINE_SEARCH_TIME_DT;
						state = 2;
					}
					else
						cnt--;
					break;

			case 2:
					if (cnt == 0)
					{
						if (g_line_sensor.line_position > 0)
						{
							motor_left = (CONFIG_LINE_SEARCH_SPEED*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}
						else
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = (CONFIG_LINE_SEARCH_SPEED*SPEED_MAX)/100;
						}

						cnt = CONFIG_LINE_SEARCH_TIME/LINE_SEARCH_TIME_DT;
						state = 3;
					}
					else
						cnt--;
					break;

			case 3:
					if (cnt == 0)
					{
						if (g_line_sensor.line_position > 0)
						{
							motor_left = -(CONFIG_LINE_SEARCH_SPEED*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}
						else
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = -(CONFIG_LINE_SEARCH_SPEED*SPEED_MAX)/100;
						}

						cnt = CONFIG_LINE_SEARCH_TIME/LINE_SEARCH_TIME_DT;
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

						cnt = CONFIG_LINE_SEARCH_TIME/(2*LINE_SEARCH_TIME_DT);
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
						if (tmp < (CONFIG_LINE_SEARCH_SPEED*SPEED_MAX))
							tmp+=50;

						motor_left = tmp/SPEED_MAX;
						motor_right = tmp/SPEED_MAX;

						cnt--;
					}
					break;
		}

		drv8834_run(motor_left, motor_right);
	}


	drv8834_run(0, 0);
}
