#include "global.h"

extern "C" {
    void* memset(void* s, int c, size_t n);
    char *strcpy(char *dest, const char *src);
    char *strcat(char *dest, const char *src);
}

// Insert__Q34nw4r3g3d8ScnGroupFUlPQ34nw4r3g3d6ScnObj
// Remove__Q34nw4r3g3d8ScnGroupFPQ34nw4r3g3d6ScnObj
namespace nw4r {
namespace math {
    struct MTX34 {

    };
} // math


namespace g3d {

struct G3dObj {
    struct TypeObj {
        u32 unk0; // type code?
        char* name;
    };
};

struct ScnObj {
    struct ForEachResult {

    };
    virtual BOOL IsDerivedFrom(G3dObj::TypeObj p1);
    virtual void G3dProc(u32 p1, u32 p2, void* p3);
    virtual ~ScnObj();
    virtual G3dObj::TypeObj* GetTypeObj() const;
    virtual char* GetTypeName();
    virtual void ForEach(ScnObj::ForEachResult (*p1)(ScnObj*, void*), void*, s8);
    virtual void SetScnObjOption(u32 p1, u32 p2);
    virtual void GetScnObjOption(u32 p1, u32* p2) const;
    virtual void GetValueForSortOpa() const;
    virtual void GetValueForSortXlu() const;
    virtual void CalcWorldMtx(const nw4r::math::MTX34* p1, u32* p2);
};

// ScnGroup vtable: 80466270
struct ScnGroup : public ScnObj {
    u8 unk4[0xE0];
    u32 unkE4;

    BOOL IsDerivedFrom(G3dObj::TypeObj p1);
    void G3dProc(u32 p1, u32 p2, void* p3);
    ~ScnGroup();
    G3dObj::TypeObj* GetTypeObj() const;
    void ForEach(ScnObj::ForEachResult (*p1)(ScnObj*, void*), void*, s8);
    virtual void Insert(u32 p1, ScnObj* p2);
    virtual void Remove(u32 p1);
    virtual void Remove(ScnObj* p1);
};

} // g3d
} // nw4r

// Possibly muMenu::getItemNameID() ?
// Mapfile labels are incorrect
struct muMenu {
    static s32 getItemNameID(s32 p1); // 800AFA04
    static s32 exchangeMuItemKindToItKind(s32);
};

struct muMenuController {
    u8 unk0[0xC];
    u32 unkC;
    u32 unk10; // TODO: controller input bitfield
    u8 unk14[0x94];

    void init(u8 p1);
    void setControllerID(u8 id);
    void main();
};

struct gfModelAnimation {
    void setUpdateRate(float p1);
};

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

// TODO: size
struct MuMsg {
    u8 unk0[0x8];
    Message* unk8;

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

// NOTE: res file related
struct UnkResFile {
    char* name;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
};

struct utRelocate {
    u8 unk0[0x40];

    utRelocate(u32 p1, u32 p2);
    ~utRelocate();
    s32* getPublicAddress(const char* name);
};

struct InitMsgStruct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
};

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

struct CameraController {
    u8 unk0[0x80];
    cmDemoController* unk80;

    void changeInput(u32 p1);
    static CameraController* getInstance();
};

struct sndSystem {
    s32 playSE(s32 p1, s32 p2, s32 p3, s32 p4, s32 p5);
};

extern sndSystem* lbl_805A01D0;

struct IfMinigameTraining {
    nw4r::g3d::ScnGroup* unk0;
    MuObject* unk4[2];
    MuMsg* unkC;
    u32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    u8 unk30;
    muMenuController unk34;
    s32 unkDC;
    s32 unkE0;
    s32 unkE4;
    s32 unkE8;
    s32 unkEC[0x80];
    s32 unk2EC;
    u32 unk2F0; // ItKind
    u8 unk2F4; // hide menu?
    u32 unk2F8;
    u8 unk2FC;

