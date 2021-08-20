#ifndef MT_RAND_H
#define MT_RAND_H

#include "global.h"

#ifdef __cplusplus
extern "C" {
#endif

void srandi(s32 seed);
s32 randseed(void);
float randf(void);
float randaf(void);
s32 randi(s32 p1);

#ifdef __cplusplus
}
#endif

struct mtRand {
    virtual void init(s32 p1);
    virtual s32 generate();
    virtual float randf();
    virtual s32 getMax();
    virtual s32 randi();

    mtRand(s32 v) : unk4(v) { }
    s32 unk4;
};

#endif //MT_RAND_H
