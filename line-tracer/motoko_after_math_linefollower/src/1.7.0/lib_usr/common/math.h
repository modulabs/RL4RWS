#ifndef _MATH_H_
#define _MATH_H_

#include "../lib_usr.h"


#define mint	float

#define PI_   (float)3.141592654


#define MEDIAN_FILTER_FIFO_SIZE 5

mint m_abs(mint value);
mint m_sgn(mint value);
mint m_saturate(mint value, mint min, mint max);
mint m_min(mint value_a, mint value_b);
mint m_max(mint value_a, mint value_b);
mint m_map(mint sa, mint sb, mint da, mint db, mint value);

void m_srand(unsigned int seed);
void m_srand_true(unsigned int seed);
unsigned int m_rnd();

float m_sqrt(float x);
float m_atan(float value);
float m_atan2(float y, float x);


#endif
