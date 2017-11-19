#ifndef _OPENGL_GUI_H_
#define _OPENGL_GUI_H_

#include "../common.h"

#include "opengl_gui_items.h"



class COpenGLGui
{
  private:
    u32 width, height;
    std::vector<class CItemsContainer*> *opengl_gui_containers;

    std::thread *rendering_thread;

    GLuint background_texture;

  public:
    COpenGLGui(u32 width, u32 height, std::vector<class CItemsContainer*> *opengl_gui_containers);
    ~COpenGLGui();

    void process();


  private:
    void visualise_init();
    void visualise_refresh();

    void mouse_click_event(int button, int state, int x, int y);
    void keyboard_up_event(unsigned char key, int x, int y);
    void keyboard_event(unsigned char key, int x, int y);
    void special_keyboard_up_event(int key, int x, int y);
    void special_keyboard_event(int key, int x, int y);


  public:
    static void mouse_click_event_wrapper(int button, int state, int x, int y);
    static void keyboard_up_event_wrapper(unsigned char key, int x, int y);
    static void keyboard_event_wrapper(unsigned char key, int x, int y);
    static void special_keyboard_up_event_wrapper(int key, int x, int y);
    static void special_keyboard_event_wrapper(int key, int x, int y);

};

#endif
