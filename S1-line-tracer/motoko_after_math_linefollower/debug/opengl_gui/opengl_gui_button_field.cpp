#include "opengl_gui_button_field.h"

COpenGLGuiButtonField::COpenGLGuiButtonField(struct sOpenGLGuiButtonFieldParams params, struct sOpenGLGuiButtonFieldData *data, i32 motive_id):COpenGLGuiItem(0, NULL, motive_id)
{
  this->params = params;
  this->data = data;

  mouse_x = 100.0;
  mouse_y = 100.0;
  mouse_state = 0;

}

COpenGLGuiButtonField::~COpenGLGuiButtonField()
{


}


void COpenGLGuiButtonField::process()
{
  plot_frame(params.frame);

  float px = params.frame.px;
  float py = params.frame.py;
  float pz = params.frame.pz;
  float width = params.frame.width;
  float height = params.frame.height;


  u32 j;

  for (j = 0; j < data->buttons.size(); j++)
  {
    float button_width = (width/data->buttons.size())*0.91;
    float button_height = height*0.9;

    float x = px + (j*width/data->buttons.size()) - width/2.0;
    float y = py;


    if (mouse_state == 1)
    {
      if (
          (mouse_x > x-px) && (mouse_x < (x-px + button_width)) &&
          (mouse_y > y - button_height/2.0 - py) && (mouse_y < y+ button_height/2.0 - py)
        )
        {
          data->buttons[j].state = 1;
          data->buttons[j].flag = 1;
        //  printf("button %i %s clicked\n", j, (char*)data->buttons[j].label.c_str());
        }
      else
        data->buttons[j].state = 0;
    }


    float r = params.color_r;
    float g = params.color_g;
    float b = params.color_b;


    if (data->buttons[j].flag)
    {
      r*= 1.5;
      g*= 1.5;
      b*= 1.5;
    }

    glBegin(GL_QUADS);

    glColor3f(r, g, b);
    glVertex3f(x - 0.0 , y - button_height/2.0, pz);

    glColor3f(r, g, b);
    glVertex3f(x + button_width*0.6, y - button_height/2.0, pz);



    glColor3f(r*0.3, g*0.3, b*0.3);
    glVertex3f(x + button_width, y + button_height/2.0, pz);

    glColor3f(r, g, b);
    glVertex3f(x - 0.0 , y + button_height/2.0, pz);





    float dist = 0.02;
    glColor3f(r, g, b);
    glVertex3f(x + button_width*0.6 + dist , y - button_height/2.0, pz);

    glColor3f(r*0.3, g*0.3, b*0.3);
    glVertex3f(x + button_width + dist, y - button_height/2.0, pz);

    glColor3f(r, g, b);
    glVertex3f(x + button_width + dist, y + button_height/2.0, pz);

    glColor3f(r*0.3, g*0.3, b*0.3);
    glVertex3f(x + button_width-0.001 + dist, y + button_height/2.0, pz);
    glEnd();

    float font_center = (button_width/2.0);
    gl_print(x + font_center, y - button_height/4.0,
              params.font_color_r,
              params.font_color_g,
              params.font_color_b,
              params.font,
              (char*)data->buttons[j].label.c_str());
  }
/*

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

    glColor3f(r*0.3, g*0.3, b*0.3);

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


    if (clicked == true)
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

    if (clicked == true)
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
  */
}


void COpenGLGuiButtonField::mouse_click_event(int button, int state, float x, float y)
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
