#include "opengl_gui_text_field.h"




COpenGLGuiTextField::COpenGLGuiTextField(struct sOpenGLGuiTextFieldParams params, struct sOpenGLGuiTextFieldData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiTextField::~COpenGLGuiTextField()
{


}


void COpenGLGuiTextField::process()
{
  plot_frame(params.frame);

  float px = params.frame.px;
  float py = params.frame.py;
  float pz = params.frame.pz;
  float width = params.frame.width;
  float height = params.frame.height;



  float x0 = px - width/2.0  + 0.25*FRAME_HEIGHT/2.0;
  float y0 = py + height/2.0 - 1.8*FRAME_WIDHT;

  u32 j; 

  for (j = 0; j < data->lines.size(); j++)
    {
      float x = x0;
      float y = y0 - j*0.03;


      gl_print(x, y,
                params.font_color_r,
                params.font_color_g,
                params.font_color_b,
                params.font,
                (char*)data->lines[j].c_str());
    }

}
