#include "opengl_gui_slider_field.h"



COpenGLGuiSliderField::COpenGLGuiSliderField(struct sOpenGLGuiSliderFieldParams params, struct sOpenGLGuiSliderFieldData *data, i32 motive_id):COpenGLGuiItem(0, NULL, motive_id)
{
  this->params = params;
  this->data = data;

  mouse_x = 100.0;
  mouse_y = 100.0;
  mouse_state = 0;

}

COpenGLGuiSliderField::~COpenGLGuiSliderField()
{


}


void COpenGLGuiSliderField::process()
{
  plot_frame(params.frame);

  float px = params.frame.px;
  float py = params.frame.py;
  float pz = params.frame.pz;
  float width = params.frame.width;
  float height = params.frame.height;

  u32 j;




  float x, y;
  for (j = 0; j < data->sliders.size(); j++)
  {
    bool clicked = false;
    x = px - 0.99*width/2.0;
    y = py + height/2.0 - 0.03 - (height*j)/data->sliders.size();

    gl_print(x, y,
              params.font_color_r,
              params.font_color_g,
              params.font_color_b,
              params.label_font,
              (char*)data->sliders[j].label.c_str());

    char value[256];

    x = px - 0.7*width/2.0;
    sprintf(value, "%6.3f",data->sliders[j].value);
    gl_print(x, y,
              params.font_color_r,
              params.font_color_g,
              params.font_color_b,
              params.font,
              value);

    glColor3f(params.color_r*0.3, params.color_g*0.3, params.color_b*0.3);

    x = px - 0.4*width/2.0;
    y = py + height/2.0 - 0.02 - (height*j)/data->sliders.size();


    float slider_width = width*0.68;
    float slider_height = 0.02;


    float k = (slider_width - 0.0)/(params.max_value - params.min_value);
    float q = slider_width - k*params.max_value;


    glBegin(GL_QUADS);
    glVertex3f(x - 0.0 , y - slider_height/2.0, pz);
    glVertex3f(x + slider_width, y - slider_height/2.0, pz);
    glVertex3f(x + slider_width, y + slider_height/2.0, pz);
    glVertex3f(x - 0.0 , y + slider_height/2.0, pz);
    glEnd();


    if (mouse_state &&
        (mouse_x > (x - px)) && (mouse_x < (x+slider_width- px)) &&
        (mouse_y > (y-slider_height/2.0 - py)) && (mouse_y < (y+slider_height/2.0- py))
       )
    {
      clicked = true;
    }


    if ((clicked == true) && (params.setable == true))
    {
      float k = (params.max_value - params.min_value) / ( (x+slider_width- px) - (x - px));
      float q = params.max_value - k*(x+slider_width- px);

      data->sliders[j].value = mouse_x*k + q;

      if (data->sliders[j].value < params.min_value)
        data->sliders[j].value = params.min_value;

      if (data->sliders[j].value > params.max_value)
        data->sliders[j].value = params.max_value;
    }


    float slider_active_width = k*data->sliders[j].value + q;

    glColor3f(params.color_r, params.color_g, params.color_b);

    glBegin(GL_QUADS);
    glVertex3f(x - 0.0 , y - slider_height/2.0, pz);
    glVertex3f(x + slider_active_width, y - slider_height/2.0, pz);
    glVertex3f(x + slider_active_width, y + slider_height/2.0, pz);
    glVertex3f(x - 0.0 , y + slider_height/2.0, pz);
    glEnd();

    if ((clicked == true) && (params.setable == true))
      glColor3f(1.0, 1.0, 0.0);
    else
      glColor3f(1.0, 1.0, 1.0);

    glBegin(GL_QUADS);
    glVertex3f(x + slider_active_width - 0.01, y - 1.2*slider_height/2.0, pz);
    glVertex3f(x + slider_active_width, y - 1.2*slider_height/2.0, pz);
    glVertex3f(x + slider_active_width, y + 1.2*slider_height/2.0, pz);
    glVertex3f(x + slider_active_width - 0.01 , y + 1.2*slider_height/2.0, pz);
    glEnd();

  }
}


void COpenGLGuiSliderField::mouse_click_event(int button, int state, float x, float y)
{
  (void)button;
  (void)state;
  (void)x;
  (void)y;

  if ((button != 0) || (state != 0))
  {
    mouse_state = 0;
    return;
  }

  x = (x - params.frame.px);
  y = (y - params.frame.py);

  if (
      (x < -params.frame.width/2.0) ||
      (x > params.frame.width/2.0) ||
      (y < -params.frame.height/2.0) ||
      (y > params.frame.height/2.0)
    )
    {
      mouse_state = 0;
      return;
    }

  mouse_x = x;
  mouse_y = y;
  mouse_state = 1;
}
