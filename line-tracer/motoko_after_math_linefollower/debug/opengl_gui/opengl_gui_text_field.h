#ifndef _OPENGL_GUI_TEXT_FIELD_H_
#define _OPENGL_GUI_TEXT_FIELD_H_

#include "opengl_gui_item.h"

struct sOpenGLGuiTextFieldParams
{
  struct sFrame frame;

  float font_color_r, font_color_g, font_color_b;
  void *font;
};


struct sOpenGLGuiTextFieldData
{
  std::vector<std::string> lines;
};

class COpenGLGuiTextField: public COpenGLGuiItem
{
  private:
    struct sOpenGLGuiTextFieldParams params;
    struct sOpenGLGuiTextFieldData *data;

  public:
    COpenGLGuiTextField(struct sOpenGLGuiTextFieldParams params, struct sOpenGLGuiTextFieldData *data);
    ~COpenGLGuiTextField();
    void process();

};


#endif
