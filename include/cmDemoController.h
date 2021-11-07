#ifndef CM_DEMO_CONTROLLER_H
#define CM_DEMO_CONTROLLER_H

#include "global.h"

struct UnkCameraType {
    float unk0[4];
    UnkCameraType& operator=(const UnkCameraType& rhs) {
        unk0[0] = rhs.unk0[0];
        unk0[1] = rhs.unk0[1];
        unk0[2] = rhs.unk0[2];
        unk0[3] = rhs.unk0[3];
        return *this;
    }
};

struct cmDemoController {
    u8 unk0[0x20];
    UnkCameraType unk20;
    void setTargetType(u32 p1);
};


#endif //CM_DEMO_CONTROLLER_H
