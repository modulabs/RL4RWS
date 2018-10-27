#ifndef _PID_H_
#define _PID_H_

/* 
	universal PIDD2 controller

	uses Takahashi PID form http://bestune.50megs.com/typeABC.htm :
	u(n) = u(n-1) + b0*e(n) + b1*e(n-1) + b2*e(n-2) + b3*e(n-3)

	where
	b0 = kp + ki + kd + kd2;
	b1 = -kp -2*kd -3*kd2;
	b2 = kd + 3*kd2;
	b3 = -kd2;

	antiwindup is implemented as u(n) limiter
	there is also exponential error filter option
*/

/*

	This program is free software: you can redistribute it and/or modify
    	it under the terms of the GNU General Public License as published by
    	the Free Software Foundation, either version 3 of the License, or
    	(at your option) any later version.

    	This program is distributed in the hope that it will be useful,
    	but WITHOUT ANY WARRANTY; without even the implied warranty of
    	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    	GNU General Public License for more details.

    	You should have received a copy of the GNU General Public License
    	along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
	Author : Kenshin - Michal Chovanec, 5 February 2015
*/



/*use fixed point math, where one is represented as PID_FRACTION value*/
//#define PID_FIXED_POINT			1

/*use floating point math*/
#define PID_FLOATING_POINT		1

/*enable error filtering*/
//#define PID_ERROR_FILTER_ENABLE	1


#include "../os/suzuha_os.h"

#ifndef i32
	// typedef signed int i32;		/*32bit signed integer*/
#endif

#ifdef PID_FIXED_POINT
	typedef i32 PID_NUM;
	#define PID_FRACTION		(PID_NUM)256
#endif

#ifdef PID_FLOATING_POINT
	typedef float PID_NUM;
#endif


#ifdef PID_ERROR_FILTER_ENABLE

	/* 1st order low pass filter with unity gain (exponential filter)
	   http://en.wikipedia.org/wiki/Exponential_smoothing

	   filter equation : 
	   y(n) = (1.0 - c)*y(n-1) + c*x(n)
	*/

	#ifdef PID_FIXED_POINT
	/* this value must be in range <1, PID_FRACTION) */
	#define ERROR_FILTER_CONSTANT	(PID_NUM)76	/* PID_FRACTION*0.3 */
	#endif

	#ifdef PID_FLOATING_POINT
	/* this value must be in range (0.0, 1.0) */
	#define ERROR_FILTER_CONSTANT	(PID_NUM)0.3
	#endif

#endif




#ifndef PID_FIXED_POINT
#ifndef PID_FLOATING_POINT
 #error "No integer/float type specified."
#endif
#endif

/*
	variables for controller
	call pid_init for initialization
	pid_process for calculation
	pid_synthetise for parameters modification
*/
struct sPID
{
	PID_NUM e0, e1, e2, e3;
	PID_NUM b0, b1, b2, b3;
	PID_NUM	u, antiwindup;
};

/*
	complete controller initialization, 
	sets b0, b1, b2, b3 depending on kp, ki, kd, kdd2
	reset u(n) = 0
*/
void pid_init(struct sPID *pid, PID_NUM antiwindup, PID_NUM kp,  PID_NUM ki,  PID_NUM kd,  PID_NUM kd2);

/*
	modify controller parameter, but dont reset u(n)
	this function is usefull for direct controller synthetis from plant model, 
	include adaptive controll
*/
void pid_synthetise(struct sPID *pid, PID_NUM b0, PID_NUM b1,  PID_NUM b2,  PID_NUM b3);

/*
	calculate controller output from error input
	err = desired_value - plant_output_value
*/
PID_NUM pid_process(struct sPID *pid, PID_NUM err);

#endif
