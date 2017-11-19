#include "fuzzy_mux.h"


FUZZY_MUX_NUM fuzzy_mux_process(FUZZY_MUX_NUM s, FUZZY_MUX_NUM a, FUZZY_MUX_NUM b)
{
	FUZZY_MUX_NUM res;


	#ifdef FUZZY_MUX_FIXED_POINT
		res = (s*a + (FUZZY_MUX_FRACTION - s)*b)/FUZZY_MUX_FRACTION;
	#endif 


	#ifdef FUZZY_MUX_FLOATING_POINT
		res = s*a + (1.0 - s)*b;
	#endif 
		
	return res;
}