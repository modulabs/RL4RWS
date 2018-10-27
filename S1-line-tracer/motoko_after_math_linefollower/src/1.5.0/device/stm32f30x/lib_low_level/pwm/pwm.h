#ifndef _PWM_H_
#define _PWM_H_

#include "../lib_low_level.h"


void pwm_init();
void pwm_set(u32 ch0, u32 ch1);

#endif