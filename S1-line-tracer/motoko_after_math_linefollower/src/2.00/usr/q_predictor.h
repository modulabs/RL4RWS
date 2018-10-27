#ifndef _Q_PREDICTOR_H_
#define _Q_PREDICTOR_H_

#include "../lib_usr/lib_usr.h"


#define Q_PREDICTOR_MODEL_SIZE      ((u32)16)
#define Q_PREDICTOR_MODELS_COUNT    ((u32)25)



#ifdef __cplusplus

class CQPredictor
{
  private:
    u32 dist_min_idx;
    float input[Q_PREDICTOR_MODEL_SIZE];

  public:
    CQPredictor();
    ~CQPredictor();

    void init();

    float process(float input_sample);

    void print();
};

#endif


#endif
