#ifndef _BROKEN_LINE_H_
#define _BROKEN_LINE_H_

#include "../lib_usr/lib_usr.h"


#ifdef __cplusplus


class CBrokenLine
{
  private:
    class CRobot *robot;

    i32 line_search_time, line_search_speed;

  public:
    CBrokenLine();
    ~CBrokenLine();

    void init(class CRobot *robot_);
    void process(u32 test_enabled = 0);
    void test();
};

#endif


#endif
