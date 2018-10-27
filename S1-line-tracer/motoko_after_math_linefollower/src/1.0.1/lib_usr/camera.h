#ifndef _CAMERA_H_
#define _CAMERA_H_

#include "../device/device.h"

#define CAMERA_ADDRESS 				0xF0

#define CAMERA_STATE 				0x01
#define CAMERA_LINE_POSITION 		0x02

#define CAMERA_STATE_NULL	 		0x00
#define CAMERA_STATE_NO_CONNECTED 	0xFF
#define CAMERA_STATE_CORRECT 		0xA1

struct sCamera
{
	u8 state;
	i32 line_position;
};

struct sCamera g_camera;

void camera_init();
void camera_read();

#endif