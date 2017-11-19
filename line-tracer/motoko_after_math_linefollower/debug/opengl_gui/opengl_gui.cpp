#include "opengl_gui.h"

#include <stdio.h>
#include <signal.h>
#include <X11/X.h>
#include <X11/Xlib.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

#include <png.h>
#include <cstdio>
#include <string>

static class COpenGLGui *opengl_gui_instance;

GLuint png_texture_load(const std::string filename, int &width, int &height)
{
  //header for testing if it is a png
  png_byte header[8];

  //open file as binary
  FILE *fp = fopen(filename.c_str(), "rb");
  if (!fp) {
    return 0;
  }

  //read the header
  fread(header, 1, 8, fp);

  //test if png
  int is_png = !png_sig_cmp(header, 0, 8);
  if (!is_png) {
    fclose(fp);
    return 0;
  }

  //create png struct
  png_structp png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL,
      NULL, NULL);
  if (!png_ptr) {
    fclose(fp);
    return (0);
  }

  //create png info struct
  png_infop info_ptr = png_create_info_struct(png_ptr);
  if (!info_ptr) {
    png_destroy_read_struct(&png_ptr, (png_infopp) NULL, (png_infopp) NULL);
    fclose(fp);
    return (0);
  }

  //create png info struct
  png_infop end_info = png_create_info_struct(png_ptr);
  if (!end_info) {
    png_destroy_read_struct(&png_ptr, &info_ptr, (png_infopp) NULL);
    fclose(fp);
    return (0);
  }

  //png error stuff, not sure libpng man suggests this.
  if (setjmp(png_jmpbuf(png_ptr))) {
    png_destroy_read_struct(&png_ptr, &info_ptr, &end_info);
    fclose(fp);
    return (0);
  }

  //init png reading
  png_init_io(png_ptr, fp);

  //let libpng know you already read the first 8 bytes
  png_set_sig_bytes(png_ptr, 8);

  // read all the info up to the image data
  png_read_info(png_ptr, info_ptr);

  //variables to pass to get info
  int bit_depth, color_type;
  png_uint_32 twidth, theight;

  // get info about png
  png_get_IHDR(png_ptr, info_ptr, &twidth, &theight, &bit_depth, &color_type,
      NULL, NULL, NULL);

  //update width and height based on png info
  width = twidth;
  height = theight;

  // Update the png info struct.
  png_read_update_info(png_ptr, info_ptr);

  // Row size in bytes.
  int rowbytes = png_get_rowbytes(png_ptr, info_ptr);

  // Allocate the image_data as a big block, to be given to opengl
  png_byte *image_data = new png_byte[rowbytes * height];
  if (!image_data) {
    //clean up memory and close stuff
    png_destroy_read_struct(&png_ptr, &info_ptr, &end_info);
    fclose(fp);
    return 0;
  }

  //row_pointers is for pointing to image_data for reading the png with libpng
  png_bytep *row_pointers = new png_bytep[height];
  if (!row_pointers) {
    //clean up memory and close stuff
    png_destroy_read_struct(&png_ptr, &info_ptr, &end_info);
    delete[] image_data;
    fclose(fp);
    return 0;
  }
  // set the individual row_pointers to point at the correct offsets of image_data
  for (int i = 0; i < height; ++i)
    row_pointers[height - 1 - i] = image_data + i * rowbytes;

  //read the png into image_data through row_pointers
  png_read_image(png_ptr, row_pointers);

  //Now generate the OpenGL texture object
  GLuint texture;
  glGenTextures(1, &texture);
  glBindTexture(GL_TEXTURE_2D, texture);
  glTexImage2D(GL_TEXTURE_2D,0, GL_RGBA, width, height, 0,
      GL_RGB, GL_UNSIGNED_BYTE, (GLvoid*) image_data);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

  //clean up memory and close stuff
  png_destroy_read_struct(&png_ptr, &info_ptr, &end_info);
  delete[] image_data;
  delete[] row_pointers;
  fclose(fp);

  return texture;
}


COpenGLGui::COpenGLGui(u32 width, u32 height, std::vector<class CItemsContainer*> *opengl_gui_containers)
{
  this->width = width;
  this->height = height;

  opengl_gui_instance = this;

  visualise_init();

  this->opengl_gui_containers = opengl_gui_containers;
}


COpenGLGui::~COpenGLGui()
{
  delete rendering_thread;
}


void COpenGLGui::process()
{
  visualise_refresh();
}


void visualise_rendering_thread()
{
  glutMainLoop();
}

void COpenGLGui::visualise_init()
{
  XInitThreads();

  int num = 0;

  glutInit(&num, NULL);
  glutInitWindowSize(width, height);
  glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE);
  glutCreateWindow("robot visualise");

  glutMouseFunc(COpenGLGui::mouse_click_event_wrapper);

  glutKeyboardUpFunc(COpenGLGui::keyboard_up_event_wrapper);
  glutKeyboardFunc(COpenGLGui::keyboard_event_wrapper);
	glutSpecialUpFunc(COpenGLGui::special_keyboard_up_event_wrapper);
  glutSpecialFunc(COpenGLGui::special_keyboard_event_wrapper);


  glViewport(0, 0, width, height);
  glMatrixMode(GL_PROJECTION);
  glEnable(GL_DEPTH_TEST);
  gluPerspective(45, (float) width / height, 0.1, 100);
  glMatrixMode(GL_MODELVIEW);

  int background_width = 0;
  int background_height = 0;
  background_texture = png_texture_load("background.png", background_width, background_height);


  rendering_thread = new std::thread(&visualise_rendering_thread);
}



