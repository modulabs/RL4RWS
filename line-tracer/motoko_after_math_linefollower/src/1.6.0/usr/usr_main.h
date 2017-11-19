#ifndef _USR_MAIN_H_
#define _USR_MAIN_H_


#include "../lib_usr/lib_usr.h"


#define THREAD_STACK_SIZE	128

thread_stack_t main_thread_stack[THREAD_STACK_SIZE];
thread_stack_t i2c_sensor_thread_stack[THREAD_STACK_SIZE];
thread_stack_t line_sensor_thread_stack[THREAD_STACK_SIZE];

void main_thread();

#endif
