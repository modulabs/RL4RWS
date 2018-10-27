#include "line_sensor.h"

#ifndef STM303
#define LINE_SENSOR_TRESHOLD	(i32)150
#endif

i32 rgb_calibration_ambient[]  =  {0, 0, 0, 0, 0, 0, 0, 0};
i32 rgb_calibration_r[]  =  {0, 0, 0, 0, 0, 0, 0, 0};
i32 rgb_calibration_g[]  =  {0, 0, 0, 0, 0, 0, 0, 0};
i32 rgb_calibration_b[]  =  {0, 0, 0, 0, 0, 0, 0, 0};

i16 rgb_w[] = {
				-LINE_STEP_W*4, -LINE_STEP_W*3, -LINE_STEP_W*2, -LINE_STEP_W*1,
				 LINE_STEP_W*1,  LINE_STEP_W*2,  LINE_STEP_W*3,  LINE_STEP_W*4};


u32 line_sensor_init()
{
	u32 i, j;
	timer_delay_ms(100);

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


	for (i = 0; i < (SENSORS_COUNT-1); i++)
		g_line_sensor.raw_data_dif[i] = 0;

	g_line_sensor.state = 0;
	g_line_sensor.on_line = 0;
	g_line_sensor.flag = 0;
	g_line_sensor.line_position = 0;
	g_line_sensor.obstacle_position = 0;

	line_sensor_read(1);

	u32 calibration_count = 32;
	for (j = 0; j < calibration_count; j++)
	{
		line_sensor_read(1);

		for (i = 0; i < LINE_SENSORS_COUNT; i++)
		{
			rgb_calibration_ambient[i]+=  g_rgb.ambient[i];
			rgb_calibration_r[i]+=  g_rgb.r[i];
			rgb_calibration_g[i]+=  g_rgb.g[i];
			rgb_calibration_b[i]+=  g_rgb.b[i];
		}
	}

	for (i = 0; i < LINE_SENSORS_COUNT;  i++)
	{
		rgb_calibration_ambient[i]/= calibration_count;
		rgb_calibration_r[i]/= calibration_count;
		rgb_calibration_g[i]/= calibration_count;
		rgb_calibration_b[i]/= calibration_count;
	}

	return rgb_error_result;
}


void line_sensor_clear_flag(u8 flag)
{
	sched_off();
	g_line_sensor.flag&=~flag;
	sched_on();
}


