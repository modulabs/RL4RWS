#include "common.h"
#include "robot_model/robot.h"

int main()
{
	srand(time(NULL));

	struct sRobotInit robot_init;
	struct sRobotResult robot_result;


	float dt = 1.0/200.0;												//200Hz
	bool visualise = true;

	robot_init.length = 80.0/1000.0; 						//	80mm
	robot_init.brace =	99.0/1000.0;						//	99mm
	robot_init.round_diameter =	32.0/1000.0; 		//	32mm
	robot_init.rpm_max = 1000.0;								// 	1000rpm
	robot_init.motor_torque = 0.06; 						// 	0.06N/m
	robot_init.mass = 0.1;											// 	100g
	robot_init.rotation_inertia = 0.9;					// ?
	robot_init.robot_inertia = 0.6;							// ?
	robot_init.dt = dt;

	robot_init.path_length = 1024;
	robot_init.path_width = 15.0/1000.0;				//15mm

	robot_init.visualise = visualise;

	class CRobot *robot;

	robot = new CRobot(robot_init);

	robot_result = robot->get();

	double simulation_run_time = 100.0;
	double simulation_time = 0.0;

	bool simulation_run = visualise;

	class CLog *result_log;

	if (visualise == false)
	{
		result_log = new CLog("result_log.txt", 5);
	}

	float ul = 0.0;
	float ur = 0.0;

	float e0 = 0.0;
	float e1 = 0.0;

	float Kp = 0.09;
	float Kd = 0.0;

	while ((simulation_run) || (simulation_time < simulation_run_time))
	{
		e1 = e0;
		e0 = 0.0 - robot_result.line_position;

		if (e0 > 1.0)
			e0 = 1.0;
		if (e0 < -1.0)
			e0 = -1.0;

		float dif_speed = 0.0;
		float base_speed = 0.01;



		dif_speed = (Kp*e0 + Kd*(e0 - e1));

		ul = base_speed + dif_speed;
		ur = base_speed - dif_speed;

		/*
		if (simulation_time < 1.0)
		{
			ul = 0.1;
			ur = 0.1;
		}
		else
		{
			ul = 0.0;
			ur = 0.0;
		}
		*/

		robot->process(ul, ur);

		robot_result = robot->get();

		if (visualise == false)
		{
			result_log->add(0, simulation_time);
			result_log->add(1, robot_result.theta*180.0/PI);
			result_log->add(2, robot_result.l_0);
			result_log->add(3, robot_result.x);
			result_log->add(4, robot_result.y);
		}
		else
		{
			usleep(dt*1000000.0);
			printf("%6.3f %6.3f %6.3f %6.3f %6.3f\n", simulation_time, robot_result.theta*180.0/PI, robot_result.x, robot_result.y, robot_result.line_position);
		}

		simulation_time+= robot_init.dt;
	}

	if (visualise == false)
	{
		result_log->save();
		delete result_log;
	}


	delete robot;


	printf("program done\n");
	return 0;
}