    IfMinigameTraining();
    void init();
    virtual ~IfMinigameTraining();
    void createModel(u32 p1, u32 p2, u32 p3, u32 p4, u32 p5);
    void createObjResFile(const UnkResFile* p1, s32 p2, u32 p3, u32 p4);
    void initMsg(u32 p1);
    void startMelee(nw4r::g3d::ScnGroup* p1);
    void printStatusDamage(s32 dmg);
    void printStatusCombo(s32 combo);
    void printStatusTotalDamage(s32 totalDmg);
    void openMenu(u32 id, u32 p2);
    void setCameraType(u32 p1);
    void closeMenu();
    void main();
    static s32 initStepAppear(IfMinigameTraining* p1);
    static s32 mainStepAppear(IfMinigameTraining* p1);
    static s32 initStepMenu(IfMinigameTraining* p1);
    static s32 mainStepMenu(IfMinigameTraining* p1);
    static s32 initStepLeave(IfMinigameTraining* p1);
    static s32 mainStepLeave(IfMinigameTraining* p1);
    static void curPosProcSpeed(IfMinigameTraining* p1);
    static void curPosProcItem(IfMinigameTraining* p1);
    static void curPosProcNumCP(IfMinigameTraining* p1);
    static void curPosProcCPAI(IfMinigameTraining* p1);
    static void curPosProcCPDamage(IfMinigameTraining* p1);
    static void curPosProcCamera(IfMinigameTraining* p1);
    static void curPosProcStatusVisible(IfMinigameTraining* p1);
    static void curPosProcQuit(IfMinigameTraining* p1);
};

static const UnkCameraType lbl_80409208 = {-1.0f, 1.0f, 1.0f, -1.0f};

__declspec(section ".rodata") static const UnkResFile lbl_80409218 = {
    "InfTraining0000_TopN", 0, 0, 2, 0 
};
__declspec(section ".rodata") static const UnkResFile lbl_80409220 = {
    "InfTraining0001_TopN", 1, 1, 1, 0 
};

static const InitMsgStruct lbl_80409228[] = {
    { 0, 0, 1 },
    { 0, 1, 1 },
    { 0, 2, 1 },
    { 0, 3, 1 },
    { 0, 4, 1 },
    { 0, 5, 1 },
    { 0, 6, 1 },
    { 0, 7, 0 },
    { 1, 0, 1 },
    { 1, 1, 1 },
    { 1, 2, 1 },
    { 1, 3, 1 },
    { 1, 4, 1 }
};

// 801048ec
IfMinigameTraining::IfMinigameTraining() {
    this->unk34.init(0xff);
    this->init();
}

// 80104938
void IfMinigameTraining::init() {
    this->unk0 = 0;
    this->unk4[0] = 0;
    this->unk4[1] = 0;
    this->unkC = 0;
    this->unk10 = 0;
    this->unk14 = 0;
    this->unk18 = 1;
    this->unk1C = 0;
    this->unk20 = 1;
    this->unk24 = 3;
    this->unk28 = 0;
    this->unk2C = 0;
    this->unk30 = 0;
    this->unkDC = 0;

    this->unk34.init(0);

    this->unkE0 = 0;
    this->unkE4 = 0;
    this->unkE8 = 0;
    memset(this->unkEC, 0, 0x200);

    this->unk2EC = 0;
    this->unk2F0 = -1;
    this->unk2F8 = 0;
    this->unk2FC = 0;
}

// 801049e8
IfMinigameTraining::~IfMinigameTraining() {
    s32 i = 0;
    MuObject** ptr = (MuObject**) this; // FIXME: match w/o aliasing
    for (i = 0; i < 2; i++, ptr++) {
        if (ptr[1]) {
            delete ptr[1];
            ptr[1] = 0;
        }
    }

    if (this->unkC) {
        delete this->unkC; // MuMsg
        this->unkC = 0;
    }
}

