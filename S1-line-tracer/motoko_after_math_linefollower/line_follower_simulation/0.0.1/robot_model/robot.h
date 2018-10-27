#ifndef _ROBOT_H_
#define _ROBOT_H_

#include "../common.h"

struct sRobotInit
{
  double length, brace, round_diameter, rpm_max, motor_torque;
  double mass, rotation_inertia, robot_inertia;
  double dt;


  u32 path_length;
  float path_width;

  bool visualise;
};

struct sRobotResult
{
  double theta_0;

  double theta_0_;
  double theta_1_;
  double theta_2_;

  double l_0;
  double l_1;
  double l_2;

  double x, y, theta;

  double sx, sy;

  double line_position;
  bool on_line;
};


struct sPathElement
{
  float x, y, theta;
  float length, width;
};

class CRobot
{
  private:
    struct sRobotInit robot_init;
    struct sRobotResult robot_result;

    std::vector<struct sPathElement> path;
    u32 path_state, nearest_path_element;

    std::thread *rendering_thread;


  public:
    CRobot(struct sRobotInit robot_init);
    ~CRobot();

    void process(float ul, float ur);
    struct sRobotResult get();

    void find_nearest_path_element();
    void path_func_calc();

    void visualise_init();
    void visualise_refresh();

};

#endif
