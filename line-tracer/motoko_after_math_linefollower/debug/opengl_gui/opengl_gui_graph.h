#ifndef _OPENGL_GRAPH_H_
#define _OPENGL_GRAPH_H_

#include "opengl_gui_item.h"


struct sOpenGLGuiGraphParams
{
  struct sFrame frame;

  float color_r, color_g, color_b;

  float x_min, x_max;
  float y_min, y_max;
  bool plot_grid;
  bool plot_values;
  bool plot_labels;

  void *font;
};


struct sOpenGlGraphPoint
{
  float x, y;
};

struct sOpenGlGraphFunction
{
  std::vector< sOpenGlGraphPoint> points;
  std::string label;
};

struct sOpenGLGuiGraphData
{
  std::vector<struct sOpenGlGraphFunction> functions;
};

class COpenGLGuiGraph: public COpenGLGuiItem
{
  private:
    struct sOpenGLGuiGraphParams params;
    struct sOpenGLGuiGraphData *data;

  public:
    COpenGLGuiGraph(struct sOpenGLGuiGraphParams params, struct sOpenGLGuiGraphData *data);
    ~COpenGLGuiGraph();
    void process();

    void mouse_click_event(int button, int state, float x, float y);

};



#endif
