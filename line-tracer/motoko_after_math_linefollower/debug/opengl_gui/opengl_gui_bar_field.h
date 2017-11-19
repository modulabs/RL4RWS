#ifndef _OPENGL_GUI_BAR_FIELD_H_
#define _OPENGL_GUI_BAR_FIELD_H_

#include "opengl_gui_item.h"

struct sOpenGLGuiBarFieldParams
{
  struct sFrame frame;

  float color_r, color_g, color_b;

  float max_value;
  float min_value;

  void *font;

  bool bars_values;
};


struct sOpenGLGuiBarFieldData
{
  std::vector<float> values;
};

class COpenGLGuiBarField: public COpenGLGuiItem
{
  private:
    struct sOpenGLGuiBarFieldParams params;
    struct sOpenGLGuiBarFieldData *data;

  public:
    COpenGLGuiBarField(struct sOpenGLGuiBarFieldParams params, struct sOpenGLGuiBarFieldData *data);
    ~COpenGLGuiBarField();
    void process();

};

#endif
