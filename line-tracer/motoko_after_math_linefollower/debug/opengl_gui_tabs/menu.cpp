#include "menu.h"



struct sOpenGLGuiButtonFieldData	menu_data;



void menu_tab_init(class CItemsContainer *container)
{
  u32 i;

  struct sOpenGLGuiButtonFieldParams	menu_param;




  menu_param.frame.px = -0.25;
  menu_param.frame.py = 0.387;
  menu_param.frame.pz = 0.0;

  menu_param.frame.width = 0.9;
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
  menu_param.frame.label = "main menu";

  menu_param.font = GLUT_BITMAP_HELVETICA_18;

  menu_param.font_color_r = 0.8;
  menu_param.font_color_g = 0.8;
  menu_param.font_color_b = 0.8;

  menu_param.color_r = 0.0;
  menu_param.color_g = 0.5;
  menu_param.color_b = 0.8;


  struct sButton button;

  button.label = "debug";
  button.state = 0;
  button.flag = 0;
  menu_data.buttons.push_back(button);

  button.label = "rgb sensors";
  button.state = 0;
  button.flag = 0;
  menu_data.buttons.push_back(button);

  button.label = "setup";
  button.state = 0;
  button.flag = 0;
  menu_data.buttons.push_back(button);

  container->add(new COpenGLGuiButtonField(menu_param, &menu_data));

  container->set_visible();
}
