#include "robot.h"



#include <stdio.h>
#include <signal.h>
#include <X11/X.h>
#include <X11/Xlib.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <GL/freeglut.h>
#include <GL/glut.h>


u32 g_view_state;

void visualise_process_keys(unsigned char key, int x, int y)
{
    if ((key == 'p') || (key == 'P'))
        switch (g_view_state)
        {
            case 0: g_view_state = 1; break;
            case 1: g_view_state = 2; break;
            case 2: g_view_state = 0; break;

            default: g_view_state = 0; break;
        }
}

void visualise_idle()
{

}

void visualise_rendering_thread()
{
  glutMainLoop();
}

CRobot::CRobot(struct sRobotInit robot_init)
{
  this->robot_init = robot_init;

  robot_result.x = 0.0;
  robot_result.y = 0.0;
  robot_result.theta = 0.0;

  robot_result.theta_2_ = 0.0;
  robot_result.theta_1_ = 0.0;
  robot_result.theta_0_ = 0.0;

  robot_result.theta_0 = 0.0;

  robot_result.l_2 = 0.0;
  robot_result.l_1 = 0.0;
  robot_result.l_0 = 0.0;

  robot_result.line_position = 0.0;
  robot_result.on_line = true;



  nearest_path_element = 0;


  struct sPathElement path_element;

  u32 i;

  float path_step = robot_init.length;
  float t = -(robot_init.path_length*path_step)/2.0;

  for (i = 0; i < robot_init.path_length; i++)
  {
      path_element.length = robot_init.length;
      path_element.width = robot_init.path_width;

      t+= path_step;

      path_element.x = t;
      path_element.y = 0.0;

      path_element.theta = 0.0;

      if (i > 0)
      {
        path_element.theta = atan2((path_element.y - path[i-1].y), (path_element.x - path[i-1].x));
      }

      path.push_back(path_element);
  }

  path_func_calc();

  if (robot_init.visualise)
  {
    visualise_init();
  }
}

CRobot::~CRobot()
{

}

void CRobot::process(float ul, float ur)
{
  float limit = 1.0;

  if (ul < -limit)
    ul = -limit;
  if (ul > limit)
    ul = limit;

  if (ur < -limit)
    ur = -limit;
  if (ur > limit)
    ur = limit;


  double fr = (robot_init.motor_torque/(0.5*robot_init.round_diameter))*ur;
  double fl = (robot_init.motor_torque/(0.5*robot_init.round_diameter))*ul;

  double d_theta = (1.0/(robot_init.mass*robot_init.brace))*(fr - fl) -
              robot_init.rotation_inertia*(robot_result.theta_0_ - robot_result.theta_1_)/robot_init.dt;

  robot_result.theta_2_ = robot_result.theta_1_;
  robot_result.theta_1_ = robot_result.theta_0_;
  robot_result.theta_0_ = 2.0*robot_result.theta_0_ - robot_result.theta_1_ + d_theta*robot_init.dt;
  robot_result.theta_0 = fmod(robot_result.theta_0_, 2.0*PI);

  robot_result.theta = robot_result.theta_0;


  double d_l = (fr + fl)/(2.0*robot_init.mass) + robot_init.robot_inertia*(robot_result.l_0 - robot_result.l_1)/robot_init.dt;

  robot_result.l_2 = robot_result.l_1;
  robot_result.l_1 = robot_result.l_0;
  robot_result.l_0 = 2.0*robot_result.l_0 - robot_result.l_1 + d_l*robot_init.dt;

  /*
  robot_result.x+= d_l*robot_init.dt*cos(robot_result.theta);
  robot_result.y+= d_l*robot_init.dt*sin(robot_result.theta);
  */

  robot_result.x = robot_result.l_0*cos(robot_result.theta);
  robot_result.y = robot_result.l_0*sin(robot_result.theta);


  robot_result.sx = robot_result.x + 0*robot_init.length*cos(robot_result.theta);
  robot_result.sy = robot_result.y + 0*robot_init.length*sin(robot_result.theta);


  find_nearest_path_element();


  robot_result.line_position = sqrt (
                    pow(path[nearest_path_element].x - robot_result.sx, 2.0) +
                    pow (path[nearest_path_element].y - robot_result.sy, 2.0) );

  if (robot_result.line_position > robot_init.brace)
  {
    robot_result.line_position = robot_init.brace;
    robot_result.on_line = false;
  }
  else
    robot_result.on_line = true;

  float dot = -path[nearest_path_element].y*robot_result.sx + path[nearest_path_element].x*robot_result.sy;

  if (dot > 0.0)
    robot_result.line_position*= -1.0;

  if (robot_init.visualise)
  {
    visualise_refresh();
  }

}

