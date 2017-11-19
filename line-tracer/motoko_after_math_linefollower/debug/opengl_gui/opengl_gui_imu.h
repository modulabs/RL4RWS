#ifndef _OPENGL_IMU_H_
#define _OPENGL_IMU_H_

#include "opengl_gui_item.h"


struct sOpenGLGuiImuParams
{
  struct sFrame frame;

  void *font;
  float color_r, color_g, color_b;
  bool angles_values_labels;
};


struct sOpenGLGuiImuData
{
  float roll, pitch, yaw;
};

class COpenGLGuiImu: public COpenGLGuiItem
{
  private:
    struct sOpenGLGuiImuParams params;
    struct sOpenGLGuiImuData *data;

  public:
    COpenGLGuiImu(struct sOpenGLGuiImuParams params, struct sOpenGLGuiImuData *data);
    ~COpenGLGuiImu();
    void process();

};



#endif
