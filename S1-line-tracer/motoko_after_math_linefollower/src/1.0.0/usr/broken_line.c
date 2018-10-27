#include "broken_line.h"
#include "../lib_usr/line_sensor.h"

#include "../lib_usr/math.h"

void broken_line_init()
{

}


#define LINE_SEARCH_TIME 	130
#define LINE_SEARCH_SPEED 	(i32)50

void broken_line_main()
{
	i32 motor_right = 0, motor_left = 0;

	u32 state = 0;
	u32 cnt = 0;

	while ( (g_line_sensor.on_line != IR_ON_LINE) ) //|| (m_abs(g_line_sensor.line_position) > (LINE_MAX*40.0)/100.0) )
	{
		timer_delay_ms(5);
 
		switch (state)
		{
			case 0:
					if (cnt == 0)
					{
						if (g_line_sensor.line_position > 0)
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = (LINE_SEARCH_SPEED*SPEED_MAX)/100;
						}
						else  
						{
							motor_left = (LINE_SEARCH_SPEED*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						} 

						cnt = LINE_SEARCH_TIME;
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
							motor_right = -(LINE_SEARCH_SPEED*SPEED_MAX)/100;
						}
						else  
						{
							motor_left = -(LINE_SEARCH_SPEED*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						} 

						cnt = LINE_SEARCH_TIME;
						state = 2;
					}
					else
						cnt--;

			case 2:
					if (cnt == 0)
					{
						if (g_line_sensor.line_position > 0)
						{
							motor_left = (LINE_SEARCH_SPEED*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}
						else  
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = (LINE_SEARCH_SPEED*SPEED_MAX)/100;
						} 

						cnt = LINE_SEARCH_TIME;
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
							motor_left = -(LINE_SEARCH_SPEED*SPEED_MAX)/100;
							motor_right = (0*SPEED_MAX)/100;
						}
						else  
						{
							motor_left = (0*SPEED_MAX)/100;
							motor_right = (LINE_SEARCH_SPEED*SPEED_MAX)/100;
						} 

						cnt = LINE_SEARCH_TIME;
						state = 4;
					}
					else
						cnt--;

			case 4:
					if (cnt == 0)
					{
						motor_left = 0;
						motor_right = 0;
						

						cnt = LINE_SEARCH_TIME/2;
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
						if (motor_left < (40*SPEED_MAX)/100)
							motor_left++;

						if (motor_right < (40*SPEED_MAX)/100)
							motor_right++;
						
						cnt--;
					}
					break;
		}
		//motor_left = 0;
		//motor_right = 0;
		drv8834_run(motor_left, motor_right); 
	}


	drv8834_run(0, 0); 
}