// 80104aa4
void IfMinigameTraining::createModel(u32 p1, u32 p2, 
        u32 p3, u32 p4, u32 p5) {
    createObjResFile(&lbl_80409218, 2, p1, 0xC0);
    initMsg(p2);
    u32 count = 0;
    {
        utRelocate rel(p4, p5);
        s32* addr = rel.getPublicAddress("ifTrainingItemTbl");
        while (*addr >= 0) {
            s32 r0 = *addr++;
            count++;
            this->unkEC[count-1] = r0;
        }
    }
    this->unk2EC = count;
    this->unk10 = p3;
}

typedef void (*ProcFuncPtr)(IfMinigameTraining*);
ProcFuncPtr lbl_8045D020[] = {
    IfMinigameTraining::curPosProcSpeed,
    IfMinigameTraining::curPosProcItem,
    IfMinigameTraining::curPosProcNumCP,
    IfMinigameTraining::curPosProcCPAI,
    IfMinigameTraining::curPosProcCPDamage,
    IfMinigameTraining::curPosProcCamera,
    IfMinigameTraining::curPosProcStatusVisible,
    IfMinigameTraining::curPosProcQuit
};

#ifndef NONMATCHING
#pragma regswap 80104b84 80104c44 r28 r30 801048ec
#pragma iswap 80104c38 80104c3c 801048ec
#endif
void IfMinigameTraining::createObjResFile(const UnkResFile* p1, s32 p2, u32 p3, u32 p4) {
    s32 j, i;
    char sp8[64];
    for (i = 0; i < p2; i++) {
        s32 r31 = (p1[i].unk4 < p1[i].unk5) ? p1[i].unk5 - p1[i].unk4 : 1;
        for (j = 0; j < r31; j++) {
            u32 r5 = j + p4;
            MuObject* r27 = MuObject::create(p3, p1[i].name, 
                p1[i].unk6 + r5, 0, 0x28);
            
            u32 r0 = p1[i].unk4;
            this->unk4[r0 + j] = r27;
            
            strcpy(sp8, p1[i].name);
            strcat(sp8, "__0");
            r27->changeAnimN(sp8);
            if (r27->unk14) {
                r27->unk14->setUpdateRate(0.0f);
            }
        }
    }
}

// 80104c60 2c8
void IfMinigameTraining::initMsg(u32 p1) {
    InitMsgStruct spC[13];
    u32 sp34[15];

    const InitMsgStruct* p = &lbl_80409228[0];
    for (int i = 0; i < 7; i++) {
        spC[i] = *p++;
    }
    spC[7].unk0 = lbl_80409228[7].unk0;
    spC[7].unk1 = lbl_80409228[7].unk1;
    spC[7].unk2 = sp34[14] = lbl_80409228[7].unk2;

    spC[8].unk0 = sp34[0] = lbl_80409228[8].unk0;
    spC[8].unk1 = sp34[1] = lbl_80409228[8].unk1;
    spC[8].unk2 = sp34[2] = lbl_80409228[8].unk2;

    spC[9].unk0 = sp34[3] = lbl_80409228[9].unk0;
    spC[9].unk1 = sp34[4] = lbl_80409228[9].unk1;
    spC[9].unk2 = sp34[5] = lbl_80409228[9].unk2;

    spC[10].unk0 = sp34[6] = lbl_80409228[10].unk0;
    spC[10].unk1 = sp34[7] = lbl_80409228[10].unk1;
    spC[10].unk2 = sp34[8] = lbl_80409228[10].unk2;

    spC[11].unk0 = sp34[9] = lbl_80409228[11].unk0;
    spC[11].unk1 = sp34[10] = lbl_80409228[11].unk1;
    spC[11].unk2 = sp34[11] = lbl_80409228[11].unk2;

    spC[12].unk0 = sp34[12] = lbl_80409228[12].unk0;
    spC[12].unk1 = sp34[13] = lbl_80409228[12].unk1;
    spC[12].unk2 = lbl_80409228[12].unk2;

    this->unkC = MuMsg::create(8, 0x28, 0x2a);
    this->unkC->allocMsgBuf(0x100, 13);
    this->unkC->setMsgData(p1);

    for (s32 i = 0; i < 13; i++) {
        float f1 = (spC[i].unk2) ? 1/24f : 1/16f;
        this->unkC->attachScnMdlSimple(f1, i, 
                this->unk4[spC[i].unk0]->unk10, spC[i].unk1);
        this->unkC->unk8->setObjZcompare(i, 7);
        if (spC[i].unk2) {
            this->unkC->setFontColor(i, 0, 0, 0, 0xff);
        } else {
            this->unkC->getWScale(i, 48.0f);
        }
        this->unkC->func_800B9488(i, 4);
    }
}

