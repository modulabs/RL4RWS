#ifndef _ROBOT_CONFIG_H_
#define _ROBOT_CONFIG_H_


#define CUSTOM_BRIDGE               1
/*
  line following parameters
*/
#define CONFIG_USE_RAMP_SPEED        1      /*this enables speed ramp controller - KS parameter*/
#define CONFIG_USE_PREDICTOR         0      /*this enables line shape predictor to estimate erro value*/

#define   CONFIG_KP                 (float)0.326 //0.326  /*proportional*/
#define   CONFIG_KI                 (float)0.0    /*integrate*/
#define   CONFIG_KD                 (float)10.53 //10.53  /*derivative*/
#define   CONFIG_KD2                (float)0.0    /*second derivative*/


#define   CONFIG_SPEED_MIN          (float)0.5    /*minimal robot speed*/
#define   CONFIG_SPEED_MAX          (float)1.0    /*maximal robot speed*/
#define   CONFIG_SPEED_BASE         (float)0.5    /*base robot speed - for mode without speed ramp controller*/
#define   CONFIG_KS                 (float)0.02   /*speed rising time*/

#define CONFIG_REQUIRED_MIN         (float)0.0
#define CONFIG_REQUIRED_MAX         (float)0.5

#define CONFIG_Q_ETA                (float)(0.96875)  /*neural network learning rate <0, 1>*/
#define CONFIG_Q_ALPHA              (float)(0.96875)  /*learning low pass filter constant <0, 1>, process is stochastic*/
#define CONFIG_Q_GAMMA              (float)0.3       /*discount factor <0, 1>*/
#define CONFIG_Q_DELTA              (float)0.01     /*spped ILC learning rate <0, 1> */


/*
  broken line search parameters
*/

#define CONFIG_LINE_SEARCH_TIME 	  (u32)400     /*one curve time in ms*/
#define CONFIG_LINE_SEARCH_SPEED 	  (i32)50      /*in 0..100 range*/


/*
  obstacle parameters
*/

/*
  0 - just stop before obstacle
  1 - turn back 180deg
  2 - avoid from right side
  3 - avoid from left side
*/
#define CONFIG_OBSTACLE_MODE       0

#endif
