#ifndef _ADC_H_
#define _ADC_H_

#include "../lib_low_level.h"

void adc_init();

u16 adc_read(u32 ch);

#endif