struct sRobotResult CRobot::get()
{
  return robot_result;
}


void CRobot::find_nearest_path_element()
{
  u32 idx_far = 0, idx_near = 0, j;

  float min_dist = 1000000000000000.0;

  for (j = 0; j < path.size(); j++)
  {
    float dist = pow(path[j].x - robot_result.sx, 2.0) + pow(path[j].y - robot_result.sy, 2.0);

    dist = sqrt(dist);

    if (dist < min_dist)
    {
      min_dist = dist;
      idx_near = j;
    }

  }

  nearest_path_element = idx_near;
}

void CRobot::path_func_calc()
{
  u32 j;

  float path_step = robot_init.length*0.1;

  float x = 0.0;
  float y = 0.0;

  float angle = 0.0, omega = 0.0;

  u32 mode = 0;

  for (j = 0; j < path.size(); j++)
  {
    struct sPathElement path_element;


    path_element.length = path_step;
    path_element.width = robot_init.path_width;

    path_element.x+= path_step*cos(angle);
    path_element.y+= path_step*sin(angle);
    path_element.theta = angle;

    angle+= omega*path_step;

    if (rnd_(0.0, 1.0) < 0.2)
    {
      //mode = rand()%100;

      mode = 100;
      if (mode < 10)
      {
        angle = 2.0*PI*rnd_(-1.0, 1.0)*45.0/360.0;
        omega = 0.0;
      }
      else
      {
        omega = 2.0*2.0*PI*rnd_(0.0, 1.0);
        omega = omega*sgn_(rnd_(-1.0, 1.0));
      }
    }


    path[j] = path_element;
  }
}


void CRobot::visualise_init()
{
  u32 window_width = 800;
  u32 window_height = 600;

  g_view_state = 3;

  int num = 0;

  glutInit(&num, NULL);
  glutInitWindowSize(window_width, window_height);
  glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE);
  glutCreateWindow("robot visualise");


  glutIdleFunc(visualise_idle);
  glutKeyboardFunc(visualise_process_keys);

  glViewport(0, 0, window_width, window_height);
  glMatrixMode(GL_PROJECTION);
  glEnable(GL_DEPTH_TEST);
  gluPerspective(45, (float) window_width / window_height, 0.1, 100);
  glMatrixMode(GL_MODELVIEW);

//  rendering_thread = new std::thread(visualise_rendering_thread);
}


void point_rotate(float *x_res, float *y_res, float x, float y, float angle)
{
  *x_res = cos(angle)*x - sin(angle)*y;
  *y_res = sin(angle)*x + cos(angle)*y;
}