extern const u32 lbl_80409250[];
extern const u32 lbl_80409268[];
__declspec(section ".sdata2") extern const u32 lbl_805A27D0[];
extern const u32 lbl_80409280[];

// 80104f28 218
#ifndef NONMATCHING
#pragma iswap 801051c8 801051dc 801048ec
#pragma iswap 801051cc 801051d8 801048ec
#pragma iswap 801051d0 801051dc 801048ec
#pragma iswap 801051d4 801051d8 801048ec
#pragma iswap 801051d8 801051dc 801048ec
#endif
void IfMinigameTraining::startMelee(nw4r::g3d::ScnGroup* p1) {
    this->unk0 = p1;
    p1->Insert(p1->unkE4, this->unk4[1]->unk10);
    u8 r31 = this->unk30;
    float f1 = (r31) ? 1.0f : 0.0f;
    this->unk4[1]->setFrameVisible(f1);
    if (r31) {
        this->unkC->printIndex(8, lbl_80409250[this->unk18], 0);
        this->unkC->printIndex(9, lbl_80409268[this->unk24], 0);
        s32 r7 = (this->unkE0 > 0) ? this->unkE0 : 0;
        this->unkC->printf(10, "%d", (r7 < 999) ? r7 : 999);
        r7 = (this->unkE4 > 0) ? this->unkE4 : 0;
        this->unkC->printf(11, "%d", (r7 < 999) ? r7 : 999);
        r7 = (this->unkE8 > 0) ? this->unkE8 : 0;
        this->unkC->printf(12, "%d", (r7 < 999) ? r7 : 999);
    } else {
        this->unkC->printf(8, "");
        this->unkC->printf(9, "");
        this->unkC->printf(10, "");
        this->unkC->printf(11, "");
        this->unkC->printf(12, "");
    }
    this->unk30 = r31;
    this->unkC->printIndex(0, lbl_80409250[this->unk18], 0);
    s32 r3;
    if (this->unk1C < 0 || this->unk1C >= this->unk2EC) {
        r3 = 0x38;
    } else {
        r3 = this->unkEC[this->unk1C];
    }
    this->unkC->printIndex(1, muMenu::getItemNameID(r3), this->unk10);
    this->unkC->printf(2, "%d", this->unk20);
    this->unkC->printIndex(3, lbl_80409268[this->unk24], 0);
    this->unkC->printf(4, "%d", this->unk28);
    this->unkC->printIndex(5, lbl_805A27D0[this->unk2C], 0);

    u32 idx = 16;
    if (this->unk30) {
        idx = 15;
    }
    this->unkC->printIndex(6, idx, 0);
    this->unk4[0]->setActionNo(2, 16, 1, 0);
    this->unk4[0]->setFrameVisible(1.0f);
    this->unk14 = 0;
    this->unkC->printIndex(7, 17, 0);
}

const u32 lbl_80409250[] = { 1, 2, 3, 4, 5, 0 };
const u32 lbl_80409268[] = { 6, 7, 8, 9, 10, 11 };
const u32 lbl_805A27D0[] = { 12, 13 };
const u32 lbl_80409280[] = { 17, 18, 19, 20, 21, 22, 23, 24 };

typedef s32 (*StepFuncPtr)(IfMinigameTraining*);
static const StepFuncPtr lbl_804092A0[] = {
    0,
    0,
    IfMinigameTraining::initStepAppear,
    IfMinigameTraining::mainStepAppear,
    IfMinigameTraining::initStepMenu,
    IfMinigameTraining::mainStepMenu,
    IfMinigameTraining::initStepLeave,
    IfMinigameTraining::mainStepLeave
};

