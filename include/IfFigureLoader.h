#ifndef IF_FIGURE_LOADER_H
#define IF_FIGURE_LOADER_H

#include "global.h"
#include <string.h>
#include "nw4r/math.h"
#include "nw4r/g3d.h"
#include "gfHeapManager.h"
#include "gfFileIOHandle.h"
#include "tyFigListDataManager.h"
#include "MuObject.h"

using nw4r::math::VEC3;
using nw4r::g3d::ResFile;

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
        ResFile unk10;
        gfFileIOHandle unk14;
        char unk18[MAXLEN+1];
        void* unk9C;
    public:
        Entry() {
            this->unk0 = 0;
            this->unk2 = 0;
            this->unk4 = 0;
            this->unk8 = 0xFFFFFFFF;
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
    tyFigListDataManager* dataMgr;
    s32 nEntries;
    Entry* entryPool;
    u32 unkC;
    static IfFigureLoader* instance;

public:
    static void* operator new(size_t sz, u32 heap) {
        return srHeapType::operator new(sz, heap);
    }

    IfFigureLoader(tyFigListDataManager* mgr, size_t nEntries) {
        this->dataMgr = mgr;
        this->nEntries = (s32)nEntries;
        this->entryPool = static_cast<Entry*>(gfHeapManager::alloc(42, nEntries * sizeof(Entry)));
        this->unkC = 0;

        for (s32 i = 0; i < this->nEntries; i++) {
            new (this->entryPool + i) Entry;
        }
    }

    ~IfFigureLoader() {
        for (s32 i = 0; i < this->nEntries; i++) {
            Entry* ent = this->entryPool + i;
            ent->~Entry();
        }

        if (this->entryPool)
            gfHeapManager::free(this->entryPool);
    }

    BOOL isLoadFinish();
    BOOL waitForIdle();
    void adjustModel(u32 id, MuObject* p2, MuObject* p3);
    static void readRequest(Entry** p1, IfFigureLoader* p2, u32 p3);
    static IfFigureLoader* create(tyFigListDataManager* mgr, size_t nEntries);
    static void destroy();
    static IfFigureLoader* getInstance();
};

#endif // IF_FIGURE_LOADER_H
