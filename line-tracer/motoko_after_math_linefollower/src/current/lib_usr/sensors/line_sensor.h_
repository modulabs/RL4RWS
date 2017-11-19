#ifndef _LINE_SENSOR_H_
#define _LINE_SENSOR_H_

#include "../lib_usr.h"
#include "rgb_i2c.h"

#ifdef __cplusplus
extern "C" {
#endif

#define LINE_STEP_W										64
#define LINE_MAX 				 							(i32)(LINE_STEP_W*4)

#define LINE_SENSOR_FLAG_ON_LINE			(u8)1
#define LINE_SENSOR_FLAG_OBSTACLE			(u8)1

#define LINE_SENSORS_COUNT 						(8)
#define SENSORS_COUNT 								(LINE_SENSORS_COUNT + 1)


struct sLineSensor
{
  u8 tmp[SENSORS_COUNT];
	i32 raw_data_dif[SENSORS_COUNT];

	u8 on_line;
	i32 line_position;
	i16 line_sensor_treshold;

	u8 obstacle;
	i32 obstacle_position;
	i32 obstacle_treshold;
};


u32 line_sensor_init(i32 line_sensor_treshold, i32 obstacle_treshold);
struct sLineSensor* line_sensor_get();
void line_sensor_read(u8 calibration_enabled);

#ifdef __cplusplus
}
#endif


#endif
