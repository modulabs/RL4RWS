#include "opengl_gui_bar_field.h"

COpenGLGuiBarField::COpenGLGuiBarField(struct sOpenGLGuiBarFieldParams params, struct sOpenGLGuiBarFieldData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiBarField::~COpenGLGuiBarField()
{


}


void COpenGLGuiBarField::process()
{
  struct sFrame frame;


  plot_frame(params.frame);


  float px = params.frame.px;
  float py = params.frame.py;
  float pz = params.frame.pz;
  float width = params.frame.width;
  float height = params.frame.height;

  u32 j;

  float k = height/(params.max_value - params.min_value);
  float q = height - k*params.max_value;

  float x_step = width/data->values.size();

  for (j = 0; j < data->values.size(); j++)
  {
    float x = px - width/2.0 + x_step*(j+0.5);
    float y = py;

    float tmp = data->values[j];

    if (tmp > params.max_value)
      tmp = params.max_value;

    if (tmp < params.min_value)
      tmp = params.min_value;

    float height_ = (k*tmp + q);
    float width_ = x_step*0.85;

    glColor3f(params.color_r, params.color_g, params.color_b);
    glBegin(GL_QUADS);

    glVertex3f(x - width_/2.0 , y - height/2.0 + height_, pz);
    glVertex3f(x + width_/2.0 , y - height/2.0 + height_, pz);
    glVertex3f(x + width_/2.0 , y - height/2.0, pz);
    glVertex3f(x - width_/2.0 , y - height/2.0, pz);

    glEnd();

    char str[1024];
    sprintf(str, "%6.3f", data->values[j]);
    gl_print(x - (x_step/2.0)*0.75, y - height/2.0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);
  }
}
