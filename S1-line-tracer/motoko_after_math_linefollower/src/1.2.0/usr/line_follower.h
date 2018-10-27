#ifndef _LINE_FOLLOWER_H_
#define _LINE_FOLLOWER_H_

#include "../os/suzuha_os.h"
#include "pid.h"


struct sLineFollower
{
	float base_speed, base_speed_max;
	float dif_speed;
};

struct sLineFollower g_line_follower;


void line_follower_init();
void line_follower_main();

#endif
