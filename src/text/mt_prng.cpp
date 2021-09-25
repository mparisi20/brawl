#include "global.h"
#include "OS.h"
#include "mtRand.h"
#include "mtPrngLog.h"

#pragma RTTI off

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

static mtRand lbl_805A00B8(0);
extern mtPrngLogManager lbl_804977B4;

// [-1, 1] random float
float mtRand::randf() {
    return randi() / 2.147483647e9;
}

void srandi(s32 seed) {
    lbl_805A00B8.unk4 = seed;
}

s32 randseed() {
    return lbl_805A00B8.unk4;
}

// Note: This function is meant to be deadstripped - it's only here
// to correct the order in which the compiler emits floating-point constants.
inline float unused(u32 n) {
    return n;
}

// get random float
float randf() {
    mtRand* ptr = &lbl_805A00B8;
    u32 val = ptr->generate();
    mtPrngLog log(val, OSGetStackPointer());
    lbl_804977B4.addLog(&log);
    return (val >> 8) / 8388608.0f;
}

// get random float
float randaf() {
    mtRand* ptr = &lbl_805A00B8;
    u32 val = ptr->generate();
    mtPrngLog log(val, OSGetStackPointer());
    lbl_804977B4.addLog(&log);
    return 2.0f * ((val >> 8) / 8388608.0f - 0.5f);
}

// [0, 256*p1] random int
s32 randi(s32 p1) {
    mtRand* ptr = &lbl_805A00B8;
    u32 val = ptr->generate();
    mtPrngLog log(val, OSGetStackPointer());
    lbl_804977B4.addLog(&log);
    float scaled = ((val >> 8) / 8388608.0f);

    return p1 * scaled;
}

s32 mtRand::getMax() {
    return 0x7fffffff;
}
