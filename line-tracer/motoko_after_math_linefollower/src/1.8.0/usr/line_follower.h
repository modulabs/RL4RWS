#ifndef _LINE_FOLLOWER_H_
#define _LINE_FOLLOWER_H_

#include "../lib_usr/lib_usr.h"


#ifdef __cplusplus

class CLineFollower
{
	private:

		float ks1, ks2;
		float speed_min, speed_max;
		float base_speed, dif_speed;

		struct sPID line_pid;

		class CRobot *robot;

	public:
		CLineFollower();
		~CLineFollower();

		void init(class CRobot *robot_);
		void process();
};

#endif


#endif
