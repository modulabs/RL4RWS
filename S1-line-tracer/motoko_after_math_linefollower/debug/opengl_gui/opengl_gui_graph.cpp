#include "opengl_gui_graph.h"

COpenGLGuiGraph::COpenGLGuiGraph(struct sOpenGLGuiGraphParams params, struct sOpenGLGuiGraphData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiGraph::~COpenGLGuiGraph()
{

}


void COpenGLGuiGraph::process()
{
  struct sFrame frame;



  plot_frame(params.frame);

  float px = params.frame.px;
  float py = params.frame.py;
  float pz = params.frame.pz;
  float width = params.frame.width;
  float height = params.frame.height;



  u32 i, j;

  float x = 0.0;
  float y = 0.0;

  float ky = height/(params.y_max - params.y_min);
  float qy = height*0.5 - ky*params.y_max;

  float kx = width/(params.x_max - params.x_min);
  float qx = width*0.5 - kx*params.x_max;

  float count = data->functions.size();
  u32 phase = data->functions.size()/3;

  for (j = 0; j < data->functions.size(); j++)
  {
    float r = ((j+phase*0)%data->functions.size())/count;
    float g = ((j+phase*1)%data->functions.size())/count;
    float b = ((j+phase*2)%data->functions.size())/count;

    if (data->functions.size() == 1)
    {
      r = 0.0;
      g = 1.0;
      b = 0.0;
    }


    glColor3f(r, g, b);

    std::string label = data->functions[j].label;

    glLineWidth(1.3);
    glBegin(GL_LINES);


    struct sOpenGlGraphPoint point = data->functions[j].points[0];

    x = kx*point.x + qx;
    y = ky*point.y + qy;

    for (i = 0; i < data->functions[j].points.size(); i++)
    {
      point = data->functions[j].points[i];

      float y_ = y;
      float x_ = x;
      x = kx*point.x + qx;
      y = ky*point.y + qy;

      glVertex3f(px + x_, py + y_, pz);
      glVertex3f(px + x, py + y, pz);
    }
    glEnd();

  }

  glLineWidth(2.0);
  if (params.plot_grid == true)
  {
    glColor3f(params.color_r, params.color_g, params.color_b);

    float x0, y0, x1, y1;

    x0 = -width/2.0;
    x1 =  width/2.0;
    y0 = 0.0;
    y1 = 0.0;

    glBegin(GL_LINES);
    glVertex3f(px + x0, py + y0, pz);
    glVertex3f(px + x1, py + y1, pz);
    glEnd();


    x0 = 0.0;
    x1 = 0.0;
    y0 = -height/2.0;
    y1 =  height/2.0;

    glBegin(GL_LINES);
    glVertex3f(px + x0, py + y0, pz);
    glVertex3f(px + x1, py + y1, pz);
    glEnd();
  }

  if (params.plot_values == true)
  {
    char str[1024];

    glColor3f(params.color_r, params.color_g, params.color_b);

    float x0, y0;

    x0 = -width/2.0;
    y0 = -0.02;

    sprintf(str, "%6.3f", params.x_min);
    gl_print(px + x0, py + y0,
            1.0,
            1.0,
            1.0,
            params.font,
            (char*)str);


    x0 =  width/2.0 - 0.05;
    y0 =  -0.02;

    sprintf(str, "%6.3f", params.x_max);
    gl_print(px + x0, py + y0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);


    x0 = 0.01;
    y0 = -height/2.0 + 0.01;


    sprintf(str, "%6.3f", params.y_min);
    gl_print(px + x0, py + y0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);


    x0 = 0.01;
    y0 = height/2.0 - 0.02;

    sprintf(str, "%6.3f", params.y_max);
    gl_print(px + x0, py + y0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);


    x0 = 0.01;
    y0 = 0.003;

    sprintf(str, "%6.3f", (params.y_min + params.y_max)/2.0);
    gl_print(px + x0, py + y0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);
  }

  if (params.plot_labels == true)
  {
    for (j = 0; j < data->functions.size(); j++)
    {
      float r = ((j+phase*0)%data->functions.size())/count;
      float g = ((j+phase*1)%data->functions.size())/count;
      float b = ((j+phase*2)%data->functions.size())/count;

      if (data->functions.size() == 1)
      {
        r = 0.0;
        g = 1.0;
        b = 0.0;
      }

      float x = 0.5*width/2.0;
      float y = height/2.0 - 0.03 - (0.5*height*j)/data->functions.size();

      char str[1024];
      sprintf(str, "%s", data->functions[j].label.c_str());
      gl_print(px + x, py + y,
                r,
                g,
                b,
                params.font,
                (char*)str);
    }
  }
}


void COpenGLGuiGraph::mouse_click_event(int button, int state, float x, float y)
{
  (void)button;
  (void)state;
  (void)x;
  (void)y;

  x = (x - params.frame.px);
  y = (y - params.frame.py);


  if (
      (x < -params.frame.width/2.0) ||
      (x > params.frame.width/2.0) ||
      (y < -params.frame.height/2.0) ||
      (y > params.frame.height/2.0)
    )
    return;
}
