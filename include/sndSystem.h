#ifndef SND_SYSTEM_H
#define SND_SYSTEM_H

#include "global.h"

struct sndSystem {
    s32 playSE(s32 p1, s32 p2, s32 p3, s32 p4, s32 p5);
};

extern sndSystem* lbl_805A01D0;

#endif //SND_SYSTEM_H