static const UnkCameraType lbl_804092C0 = { -0.8f, 0.8f, 0.8f, -0.8f };
static const UnkCameraType lbl_804092D0 = { -0.5f, 1.0f, 1.0f, -1.0f };

void IfMinigameTraining::printStatusDamage(s32 dmg) {
    dmg = (dmg > 0) ? dmg : 0;
    this->unkC->printf(10, "%d", dmg < 999 ? dmg : 999);
}

void IfMinigameTraining::printStatusCombo(s32 count) {
    count = (count > 0) ? count : 0;
    this->unkC->printf(11, "%d", count < 999 ? count : 999);
}

void IfMinigameTraining::printStatusTotalDamage(s32 totalDmg) {
    totalDmg = (totalDmg > 0) ? totalDmg : 0;
    this->unkC->printf(12, "%d", totalDmg < 999 ? totalDmg : 999);
}

void IfMinigameTraining::openMenu(u32 id, u32 p2) {
    this->unk34.setControllerID(id);
    this->unk2F8 = p2;
    setCameraType(1);
    this->unk2FC = 0;
    this->unkDC = 1;

    StepFuncPtr func = lbl_804092A0[2]; 
    if (func) {
        func(this);
    }
}

// TODO: use CameraType enum
void IfMinigameTraining::setCameraType(u32 p1) {    
    CameraController* cam = CameraController::getInstance();
    cmDemoController* r30 = cam->unk80;
    UnkCameraType sp18(lbl_804092C0);
    UnkCameraType sp28(lbl_804092D0);
    if (p1 - 1 <= 1) {
        cam->changeInput(13);
        r30->setTargetType(this->unk2F8 + 5);
    } else {
        cam->changeInput(2);
    }

    switch (p1) {
        case 1:
            r30->unk20 = sp28;
            break;
        case 2:
            r30->unk20 = sp18;
            break;
        case 0:
            UnkCameraType sp8(lbl_80409208);
            r30->unk20 = sp8;
            break;
        default:
            break;
    }
}

enum CameraType {
    type0, type1, type2
};

void IfMinigameTraining::closeMenu() {
    if (this->unkDC) {
        if (!this->unk2FC)
            setCameraType((!this->unk2C) ? type0 : type2);
        this->unkDC = 3;
        StepFuncPtr func = lbl_804092A0[6];
        if (func) {
            func(this);
        }
    }
}

void IfMinigameTraining::main() {
    this->unk2F0 = -1;
    this->unk2F4 = 0;
    this->unk34.main();

    s32 r30 = this->unkDC;
    StepFuncPtr func = lbl_804092A0[r30 * 2 + 1];
    if (func) {
        s32 r3 = func(this);
        if (r3 != r30) {
            this->unkDC = r3;
            func = lbl_804092A0[this->unkDC * 2];
            if (func) {
                func(this);
            }
        }
    }
}

// NOTE: s32 return value may be an enum
s32 IfMinigameTraining::initStepAppear(IfMinigameTraining* p1) {
    MuObject* r31 = p1->unk4[0];
    p1->unk0->Remove(r31->unk10);
    p1->unk0->Insert(p1->unk0->unkE4, r31->unk10);
    r31->setActionNo(0, 1, 1, 0);
    return lbl_805A01D0->playSE(5, -1, 0, 0, -1);
}

s32 IfMinigameTraining::mainStepAppear(IfMinigameTraining* p1) {
    if (p1->unk4[0]->isNodeAnimFinished()) {
        return p1->unkDC;
    }
    return 2;
}

// FIXME: Match without missing return value
s32 IfMinigameTraining::initStepMenu(IfMinigameTraining*) {
    
}

