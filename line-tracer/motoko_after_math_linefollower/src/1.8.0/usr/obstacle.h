#ifndef _OBSTACLE_H_
#define _OBSTACLE_H_

#include "../lib_usr/lib_usr.h"

#ifdef __cplusplus

class CObstacle
{
	private:
		u32 state;

		class CRobot *robot;

	public:
		CObstacle();
		~CObstacle();

		void init(class CRobot *robot_);
		void process();

		void test();

	private:
		i32 abs_(i32 x);

		void rotate_robot(i32 angle);
		void go_forward(i32 speed, u32 time, u8 (*term_fun)());
};

#endif


#endif
