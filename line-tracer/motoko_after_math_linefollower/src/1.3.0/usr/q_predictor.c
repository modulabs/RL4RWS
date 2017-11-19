#include "q_predictor.h"
#include "../lib_usr/math.h"

i16 predictor_models_init[Q_PREDICTOR_MODELS_COUNT][Q_PREDICTOR_MODEL_SIZE] =
{
  {  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0},
  {142, 142, 142, 142, 142, 142, 142, 142, 142, 142, 142, 142, 142, 142, 142, 142},
  {285, 285, 285, 285, 285, 285, 285, 285, 285, 285, 285, 285, 285, 285, 285, 285},
  {428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428},
  {571, 571, 571, 571, 571, 571, 571, 571, 571, 571, 571, 571, 571, 571, 571, 571},
  {714, 714, 714, 714, 714, 714, 714, 714, 714, 714, 714, 714, 714, 714, 714, 714},
  {857, 857, 857, 857, 857, 857, 857, 857, 857, 857, 857, 857, 857, 857, 857, 857},
  {999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999}
};

i16 predictor_q_init[Q_PREDICTOR_MODELS_COUNT] =
{
  0, 0, 0, 0, 0, 0, 0, 0
};

i16 predictor_output_init[Q_PREDICTOR_MODELS_COUNT] =
{
	0, 0, 0, 0, 0, 0, 0, 0
};


void q_predictor_init()
{
  u32 i, j;

  g_q_predictor.state = 0;
  g_q_predictor.prev_state = 0;

  for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
    g_q_predictor.input[i] = 0.0;

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
    for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
      g_q_predictor.models[j][i] = predictor_models_init[j][i]/1000.0;

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
    g_q_predictor.output[j] = predictor_output_init[j]/1000.0;

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
    g_q_predictor.q[j] = predictor_q_init[j]/1000.0;
}

float q_predictor_process(float input, float output_min, float output_max)
{
  u32 i, j;

  /*add new sample into fifo front*/
  for (i = (Q_PREDICTOR_MODEL_SIZE-1); i != 0; i--)
    g_q_predictor.input[i] = g_q_predictor.input[i-1];
  g_q_predictor.input[0] = m_abs(input);

  float min_dist = 10.0*Q_PREDICTOR_MODEL_SIZE;
  u32 min_idx = 0;

  /*look for nearest model to current fifo state*/
  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
  {
    float dist = 0.0;
    for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
      dist+= m_abs(g_q_predictor.input[i] - g_q_predictor.models[j][i]);

    if (dist < min_dist)
    {
      min_dist = dist;
      min_idx = j;
    }
  }

  /*learn nearest model*/
  float learning_rate = CONFIG_Q_ETA;
  for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
  {
    g_q_predictor.models[min_idx][i] =  learning_rate*g_q_predictor.models[min_idx][i] +
                                        (1.0 - learning_rate)*g_q_predictor.input[i];
  }


  /*
    system state is know now, so process Q learning
  */
  float reward = g_q_predictor.input[0];  /* use current sample as reward - smaller error = smaller reward    */
  float alpha = CONFIG_Q_ALPHA;           /* learning low pass filter constant <0, 1>, process is stochastic  */
  float gamma = CONFIG_Q_GAMMA;           /* discount factor <0, 1> */

  g_q_predictor.prev_state = g_q_predictor.state;
  g_q_predictor.state = min_idx;

  g_q_predictor.q[g_q_predictor.state] =
    alpha*g_q_predictor.q[g_q_predictor.state] +
    (1.0 - alpha)*(gamma*g_q_predictor.q[g_q_predictor.prev_state] + reward);

  g_q_predictor.q[g_q_predictor.state] = m_saturate(g_q_predictor.q[g_q_predictor.state], 0.0, 1.0);

  /*
    all states have Q(s) calculated now,
    use Q(s) to calculate output
  */
  float delta = CONFIG_Q_DELTA;

  g_q_predictor.output[g_q_predictor.state]+= delta*(0.5 - g_q_predictor.q[g_q_predictor.state]);
  g_q_predictor.output[g_q_predictor.state] = m_saturate(g_q_predictor.output[g_q_predictor.state], output_min, output_max);

  return g_q_predictor.output[g_q_predictor.state]*m_sgn(input);
}


void q_predictor_print()
{
  u32 i, j;

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
  {
    for (i = 0; i < Q_PREDICTOR_MODEL_SIZE; i++)
    {
      i32 value = g_q_predictor.models[j][i]*1000;
      printf_("%i ", value);
    }

    printf_("\n");
  }

  printf_("\n");


  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
  {
    i32 value_q = g_q_predictor.q[j]*1000;
    printf_("%i ", value_q);
  }

  printf_("\n");

  for (j = 0; j < Q_PREDICTOR_MODELS_COUNT; j++)
  {
    i32 value_output = g_q_predictor.output[j]*1000;
    printf_("%i ", value_output);
  }
  printf_("\n");

  printf_("\n");
  printf_("\n");
}
