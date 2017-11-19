#ifndef _ADC_H_
#define _ADC_H_

#include "../lib_low_level.h"

#ifdef __cplusplus
extern "C" {
#endif

void adc_init();

u16 adc_read(u32 ch);


#ifdef __cplusplus
}
#endif

#endif
