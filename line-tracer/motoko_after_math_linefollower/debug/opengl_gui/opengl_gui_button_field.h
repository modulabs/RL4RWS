#ifndef _OPENGL_BUTTONS_FIELD_H_
#define _OPENGL_BUTTONS_FIELD_H_

#include "opengl_gui_item.h"

struct sOpenGLGuiButtonFieldParams
{
  struct sFrame frame;

  float color_r, color_g, color_b;
  float font_color_r, font_color_g, font_color_b;

  void *font;
};

struct sButton
{
  std::string label;
  u32 state, flag;
};

struct sOpenGLGuiButtonFieldData
{
  std::vector<struct sButton> buttons;
};

class COpenGLGuiButtonField: public COpenGLGuiItem
{
  private:
    float mouse_x;
    float mouse_y;
    u32 mouse_state;
    struct sOpenGLGuiButtonFieldParams params;
    struct sOpenGLGuiButtonFieldData *data;

  public:
    COpenGLGuiButtonField(struct sOpenGLGuiButtonFieldParams params, struct sOpenGLGuiButtonFieldData *data, i32 motive_id = -1);
    ~COpenGLGuiButtonField();
    void process();

  private:
    void mouse_click_event(int button, int state, float x, float y);


};

#endif
