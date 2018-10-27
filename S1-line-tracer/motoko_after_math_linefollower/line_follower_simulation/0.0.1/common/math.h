#ifndef _MATH_H_
#define _MATH_H_

#include "common.h"


#define PI (float)3.141592654

float map_to_interval(float min_a, float max_a, float min_b, float max_b, float value);
float rand_();
float rnd_(float min = -1.0, float max = 1.0);

float sgn_(float v);

float vector_max(std::vector<float> v);
float vector_min(std::vector<float> v);
float vector_average(std::vector<float> v);
float vector_dot(std::vector<float> va, std::vector<float> vb);
float vector_size(std::vector<float> v);
float vector_angle(std::vector<float> va, std::vector<float> vb);

std::vector<float> vector_null(u32 size);
std::vector<float> vector_one(u32 size);
std::vector<float> vector_random(u32 size, float min, float max);

std::vector<float> vector_add(std::vector<float> va, std::vector<float> vb);
std::vector<float> vector_sub(std::vector<float> va, std::vector<float> vb);
std::vector<float> vector_scalar_mul(std::vector<float> v, float k);

#endif
