#ifndef _MAP_H_
#define _MAP_H_

#include "../lib_usr/lib_usr.h"


struct sState
{
  u8 item;
  u16 distance;
};

#define STORED_STATES_COUNT   (FRAM_MEMORY_CAPACITY/sizeof(struct sState))

class CMap
{
  private:
    u32 state_idx;

    class CRobot *robot;


  public:
    CMap();
    ~CMap();

    void init(class CRobot *robot_);

    void load_states();

    void add_to_map();
    struct sState get_state(u32 idx);

  private:
    void save_state(struct sState state, u32 idx);
    struct sState load_state(u32 idx);
    i32 window_function(u32 map_position, u32 encoder_position, i32 d);
};


#endif
