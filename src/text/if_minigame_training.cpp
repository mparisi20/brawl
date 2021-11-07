#include "global.h"
#include <string.h>
#include "nw4r/g3d.h"
#include "gf.h"
#include "IfMinigameTraining.h"
#include "muMenu.h"
#include "MuObject.h"
#include "cmDemoController.h"
#include "CameraController.h"
#include "ut_relocate.h"

struct InitMsgStruct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
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

IfMinigameTraining::IfMinigameTraining() {
    this->menuCtrl.init(0xff);
    this->init();
}

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

    this->menuCtrl.init(0);

    this->unkE0 = 0;
    this->unkE4 = 0;
    this->unkE8 = 0;
    memset(this->unkEC, 0, 0x200);

    this->unk2EC = 0;
    this->itKind = 0xFFFFFFFF;
    this->unk2F8 = 0;
    this->unk2FC = 0;
}

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
        delete this->unkC;
        this->unkC = 0;
    }
}

void IfMinigameTraining::createModel(u32 p1, u32 p2, 
        u32 p3, void* p4, size_t p5) {
    createObjResFile(&lbl_80409218, 2, p1, 0xC0);
    initMsg(p2);
    s32 count = 0;
    {
        utRelocate rel(p4, p5);
        s32* addr = (s32*)rel.getPublicAddress("ifTrainingItemTbl");
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
ProcFuncPtr MenuProcesses[] = {
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

void IfMinigameTraining::initMsg(u32 p1) {
    InitMsgStruct spC[13];
    u32 sp34[15];

    const InitMsgStruct* p = &lbl_80409228[0];
    for (int i = 0; i < 7; i++) {
        spC[i] = *p++;
    }
    spC[7].unk0 = lbl_80409228[7].unk0;
    spC[7].unk1 = lbl_80409228[7].unk1;
    sp34[14] = spC[7].unk2 = lbl_80409228[7].unk2;

    sp34[0] = spC[8].unk0 = lbl_80409228[8].unk0;
    sp34[1] = spC[8].unk1 = lbl_80409228[8].unk1;
    sp34[2] = spC[8].unk2 = lbl_80409228[8].unk2;

    sp34[3] = spC[9].unk0 = lbl_80409228[9].unk0;
    sp34[4] = spC[9].unk1 = lbl_80409228[9].unk1;
    sp34[5] = spC[9].unk2 = lbl_80409228[9].unk2;

    sp34[6] = spC[10].unk0 = lbl_80409228[10].unk0;
    sp34[7] = spC[10].unk1 = lbl_80409228[10].unk1;
    sp34[8] = spC[10].unk2 = lbl_80409228[10].unk2;

    sp34[9] = spC[11].unk0 = lbl_80409228[11].unk0;
    sp34[10] = spC[11].unk1 = lbl_80409228[11].unk1;
    sp34[11] = spC[11].unk2 = lbl_80409228[11].unk2;

    sp34[12] = spC[12].unk0 = lbl_80409228[12].unk0;
    sp34[13] = spC[12].unk1 = lbl_80409228[12].unk1;
    spC[12].unk2 = lbl_80409228[12].unk2;

    this->unkC = MuMsg::create(8, 0x28, 0x2a);
    this->unkC->allocMsgBuf(0x100, 13);
    this->unkC->setMsgData(p1);

    for (u32 i = 0; (s32) i < 13; i++) {
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
    this->menuCtrl.setControllerID((u8) id);
    this->unk2F8 = p2;
    setCameraType(type1);
    this->unk2FC = 0;
    this->unkDC = 1;

    StepFuncPtr func = lbl_804092A0[2]; 
    if (func) {
        func(this);
    }
}

void IfMinigameTraining::setCameraType(CameraType type) {    
    CameraController* cam = CameraController::getInstance();
    cmDemoController* r30 = cam->unk80;
    UnkCameraType sp18(lbl_804092C0);
    UnkCameraType sp28(lbl_804092D0);
    u32 typeSub1 = u32(type - 1);
    if (typeSub1 <= 1) {
        cam->changeInput(13);
        r30->setTargetType(this->unk2F8 + 5);
    } else {
        cam->changeInput(2);
    }

    switch (type) {
        case type1:
            r30->unk20 = sp28;
            break;
        case type2:
            r30->unk20 = sp18;
            break;
        case type0:
            UnkCameraType sp8(lbl_80409208);
            r30->unk20 = sp8;
            break;
        default:
            break;
    }
}

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
    this->itKind = 0xFFFFFFFF;
    this->unk2F4 = 0;
    this->menuCtrl.main();

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
    u32 r4 = p1->menuCtrl.padInput2;
    s32 r31 = p1->unk14;

    if ((r4 & INPUT_UP) && --r31 < 0) {
        r31 = 7;
    }

    if ((r4 & INPUT_DOWN) && ++r31 >= 8) {
        r31 = 0;
    }

    if (r31 != p1->unk14) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk4[0]->setFrameVisible(1.0f + r31);
        p1->unk14 = r31;
        p1->unkC->printIndex(7, lbl_80409280[r31], 0);
    }

    MenuProcesses[r31](p1);
    return p1->unkDC;
}

s32 IfMinigameTraining::initStepLeave(IfMinigameTraining* p1) {
    p1->unk4[0]->setActionNo(1, 1, 1, 0);
    return lbl_805A01D0->playSE(6, -1, 0, 0, -1);
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
    u32 r4 = p1->menuCtrl.padInput2;
    s32 r30 = p1->unk18;
    if ((r4 & INPUT_RIGHT) && ++r30 >= 5) {
        r30 = 0;
    }

    if ((r4 & INPUT_LEFT) && --r30 < 0) {
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
    u32 r4 = p1->menuCtrl.padInput2;
    s32 r31 = p1->unk1C;
    u32 r30 = p1->menuCtrl.padInput1;
    s32 r3 = p1->unk2EC;
    if ((r4 & INPUT_RIGHT) && ++r31 >= r3) {
        r31 = 0;
    }

    if ((r4 & INPUT_LEFT) && --r31 < 0) {
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

    if (r30 & INPUT_A) {
        r3 = p1->unk1C;
        if (r3 < 0 || r3 >= p1->unk2EC) {
            r3 = 0x38;
        } else {
            r3 = p1->unkEC[r3];
        }
        p1->itKind = muMenu::exchangeMuItemKindToItKind(r3);
    }
}

void IfMinigameTraining::curPosProcNumCP(IfMinigameTraining* p1) {
    u32 r4 = p1->menuCtrl.padInput2;
    s32 r31 = p1->unk20;
    if ((r4 & INPUT_RIGHT) && ++r31 >= 4) {
        r31 = 1;
    }

    if ((r4 & INPUT_LEFT) && --r31 < 1) {
        r31 = 3;
    }

    if (r31 != p1->unk20) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk20 = r31;
        p1->unkC->printf(2, "%d", r31);
    }
}

void IfMinigameTraining::curPosProcCPAI(IfMinigameTraining* p1) {
    u32 r4 = p1->menuCtrl.padInput2;
    s32 r30 = p1->unk24;
    if ((r4 & INPUT_RIGHT) && ++r30 >= 6) {
        r30 = 0;
    }

    if ((r4 & INPUT_LEFT) && --r30 < 0) {
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
    u32 r4 = p1->menuCtrl.padInput2;
    s32 r31 = p1->unk28;
    if ((r4 & INPUT_RIGHT) && ++r31 >= 1000) {
        r31 = 0;
    }

    if ((r4 & INPUT_LEFT) && --r31 < 0) {
        r31 = 999;
    }

    if (r31 != p1->unk28) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk28 = r31;
        p1->unkC->printf(4, "%d", r31);
    }
}

void IfMinigameTraining::curPosProcCamera(IfMinigameTraining* p1) {
    u32 r4 = p1->menuCtrl.padInput2;
    s32 r31 = p1->unk2C;
    if ((r4 & INPUT_RIGHT) && ++r31 >= 2) {
        r31 = 0;
    }

    if ((r4 & INPUT_LEFT) && --r31 < 0) {
        r31 = 1;
    }

    if (r31 != p1->unk2C) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);
        p1->unk2C = r31;
        p1->unkC->printIndex(5, lbl_805A27D0[r31], 0);
        p1->setCameraType((!p1->unk2C) ? type0 : type2);
    }
}

// Issues with swapped reg assignment for p1 and r30,
// and instruction ordering before msg->printIndex() call
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
    u32 r4 = p1->menuCtrl.padInput2;
    s32 r30 = p1->unk30;
    if ((r4 & INPUT_RIGHT) && ++r30 >= 2) {
        r30 = 0;
    }

    if ((r4 & INPUT_LEFT) && --r30 < 0) {
        r30 = 1;
    }

    if (r30 != p1->unk30) {
        lbl_805A01D0->playSE(0, -1, 0, 0, -1);

        MuMsg* msg = p1->unkC;
        BOOL test = !(r30 - 1);
        p1->unk30 = (u8) test;
        u32 idx = 16;
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
        p1->unk30 = (u8) r30;
    }
}

void IfMinigameTraining::curPosProcQuit(IfMinigameTraining* p1) {
    if (p1->menuCtrl.padInput1 & INPUT_A) {
        lbl_805A01D0->playSE(1, -1, 0, 0, -1);
        p1->unk2F4 = 1;
    }
}
