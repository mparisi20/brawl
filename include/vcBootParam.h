#ifndef VC_BOOT_PARAM_H
#define VC_BOOT_PARAM_H

#include "vcBootParam.h"

struct vcBootParam
{
    u8 unk0[0x54];
    void init(int argc, char** argv);
};

#endif //VC_BOOT_PARAM_H
