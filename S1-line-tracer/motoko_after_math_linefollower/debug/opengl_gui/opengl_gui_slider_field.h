#ifndef _OPENGL_SLIDER_FIELD_H_
#define _OPENGL_SLIDER_FIELD_H_

#include "opengl_gui_item.h"

struct sOpenGLGuiSliderFieldParams
{
  struct sFrame frame;

  float color_r, color_g, color_b;
  float font_color_r, font_color_g, font_color_b;
  float min_value;
  float max_value;

  void *font;
  void *label_font;

  bool setable;
};

struct sSlider
{
  std::string label;
  float value;
};


struct sOpenGLGuiSliderFieldData
{
  std::vector<struct sSlider> sliders;
};

class COpenGLGuiSliderField: public COpenGLGuiItem
{
  private:
    float mouse_x;
    float mouse_y;
    u32 mouse_state;
    struct sOpenGLGuiSliderFieldParams params;
    struct sOpenGLGuiSliderFieldData *data;

  public:
    COpenGLGuiSliderField(struct sOpenGLGuiSliderFieldParams params, struct sOpenGLGuiSliderFieldData *data, i32 motive_id = -1);
    ~COpenGLGuiSliderField();
    void process();

  private:
    void mouse_click_event(int button, int state, float x, float y);


};





#endif
