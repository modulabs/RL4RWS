#include "line_sensor.h"


i16 rgb_calibration[]  =  {-487, -284, -214, -345, -270, -163, -184, -369};
//i16 rgb_calibration[] = {-558, -287, -179, -110,  -97, -110, -304, -498};
//i16 rgb_calibration[] = {822, 833, 981, 959, 850, 810, 866, 970 };


u32 line_sensor_init()
{
	u32 i;

	rgb_init();
	rgb_read();

	/*check correct sensor bus ID*/
	u32 rgb_error_result = 0;
	rgb_i2c_read_reg(RGB_ADDRESS,  RGB_COMMAND|RGB_ID, g_line_sensor.tmp);

	for (i = 0; i < SENSORS_COUNT; i++)
	{
		if (g_line_sensor.tmp[i] != RGB_ID_VALUE)
			rgb_error_result|=(1<<i);
	}


	g_line_sensor.state = 0;

	for (i = 0; i < SENSORS_COUNT; i++)
	{
		g_line_sensor.raw_data_on[i] = 0;
		g_line_sensor.raw_data_off[i] = 0;
		g_line_sensor.raw_data_dif[i] = 0;
	}

	g_line_sensor.on_line = 0;
	g_line_sensor.flag = 0;
	g_line_sensor.line_position = 0;

	g_line_sensor.obstacle_position = 0;

	return rgb_error_result;
}


void line_sensor_filter()
{
	u32 i;

	for (i = 0; i < SENSORS_COUNT; i++)
	{
		i32 tmp = g_line_sensor.raw_data_off[i] - g_line_sensor.raw_data_on[i];
		g_line_sensor.raw_data_dif[i] = tmp;
	}

	g_line_sensor.obstacle_position = (g_line_sensor.obstacle_position*7 + g_rgb.proximity[SENSORS_COUNT-1])/8;

	u32 min_i = 0;
	i32 min_value = g_line_sensor.raw_data_dif[min_i];

	i = 3;
	if (g_line_sensor.raw_data_dif[i] < LINE_SENSOR_TRESHOLD)
	{
		min_value = g_line_sensor.raw_data_dif[i];
		min_i = i;
	}

	i = 4;
	if (g_line_sensor.raw_data_dif[i] < LINE_SENSOR_TRESHOLD)
	{
		min_value = g_line_sensor.raw_data_dif[i];
		min_i = i;
	}

	i = 2;
	if (g_line_sensor.raw_data_dif[i] < LINE_SENSOR_TRESHOLD)
	{
		min_value = g_line_sensor.raw_data_dif[i];
		min_i = i;
	}

	i = 5;
	if (g_line_sensor.raw_data_dif[i] < LINE_SENSOR_TRESHOLD)
	{
		min_value = g_line_sensor.raw_data_dif[i];
		min_i = i;
	}

	i = 1;
	if (g_line_sensor.raw_data_dif[i] < LINE_SENSOR_TRESHOLD)
	{
		min_value = g_line_sensor.raw_data_dif[i];
		min_i = i;
	}

	i = 6;
	if (g_line_sensor.raw_data_dif[i] < LINE_SENSOR_TRESHOLD)
	{
		min_value = g_line_sensor.raw_data_dif[i];
		min_i = i;
	}

	i = 0;
	if (g_line_sensor.raw_data_dif[i] < LINE_SENSOR_TRESHOLD)
	{
		min_value = g_line_sensor.raw_data_dif[i];
		min_i = i;
	}

	i = 7;
	if (g_line_sensor.raw_data_dif[i] < LINE_SENSOR_TRESHOLD)
	{
		min_value = g_line_sensor.raw_data_dif[i];
		min_i = i;
	}


	i32 line_pos = 0;
	line_pos = min_i;

	if (min_value <= LINE_SENSOR_TRESHOLD)
	{

		if (min_i == 7)
			line_pos = LINE_MAX;
		else
		if (min_i == 0)
			line_pos = -LINE_MAX;
		else
		{
			i32 line_pos_a = min_i*LINE_STEP;	/*center sensor*/

												/*find side sensor with higher value*/
			i32 line_pos_b = (min_i - 1)*LINE_STEP;
			i32 tmp_idx = min_i - 1;


			if (g_line_sensor.raw_data_dif[min_i + 1] < g_line_sensor.raw_data_dif[min_i - 1])
			{
				line_pos_b = (min_i + 1)*LINE_STEP;
				tmp_idx = min_i + 1;
			}

			i32 s = (LINE_STEP_S*g_line_sensor.raw_data_dif[tmp_idx])/(g_line_sensor.raw_data_dif[min_i] + g_line_sensor.raw_data_dif[tmp_idx]);

			line_pos = (line_pos_b*s + line_pos_a*(LINE_STEP_S -s))/LINE_STEP_S;

			line_pos-= LINE_MAX;
			line_pos+= LINE_OFFSET;

			// printf_("s = %i %i %i [%i %i]  %i \n", line_pos_b,  line_pos_a, s, g_line_sensor.raw_data_dif[min_i - 1], g_line_sensor.raw_data_dif[min_i + 1], line_pos);

			g_line_sensor.line_position = line_pos;


			if (line_pos > LINE_MAX)
				line_pos = LINE_MAX;

			if (line_pos < -LINE_MAX)
				line_pos = -LINE_MAX;
		}


		if ( (line_pos < LINE_MAX) || (line_pos > -LINE_MAX) )
		{
			if (g_line_sensor.on_line < IR_ON_LINE)
				g_line_sensor.on_line++;
		}
		else
			g_line_sensor.on_line = 0;

		if (g_line_sensor.on_line == IR_ON_LINE)
		{
			sched_off();
			g_line_sensor.flag|= IR_FLAG_ON_LINE | IR_FLAG_ON_LINE_DETECTED;
			g_line_sensor.line_position = line_pos;
			sched_on();
		}
		else
		{
			sched_off();
			g_line_sensor.flag&=~IR_FLAG_ON_LINE;
			sched_on();
		}

	}
	else
		g_line_sensor.on_line = 0;


}



void line_sensor_clear_flag(u8 flag)
{
	sched_off();
	g_line_sensor.flag&=~flag;
	sched_on();
}


void line_sensor_read()
{
	u32 i;

	rgb_read();

	i32 average = 0;
	for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
		average+= g_rgb.ambient[i];
	average/= (RGB_SENSORS_COUNT-1);


	i32 max = 0;
    for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
    	if (g_rgb.ambient[i] > max)
    		max = g_rgb.ambient[i];


    for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
    {

    	i32 tmp = 1024;

    	if (g_rgb.r[i] < tmp)
    		 g_rgb.r[i] = tmp;

    	if (g_rgb.g[i] < tmp)
    		 g_rgb.g[i] = tmp;

    	if (g_rgb.b[i] < tmp)
    		 g_rgb.b[i] = tmp;

    	g_line_sensor.raw_data_off[i] = g_rgb.ambient[i] - rgb_calibration[i];
    	g_line_sensor.raw_data_on[i] =  tmp;
	}

	/*
	printf_("\n");
	for (i = 0; i < (RGB_SENSORS_COUNT-1); i++)
		printf_("%i ",g_rgb.ambient[i]);
	printf_("\n");
	*/

	line_sensor_filter();
}
