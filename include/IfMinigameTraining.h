#ifndef IF_MINIGAME_TRAINING_H
#define IF_MINIGAME_TRAINING_H

#include "global.h"
#include "sndSystem.h"
#include "nw4r/g3d.h"
#include "muMenu.h"
#include "MuObject.h"

enum CameraType {
    type0, type1, type2
};


struct UnkResFile {
    char* name;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
};

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
    muMenuController menuCtrl;
    s32 unkDC;
    s32 unkE0;
    s32 unkE4;
    s32 unkE8;
    s32 unkEC[0x80];
    s32 unk2EC;
    u32 itKind; // ItKind
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
    void setCameraType(CameraType type);
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

#endif //IF_MINIGAME_TRAINING_H
