#include "global.h"
#include <string.h>
#include "gfHeapManager.h"
#include "gfFileIOHandle.h"
#include "sr_common.h"
#include "tyFigListDataManager.h"
#include "nw4r/math.h"
#include "nw4r/g3d.h"
#include "MuObject.h"
#include "IfFigureLoader.h"

using nw4r::math::VEC3;

IfFigureLoader* IfFigureLoader::instance;

#pragma force_active on

BOOL IfFigureLoader::Entry::isReady() {
    char brresFile[MAXLEN + 1];
    char sp110[MAXLEN + 1];
    char sp8C[MAXLEN + 1];
    char sp8[MAXLEN + 1];

    if (this->unk4 == 2) {
        if (!this->unk14.isReady() && this->unk14.isCanceled())
            return FALSE;
        this->unk4 = 1;
    }

    if (this->unk4 == 1) {
        if (--this->unk2)
            return FALSE;
        this->unk4 = 0;
        tyFigListData* trophy = instance->unk0->getFigDataId(this->unk8);
        const char* ext = ".brres";
        sp110[0] = '\0';
        strcat(sp110, "/toy/fig/");
        __memcpy(sp8C, sp110, sizeof(sp8C));
        strcat(sp8C, trophy->name);
        __memcpy(sp8, sp8C, sizeof(sp8));
        strcat(sp8, ext);
        __memcpy(brresFile, sp8, sizeof(brresFile));
        
        this->unk14.readRequest(brresFile, this->unk9C, 0x400000, 0);
        this->unk10.fileBuf = 0;
        return FALSE;
    }

    if (!this->unk14.isReady())
        return FALSE;
    if (this->unk10.fileBuf)
        return TRUE;
    if (this->unk14.getReturnStatus() == 0) {
        this->unk10.fileBuf = this->unk14.getBuffer();
        this->unk10.Init();
    }
    return TRUE;
}

void IfFigureLoader::Entry::destroy() {
    this->unk0--;
}

IfFigureLoader* IfFigureLoader::create(tyFigListDataManager* mgr, size_t nEntries) {
    return instance = new (42) IfFigureLoader(mgr, nEntries);
}

void IfFigureLoader::destroy() {
    delete instance;
    instance = 0;
}

IfFigureLoader* IfFigureLoader::getInstance() {
    return instance;
}

BOOL IfFigureLoader::isLoadFinish() {
    return this->unk0->isLoadFinish();
}

void IfFigureLoader::readRequest(Entry** res, IfFigureLoader* p1, u32 p2) {
    tyFigListData* r3 = p1->unk0->getFigDataId(p2);
    if (!r3) {
        *res = 0;
        return;
    }

    for (s32 i = 0; i < p1->unk4; i++) {
        Entry* ent = p1->unk8 + i;
        if (ent->unkC == r3) {
            p1->unk8[i].unk0++;
            *res = p1->unk8 + i;
            return;
        }
    }

    s32 r7 = s32(p1->unkC + 1);
    for (s32 i = 0; i < p1->unk4 + 1; i++) {
        u32 idx = u32((r7 + i) % p1->unk4);
        p1->unkC = idx;
        Entry* ent = &p1->unk8[idx];
        u16 r4 = ent->unk0;
        if (!r4) {
            ent->unk0 = u16(r4 + 1);
            ent->unk8 = p2;
            ent->unkC = r3;
            ent->unk2 = 3;
            if (!ent->unk4) {
                if (ent->unk14.unk0 && !ent->unk14.isReady()) {
                    ent->unk4 = 2;
                    ent->unk14.cancelRequest();
                } else {
                    ent->unk4 = 1;
                }
            }
            *res = ent;
            return;
        }
    }
    *res = 0;
}

#pragma force_active reset

BOOL IfFigureLoader::waitForIdle() {
    for (s32 i = 0; i < this->unk4; i++) {
        Entry* ent = this->unk8 + this->unkC;
        if (ent->unk14.unk0 && !ent->unk14.isReady() && !ent->unk14.isCanceled())
            return FALSE;
    }
    return TRUE;
}

#ifndef NONMATCHING
// NOTE: see PSVEC3Add() in include/nw4r/math.h
#pragma regswap 80106664 801066c4 f0 f1 80106020
#endif
void IfFigureLoader::adjustModel(u32 id, MuObject* p2, MuObject* p3) {
    VEC3 sp50;
    VEC3 sp44;
    VEC3 sp38;
    VEC3 sp2C;
    VEC3 sp20;
    VEC3 sp14;
    
    tyFigListData* r31 = this->unk0->getFigDataId(id);
    p2->getPos(sp2C, "transN");
    p2->getRotate(sp20, "transN");
    p2->getScale(sp14, "transN");

    sp50.z = r31->unk28.z;
    sp50.y = r31->unk28.y;
    sp50.x = r31->unk28.x;
    sp2C += sp50;
    p2->setPos(sp2C, "transN");

    sp44.z = 0.0f;
    sp44.x = 0.0f;
    sp44.y = r31->unk3C;
    sp20 += sp44;
    p2->setRotate("transN", sp20);

    sp38.x = r31->unk34;
    sp38.y = r31->unk34;
    sp38.z = r31->unk34;
    sp14 *= sp38;
    p2->setObjScale(sp14);

    float f1 = r31->unk38;
    if (f1 < 1.1920929e-7f)
        f1 = 1.0f;
    VEC3 sp8(f1, f1, f1);
    p3->setObjScale(sp8);
}
