#ifndef MT_PRNG_LOG_H
#define MT_PRNG_LOG_H

#include "global.h"

struct mtPrngLog {
    u8 unk0[0x10];
    mtPrngLog(u32, u32);
};

struct mtPrngLogManager {
    u8 unk0[0xC];
    void addLog(mtPrngLog*);
};

#endif //MT_PRNG_LOG_H