void COpenGLGui::visualise_refresh()
{
  glMatrixMode(GL_PROJECTION);
  glShadeModel(GL_SMOOTH);
  glEnable(GL_DEPTH_TEST);
  glMatrixMode(GL_MODELVIEW);

  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  glLoadIdentity();

  glEnable(GL_DEPTH_TEST);
  glDepthFunc(GL_LEQUAL);

  glMatrixMode(GL_MODELVIEW);
  glEnable(GL_DEPTH);


  glTranslatef(0.0, 0.0, -1.0);
  glRotatef(0.0, 0.0, 0.0, 0.0);


  glClearColor(0.0, 0.0, 0.0, 0.0);


  float size_x = 1.6;
  float size_y = 1.0;
  float x = 0.0;
  float y = 0.0;


  glColor3f(1.0, 1.0, 1.0);


  glPushAttrib(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  glEnable(GL_TEXTURE_2D);

  glBegin(GL_QUADS);
  glNormal3f(0.0, 0.0, 1.0);

  glTexCoord2d(1, 1); glVertex3f(x + 0.5*size_x, y + 0.5*size_y, -0.001);
  glTexCoord2d(1, 0); glVertex3f(x + 0.5*size_x, y - 0.5*size_y, -0.001);
  glTexCoord2d(0, 0); glVertex3f(x - 0.5*size_x, y - 0.5*size_y, -0.001);
  glTexCoord2d(0, 1); glVertex3f(x - 0.5*size_x, y + 0.5*size_y, -0.001);

  glEnd();

  glDisable(GL_TEXTURE_2D);
  glPopAttrib();



  glColor3f(0.0, 0.0, 0.0);

  u32 i;
  for (i = 0; i < (*opengl_gui_containers).size(); i++)
    (*opengl_gui_containers)[i]->process();

  glutSwapBuffers();
}


struct sPoint3d
{
  float x, y, z;
};

struct sPoint3d GetOGLPos(int x, int y)
{
    GLint viewport[4];
    GLdouble modelview[16];
    GLdouble projection[16];
    GLfloat winX, winY, winZ;
    GLdouble posX, posY, posZ;

    glGetDoublev( GL_MODELVIEW_MATRIX, modelview );
    glGetDoublev( GL_PROJECTION_MATRIX, projection );
    glGetIntegerv( GL_VIEWPORT, viewport );

    winX = (float)x;
    winY = (float)viewport[3] - (float)y;
    glReadPixels( x, int(winY), 1, 1, GL_DEPTH_COMPONENT, GL_FLOAT, &winZ );

    gluUnProject( winX, winY, winZ, modelview, projection, viewport, &posX, &posY, &posZ);

    struct sPoint3d point;
    point.x = posX;
    point.y = posY;
    point.z = posZ;
    return point;
}




void COpenGLGui::mouse_click_event(int button, int state, int x, int y)
{
  u32 i;

  /*
  float x_ = ((1.0*x)/width - 0.5)*2.0/1.36;
  float y_ = ((1.0*y)/height - 0.5)*2.0/2.4;
  */

  struct sPoint3d pos = GetOGLPos(x, y);

  float x_ = pos.x*10;
  float y_ = pos.y*10;

  for (i = 0; i < opengl_gui_containers->size(); i++)
    (*opengl_gui_containers)[i]->mouse_click_event(button, state, x_, y_);

}

void COpenGLGui::mouse_click_event_wrapper(int button, int state, int x, int y)
{
  opengl_gui_instance->mouse_click_event(button, state, x, y);
}



void COpenGLGui::keyboard_up_event(unsigned char key, int x, int y)
{
  u32 i;
  float x_ = ((1.0*x)/width - 0.5)*2.0;
  float y_ = ((1.0*y)/height - 0.5)*2.0;

  for (i = 0; i < opengl_gui_containers->size(); i++)
    (*opengl_gui_containers)[i]->keyboard_up_event(key, x_, y_);
}

void COpenGLGui::keyboard_up_event_wrapper(unsigned char key, int x, int y)
{
  opengl_gui_instance->keyboard_up_event(key, x, y);
}

void COpenGLGui::keyboard_event(unsigned char key, int x, int y)
{
  u32 i;
  float x_ = ((1.0*x)/width - 0.5)*2.0;
  float y_ = ((1.0*y)/height - 0.5)*2.0;

  for (i = 0; i < opengl_gui_containers->size(); i++)
    (*opengl_gui_containers)[i]->keyboard_event(key, x_, y_);
}

void COpenGLGui::keyboard_event_wrapper(unsigned char key, int x, int y)
{
  opengl_gui_instance->keyboard_event(key, x, y);
}



void COpenGLGui::special_keyboard_up_event(int key, int x, int y)
{
  u32 i;
  float x_ = ((1.0*x)/width - 0.5)*2.0;
  float y_ = ((1.0*y)/height - 0.5)*2.0;


  for (i = 0; i < opengl_gui_containers->size(); i++)
    (*opengl_gui_containers)[i]->special_keyboard_up_event(key, x_, y_);
}

void COpenGLGui::special_keyboard_up_event_wrapper(int key, int x, int y)
{
  opengl_gui_instance->special_keyboard_up_event(key, x, y);
}

void COpenGLGui::special_keyboard_event(int key, int x, int y)
{
  u32 i;
  float x_ = ((1.0*x)/width - 0.5)*2.0;
  float y_ = ((1.0*y)/height - 0.5)*2.0;

  for (i = 0; i < opengl_gui_containers->size(); i++)
    (*opengl_gui_containers)[i]->special_keyboard_event(key, x_, y_);
}

void COpenGLGui::special_keyboard_event_wrapper(int key, int x, int y)
{
  opengl_gui_instance->special_keyboard_event(key, x, y);
}
