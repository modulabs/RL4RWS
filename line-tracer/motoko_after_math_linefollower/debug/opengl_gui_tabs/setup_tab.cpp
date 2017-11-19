#include "sensors_tab.h"

struct sOpenGLGuiSliderFieldData	    setup_tab_treshold_sensor_data;
struct sOpenGLGuiSliderFieldData      setup_tab_controller_data;
struct sOpenGLGuiSliderFieldData      setup_tab_speed_data;
struct sOpenGLGuiButtonFieldData	   setup_tab_menu_data;


void container_setup_tab_init(class CItemsContainer *container)
{


  struct sOpenGLGuiSliderFieldParams	sliderfield_param;

  std::string label;

  sliderfield_param.frame.visible = true;
  sliderfield_param.frame.px = 0.0;
  sliderfield_param.frame.py = 0.2;
  sliderfield_param.frame.pz = 0.0;

  sliderfield_param.frame.width = 1.4;
  sliderfield_param.frame.height = 0.2;

  sliderfield_param.frame.transparent = true;
  sliderfield_param.frame.color_r = 0.3;
  sliderfield_param.frame.color_g = 0.3;
  sliderfield_param.frame.color_b = 0.3;
  sliderfield_param.frame.font_color_r = 0.8;
  sliderfield_param.frame.font_color_g = 0.8;
  sliderfield_param.frame.font_color_b = 0.8;
  sliderfield_param.frame.font = GLUT_BITMAP_HELVETICA_18;


  sliderfield_param.frame.label = "sensors treshold parameters";

  sliderfield_param.label_font = GLUT_BITMAP_HELVETICA_18;
  sliderfield_param.font = GLUT_BITMAP_HELVETICA_18;

  sliderfield_param.color_r = 0.3;
  sliderfield_param.color_g = 0.7;
  sliderfield_param.color_b = 1.0;

  sliderfield_param.font_color_r = 1.0;
  sliderfield_param.font_color_g = 1.0;
  sliderfield_param.font_color_b = 1.0;

  sliderfield_param.min_value = 0.0;
  sliderfield_param.max_value = 100.0;
  sliderfield_param.setable = true;

  struct sSlider slider;


  slider.label = "line";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_treshold_sensor_data.sliders.push_back(slider);

  slider.label = "obstacle";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_treshold_sensor_data.sliders.push_back(slider);

  slider.label = "ambient";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_treshold_sensor_data.sliders.push_back(slider);

  slider.label = "red";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_treshold_sensor_data.sliders.push_back(slider);

  slider.label = "green";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_treshold_sensor_data.sliders.push_back(slider);

  slider.label = "blue";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_treshold_sensor_data.sliders.push_back(slider);

  container->add(new COpenGLGuiSliderField(sliderfield_param, &setup_tab_treshold_sensor_data, 1));
















  sliderfield_param.frame.visible = true;
  sliderfield_param.frame.px = 0.0;
  sliderfield_param.frame.py = -0.04;
  sliderfield_param.frame.pz = 0.0;

  sliderfield_param.frame.width = 1.4;
  sliderfield_param.frame.height = 0.2;

  sliderfield_param.frame.transparent = true;
  sliderfield_param.frame.color_r = 0.3;
  sliderfield_param.frame.color_g = 0.3;
  sliderfield_param.frame.color_b = 0.3;
  sliderfield_param.frame.font_color_r = 0.8;
  sliderfield_param.frame.font_color_g = 0.8;
  sliderfield_param.frame.font_color_b = 0.8;
  sliderfield_param.frame.font = GLUT_BITMAP_HELVETICA_18;


  sliderfield_param.frame.label = "controller parameters";

  sliderfield_param.label_font = GLUT_BITMAP_HELVETICA_18;
  sliderfield_param.font = GLUT_BITMAP_HELVETICA_18;

  sliderfield_param.color_r = 0.3;
  sliderfield_param.color_g = 0.7;
  sliderfield_param.color_b = 1.0;

  sliderfield_param.font_color_r = 1.0;
  sliderfield_param.font_color_g = 1.0;
  sliderfield_param.font_color_b = 1.0;

  sliderfield_param.min_value = 0.0;
  sliderfield_param.max_value = 10.0;
  sliderfield_param.setable = true;



  slider.label = "Kp";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_controller_data.sliders.push_back(slider);

  slider.label = "Kd";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_controller_data.sliders.push_back(slider);

  slider.label = "Ks1";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_controller_data.sliders.push_back(slider);

  slider.label = "Ks2";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_controller_data.sliders.push_back(slider);

  container->add(new COpenGLGuiSliderField(sliderfield_param, &setup_tab_controller_data, 1));













  sliderfield_param.frame.visible = true;
  sliderfield_param.frame.px = 0.0;
  sliderfield_param.frame.py = -0.25;
  sliderfield_param.frame.pz = 0.0;

  sliderfield_param.frame.width = 1.4;
  sliderfield_param.frame.height = 0.1;

  sliderfield_param.frame.transparent = true;
  sliderfield_param.frame.color_r = 0.3;
  sliderfield_param.frame.color_g = 0.3;
  sliderfield_param.frame.color_b = 0.3;
  sliderfield_param.frame.font_color_r = 0.8;
  sliderfield_param.frame.font_color_g = 0.8;
  sliderfield_param.frame.font_color_b = 0.8;
  sliderfield_param.frame.font = GLUT_BITMAP_HELVETICA_18;


  sliderfield_param.frame.label = "speed parameters";

  sliderfield_param.label_font = GLUT_BITMAP_HELVETICA_18;
  sliderfield_param.font = GLUT_BITMAP_HELVETICA_18;

  sliderfield_param.color_r = 0.3;
  sliderfield_param.color_g = 0.7;
  sliderfield_param.color_b = 1.0;

  sliderfield_param.font_color_r = 1.0;
  sliderfield_param.font_color_g = 1.0;
  sliderfield_param.font_color_b = 1.0;

  sliderfield_param.min_value = 0.0;
  sliderfield_param.max_value = 100.0;
  sliderfield_param.setable = true;


  slider.label = "speed min";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_speed_data.sliders.push_back(slider);

  slider.label = "speed max";
  slider.value = sliderfield_param.max_value*abs_(rnd_());
  setup_tab_speed_data.sliders.push_back(slider);

  container->add(new COpenGLGuiSliderField(sliderfield_param, &setup_tab_speed_data, 1));








  struct sOpenGLGuiButtonFieldParams	menu_param;




  menu_param.frame.px = -0.45;
  menu_param.frame.py = -0.35;
  menu_param.frame.pz = 0.0;

  menu_param.frame.width = 0.5;
  menu_param.frame.height = 0.05;

  menu_param.frame.visible = false;
  menu_param.frame.transparent = true;
  menu_param.frame.color_r = 0.3;
  menu_param.frame.color_g = 0.3;
  menu_param.frame.color_b = 0.3;
  menu_param.frame.font_color_r = 0.8;
  menu_param.frame.font_color_g = 0.8;
  menu_param.frame.font_color_b = 0.8;
  menu_param.frame.font = GLUT_BITMAP_HELVETICA_18;
  menu_param.frame.label = "setup";

  menu_param.font = GLUT_BITMAP_HELVETICA_18;

  menu_param.font_color_r = 0.8;
  menu_param.font_color_g = 0.8;
  menu_param.font_color_b = 0.8;

  menu_param.color_r = 0.8;
  menu_param.color_g = 0.0;
  menu_param.color_b = 0.2;


  struct sButton button;

  button.label = "load";
  button.state = 0;
  button.flag = 0;
  setup_tab_menu_data.buttons.push_back(button);

  button.label = "write";
  button.state = 0;
  button.flag = 0;
  setup_tab_menu_data.buttons.push_back(button);


  container->add(new COpenGLGuiButtonField(menu_param, &setup_tab_menu_data));
}