void CRobot::visualise_refresh()
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

  float x = robot_result.x;
  float y = robot_result.y;
  float angle = robot_result.theta;

  float brace = robot_init.brace;
  float length = robot_init.length;

  float height = 0.1*brace;

  float ax, ay;
  float bx, by;
  float cx, cy;
  float dx, dy;

  switch (g_view_state)
  {
    case 0:
          glTranslatef(0.0, 0.0, -8.0);
          glRotatef(0.0, 0.0, 0.0, 0.0);
          break;

    case 1:
          glTranslatef(0.0, 0.0, -4.0);
          glRotatef(0.0, 0.0, 0.0, 0.0);
          break;

    case 2:
          glTranslatef(-x, -y, -4.0);
          glRotatef(-70.0, 0.0, 0.0, 0.0);
          break;


    case 3:
          glRotatef(-80.0, 1.0, 0.0, 0.0);
          glRotatef(-angle*180.0/PI + 90.0, 0.0, 0.0, 1.0);
          glTranslatef(-x + 0.3*sin(-angle + PI/2), -y + 0.3*cos(-angle + PI/2), -0.1);
          break;

  }

  glClearColor(0.0, 0.0, 0.0, 0.0);

  float l = 100.0;

  u32 max_x = 200;
  u32 max_y = max_x;
  u32 j, i;

  for (j = 0; j < max_y; j++)
    for (i = 0; i < max_x; i++)
    {
      if ((j%2) == (i%2))
        glColor3f(0.7, 0.7, 0.7);
      else
        glColor3f(0.9, 0.9, 0.9);

      float size = 1.0/1.0;
      float x = size*(i - max_x/2.0);
      float y = size*(j - max_y/2.0);


      glBegin(GL_QUADS);
      glVertex3f(x - 0.5*size, y - 0.5*size, 0.0);
      glVertex3f(x + 0.5*size, y - 0.5*size, 0.0);
      glVertex3f(x + 0.5*size, y + 0.5*size, 0.0);
      glVertex3f(x - 0.5*size, y + 0.5*size, 0.0);
      glEnd();
    }



    glColor3f(0.0, 0.0, 0.0);


    for (j = 0; j < robot_init.path_length; j++)
    {
      float path_length = path[j].length;
      float path_width = path[j].width;

      float path_x = path[j].x;
      float path_y = path[j].y;
      float path_theta = path[j].theta;


      point_rotate(&ax, &ay, -path_length/2.0, -path_width/2.0, path_theta);
      point_rotate(&bx, &by, -path_length/2.0, path_width/2.0, path_theta);
      point_rotate(&cx, &cy, path_length/2.0, path_width/2.0, path_theta);
      point_rotate(&dx, &dy, path_length/2.0, -path_width/2.0, path_theta);

      glBegin(GL_QUADS);
      glVertex3f(path_x + ax, path_y + ay, 0.01);
      glVertex3f(path_x + bx, path_y + by, 0.01);
      glVertex3f(path_x + cx, path_y + cy, 0.01);
      glVertex3f(path_x + dx, path_y + dy, 0.01);
      glEnd();

    }




  glColor3f(0.0, 1.0, 0.0);

  glBegin(GL_LINES);
  glVertex3f(x + 0.0, y + 0.0, 0.01);
  glVertex3f(x + l*cos(angle), y + l*sin(angle), 0.01);
  glEnd();

  point_rotate(&ax, &ay, -length/2.0, -brace/2.0, angle);
  point_rotate(&bx, &by, -length/2.0, brace/2.0, angle);
  point_rotate(&cx, &cy, length/2.0, brace/2.0, angle);
  point_rotate(&dx, &dy, length/2.0, -brace/2.0, angle);

  glBegin(GL_QUADS);
  glVertex3f(x + ax, y + ay, 0.01);
  glVertex3f(x + bx, y + by, 0.01);
  glVertex3f(x + cx, y + cy, 0.01);
  glVertex3f(x + dx, y + dy, 0.01);


  glVertex3f(x + ax, y + ay, 0.01 + height);
  glVertex3f(x + bx, y + by, 0.01 + height);
  glVertex3f(x + cx, y + cy, 0.01 + height);
  glVertex3f(x + dx, y + dy, 0.01 + height);
  glEnd();



  glBegin(GL_LINES);

  glColor3f(1.0, 0.0, 0.0);
  glVertex3f(0.0, 0.0, 0.0);
  glVertex3f(l, 0.0, 0.0);

  glColor3f(0.0, 1.0, 0.0);
  glVertex3f(0.0, 0.0, 0.0);
  glVertex3f(0.0, l, 0.0);

  glColor3f(0.0, 0.0, 1.0);
  glVertex3f(0.0, 0.0, 0.0);
  glVertex3f(0.0, 0.0, l);


  glEnd();


  glutSwapBuffers();
}
