#include "math.h"

mint m_abs(mint value)
{
	if (value < 0)
		value = -value;

	return value;
}

mint m_sgn(mint value)
{
	if (value < 0)
		return -1;

	if (value > 0)
		return 1;
 
	return 0;
}

mint m_saturate(mint value, mint min, mint max)
{
	if (value < min)
		value = min;

	if (value > max)
		value = max;

	return value;
}





mint m_min(mint value_a, mint value_b)
{
	if (value_a < value_b)
		return value_a;

	return value_b;
}

mint m_max(mint value_a, mint value_b)
{
	if (value_a > value_b)
		return value_a;

	return value_b;
}


mint m_map(mint sa, mint sb, mint da, mint db, mint value)
{
	mint res;

	res = ((db - da)*value)/(sb - sa) + da - ((db - da)*sa)/(sb -sa);

	return res;
}


unsigned int __rnda__ = 1;
unsigned int __rndb__ = 123;

void m_srand(unsigned int seed)
{
	__rnda__ = (unsigned int)seed + 1;
	__rndb__ = (unsigned int)123;
}

unsigned int m_rnd()
{
	__rnda__ = __rnda__ *(unsigned int)1103515245 + (unsigned int)12345;
	__rndb__ = (__rndb__ >> 1) ^ (-(__rndb__ & 1u) & 0xD0000001u);
	
	return (__rnda__ ^ __rndb__);
}