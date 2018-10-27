#ifndef _CAMERA_H_
#define _CAMERA_H_

#include "../lib_usr.h"

#ifdef __cplusplus
extern "C" {
#endif

#define LINE_CAMERA_AO	 		(1<<12)		/*PB12*/
#define LINE_CAMERA_A_CH    (ADC_Channel_3)				/*ADC4 channel 3*/

#define LINE_CAMERA_GPIO		GPIOB
#define LINE_CAMERA_CLK 		(1<<8)
#define LINE_CAMERA_SI	 		(1<<10)

#define LINE_CAMERA_PIXELS_COUNT	(u32)128

#define  CAMERA_ON_LINE 		(u32)(1<<0)

struct sLineCamera
{
	u32 state, flag, frame_flag;
  i32 line_position;
	i32 average;
	i16 pixels_raw[LINE_CAMERA_PIXELS_COUNT];
	i16 pixels[LINE_CAMERA_PIXELS_COUNT];
};



void camera_init();
struct sLineCamera* camera_get();
u32 camera_read();

#ifdef __cplusplus
}
#endif


#endif