void line_sensor_read(u8 calibration_enabled)
{
	u32 i;
	rgb_read();

	if (calibration_enabled != 0)
		return;

	//calculate obstacle position
	g_line_sensor.obstacle_position = (g_line_sensor.obstacle_position*7 + g_rgb.proximity[SENSORS_COUNT-1])/8;

	i32 average_ambient = 0;
	i32 average_r = 0;
	i32 average_g = 0;
	i32 average_b = 0;

	for (i = 0; i < LINE_SENSORS_COUNT; i++)
	{
		g_rgb.ambient[i]-= rgb_calibration_ambient[i];
		g_rgb.r[i]-= rgb_calibration_r[i];
		g_rgb.g[i]-= rgb_calibration_g[i];
		g_rgb.b[i]-= rgb_calibration_b[i];

		average_ambient+= g_rgb.ambient[i];
		average_r+= g_rgb.r[i];
		average_g+= g_rgb.g[i];
		average_b+= g_rgb.b[i];
	}

	average_ambient/=LINE_SENSORS_COUNT;
	average_r/=LINE_SENSORS_COUNT;
	average_g/=LINE_SENSORS_COUNT;
	average_b/=LINE_SENSORS_COUNT;

	for (i = 0; i <LINE_SENSORS_COUNT; i++)
	{
		g_rgb.ambient[i] =  -(g_rgb.ambient[i] - average_ambient);
		g_rgb.r[i] = (g_rgb.r[i] - average_r);
		g_rgb.g[i] = (g_rgb.g[i] - average_g);
		g_rgb.b[i] = (g_rgb.b[i] - average_b);
	}

	for (i = 0; i <LINE_SENSORS_COUNT; i++)
	{
		g_line_sensor.raw_data_dif[i] = g_rgb.ambient[i];
	}


	/*
		i32 tmp = g_rgb.ambient[i];

    if (g_rgb.r[i] < tmp)
    	 tmp = g_rgb.r[i];

    if (g_rgb.g[i] < tmp)
    	 tmp = g_rgb.g[i];

    if (g_rgb.b[i] < tmp)
    	 tmp = g_rgb.b[i];

    g_line_sensor.raw_data_dif[i] = -tmp;
		*/

	i32 line_position = 0, value = 0, tmp = 0;

	tmp = g_line_sensor.raw_data_dif[3] + g_line_sensor.raw_data_dif[4];
	if (tmp != 0)
	{
		line_position = ( g_line_sensor.raw_data_dif[3]*rgb_w[3] + g_line_sensor.raw_data_dif[4]*rgb_w[4] )/tmp;
		value = ( g_line_sensor.raw_data_dif[3] + g_line_sensor.raw_data_dif[4])/2;
	}

	tmp = g_line_sensor.raw_data_dif[5] + g_line_sensor.raw_data_dif[4];
#ifdef STM303
	if ((tmp != 0) && (g_line_sensor.raw_data_dif[5] > LINE_SENSOR_TRESHOLD))
	{
		line_position = ( g_line_sensor.raw_data_dif[5]*rgb_w[5] + g_line_sensor.raw_data_dif[4]*rgb_w[4] )/tmp;
		value = g_line_sensor.raw_data_dif[5];
	}
#endif

	tmp = g_line_sensor.raw_data_dif[2] + g_line_sensor.raw_data_dif[3];
#ifdef STM303
	if ((tmp != 0) && (g_line_sensor.raw_data_dif[2] > LINE_SENSOR_TRESHOLD))
	{
		line_position = ( g_line_sensor.raw_data_dif[2]*rgb_w[2] + g_line_sensor.raw_data_dif[3]*rgb_w[3] )/tmp;
		value = g_line_sensor.raw_data_dif[2];
	}
#endif

	tmp = g_line_sensor.raw_data_dif[6] + g_line_sensor.raw_data_dif[5];
	if ((tmp != 0) && (g_line_sensor.raw_data_dif[6] > LINE_SENSOR_TRESHOLD))
	{
			line_position = ( g_line_sensor.raw_data_dif[6]*rgb_w[6] + g_line_sensor.raw_data_dif[5]*rgb_w[5] )/tmp;
			value = g_line_sensor.raw_data_dif[6];
	}

	tmp = g_line_sensor.raw_data_dif[1] + g_line_sensor.raw_data_dif[2];
	if ((tmp != 0) && (g_line_sensor.raw_data_dif[1] > LINE_SENSOR_TRESHOLD))
	{
			line_position = ( g_line_sensor.raw_data_dif[1]*rgb_w[1] + g_line_sensor.raw_data_dif[2]*rgb_w[2] )/tmp;
			value = g_line_sensor.raw_data_dif[1];
	}

	if (g_line_sensor.raw_data_dif[7] > LINE_SENSOR_TRESHOLD)
	{
			line_position = rgb_w[7];
			value = g_line_sensor.raw_data_dif[7];
	}

	if (g_line_sensor.raw_data_dif[0] > LINE_SENSOR_TRESHOLD)
	{
		line_position = rgb_w[0];
		value = g_line_sensor.raw_data_dif[0];
	}

	if (value > LINE_SENSOR_TRESHOLD)
	{
#ifdef STM303
		line_position = line_position - LINE_OFFSET;
#endif
		if (line_position > LINE_MAX)
			line_position = LINE_MAX;

		if (line_position < -LINE_MAX)
			line_position = -LINE_MAX;

			g_line_sensor.line_position = line_position;
			g_line_sensor.on_line = IR_ON_LINE;
	}
	else
	{
		g_line_sensor.on_line = 0;
	}
}
