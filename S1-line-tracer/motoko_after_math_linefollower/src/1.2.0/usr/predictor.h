#ifndef _PREDICTOR_H_
#define _PREDICTOR_H_

#include "../os/suzuha_os.h"

#define		PREDICTOR_LEARNING_RATE	(u32)31
#define		PREDICTOR_MODELS_COUNT (u32)16
#define		PREDICTOR_MODEL_SIZE (u32)16

#define PREDICTOR_SPEED_MAX (SPEED_MAX)
#define PREDICTOR_SPEED_MIN ((SPEED_MAX*50)/100)



struct sPredictor
{
	u16 input[PREDICTOR_MODEL_SIZE];
	u16 models[PREDICTOR_MODELS_COUNT][PREDICTOR_MODEL_SIZE];

	u16 output[PREDICTOR_MODELS_COUNT], output_error[PREDICTOR_MODELS_COUNT];
};	

struct sPredictor g_predictor;


void predictor_init();
u16 predictor_process(i16 input);
void predictor_print();


#endif