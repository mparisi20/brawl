#include "global.h"
#include "mt_trig.h"

static inline s32 scale(float n) {
    s32 w = (s32)(2670176.8f * n) + 0x400000;
    w &= 0x00ffffff;
    return w;
}

static inline s32 offset(s32 v) {
    if (v > 0x800000) {
        v = 0x1000000 - v;
    }
    return v;
}

static inline float compute(s32 n) {
    float f10 = 3.7450704e-7f * (n - 0x400000);
    float f8 = f10 * f10;
    return f10 * (1.0f + (f8 * (-0.16666657f + f8 * (0.0083330255f + (f8 * (-1.9807414e-4f + 2.601887e-6f * f8))))));
}

/**
 * Compute sin(x) using a Taylor polynomial. x is given in radians. 
 */
float mtSinf(float x) {
    return compute(offset(scale(x)));
}

float mtCosf(float x) {
    return compute(offset(scale(1.5707964f + x)));
}

// NONMATCHING due to f10 -> f8 -> f7 register rotation
#pragma regswap 8003ff48 8003ffb8 f10 f31 8003fd5c
#pragma regswap 8003ff48 8003ffb8 f8 f30 8003fd5c
#pragma regswap 8003ff48 8003ffb8 f7 f29 8003fd5c
#pragma regswap 8003ff48 8003ffb8 f31 f7 8003fd5c
#pragma regswap 8003ff48 8003ffb8 f30 f10 8003fd5c
#pragma regswap 8003ff48 8003ffb8 f29 f8 8003fd5c
void mtSinCosf(float p1, float* p2, float* p3) {
    s32 r6 = scale(p1);
    s32 r7 = scale(1.5707964f + p1);

    r6 = offset(r6);
    r7 = offset(r7);

    *p2 = compute(r6);
    *p3 = compute(r7);
}
