#ifndef _OBSTACLE_H_
#define _OBSTACLE_H_

#include "../os/suzuha_os.h"


#define OBSTACLE_MANEVEUR_SIZE		(u32)32
#define OBSTACLE_SAMPLIG_PERIOD		(u32)50
#define OBSTACLE_MANEVEUR_SPEED		(i32)(SPEED_MAX/2)


struct sObstacle
{
	i16 maneuver[OBSTACLE_MANEVEUR_SIZE];
};

struct sObstacle g_obstacle;

void obstacle_init();
void obstacle_main();
void obstacle_print();

#endif