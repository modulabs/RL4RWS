#include "pid.h"
 
void pid_init(struct sPID *pid, PID_NUM antiwindup, PID_NUM kp,  PID_NUM ki,  PID_NUM kd,  PID_NUM kd2)
{
	pid->e0 = 0;
	pid->e1 = 0;
	pid->e2 = 0;
	pid->e3 = 0;
   
	pid->b0 = kp + ki + kd + kd2;
	pid->b1 = -kp -2*kd -3*kd2;
	pid->b2 = kd + 3*kd2;
	pid->b3 = -kd2;

	pid->u = 0;
	pid->antiwindup = antiwindup;
}

void pid_synthetise(struct sPID *pid, PID_NUM b0, PID_NUM b1,  PID_NUM b2,  PID_NUM b3)
{
	pid->b0 = b0;
	pid->b1 = b1;
	pid->b2 = b2;
	pid->b3 = b3;
}

PID_NUM pid_process(struct sPID *pid, PID_NUM err)
{
	pid->e3 = pid->e2;
	pid->e2 = pid->e1;
	pid->e1 = pid->e0;
 
	#ifdef PID_ERROR_FILTER_ENABLE
		#ifdef PID_FIXED_POINT
		pid->e0 = ((PID_FRACTION - ERROR_FILTER_CONSTANT)*pid->e0 + (ERROR_FILTER_CONSTANT*err))/PID_FRACTION;
		#endif

		#ifdef PID_FLOATING_POINT
		pid->e0 = (1.0 - ERROR_FILTER_CONSTANT)*pid->e0 + ERROR_FILTER_CONSTANT*err;
		#endif

	#else
	pid->e0 = err;
	#endif

	#ifdef PID_FIXED_POINT
	pid->u = pid->u + (
			pid->e0*pid->b0 +
			pid->e1*pid->b1 +
			pid->e2*pid->b2 +
			pid->e3*pid->b3
			  ) / PID_FRACTION;	

	#endif

	#ifdef PID_FLOATING_POINT
	pid->u = pid->u +
			pid->e0*pid->b0 +
			pid->e1*pid->b1 +
			pid->e2*pid->b2 +
			pid->e3*pid->b3;	
	#endif

	if (pid->u > pid->antiwindup)
		pid->u = pid->antiwindup;

	if (pid->u < -pid->antiwindup)
		pid->u = -pid->antiwindup;

	return pid->u;
}
