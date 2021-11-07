#ifndef MU_OBJECT_H
#define MU_OBJECT_H

#include "global.h"
#include "nw4r/g3d.h"
#include "gf.h"

struct MuObject {
    u8 unk0[0x10];
    nw4r::g3d::ScnObj* unk10;
    gfModelAnimation* unk14;
    u8 unk18[0x44];

    virtual ~MuObject();
    void setActionNo(s32 p1, s32 p2, s32 p3, s32 p4);
    s32 isNodeAnimFinished();
    void setFrameVisible(float p1);
    static MuObject* create(u32, const char*, u32, u32, u32);
    void changeAnimN(const char* p1);
};

struct Message {
    void setObjZcompare(u32, u32);
};

struct MuMsg {
    u8 unk0[0x8];
    Message* unk8;
    u8 unkC[0x10];

    ~MuMsg();
    void printf(u32 p1, const char* fmt, ...);
    void printIndex(u32, u32, u32);
    static MuMsg* create(u32, u32, u32);
    void attachScnMdlSimple(float, u32, nw4r::g3d::ScnObj*, u8);
    void setFontColor(u32, u32, u32, u32, u32);
    void getWScale(u32, float); // TODO: mapfile label may be incorrect
    void func_800B9488(u32, u32);
    void allocMsgBuf(u32, u32);
    void setMsgData(u32);
};

#endif //MU_OBJECT_H
