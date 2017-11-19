#ifndef _FUZZY_MUX_H_
#define _FUZZY_MUX_H_

/*use fixed point math, where one is represented as FUZZY_MUX_FRACTION value*/
// #define FUZZY_MUX_FIXED_POINT			1

/*use floating point math*/
#define FUZZY_MUX_FLOATING_POINT		1



#include "../os/suzuha_os.h"

#ifndef i32
	// typedef signed int i32;		/*32bit signed integer*/
#endif

#ifdef FUZZY_MUX_FIXED_POINT
	typedef i32 FUZZY_MUX_NUM;
	#define FUZZY_MUX_FRACTION		(FUZZY_MUX_NUM)256
#endif

#ifdef FUZZY_MUX_FLOATING_POINT
	typedef float FUZZY_MUX_NUM;
#endif

FUZZY_MUX_NUM fuzzy_mux_process(FUZZY_MUX_NUM s, FUZZY_MUX_NUM a, FUZZY_MUX_NUM b);

#endif