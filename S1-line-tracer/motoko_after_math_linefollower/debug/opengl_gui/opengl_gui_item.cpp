#include "opengl_gui_item.h"



void gl_print(float x, float y, float r, float g, float b, void *font, char *string)
{
  glColor3f( r, g, b );
  glRasterPos2f(x, y);
  int len, i;
  len = (int)strlen(string);
  for (i = 0; i < len; i++)
  {
      glutBitmapCharacter(font, string[i]);
  }
}

void plot_frame(struct sFrame frame)
{
    if (frame.visible != true)
      return;

    glColor3f(frame.color_r, frame.color_g, frame.color_b);
  //  glColor3f(frame.font_color_r, frame.font_color_g, font_color_b);


    float tmp_height = FRAME_HEIGHT;
    float tmp_width = FRAME_WIDHT;

    float k = 0.6;
    float base = 0.0;
    float top_color_r = k*frame.color_r + (1.0 - k)*base;
    float top_color_g = k*frame.color_g + (1.0 - k)*base;
    float top_color_b = k*frame.color_b + (1.0 - k)*base;


    glBegin(GL_QUADS);

    glColor3f(frame.color_r, frame.color_g, frame.color_b);

    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py - frame.height/2.0 - 0.25*tmp_height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py - frame.height/2.0 - 0.25*tmp_height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py - frame.height/2.0, frame.pz);


    glColor3f(frame.color_r, frame.color_g, frame.color_b);
    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py + frame.height/2.0 + 1.5*tmp_height/2.0, frame.pz);

    glColor3f(top_color_r, top_color_g, top_color_b);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py + frame.height/2.0 + 1.5*tmp_height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py + frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py + frame.height/2.0, frame.pz);


    glColor3f(frame.color_r, frame.color_g, frame.color_b);
    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py + frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0,                 frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0,                 frame.py + frame.height/2.0, frame.pz);

    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py + frame.height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0,                 frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0,                 frame.py + frame.height/2.0, frame.pz);

    glEnd();

    if (frame.transparent == false)
    {
      glBegin(GL_QUADS);
      glColor3f(frame.color_r*0.8, frame.color_g*0.8, frame.color_b*0.8);
      glVertex3f(frame.px - frame.width/2.0, frame.py - frame.height/2.0, frame.pz);
      glVertex3f(frame.px + frame.width/2.0, frame.py - frame.height/2.0, frame.pz);
      glVertex3f(frame.px + frame.width/2.0, frame.py + frame.height/2.0, frame.pz);
      glVertex3f(frame.px - frame.width/2.0, frame.py + frame.height/2.0, frame.pz);
      glEnd();
    }

    gl_print(frame.px - frame.width/2.0 + tmp_width/2.0, frame.py + frame.height/2.0 + 0.3*tmp_height/2.0,
              frame.font_color_r,
              frame.font_color_g,
              frame.font_color_b,
              frame.font,
              (char*)frame.label.c_str());
}
