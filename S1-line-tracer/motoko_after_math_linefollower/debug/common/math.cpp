#include "math.h"

#define  MATH_MAX   (float)1000000000.0

float map_to_interval(float min_a, float max_a, float min_b, float max_b, float value)
{
  float k, q;

  k = (max_b - min_b)/(max_a - min_a);
  q = min_b - k*min_a;

  return k*value + q;
}

float rand_()
{
  return (rand()%100000000)/100000000.0;
}

float rnd_(float min, float max)
{
  return map_to_interval(0.0, 1.0, min, max, rand_());
}

float sgn_(float v)
{
  if (v > 0.0)
    return 1.0;
  else
    return -1.0;
}

float abs_(float v)
{
  if (v < 0.0)
    return -v;

  return v;
}









float vector_max(std::vector<float> v)
{
  u32 i;
  float max = v[0];

  for (i = 0; i < v.size(); i++)
    if (v[i] > max)
      max = v[i];

  return max;
}

float vector_min(std::vector<float> v)
{
  u32 i;
  float min = v[0];

  for (i = 0; i < v.size(); i++)
    if (v[i] < min)
      min = v[i];

  return min;
}

float vector_average(std::vector<float> v)
{
  u32 i;
  float sum = 0.0;

  for (i = 0; i < v.size(); i++)
    sum+= v[i];

  return sum/v.size();
}

float vector_dot(std::vector<float> va, std::vector<float> vb)
{
  u32 i;
  float sum = 0.0;

  for (i = 0; i < va.size(); i++)
    sum+= va[i]*vb[i];

  return sum;
}

float vector_size(std::vector<float> v)
{
  return sqrt(vector_dot(v, v));
}

float vector_angle(std::vector<float> va, std::vector<float> vb)
{
  return acos( vector_dot(va, vb)/ ( vector_size(va)*vector_size(vb) ) );
}

std::vector<float> vector_null(u32 size)
{
  u32 i;
  std::vector<float> res;
  for (i = 0; i < size; i++)
    res.push_back(0.0);

  return res;
}

std::vector<float> vector_one(u32 size)
{
  u32 i;
  std::vector<float> res;
  for (i = 0; i < size; i++)
    res.push_back(1.0);

  return res;
}

std::vector<float> vector_random(u32 size, float min, float max)
{
  u32 i;
  std::vector<float> res;
  for (i = 0; i < size; i++)
    res.push_back(rnd_(min, max));

  return res;
}

std::vector<float> vector_add(std::vector<float> va, std::vector<float> vb)
{
  u32 i;
  std::vector<float> res;
  for (i = 0; i < va.size(); i++)
    res.push_back(va[i] + vb[i]);

  return res;
}

std::vector<float> vector_sub(std::vector<float> va, std::vector<float> vb)
{
  u32 i;
  std::vector<float> res;
  for (i = 0; i < va.size(); i++)
    res.push_back(va[i] - vb[i]);

  return res;
}

std::vector<float> vector_scalar_mul(std::vector<float> v, float k)
{
  u32 i;
  std::vector<float> res;
  for (i = 0; i < v.size(); i++)
    res.push_back(v[i]*k);

  return res;
}
