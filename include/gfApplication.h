#ifndef GF_APPLICATION_H
#define GF_APPLICATION_H

#include "vcBootParam.h"

struct gfApplication
{
    u8 unk0[0x11C];
    vcBootParam mBootParam;
    
    gfApplication();
    void init();
    void mainLoop();
    void exit();
    ~gfApplication();
};

#endif //GF_APPLICATION_H
