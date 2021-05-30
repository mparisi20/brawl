#include "global.h"

extern "C" {
    u32 OSGetStackPointer(void);
}

extern "C" {
    void srandi(s32 seed);
    s32 randseed(void);
    float randf(void);
    float randaf(void);
    s32 randi(s32 p1);
}

struct mtPrngLog {
    mtPrngLog(u32, u32);
};

struct mtPrngLogManager {
    void addLog(mtPrngLog*);
};

struct mtRand {
    mtRand(s32 v) : unk4(v) { }
    s32 unk4;

    virtual void init(s32 p1);
    virtual s32 generate();
    virtual s32 randi();
    virtual float randf();
    virtual s32 getMax();
};

void mtRand::init(s32 p1) {
    this->unk4 = p1;
}

#define MULT_VAL 0x41C64E6D
#define ADD_VAL 0x3039

s32 mtRand::generate() {
    return this->unk4 = this->unk4 * MULT_VAL + ADD_VAL & 0x7fffffff;
}

s32 mtRand::randi() {
    return generate();
}

extern double lbl_805A1750;
extern double lbl_805A1748; // 2.147483647E9 (2^31 - 1)
extern mtRand lbl_805A00B8;
extern mtPrngLogManager lbl_804977B4;
extern float lbl_805A1760; // 8388608.0 (2^32 / 8)
extern float lbl_805a1768; // 0.5f
extern float lbl_805a1764; // 2.0f

// [-1, 1] random float
float mtRand::randf() {
    return randi() / lbl_805A1748;
}

void srandi(s32 seed) {
    lbl_805A00B8.unk4 = seed;
}

s32 randseed() {
    return lbl_805A00B8.unk4;
}

// [0, 2] random float
float randf() {
    u32 val = lbl_805A00B8.generate();
    mtPrngLog log(val, OSGetStackPointer());
    lbl_804977B4.addLog(&log);
    return (val >> 8) / lbl_805A1760;
}

// [-1, 3] random float
float randaf() {
    u32 val = lbl_805A00B8.generate();
    mtPrngLog log(val, OSGetStackPointer());
    lbl_804977B4.addLog(&log);
    return lbl_805a1764 * ((val >> 8) / lbl_805A1760 - lbl_805a1768);
}

// [0, 2*p1] random int
s32 randi(s32 p1) {
    u32 val = lbl_805A00B8.generate();
    mtPrngLog log(val, OSGetStackPointer());
    lbl_804977B4.addLog(&log);

    return p1 * ((val >> 8) / lbl_805A1760);
}

s32 mtRand::getMax() {
    return 0x7fffffff;
}
