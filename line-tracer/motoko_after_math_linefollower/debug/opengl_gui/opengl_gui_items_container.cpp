#include "opengl_gui_items_container.h"

CItemsContainer::CItemsContainer()
{
  this->container.visible = false;
}

CItemsContainer::~CItemsContainer()
{

}

void CItemsContainer::add(class COpenGLGuiItem *item)
{
  container.items.push_back(item);
}

void CItemsContainer::set_visible()
{
  container.visible = true;
}

void CItemsContainer::clear_visible()
{
  container.visible = false;
}

bool CItemsContainer::is_visible()
{
  return container.visible;
}



void CItemsContainer::process()
{
  if (container.visible != true)
    return;

  u32 i;
  for (i = 0; i < container.items.size(); i++)
    container.items[i]->process();
}

void CItemsContainer::mouse_click_event(int button, int state, float x, float y)
{
  if (container.visible != true)
    return;

  u32 i;
  for (i = 0; i < container.items.size(); i++)
    container.items[i]->mouse_click_event(button, state, x, y);
}

void CItemsContainer::keyboard_up_event(unsigned char key, float x, float y)
{
  if (container.visible != true)
    return;

  u32 i;
  for (i = 0; i < container.items.size(); i++)
    container.items[i]->keyboard_up_event(key, x, y);
}

void CItemsContainer::keyboard_event(unsigned char key, float x, float y)
{
  if (container.visible != true)
    return;

  u32 i;
  for (i = 0; i < container.items.size(); i++)
    container.items[i]->keyboard_event(key, x, y);
}

void CItemsContainer::special_keyboard_up_event(int key, float x, float y)
{
  if (container.visible != true)
    return;

  u32 i;
  for (i = 0; i < container.items.size(); i++)
    container.items[i]->special_keyboard_up_event(key, x, y);
}

void CItemsContainer::special_keyboard_event(int key, float x, float y)
{
  if (container.visible != true)
    return;

  u32 i;
  for (i = 0; i < container.items.size(); i++)
    container.items[i]->special_keyboard_event(key, x, y);
}
