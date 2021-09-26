#if 0
80106020 isReady/[IfFigureLoader5EntryFv]/(if_figure_loader.o)
80106208 destroy/[IfFigureLoader5EntryFv]/(if_figure_loader.o)
80106218 create/[IfFigureLoader]/(if_figure_loader.o)
80106314 destroy/[IfFigureLoader]/(if_figure_loader.o)
801063bc getInstance/[IfFigureLoader]/(if_figure_loader.o)
801063c4 isLoadFinish/[IfFigureLoader]/(if_figure_loader.o)
801063cc readRequest/[IfFigureLoader]/(if_figure_loader.o)
80106548 waitForIdle/[IfFigureLoader]/(if_figure_loader.o)
801065e0 adjustModel/[IfFigureLoader]/(if_figure_loader.o)
#endif

#include "global.h"
#include <string.h>
#include "gfHeapManager.h"
#include "gfFileIOHandle.h"
#include "sr_common.h"
#include "tyFigListDataManager.h"

namespace nw4r {
namespace g3d {
    class ResFile {        
    public:
        void* fileBuf;

        void Init();
    };
} // g3d
} // nw4r

class IfFigureLoader {
public:
    class Entry {
        friend class IfFigureLoader;

        static const size_t MAXLEN = 128;

        u16 unk0;
        u16 unk2;
        s32 unk4;
        u32 unk8;
        tyFigListData* unkC;
        nw4r::g3d::ResFile unk10;
        gfFileIOHandle unk14;
        char unk18[MAXLEN+1];
        void* unk9C;
    public:
        Entry() {
            this->unk0 = 0;
            this->unk2 = 0;
            this->unk4 = 0;
            this->unk8 = -1;
            this->unkC = 0;
            this->unk10.fileBuf = 0;
            this->unk14.unk0 = 0;
            this->unk18[0] = '\0';
            strcat(this->unk18, "");
            u32 heap = 41;
            if (gfHeapManager::getMaxFreeSize(heap) < 0x400000) {
                heap = 43;
            }
            this->unk9C = gfHeapManager::alloc(heap, 0x400000);
        }

        ~Entry() {
            gfHeapManager::free(this->unk9C);
        }

        BOOL isReady();
        void destroy();

        static void* operator new(size_t, void* p) {
            return p;
        }
    };

private:
    tyFigListDataManager* unk0;
    s32 unk4;
    Entry* unk8;
    u32 unkC;

    static IfFigureLoader* instance;

public:

    static void* operator new(size_t sz, u32 heap) {
        return srHeapType::operator new(sz, heap);
    }

    static void* operator new(size_t, void* p) {
        return p;
    }

    IfFigureLoader(tyFigListDataManager* mgr, size_t nEntries) {
        this->unk0 = mgr;
        this->unk4 = nEntries;
        this->unk8 = static_cast<Entry*>(gfHeapManager::alloc(42, nEntries * sizeof(Entry)));
        this->unkC = 0;

        for (s32 i = 0; i < this->unk4; i++) {
            new (this->unk8 + i) Entry;
        }
    }

    ~IfFigureLoader() {
        for (s32 i = 0; i < this->unk4; i++) {
            Entry* ent = this->unk8 + i;
            ent->~Entry();
        }

        if (this->unk8)
            gfHeapManager::free(this->unk8);
    }

    BOOL isLoadFinish();
    static void readRequest(Entry** p1, IfFigureLoader* p2, u32 p3);

    static IfFigureLoader* create(tyFigListDataManager* mgr, size_t nEntries);
    static void destroy();
    static IfFigureLoader* getInstance();
};

// 805a0318
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

    s32 r7 = p1->unkC + 1;
    for (s32 i = 0; i < p1->unk4 + 1; i++) {
        u32 idx = (r7 + i) % p1->unk4;
        p1->unkC = idx;
        Entry* ent = &p1->unk8[idx]; // r28
        u16 r4 = ent->unk0;
        if (!r4) {
            ent->unk0 = r4 + 1;
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
