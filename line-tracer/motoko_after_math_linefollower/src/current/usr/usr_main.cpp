#include "usr_main.h"
#include "../lib_usr/lib_usr.h"

#include "q_predictor.h"

#include "line_follower.h"
#include "obstacle.h"
#include "broken_line.h"
#include "map.h"

#define SAMPLIG_PERIOD		     (u32)4
#define I2C_SAMPLIG_PERIOD	   (u32)10


class CRobot  c_robot;

class CLineFollower c_line_follower;
class CObstacle c_obstacle;
class CBrokenLine c_broken_line;
class CMap c_map;


#define I2C_SENSOR_THREAD_STACK_SIZE      128
#define LINE_SENSOR_THREAD_STACK_SIZE     128
#define TELEMETRY_THREAD_STACK_SIZE       128


thread_stack_t imu_sensor_thread_stack[I2C_SENSOR_THREAD_STACK_SIZE];
thread_stack_t line_sensor_thread_stack[LINE_SENSOR_THREAD_STACK_SIZE];
thread_stack_t telemetry_thread_stack[TELEMETRY_THREAD_STACK_SIZE];


u32 g_run;




void line_follower()
{
  u32 cnt = 0;

  event_timer_set_period(EVENT_TIMER_2_ID, SAMPLIG_PERIOD);

  /*
  u32 time_now = 0;
  u32 time_prev = 0;
  */
  while (1)
  {
    event_timer_wait(EVENT_TIMER_2_ID);


    if (
          (c_robot.get_obstacle_position_sensor()->obstacle == ROBOT_OBSTACLE_SENSOR_FLAG_OBSTACLE)
           && (m_abs_int(c_robot.get_imu_sensor()->ax) > 3800)
        )
      c_obstacle.process();
    else
    if (c_robot.get_line_position_sensor()->on_line == ROBOT_LINE_SENSOR_FLAG_ON_LINE)
      c_line_follower.process();
    else
      c_broken_line.process();

    cnt++;
    if ((cnt%20) == 0)
      led_on(LED_0);
    else
      led_off(LED_0);
  }
}

void line_sensor_thread()
{
  event_timer_set_period(EVENT_TIMER_0_ID, SAMPLIG_PERIOD);

  while (1)
  {
    event_timer_wait(EVENT_TIMER_0_ID);
    c_robot.process_rgb_sensors();
  }
}

void imu_sensor_thread()
{
 	event_timer_set_period(EVENT_TIMER_1_ID, I2C_SAMPLIG_PERIOD);

 	while (1)
 	{
 		event_timer_wait(EVENT_TIMER_1_ID);
    c_robot.process_imu_sensor();

    if (g_run != 0)
      c_map.add_to_map();
 	}
}


void telemetry_thread()
{
  while (1)
  {
    u32 i;

    //robot configure
    printf_(">>>C ");
    printf_("%i %i %i ",
          c_robot.get_robot_configure()->line_sensor_treshold,
          c_robot.get_robot_configure()->obstacle_treshold,
          c_robot.get_robot_configure()->use_predictor);

    printf_("%i %i %i %i ",
            c_robot.get_robot_configure()->kp,
            c_robot.get_robot_configure()->ki,
            c_robot.get_robot_configure()->kd,
            c_robot.get_robot_configure()->kd2);


    printf_("%i %i %u %i ",
            c_robot.get_robot_configure()->speed_min,
            c_robot.get_robot_configure()->speed_max,
            c_robot.get_robot_configure()->line_search_time,
            c_robot.get_robot_configure()->line_search_speed);

    printf_("\n\n");

    //line sensor state
    printf_(">>>L ");
    printf_("%i %i %u %u ",
            c_robot.get_line_position_sensor()->on_line,
            c_robot.get_line_position_sensor()->line_position,
            c_robot.get_line_position_sensor()->line_color,
            c_robot.get_line_position_sensor()->line_type);

    printf_("\n\n");


    //obstacle state
    printf_(">>>O ");
    printf_("%u %i ",
            c_robot.get_obstacle_position_sensor()->obstacle,
            c_robot.get_obstacle_position_sensor()->obstacle_position);

    printf_("\n\n");

            /*
    printf_("\n\n");

    printf_(">>>I ");
    printf_("%i %i %i ",
              c_robot.get_imu_sensor()->roll,
              c_robot.get_imu_sensor()->pitch,
              c_robot.get_imu_sensor()->yaw);

    printf_("\n\n");
    */

    printf_(">>S ");

    for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
      printf_("%i ", c_robot.get_line_sensor_raw_data_dif()[i]);
    printf_("\n");

    for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
      printf_("%i ", rgb_get()->ambient[i]);
    printf_("\n");

    for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
      printf_("%i ", rgb_get()->r[i]);
    printf_("\n");

    for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
      printf_("%i ", rgb_get()->g[i]);
    printf_("\n");

    for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
      printf_("%i ", rgb_get()->b[i]);

    printf_("\n\n");


    timer_delay_ms(100);
  }
}









