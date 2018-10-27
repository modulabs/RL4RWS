#ifndef _ROBOT_H_
#define _ROBOT_H_

#include "lib_usr.h"


#define ROBOT_OBSTACLE_SENSOR_FLAG_OBSTACLE   ((u32)1)
#define ROBOT_LINE_SENSOR_FLAG_ON_LINE				((u32)1)

#define ROBOT_LINE_SENSORS_COUNT 						(8)
#define ROBOT_SENSORS_COUNT 								(ROBOT_LINE_SENSORS_COUNT + 1)


#define ROBOT_LINE_STEP_W										64
#define ROBOT_LINE_MAX 				 							(i32)(ROBOT_LINE_STEP_W*4)

struct sRobotConfigure
{
  //sensors treshholds
	i16 line_sensor_treshold;
	i16 obstacle_treshold;

  //neural network predictor
  u8 use_predictor;

  //controller parameterers 
  i32 kp, ki, kd, kd2;
  i32 ks1, ks2;
  i32 speed_min, speed_max;

  u32 line_search_time;
  i32 line_search_speed;
};

//line sensor result
struct sLinePositionSensor
{
	u8 on_line;
	i32 line_position;
  u32 line_color, line_type;
};

//obstacle sensor result
struct sObstacleSensor
{
  u8 obstacle;
  i32 obstacle_position;
};


//angles
struct sIMUSensor
{
  i32 roll, pitch, yaw;
};


#ifdef __cplusplus

class CRobot
{
  private:
    struct sRobotConfigure robot_configure;

    struct sLinePositionSensor line_position_sensor;
    struct sObstacleSensor obstacle_position_sensor;
    struct sIMUSensor imu_sensor;

    u32 error_code, error_type;

  public:
    CRobot();
    ~CRobot();

    void init();
    void set_configure(struct sRobotConfigure robot_configure_);

		u32 get_error_type();
    u32 get_error_code();

    struct sRobotConfigure* get_robot_configure();
    struct sLinePositionSensor* get_line_position_sensor();
    struct sObstacleSensor* get_obstacle_position_sensor();
    struct sIMUSensor* get_imu_sensor();

    void set_motors(i32 left, i32 right);
    void reset_imu();

    void process_rgb_sensors();
    void process_imu_sensor();

		i32* get_line_sensor_raw_data_dif();

  private:
    u8 line_sensor_tmp[ROBOT_SENSORS_COUNT];
    i32 line_sensor_raw_data_dif[ROBOT_LINE_SENSORS_COUNT];


    i16 ax, ay, az; //accelerometer raw
    i16 mx, my, mz; //magnetometer raw
    i16 gx, gy, gz; //gyro raw

    //gyro offset
    i32 gx_ofs, gy_ofs, gz_ofs;
    i16 temp;

  private:
    u32 line_sensor_init();
    void line_sensor_read();

    u32 lsm9ds0_init();
    void lsm9ds0_read();
};

#endif


#endif
