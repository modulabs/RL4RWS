#ifndef _Q_PREDICTOR_H_
#define _Q_PREDICTOR_H_

#include "../os/suzuha_os.h"

#define Q_PREDICTOR_MODEL_SIZE		(u32)16
#define Q_PREDICTOR_MODELS_COUNT	(u32)16

struct sQPredictor
{
	u32 state, prev_state;

	float input[Q_PREDICTOR_MODEL_SIZE];
	float models[Q_PREDICTOR_MODELS_COUNT][Q_PREDICTOR_MODEL_SIZE];

	float output[Q_PREDICTOR_MODELS_COUNT], q[Q_PREDICTOR_MODELS_COUNT];
};

struct sQPredictor g_q_predictor;

void q_predictor_init();
float q_predictor_process(float input, float reward);
void q_predictor_print();


#endif
