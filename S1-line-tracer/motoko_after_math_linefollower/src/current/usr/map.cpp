#include "map.h"

#define CURVE_TYPES_COUNT   10

i32 curve_type[CURVE_TYPES_COUNT] =
{
  (ROBOT_LINE_MAX*100)/100,
  (ROBOT_LINE_MAX*95)/100,
  (ROBOT_LINE_MAX*90)/100,
  (ROBOT_LINE_MAX*85)/100,
  (ROBOT_LINE_MAX*80)/100,
  -(ROBOT_LINE_MAX*80)/100
  -(ROBOT_LINE_MAX*85)/100,
  -(ROBOT_LINE_MAX*90)/100,
  -(ROBOT_LINE_MAX*95)/100,
  -(ROBOT_LINE_MAX*100)/100
};
 

struct sState g_map[STORED_STATES_COUNT];



CMap::CMap()
{
  init(NULL);
}


CMap::~CMap()
{

}

void CMap::init(class CRobot *robot_)
{
  if (robot_ == NULL)
    return;

  robot = robot_;

  state_idx = 0;
//  load_states();

/*
  u32 i;
  printf_("\n\n");
  for (i = 0; i < STORED_STATES_COUNT; i++)
  {
    if ((i%8) == 0)
      printf_("\n");

    struct sState state = get_state(i);
    printf_("[ %u %u ] ", state.item, state.distance);
  }

  printf_("\n\n");
  */
}

void CMap::load_states()
{
  u32 i;
  for (i = 0; i < STORED_STATES_COUNT; i++)
    g_map[i] = load_state(i);
}




void CMap::add_to_map()
{
  u32 i;
  i32 line_position = robot->get_line_position_sensor()->line_position;


  i32 min_dist = ROBOT_LINE_MAX*10;
  u32 min_idx = 0;

  for (i = 0; i < CURVE_TYPES_COUNT; i++)
  {
    i32 dist = line_position - curve_type[i];
    if (dist < 0)
      dist = -dist;

    if (dist < min_dist)
    {
      min_dist = dist;
      min_idx = i;
    }
  }

  i32 treshold = (ROBOT_LINE_MAX*10)/100;
  if ((min_dist < treshold) && (state_idx < STORED_STATES_COUNT))
  {
    struct sState state;

    //save curve type
    state.item = min_idx;

    //average both encoders ticks and convert to mm
    state.distance = encoder_get_distance();

    //store into memory
    save_state(state, state_idx);

    state_idx+= 1;
  }
}

struct sState CMap::get_state(u32 idx)
{
  return g_map[idx];
}


void CMap::save_state(struct sState state, u32 idx)
{
  idx = idx*sizeof(struct sState);
  log_write(idx, (char*)(&state), sizeof(struct sState));
}

struct sState CMap::load_state(u32 idx)
{
  struct sState res;

  idx = idx*sizeof(struct sState);
  log_read(idx, (char*)(&res), sizeof(struct sState));
  return res;
}


i32 CMap::window_function(u32 map_position, u32 encoder_position, i32 d)
{
  i32 t = 100;

  i32 tmp = encoder_position - map_position;

  if (tmp < 0)
    tmp = -tmp;

  i32 res = 0;
  if (tmp < d)
    res = t - (t*tmp)/d;

  return res;
}
