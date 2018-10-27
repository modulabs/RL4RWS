#ifndef _LINE_FOLLOWER_H_
#define _LINE_FOLLOWER_H_

#include "../lib_usr/lib_usr.h"
#include "robot_config.h"


struct sLineFollower
{
	float base_speed, base_speed_max;
	float dif_speed;
};

struct sLineFollower g_line_follower;


void line_follower_init();
void line_follower_main();

#endif