//#define LINE_SENSOR_TRESHOLD	        (i32)190
#define LINE_SENSOR_TRESHOLD	        (i32)180
//#define LINE_SENSOR_TRESHOLD	        (i32)145
//#define LINE_SENSOR_TRESHOLD	        (i32)120
#define OBSTACLE_TRESHOLD		         (i32)800

#define CONFIG_USE_PREDICTOR         0      /*this enables line shape predictor to estimate error value*/

#if CONFIG_USE_PREDICTOR == 0
#define   CONFIG_KP                 (i32)60 //60  /*proportional, 0.326*/
#define   CONFIG_KI                 (i32)0    /*integrate*/
#define   CONFIG_KD                 (i32)3000 //3000  /*derivative., 10.53*/
#define   CONFIG_KD2                (i32)0    /*second derivative*/
#else
#define   CONFIG_KP                 (i32)217  /*proportional, 0.326*/
#define   CONFIG_KI                 (i32)0    /*integrate*/
#define   CONFIG_KD                 (i32)3020  /*derivative., 10.53*/
#define   CONFIG_KD2                (i32)0    /*second derivative*/
#endif

#define   CONFIG_KS_1               (i32)40       /*speed rising time*/
#define   CONFIG_KS_2               (i32)3000   /*speed rising time*/
//#define   CONFIG_KS_2               (i32)4000   /*speed rising time*/
#define   CONFIG_SPEED_MIN          (i32)500      /*minimal robot speed*/
#define   CONFIG_SPEED_MAX          (i32)550      /*maximal robot speed*/


//#define   CONFIG_SPEED_MIN          (i32)300      /*minimal robot speed*/
//#define   CONFIG_SPEED_MAX          (i32)400      /*maximal robot speed*/


/*
  broken line search parameters
*/

#define CONFIG_LINE_SEARCH_TIME 	  (u32)400     /*one curve time in ms*/
//#define CONFIG_LINE_SEARCH_SPEED 	  (i32)50      /*in 0..100 range*/
#define CONFIG_LINE_SEARCH_SPEED 	  (i32)30      /*in 0..100 range*/



void main_thread()
{
  printf_(OS_WELCOME_MESSAGE);

  timer_delay_ms(300);

  g_run = 0;

  struct sRobotConfigure robot_configure;

  //sensors treshholds
  robot_configure.line_sensor_treshold = LINE_SENSOR_TRESHOLD;
  robot_configure.obstacle_treshold = OBSTACLE_TRESHOLD;

  //neural network predictor
  robot_configure.use_predictor = CONFIG_USE_PREDICTOR;

  //controller parameterers
  robot_configure.kp  = CONFIG_KP;
  robot_configure.ki  = CONFIG_KI;
  robot_configure.kd  = CONFIG_KD;
  robot_configure.kd2 = CONFIG_KD2;

  robot_configure.ks1 = CONFIG_KS_1;
  robot_configure.ks2 = CONFIG_KS_2;

  robot_configure.speed_min = CONFIG_SPEED_MIN;
  robot_configure.speed_max = CONFIG_SPEED_MAX;

  robot_configure.line_search_time = CONFIG_LINE_SEARCH_TIME;
  robot_configure.line_search_speed = CONFIG_LINE_SEARCH_SPEED;



  c_robot.init();
  c_robot.set_configure(robot_configure);


  c_line_follower.init(&c_robot);
  c_obstacle.init(&c_robot);
  c_broken_line.init(&c_robot);
  c_map.init(&c_robot);



  if (c_robot.get_error_type() != 0)
  {
    while (1)
    {
      abort_error_(c_robot.get_error_type(), c_robot.get_error_code());
    }
  }

  create_thread(line_sensor_thread, line_sensor_thread_stack, sizeof(line_sensor_thread_stack), PRIORITY_MAX);
  create_thread(imu_sensor_thread, imu_sensor_thread_stack, sizeof(imu_sensor_thread_stack), PRIORITY_MAX);
  create_thread(telemetry_thread, telemetry_thread_stack, sizeof(telemetry_thread_stack), PRIORITY_MAX + 20);



  while (1)
  {
    if (get_key() != 0)
    {
      timer_delay_ms(300);
      g_run = 1;
      //c_line_follower.start();
      //line_follower();
      //c_obstacle.test();
      //c_broken_line.test();

      drv8834_run(30, 30);
      timer_delay_ms(500);

      drv8834_run(0, 0);
      timer_delay_ms(50);

      /*
      drv8834_run(20, 0);
      timer_delay_ms(500);

      drv8834_run(-20, 0);
      timer_delay_ms(500);

      drv8834_run(0, 20);
      timer_delay_ms(500);

      drv8834_run(0, -20);
      timer_delay_ms(500);

      drv8834_run(0, 0);
      */
    }

    printf_("encoders %u %u %u, yaw %i\n", encoder_get_distance(), left_encoder_read(), right_encoder_read(), c_robot.get_imu_sensor()->yaw );

    led_on(LED_0);
    timer_delay_ms(100);

    led_off(LED_0);
    timer_delay_ms(200);
  }
}
