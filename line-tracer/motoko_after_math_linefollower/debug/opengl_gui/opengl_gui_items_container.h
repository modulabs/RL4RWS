#ifndef _ITEMS_CONTAINER_H_
#define _ITEMS_CONTAINER_H_

#include "opengl_gui_item.h"


struct sItemsContainer
{
  bool visible;
  std::vector<class COpenGLGuiItem *> items;
};


class CItemsContainer
{
  private:

    struct sItemsContainer container;


  public:
    CItemsContainer();
    ~CItemsContainer();
    void add(class COpenGLGuiItem *item);

    void process();
    void set_visible();
    void clear_visible();
    bool is_visible();

    void mouse_click_event(int button, int state, float x, float y);
    void keyboard_up_event(unsigned char key, float x, float y);
    void keyboard_event(unsigned char key, float x, float y);
    void special_keyboard_up_event(int key, float x, float y);
    void special_keyboard_event(int key, float x, float y);
};

#endif
