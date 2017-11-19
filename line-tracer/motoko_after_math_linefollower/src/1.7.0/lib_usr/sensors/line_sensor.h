#ifndef _LINE_SENSOR_H_
#define _LINE_SENSOR_H_


#include "../lib_usr.h"
#include "rgb_i2c.h"


#define LINE_STEP_W	64

#define LINE_MAX 				 	(i32)(LINE_STEP_W*4)


#define IR_ON_LINE (u32)8

#define IR_LINE_SENSORS_COUNT	8

#define SENSORS_COUNT (8 + 1)
#define LINE_SENSORS_COUNT (8)


#define IR_LED_GPIO	GPIOA
#define IR_LED_PIN	(1<<8)


struct sLineSensor
{
	u8 state;
  u8 tmp[SENSORS_COUNT];
	i32 raw_data_dif[SENSORS_COUNT];

	u8 on_line;
	i32 line_position;
	i32 obstacle_position;

	u8 flag;

	i16 treshold;
};


struct sLineSensor g_line_sensor;

u32 line_sensor_init();
void line_sensor_read(u8 calibration_enabled);

void line_sensor_clear_flag(u8 flag);

#endif
