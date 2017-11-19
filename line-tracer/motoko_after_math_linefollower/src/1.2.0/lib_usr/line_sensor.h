#ifndef _LINE_SENSOR_
#define _LINE_SENSOR_


#include "../device/device.h"
#include "rgb_i2c.h"


// #define QRE113_SENSOR 1
#define RGB_SENSOR 1 

#define IR_LINE_SENSORS_COUNT	8

// #define IR_LINE_POS_FIFO_SIZE	4 

 #define LINE_OFFSET (i32)32
//#define LINE_OFFSET (i32)0

#define LINE_MAX	((i32)256)
#define LINE_STEP	((i32)LINE_MAX/(i32)4)
#define LINE_STEP_S	((i32)LINE_MAX/(i32)8)
 

//#define LINE_SENSOR_TRESHOLD	(i32)(-200)
//#define LINE_SENSOR_TRESHOLD	(i32)(-300)
#define LINE_SENSOR_TRESHOLD	(i32)(-350)


//#define OBSTACLE_SENSOR_TRESHOLD	3000
//#define OBSTACLE_SENSOR_TRESHOLD	300 
#define OBSTACLE_SENSOR_TRESHOLD	520 
//#define OBSTACLE_SENSOR_TRESHOLD	2500



#define IR_ON_LINE (u32)2


#define SENSORS_COUNT (8 + 1)


#define IR_LED_GPIO	GPIOA
#define IR_LED_PIN	(1<<8)



#define IR_FLAG_ON_LINE			(1<<0)
#define IR_FLAG_ON_LINE_DETECTED	(1<<1)



struct sLineSensor
{
	u8 state; 

	i16 raw_data_on[SENSORS_COUNT];
	i16 raw_data_off[SENSORS_COUNT];
	i16 raw_data_dif[SENSORS_COUNT];

	u8 on_line;
	i32 line_position;
	i32 obstacle_position;

	u8 flag;
};


struct sLineSensor g_line_sensor;

void line_sensor_init();
void line_sensor_read();

void line_sensor_clear_flag(u8 flag);

#endif
