#include "opengl_gui_imu.h"


COpenGLGuiImu::COpenGLGuiImu(struct sOpenGLGuiImuParams params, struct sOpenGLGuiImuData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiImu::~COpenGLGuiImu()
{


}

void COpenGLGuiImu::process()
{
  plot_frame(params.frame);

  float px = params.frame.px;
  float py = params.frame.py;
  float pz = params.frame.pz;
  float width = params.frame.width;
  float height = params.frame.height;


  char str[1024];
  float x, y;
  x = px - width/2.0  + 0.25*FRAME_HEIGHT/2.0;
  y = py + height/2.0 - 1.8*FRAME_WIDHT*1;

  sprintf(str, "roll = %6.3f", data->roll);
  gl_print(x, y,
          1.0,
          1.0,
          1.0,
          params.font,
          (char*)str);

  y = py + height/2.0 - 1.8*FRAME_WIDHT*3;

  sprintf(str, "pitch = %6.3f", data->pitch);
  gl_print(x, y,
          1.0,
          1.0,
          1.0,
          params.font,
          (char*)str);


  y = py + height/2.0 - 1.8*FRAME_WIDHT*5;

  sprintf(str, "yaw = %6.3f", data->yaw);
  gl_print(x, y,
            1.0,
            1.0,
            1.0,
            params.font,
            (char*)str);

    float size = 0.1;


              glPushMatrix();
              glTranslated(px, py, pz);
              glRotated(data->roll*180.0/PI, 1, 0, 0);
              glRotated(data->pitch*180.0/PI, 0, 1, 0);
              glRotated(data->yaw*180.0/PI, 0, 0, 1);

              glPointSize(3);
              glPolygonMode(GL_FRONT, GL_LINES);
              glPolygonMode(GL_BACK, GL_LINES);

              glBegin(GL_TRIANGLES);
              glColor3f(params.color_r, params.color_g, params.color_b);
              glVertex3f(-size/4.0, -size, 0.0);
              glVertex3f( size/4.0, -size, 0.0);
              glVertex3f(  0.0, size, 0.0);
              glEnd();

              /*
              glBegin(GL_QUADS);

              glColor3f(0.0f,1.0f,0.0f);	// Color Blue
              glVertex3f( size, size,-size);	// Top Right Of The Quad (Top)
              glVertex3f(-size, size,-size);	// Top Left Of The Quad (Top)
              glVertex3f(-size, size, size);	// Bottom Left Of The Quad (Top)
              glVertex3f( size, size, size);	// Bottom Right Of The Quad (Top)

              glColor3f(1.0f,0.5f,0.0f);	// Color Orange
              glVertex3f( size, -size, size);	// Top Right Of The Quad (Bottom)
              glVertex3f(-size, -size, size);	// Top Left Of The Quad (Bottom)
              glVertex3f(-size, -size,-size);	// Bottom Left Of The Quad (Bottom)
              glVertex3f( size, -size,-size);	// Bottom Right Of The Quad (Bottom)

              glColor3f(1.0f,0.0f,0.0f);	// Color Red
              glVertex3f( size, size, size);	// Top Right Of The Quad (Front)
              glVertex3f(-size, size, size);	// Top Left Of The Quad (Front)
              glVertex3f(-size,-size, size);	// Bottom Left Of The Quad (Front)
              glVertex3f( size,-size, size);	// Bottom Right Of The Quad (Front)

              glColor3f(1.0f,1.0f,0.0f);	// Color Yellow
              glVertex3f( size,-size,-size);	// Top Right Of The Quad (Back)
              glVertex3f(-size,-size,-size);	// Top Left Of The Quad (Back)
              glVertex3f(-size, size,-size);	// Bottom Left Of The Quad (Back)
              glVertex3f( size, size,-size);	// Bottom Right Of The Quad (Back)

              glColor3f(0.0f,0.0f,1.0f);	// Color Blue
              glVertex3f(-size, size, size);	// Top Right Of The Quad (Left)
              glVertex3f(-size, size,-size);	// Top Left Of The Quad (Left)
              glVertex3f(-size,-size,-size);	// Bottom Left Of The Quad (Left)
              glVertex3f(-size,-size, size);	// Bottom Right Of The Quad (Left)

              glColor3f(1.0f,0.0f,1.0f);	// Color Violet
              glVertex3f( size, size,-size);	// Top Right Of The Quad (Right)
              glVertex3f( size, size, size);	// Top Left Of The Quad (Right)
              glVertex3f( size,-size, size);	// Bottom Left Of The Quad (Right)
              glVertex3f( size,-size,-size);	// Bottom Right Of The Quad (Right)

              glEnd();			// End
              */

    glPopMatrix();
}