s32 IfMinigameTraining::mainStepMenu(IfMinigameTraining* p1) {
    u32 r4 = p1->unk34.unk10;
    s32 r31 = p1->unk14;

    // Up
    if ((r4 & 0x8) && --r31 < 0) {
        r31 = 7;
    }

    // Down
    if ((r4 & 0x4) && ++r31 >= 8) {
        r31 = 0;
    }

    if (r31 != p1->unk14) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk4[0]->setFrameVisible(1.0f + r31);
        p1->unk14 = r31;
        p1->unkC->printIndex(7, lbl_80409280[r31], 0);
    }

    lbl_8045D020[r31](p1);
    return p1->unkDC;
}

s32 IfMinigameTraining::initStepLeave(IfMinigameTraining* p1) {
    p1->unk4[0]->setActionNo(1, 1, 1, 0);
    lbl_805A01D0->playSE(6, -1, 0, 0, -1);
}

s32 IfMinigameTraining::mainStepLeave(IfMinigameTraining* p1) {
    MuObject* r31 = p1->unk4[0];
    if (r31->isNodeAnimFinished()) {
        p1->unk0->Remove(r31->unk10);
        return 0;
    }
    return p1->unkDC;
}

void IfMinigameTraining::curPosProcSpeed(IfMinigameTraining* p1) {
    u32 r4 = p1->unk34.unk10;
    s32 r30 = p1->unk18;
    if ((r4 & 0x2) && ++r30 >= 5) {
        r30 = 0;
    }

    if ((r4 & 0x1) && --r30 < 0) {
        r30 = 4;
    }

    if (r30 != p1->unk18) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk18 = r30;
        p1->unkC->printIndex(0, lbl_80409250[r30], 0);
        if (p1->unk30) {
            p1->unkC->printIndex(8, lbl_80409250[p1->unk18], 0);
        }
    }
}

#ifndef NONMATCHING
#pragma regswap 80105990 801059d4 r4 r5 801048ec
#endif
void IfMinigameTraining::curPosProcItem(IfMinigameTraining* p1) {
    u32 r4 = p1->unk34.unk10;
    s32 r31 = p1->unk1C;
    u32 r30 = p1->unk34.unkC;
    s32 r3 = p1->unk2EC;
    if ((r4 & 0x2) && ++r31 >= r3) {
        r31 = 0;
    }

    if ((r4 & 0x1) && --r31 < 0) {
        r31 = r3 - 1;
    }

    if (r31 != p1->unk1C) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk1C = r31;
        if (r31 < 0 || r31 >= p1->unk2EC) {
            r3 = 0x38;
        } else {
            r3 = p1->unkEC[r31];
        }
        p1->unkC->printIndex(1, muMenu::getItemNameID(r3), p1->unk10);
    }

    // A button
    if (r30 & 0x100) {
        r3 = p1->unk1C;
        if (r3 < 0 || r3 >= p1->unk2EC) {
            r3 = 0x38;
        } else {
            r3 = p1->unkEC[r3];
        }
        p1->unk2F0 = muMenu::exchangeMuItemKindToItKind(r3);
    }
}

void IfMinigameTraining::curPosProcNumCP(IfMinigameTraining* p1) {
    u32 r4 = p1->unk34.unk10;
    s32 r31 = p1->unk20;
    // Right
    if ((r4 & 0x2) && ++r31 >= 4) {
        r31 = 1;
    }

    // Left
    if ((r4 & 0x1) && --r31 < 1) {
        r31 = 3;
    }

    if (r31 != p1->unk20) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk20 = r31;
        p1->unkC->printf(2, "%d", r31);
    }
}

void IfMinigameTraining::curPosProcCPAI(IfMinigameTraining* p1) {
    u32 r4 = p1->unk34.unk10;
    s32 r30 = p1->unk24;
    // Right
    if ((r4 & 0x2) && ++r30 >= 6) {
        r30 = 0;
    }

    // Left
    if ((r4 & 0x1) && --r30 < 0) {
        r30 = 5;
    }

    if (r30 != p1->unk24) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk24 = r30;
        p1->unkC->printIndex(3, lbl_80409268[r30], 0);

        if (p1->unk30) {
            p1->unkC->printIndex(9, lbl_80409268[p1->unk24], 0);
        }
    }
}

