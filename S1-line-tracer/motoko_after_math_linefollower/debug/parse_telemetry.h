#ifndef _PARSE_TELEMETRY_H_
#define _PARSE_TELEMETRY_H_

#include "common.h"

#define TELEMETRY_BUFFER_SIZE   ((u32)1024)
#define LINE_SENSORS_COUNT  (u32)8


// printf_(">>>L ");
struct sRobotLineTelemetry
{
  i32 on_line;
  i32 line_position;
  i32 line_sensor_treshold;

  i32 obstacle;
  i32 obstacle_position;
  i32 obstacle_treshold;
};

// printf_(">>>I ");
struct sRobotIMUTelemetry
{
  i32 gx, gy, gz;
  i32 mx, my, mz;
  i32 ax, ay, az;
  i32 roll, pitch, yaw;
};


// printf_(">>S ");
struct sRobotRGBTelemetry
{
  i32 dif[LINE_SENSORS_COUNT];
  i32 ambient[LINE_SENSORS_COUNT];
  i32 r[LINE_SENSORS_COUNT];
  i32 g[LINE_SENSORS_COUNT];
  i32 b[LINE_SENSORS_COUNT];
};



//printf_(">>C ");
struct sRobotControllTelemetry
{
  i32 line_sensor_treshold, obstacle_treshold, use_predictor;

  i32 kp, ki, kd, kd2;
  i32 ks1, ks2, speed_min, speed_max;
  i32 line_search_time, line_search_speed;
};



class CParseTelemetry
{
  private:
      char buffer[TELEMETRY_BUFFER_SIZE];
      u32 buffer_ptr;

      struct sRobotLineTelemetry      line_telemetry;
      struct sRobotIMUTelemetry       imu_telemetry;
      struct sRobotRGBTelemetry       rgb_telemetry;
      struct sRobotControllTelemetry  controll_telemetry;

  public:
    CParseTelemetry();
    ~CParseTelemetry();
    u32 parse(char c);

    void print();

    struct sRobotLineTelemetry get_line_telemetry();
    struct sRobotIMUTelemetry get_imu_telemetry();
    struct sRobotRGBTelemetry get_rgb_telemetry();
    struct sRobotControllTelemetry get_controll_telemetry();

    void clear_buffer();
    bool buffer_is(char c);


};

#endif
