#include "debug_tab.h"


struct sOpenGLGuiTextFieldData	debug_tab_textfield_terminal_data;
struct sOpenGLGuiSliderFieldData	debug_tab_sliderfield_controller_data;
struct sOpenGLGuiBarFieldData	  debug_tab_barfield_sensor_data;
struct sOpenGLGuiImuData				debug_tab_imu_data;
struct sOpenGLGuiGraphData			debug_tab_graph_data;


void container_debug_tab_init(class CItemsContainer *container)
{
  u32 i;

  struct sOpenGLGuiTextFieldParams	textfield_terminal_param;

  textfield_terminal_param.frame.visible = true;
  textfield_terminal_param.frame.px = -0.25;
  textfield_terminal_param.frame.py = -0.3;
  textfield_terminal_param.frame.pz = 0.0;

  textfield_terminal_param.frame.width = 0.9;
  textfield_terminal_param.frame.height = 0.2;
  textfield_terminal_param.frame.transparent = true;


  textfield_terminal_param.frame.color_r = 0.3;
  textfield_terminal_param.frame.color_g = 0.3;
  textfield_terminal_param.frame.color_b = 0.3;
  textfield_terminal_param.frame.font_color_r = 0.8;
  textfield_terminal_param.frame.font_color_g = 0.8;
  textfield_terminal_param.frame.font_color_b = 0.8;
  textfield_terminal_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  textfield_terminal_param.frame.label = "terminal output";
  textfield_terminal_param.font = GLUT_BITMAP_HELVETICA_18;

  textfield_terminal_param.font_color_r = 1.0;
  textfield_terminal_param.font_color_g = 1.0;
  textfield_terminal_param.font_color_b = 1.0;


  debug_tab_textfield_terminal_data.lines.push_back(">");

  for (i = 0; i < 6; i++)
    debug_tab_textfield_terminal_data.lines.push_back(" ");
  container->add(new COpenGLGuiTextField(textfield_terminal_param, &debug_tab_textfield_terminal_data));









  struct sOpenGLGuiSliderFieldParams	sliderfield_controller_param;

  std::string label;

  sliderfield_controller_param.frame.visible = true;
  sliderfield_controller_param.frame.px = -0.25;
  sliderfield_controller_param.frame.py = -0.015;
  sliderfield_controller_param.frame.pz = 0.0;

  sliderfield_controller_param.frame.width = 0.9;
  sliderfield_controller_param.frame.height = 0.29;

  sliderfield_controller_param.frame.transparent = true;
  sliderfield_controller_param.frame.color_r = 0.3;
  sliderfield_controller_param.frame.color_g = 0.3;
  sliderfield_controller_param.frame.color_b = 0.3;
  sliderfield_controller_param.frame.font_color_r = 0.8;
  sliderfield_controller_param.frame.font_color_g = 0.8;
  sliderfield_controller_param.frame.font_color_b = 0.8;
  sliderfield_controller_param.frame.font = GLUT_BITMAP_HELVETICA_18;


  sliderfield_controller_param.frame.label = "controller parameters";

  sliderfield_controller_param.label_font = GLUT_BITMAP_HELVETICA_18;
  sliderfield_controller_param.font = GLUT_BITMAP_HELVETICA_18;

  sliderfield_controller_param.color_r = 0.3;
  sliderfield_controller_param.color_g = 0.7;
  sliderfield_controller_param.color_b = 1.0;

  sliderfield_controller_param.font_color_r = 1.0;
  sliderfield_controller_param.font_color_g = 1.0;
  sliderfield_controller_param.font_color_b = 1.0;

  sliderfield_controller_param.min_value = 0.0;
  sliderfield_controller_param.max_value = 1.0;

  sliderfield_controller_param.setable = false;

  struct sSlider slider;


  slider.label = "Kp";
  slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
  debug_tab_sliderfield_controller_data.sliders.push_back(slider);

  slider.label = "Ki";
  slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
  debug_tab_sliderfield_controller_data.sliders.push_back(slider);

  slider.label = "Kdx0.1";
  slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
  debug_tab_sliderfield_controller_data.sliders.push_back(slider);


  slider.label = "Kd2x0.1";
  slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
  debug_tab_sliderfield_controller_data.sliders.push_back(slider);

  slider.label = "speed max";
  slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
  debug_tab_sliderfield_controller_data.sliders.push_back(slider);

  container->add(new COpenGLGuiSliderField(sliderfield_controller_param, &debug_tab_sliderfield_controller_data, 1));





  struct sOpenGLGuiBarFieldParams	barfield_sensor_param;

  barfield_sensor_param.frame.visible = true;
  barfield_sensor_param.frame.transparent = true;

  barfield_sensor_param.frame.px = -0.35;
  barfield_sensor_param.frame.py =0.25;  //0.27;
  barfield_sensor_param.frame.pz = 0.0;

  barfield_sensor_param.frame.width = 0.7;
  barfield_sensor_param.frame.height = 0.16;

  barfield_sensor_param.frame.color_r = 0.8;
  barfield_sensor_param.frame.color_g = 0.0;
  barfield_sensor_param.frame.color_b = 0.0;

  barfield_sensor_param.frame.font_color_r = 0.8;
  barfield_sensor_param.frame.font_color_g = 0.0;
  barfield_sensor_param.frame.font_color_b = 0.0;


  barfield_sensor_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  barfield_sensor_param.frame.label = "line sensors";



  barfield_sensor_param.font = GLUT_BITMAP_HELVETICA_10;

  barfield_sensor_param.color_r = 0.7;
  barfield_sensor_param.color_g = 0.0;
  barfield_sensor_param.color_b = 0.0;

  barfield_sensor_param.max_value = 700.0;
  barfield_sensor_param.min_value = -700.0;
  barfield_sensor_param.bars_values = true;

  for (i = 0; i < 8; i++)
    debug_tab_barfield_sensor_data.values.push_back(barfield_sensor_param.max_value*rnd_());

  container->add(new COpenGLGuiBarField(barfield_sensor_param, &debug_tab_barfield_sensor_data));



  struct sOpenGLGuiGraphParams	graph_data_param;

  graph_data_param.frame.visible = true;
  graph_data_param.frame.transparent = true;

  graph_data_param.frame.px = 0.37;
  graph_data_param.frame.py = 0.25;
  graph_data_param.frame.pz = 0.0;

  graph_data_param.frame.width = 0.7;
  graph_data_param.frame.height = 0.16;

  graph_data_param.frame.color_r = 0.0;
  graph_data_param.frame.color_g = 0.5;
  graph_data_param.frame.color_b = 0.8;

  graph_data_param.frame.font_color_r = 0.8;
  graph_data_param.frame.font_color_g = 0.8;
  graph_data_param.frame.font_color_b = 0.8;


  graph_data_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  graph_data_param.frame.label = "line position";




  graph_data_param.color_r = 0.0;
  graph_data_param.color_g = 0.7;
  graph_data_param.color_b = 1.0;

  graph_data_param.x_min = 0.0;
  graph_data_param.x_max = 100.0;

  graph_data_param.y_max = 256.0;
  graph_data_param.y_min = -256.0;


  graph_data_param.plot_grid = true;
  graph_data_param.plot_values = true;
  graph_data_param.plot_labels = true;

  graph_data_param.font =  GLUT_BITMAP_HELVETICA_10;


    u32 j;
    struct sOpenGlGraphFunction function;
    function.label = "line position";
    for (j = 0; j < 100; j++)
    {
      struct sOpenGlGraphPoint point;

      point.x = j;
      point.y = graph_data_param.y_max*rnd_();

      function.points.push_back(point);
    }

    debug_tab_graph_data.functions.push_back(function);

  container->add(new COpenGLGuiGraph(graph_data_param, &debug_tab_graph_data));






  struct sOpenGLGuiImuParams	imu_param;

  imu_param.frame.visible = true;
  imu_param.frame.transparent = true;

  imu_param.frame.px = 0.47;
  imu_param.frame.py = -0.135;
  imu_param.frame.pz = 0.0;

  imu_param.frame.width = 0.5;
  imu_param.frame.height = 0.53;


  imu_param.frame.color_r = 0.3;
  imu_param.frame.color_g = 0.3;
  imu_param.frame.color_b = 0.3;

  imu_param.frame.font_color_r = 0.8;
  imu_param.frame.font_color_g = 0.8;
  imu_param.frame.font_color_b = 0.8;

  imu_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  imu_param.frame.label = "gyroscope";


  imu_param.color_r = 0.7;
  imu_param.color_g = 0.0;
  imu_param.color_b = 1.0;

  imu_param.font = GLUT_BITMAP_HELVETICA_10;

  imu_param.angles_values_labels = true;

  debug_tab_imu_data.roll = 0.0;
  debug_tab_imu_data.pitch = 0.0;
  debug_tab_imu_data.yaw = rnd_()*PI;

  container->add(new COpenGLGuiImu(imu_param, &debug_tab_imu_data));

  container->set_visible();

}