void IfMinigameTraining::curPosProcCPDamage(IfMinigameTraining* p1) {
    u32 r4 = p1->unk34.unk10;
    s32 r31 = p1->unk28;
    // Right
    if ((r4 & 0x2) && ++r31 >= 1000) {
        r31 = 0;
    }

    // Left
    if ((r4 & 0x1) && --r31 < 0) {
        r31 = 999;
    }

    if (r31 != p1->unk28) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk28 = r31;
        p1->unkC->printf(4, "%d", r31);
    }
}

void IfMinigameTraining::curPosProcCamera(IfMinigameTraining* p1) {
    u32 r4 = p1->unk34.unk10;
    s32 r31 = p1->unk2C;
    // Right
    if ((r4 & 0x2) && ++r31 >= 2) {
        r31 = 0;
    }

    // Left
    if ((r4 & 0x1) && --r31 < 0) {
        r31 = 1;
    }

    if (r31 != p1->unk2C) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk2C = r31;
        p1->unkC->printIndex(5, lbl_805A27D0[r31], 0);
        p1->setCameraType((!p1->unk2C) ? type0 : type2);
    }
}

// Issues with reg assignment for p1 and r30, and instruction ordering
// before msg->printIndex() call
#ifndef NONMATCHING
#pragma iswap 80105d9c 80105da0 801048ec
#pragma regswap 80105d9c 80105da0 r30 r31 801048ec
#pragma regswap 80105db0 80105fb0 r30 r31 801048ec
#pragma iswap 80105e0c 80105e20 801048ec
#pragma iswap 80105e1c 80105e20 801048ec
#pragma iswap 80105e18 80105e1c 801048ec
#pragma iswap 80105e14 80105e18 801048ec
#endif
void IfMinigameTraining::curPosProcStatusVisible(IfMinigameTraining* p1) {
    u32 r4 = p1->unk34.unk10;
    s32 r30 = p1->unk30;
    // Right
    if ((r4 & 0x2) && ++r30 >= 2) {
        r30 = 0;
    }

    // Left
    if ((r4 & 0x1) && --r30 < 0) {
        r30 = 1;
    }

    if (r30 != p1->unk30) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);

        MuMsg* msg = p1->unkC;
        BOOL test = !(r30 - 1);
        p1->unk30 = test;
        s32 idx = 16;
        if (test) {
            idx = 15;
        }
        msg->printIndex(6, idx, 0);
        r30 = p1->unk30;
        float frame = (r30) ? 1.0f : 0.0f;
        p1->unk4[1]->setFrameVisible(frame);

        if (r30) {
            p1->unkC->printIndex(8, lbl_80409250[p1->unk18], 0);
            p1->unkC->printIndex(9, lbl_80409268[p1->unk24], 0);
            s32 r7 = (p1->unkE0 > 0) ? p1->unkE0 : 0;
            p1->unkC->printf(10, "%d", (r7 < 999) ? r7 : 999);
            r7 = (p1->unkE4 > 0) ? p1->unkE4 : 0;
            p1->unkC->printf(11, "%d", (r7 < 999) ? r7 : 999);
            r7 = (p1->unkE8 > 0) ? p1->unkE8 : 0;
            p1->unkC->printf(12, "%d", (r7 < 999) ? r7 : 999);
        } else {
            p1->unkC->printf(8, "");
            p1->unkC->printf(9, "");
            p1->unkC->printf(10, "");
            p1->unkC->printf(11, "");
            p1->unkC->printf(12, "");
        }
        p1->unk30 = r30;
    }
}

void IfMinigameTraining::curPosProcQuit(IfMinigameTraining* p1) {
    // A button
    if (p1->unk34.unkC & 0x100) {
        lbl_805A01D0->playSE(1, -1, 0, 0, -1);
        p1->unk2F4 = 1;
    }
}
