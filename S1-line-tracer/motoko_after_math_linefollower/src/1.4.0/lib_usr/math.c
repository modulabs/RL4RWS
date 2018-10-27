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

void m_srand_true(unsigned int seed)
{
		seed = timer_get_time() + seed; // + __DATE__[0] + __TIME__[0] ;
	__rnda__ = (unsigned int)seed + 1;
	__rndb__ = (unsigned int)123;
}


unsigned int m_rnd()
{
	__rnda__ = __rnda__ *(unsigned int)1103515245 + (unsigned int)12345;
	__rndb__ = (__rndb__ >> 1) ^ (-(__rndb__ & 1u) & 0xD0000001u);

	return (__rnda__ ^ __rndb__);
}




float m_sqrt(float x)
{
		float res = 1.0;
		unsigned int i;
	 for (i = 0; i < 16; i++)
	 {
			 res = ((x/res) + res) / 2.0;
	 }
	 return res;
}

float m_atan(float value)
{
  float sign = 1.0;
  float x = value;
  float y = 0.0;
  if (value == 0.0)
  	return 0;

  if(x < 0.0)
  {
     sign = -1.0;
     x*= -1.0;
  }
  x = (x-1.0)/(x+1.0);
  y = x*x;

  x = ((((((((0.0028662257*y - 0.0161657367)*y + 0.0429096138)*y -
             0.0752896400)*y + 0.1065626393)*y - 0.1420889944)*y +
             0.1999355085)*y - 0.3333314528)*y + 1.0)*x;
  x= 0.785398163397 + sign*x;

  if(x < 0.0000000001)
  	x = 0.0;

  return x;
}

float m_atan2(float y, float x)
{
	if (m_abs(x) < 0.0000000001)
	{
		if (y >= 0.0)
			return PI_;
		else
			return -PI_;
	}

	float tmp = m_abs(y/x);

	if ((y >= 0.0) && (x >= 0.0))
		return m_atan(tmp);
	else if ((y >= 0.0) && (x <= 0.0))
		return PI_ - m_atan(tmp);

	else if ((y <= 0.0) && (x <= 0.0))
		return -PI_ + m_atan(tmp);
	else
		return -m_atan(tmp);
}
