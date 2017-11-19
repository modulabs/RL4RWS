#include "sensors_tab.h"

struct sOpenGLGuiBarFieldData	  sensors_tab_line_sensor_data;
struct sOpenGLGuiBarFieldData	  sensors_tab_ambient_sensor_data;
struct sOpenGLGuiBarFieldData	  sensors_tab_red_sensor_data;
struct sOpenGLGuiBarFieldData	  sensors_tab_green_sensor_data;
struct sOpenGLGuiBarFieldData	  sensors_tab_blue_sensor_data;
struct sOpenGLGuiGraphData	    sensors_tab_obstacle_sensor_data;
struct sOpenGLGuiSliderFieldData	    sensors_tab_treshold_sensor_data;

void container_sensors_tab_init(class CItemsContainer *container)
{
  u32 i;
  struct sOpenGLGuiBarFieldParams	barfield_sensor_param;

  float bar_width = 0.7;
  float bar_height = 0.13;

  barfield_sensor_param.frame.visible = true;
  barfield_sensor_param.frame.transparent = true;

  barfield_sensor_param.frame.px = -0.35;
  barfield_sensor_param.frame.py =0.25;  //0.27;
  barfield_sensor_param.frame.pz = 0.0;

  barfield_sensor_param.frame.width = bar_width;
  barfield_sensor_param.frame.height = bar_height;

  barfield_sensor_param.frame.color_r = 0.3;
  barfield_sensor_param.frame.color_g = 0.3;
  barfield_sensor_param.frame.color_b = 0.3;

  barfield_sensor_param.frame.font_color_r = 0.8;
  barfield_sensor_param.frame.font_color_g = 0.8;
  barfield_sensor_param.frame.font_color_b = 0.8;


  barfield_sensor_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  barfield_sensor_param.frame.label = "line sensors result";


  barfield_sensor_param.font = GLUT_BITMAP_HELVETICA_10;

  barfield_sensor_param.color_r = 0.7;
  barfield_sensor_param.color_g = 0.7;
  barfield_sensor_param.color_b = 0.7;

  barfield_sensor_param.max_value = 700.0;
  barfield_sensor_param.min_value = -700.0;
  barfield_sensor_param.bars_values = true;

  for (i = 0; i < 8; i++)
    sensors_tab_line_sensor_data.values.push_back(barfield_sensor_param.max_value*rnd_());

  container->add(new COpenGLGuiBarField(barfield_sensor_param, &sensors_tab_line_sensor_data));









  barfield_sensor_param.frame.visible = true;
  barfield_sensor_param.frame.transparent = true;

  barfield_sensor_param.frame.px = 0.37;
  barfield_sensor_param.frame.py = 0.25;  //0.27;
  barfield_sensor_param.frame.pz = 0.0;

  barfield_sensor_param.frame.width = bar_width;
  barfield_sensor_param.frame.height = bar_height;

  barfield_sensor_param.frame.color_r = 0.3;
  barfield_sensor_param.frame.color_g = 0.3;
  barfield_sensor_param.frame.color_b = 0.3;

  barfield_sensor_param.frame.font_color_r = 0.8;
  barfield_sensor_param.frame.font_color_g = 0.8;
  barfield_sensor_param.frame.font_color_b = 0.8;


  barfield_sensor_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  barfield_sensor_param.frame.label = "ambient sensors result";


  barfield_sensor_param.font = GLUT_BITMAP_HELVETICA_10;

  barfield_sensor_param.color_r = 0.7;
  barfield_sensor_param.color_g = 0.7;
  barfield_sensor_param.color_b = 0.7;

  barfield_sensor_param.max_value = 200.0;
  barfield_sensor_param.min_value = -200.0;
  barfield_sensor_param.bars_values = true;

  for (i = 0; i < 8; i++)
    sensors_tab_ambient_sensor_data.values.push_back(abs_(barfield_sensor_param.max_value*rnd_()));

  container->add(new COpenGLGuiBarField(barfield_sensor_param, &sensors_tab_ambient_sensor_data));

















  barfield_sensor_param.frame.visible = true;
  barfield_sensor_param.frame.transparent = true;

  barfield_sensor_param.frame.px = -0.35;
  barfield_sensor_param.frame.py =0.077;  //0.27;
  barfield_sensor_param.frame.pz = 0.0;

  barfield_sensor_param.frame.width = bar_width;
  barfield_sensor_param.frame.height = bar_height;

  barfield_sensor_param.frame.color_r = 0.4;
  barfield_sensor_param.frame.color_g = 0.0;
  barfield_sensor_param.frame.color_b = 0.0;

  barfield_sensor_param.frame.font_color_r = 0.8;
  barfield_sensor_param.frame.font_color_g = 0.0;
  barfield_sensor_param.frame.font_color_b = 0.0;


  barfield_sensor_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  barfield_sensor_param.frame.label = "red sensors result";


  barfield_sensor_param.font = GLUT_BITMAP_HELVETICA_10;

  barfield_sensor_param.color_r = 0.8;
  barfield_sensor_param.color_g = 0.0;
  barfield_sensor_param.color_b = 0.0;

  barfield_sensor_param.max_value = 200.0;
  barfield_sensor_param.min_value = -200.0;
  barfield_sensor_param.bars_values = true;

  for (i = 0; i < 8; i++)
    sensors_tab_red_sensor_data.values.push_back(abs_(barfield_sensor_param.max_value*rnd_()));

  container->add(new COpenGLGuiBarField(barfield_sensor_param, &sensors_tab_red_sensor_data));















  barfield_sensor_param.frame.visible = true;
  barfield_sensor_param.frame.transparent = true;

  barfield_sensor_param.frame.px = 0.37;
  barfield_sensor_param.frame.py =0.077;  //0.27;
  barfield_sensor_param.frame.pz = 0.0;

  barfield_sensor_param.frame.width = bar_width;
  barfield_sensor_param.frame.height = bar_height;

  barfield_sensor_param.frame.color_r = 0.0;
  barfield_sensor_param.frame.color_g = 0.4;
  barfield_sensor_param.frame.color_b = 0.0;

  barfield_sensor_param.frame.font_color_r = 0.0;
  barfield_sensor_param.frame.font_color_g = 0.8;
  barfield_sensor_param.frame.font_color_b = 0.0;


  barfield_sensor_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  barfield_sensor_param.frame.label = "green sensors result";


  barfield_sensor_param.font = GLUT_BITMAP_HELVETICA_10;

  barfield_sensor_param.color_r = 0.0;
  barfield_sensor_param.color_g = 0.8;
  barfield_sensor_param.color_b = 0.0;

  barfield_sensor_param.max_value = 200.0;
  barfield_sensor_param.min_value = -200.0;
  barfield_sensor_param.bars_values = true;

  for (i = 0; i < 8; i++)
    sensors_tab_green_sensor_data.values.push_back(abs_(barfield_sensor_param.max_value*rnd_()));

  container->add(new COpenGLGuiBarField(barfield_sensor_param, &sensors_tab_green_sensor_data));














  barfield_sensor_param.frame.visible = true;
  barfield_sensor_param.frame.transparent = true;

  barfield_sensor_param.frame.px = -0.35;
  barfield_sensor_param.frame.py = -0.095;  //0.27;
  barfield_sensor_param.frame.pz = 0.0;

  barfield_sensor_param.frame.width = bar_width;
  barfield_sensor_param.frame.height = bar_height;

  barfield_sensor_param.frame.color_r = 0.0;
  barfield_sensor_param.frame.color_g = 0.0;
  barfield_sensor_param.frame.color_b = 0.4;

  barfield_sensor_param.frame.font_color_r = 0.0;
  barfield_sensor_param.frame.font_color_g = 0.0;
  barfield_sensor_param.frame.font_color_b = 0.8;


  barfield_sensor_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  barfield_sensor_param.frame.label = "blue sensors result";


  barfield_sensor_param.font = GLUT_BITMAP_HELVETICA_10;

  barfield_sensor_param.color_r = 0.0;
  barfield_sensor_param.color_g = 0.0;
  barfield_sensor_param.color_b = 0.8;

  barfield_sensor_param.max_value = 200.0;
  barfield_sensor_param.min_value = -200.0;
  barfield_sensor_param.bars_values = true;

  for (i = 0; i < 8; i++)
    sensors_tab_blue_sensor_data.values.push_back(abs_(barfield_sensor_param.max_value*rnd_()));

  container->add(new COpenGLGuiBarField(barfield_sensor_param, &sensors_tab_blue_sensor_data));











  struct sOpenGLGuiGraphParams	graph_data_param;

  graph_data_param.frame.visible = true;
  graph_data_param.frame.transparent = true;

  graph_data_param.frame.px = 0.37;
  graph_data_param.frame.py = -0.095;  //0.27;
  graph_data_param.frame.pz = 0.0;

  graph_data_param.frame.width = bar_width;
  graph_data_param.frame.height = bar_height;

  graph_data_param.frame.color_r = 0.0;
  graph_data_param.frame.color_g = 0.5;
  graph_data_param.frame.color_b = 0.8;

  graph_data_param.frame.font_color_r = 0.8;
  graph_data_param.frame.font_color_g = 0.8;
  graph_data_param.frame.font_color_b = 0.8;


  graph_data_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  graph_data_param.frame.label = "obstacle sensor";




  graph_data_param.color_r = 0.0;
  graph_data_param.color_g = 0.7;
  graph_data_param.color_b = 1.0;

  graph_data_param.x_min = 0.0;
  graph_data_param.x_max = 100.0;

  graph_data_param.y_max = 1024.0;
  graph_data_param.y_min = 0.0;


  graph_data_param.plot_grid = true;
  graph_data_param.plot_values = true;
  graph_data_param.plot_labels = true;

  graph_data_param.font =  GLUT_BITMAP_HELVETICA_10;


    u32 j;
    struct sOpenGlGraphFunction function;
    function.label = "distance";
    for (j = 0; j < 100; j++)
    {
      struct sOpenGlGraphPoint point;

      point.x = j;
      point.y = 0.0;

      function.points.push_back(point);
    }

    sensors_tab_obstacle_sensor_data.functions.push_back(function);

    /*
    function.label = "detected";
    sensors_tab_obstacle_sensor_data.functions.push_back(function);
    */
    
    container->add(new COpenGLGuiGraph(graph_data_param, &sensors_tab_obstacle_sensor_data));


  struct sOpenGLGuiSliderFieldParams	sliderfield_controller_param;

  std::string label;

  sliderfield_controller_param.frame.visible = true;
  sliderfield_controller_param.frame.px = 0.0;
  sliderfield_controller_param.frame.py = -0.3;
  sliderfield_controller_param.frame.pz = 0.0;

  sliderfield_controller_param.frame.width = 1.4;
  sliderfield_controller_param.frame.height = 0.1;

  sliderfield_controller_param.frame.transparent = true;
  sliderfield_controller_param.frame.color_r = 0.3;
  sliderfield_controller_param.frame.color_g = 0.3;
  sliderfield_controller_param.frame.color_b = 0.3;
  sliderfield_controller_param.frame.font_color_r = 0.8;
  sliderfield_controller_param.frame.font_color_g = 0.8;
  sliderfield_controller_param.frame.font_color_b = 0.8;
  sliderfield_controller_param.frame.font = GLUT_BITMAP_HELVETICA_18;


  sliderfield_controller_param.frame.label = "sensors treshold parameters";

  sliderfield_controller_param.label_font = GLUT_BITMAP_HELVETICA_18;
  sliderfield_controller_param.font = GLUT_BITMAP_HELVETICA_18;

  sliderfield_controller_param.color_r = 0.3;
  sliderfield_controller_param.color_g = 0.7;
  sliderfield_controller_param.color_b = 1.0;

  sliderfield_controller_param.font_color_r = 1.0;
  sliderfield_controller_param.font_color_g = 1.0;
  sliderfield_controller_param.font_color_b = 1.0;

  sliderfield_controller_param.min_value = -800.0;
  sliderfield_controller_param.max_value = 800.0;
  sliderfield_controller_param.setable = false;

    struct sSlider slider;


    slider.label = "line";
    slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
    sensors_tab_treshold_sensor_data.sliders.push_back(slider);

    slider.label = "obstacle";
    slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
    sensors_tab_treshold_sensor_data.sliders.push_back(slider);


    container->add(new COpenGLGuiSliderField(sliderfield_controller_param, &sensors_tab_treshold_sensor_data, 1));


}
