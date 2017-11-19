#include "camera.h"
#include "../os/suzuha_os.h"


void camera_init()
{
	g_camera.state = 0;
	g_camera.line_position = 0;

}


void camera_read()
{
	g_camera.state = i2c_read_reg(CAMERA_ADDRESS, CAMERA_STATE);
	g_camera.line_position = i2c_read_reg(CAMERA_ADDRESS, CAMERA_LINE_POSITION);
}