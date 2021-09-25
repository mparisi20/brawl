#include "global.h"
#include <stdio.h>
#include "ut_relocate.h"
#include "gm_lib.h"
#include "gfHeapManager.h"
#include "gfFileIOHandle.h"
#include "tyFigListDataManager.h"

#ifndef NONMATCHING
#pragma iswap 800ac9f4 800ac9f8 800ac9dc
#pragma regswap 800ac9f8 800aca64 r30 r31 800ac9dc
#endif
tyFigListDataManager::tyFigListDataManager(BOOL loadFile) {
    this->isLoaded = 0;
    this->fileHandle.unk0 = 0;
    this->unk1464 = 1;
    if (loadFile)
        loadRequest();
}

tyFigListDataManager::~tyFigListDataManager() {
    if (!this->unk1464) {
        gfHeapManager::free(this->fileHandle.getBuffer());
        this->fileHandle.release();
    }
}

BOOL tyFigListDataManager::loadRequest() {
    if (this->isLoaded)
        return FALSE;
    this->isLoaded = 0;
    this->unk1464 = 0;
    this->fileHandle.read("/toy/fig/ty_fig_data.dat", 8, 0);
    u32 fileSz = this->fileHandle.getSize();
    setData(this->fileHandle.getBuffer(), fileSz);
    this->isLoaded = 1;
    return TRUE;
}

BOOL tyFigListDataManager::isLoadFinish() {
    if (!this->isLoaded) {
        if (!this->fileHandle.isReady())
            return FALSE;

        u32 fileSz = this->fileHandle.getSize();
        setData(this->fileHandle.getBuffer(), fileSz);
        this->isLoaded = 1;
        return TRUE;
    } else {
        return TRUE;
    }
}

#ifndef NONMATCHING
#pragma regswap 800acc88 800acd94 r4 r5 800ac9dc
#endif
void tyFigListDataManager::setData(void* fileBuf, u32 fileSz) {
    utRelocate relocate(fileBuf, fileSz);
    this->data = static_cast<tyFigListData*>(relocate.getPublicAddress("tyDataList"));
    this->count = 0;
    while (this->data[this->count].id >= 0) {
        this->count++;
    }
    
    u32* bySeries = reinterpret_cast<u32*>(this); // UBFIX: use this->bySeries
    for (size_t i = 0; i < 22; i++) {
        for (size_t j = 0; j < this->count; j++) {
            if (i == this->data[j].series) {
                bySeries[2] = j;
                bySeries++;
            }
        }
    }

    u32* byKind = reinterpret_cast<u32*>(this); // UBFIX: use this->byKind
    for (size_t i = 23; i < 33; i++) {
        for (size_t j = 0; j < this->count; j++) {
            if (i == this->data[j].kind) {
                byKind[0x28C] = j;
                byKind++;
            }
        }
    }

    this->isLoaded = 1;
}

#pragma force_active on

u32 tyFigListDataManager::getFigListSeries(s32 series, u32 pageNum, u32* figList) {
    u32* lst;
    size_t lstSize = 0;
    u32 total = 0;
    u32 start = pageNum * TrophiesPerPage;
    
    if (!this->isLoaded)
        return 0;
    
    lst = figList;
    for (size_t i = 0; i < this->count && lstSize < TrophiesPerPage; i++) {
        tyFigListData* fig = this->data + i;
        if (series == fig->series && 
            gmCheckExistFigure((u16)fig->id) == TRUE && 
            ++total > start) {

            *lst++ = i;
            lstSize++;
        }
    }
    return lstSize;
}

// Get the number of pages of existing trophies belonging
// to the specified series.
u32 tyFigListDataManager::getPageNumSeries(s32 series) {
    size_t cnt = 0;

    if (!this->isLoaded)
        return 0;
    for (size_t i = 0; i < this->count; i++) {
        tyFigListData* fig = this->data + i;
        if (series == fig->series && gmCheckExistFigure((u16)fig->id) == TRUE) {
            cnt++;
        }
    }

    return !(cnt % TrophiesPerPage) ? cnt / TrophiesPerPage : cnt / TrophiesPerPage + 1;
}

u32 tyFigListDataManager::nextIdSeries(u32 idx) {
    if (!this->isLoaded)
        return 0;
    s32 next;
    for (next = 0; next < this->count; next++) {
        if (idx == this->bySeries[next]) {
            if (++next >= this->count) 
                next = 0;
            break;
        }
    }

    const u32 start = (u32)next;
    for (size_t i = 0; i < this->count; i++) {
        tyFigListData* fig = this->data;
        u32 j = (start + i) % this->count;
        if (gmCheckExistFigure((u16)fig[this->bySeries[j]].id) == TRUE)
            return this->bySeries[j];
    }

    return idx;
}

u32 tyFigListDataManager::prevIdSeries(u32 idx) {
    if (!this->isLoaded)
        return 0;
    s32 prev;
    for (prev = 0; prev < this->count; prev++) {
        if (idx == this->bySeries[prev]) {
            if (--prev < 0) 
                prev = static_cast<s32>(this->count - 1);
            break;
        }
    }

    for (size_t i = 0; i < this->count; i++) {
        u32 j = this->count - (i - prev);
        if (prev >= i)
            j = prev - i;
        if (gmCheckExistFigure((u16)this->data[this->bySeries[j]].id) == TRUE)
            return this->bySeries[j];
    }

    return idx;
}

u32 tyFigListDataManager::getFigListKind(s32 series, u32 pageNum, u32* figList) {
    u32* lst;
    size_t lstSize = 0;
    u32 total = 0;
    u32 start = pageNum * TrophiesPerPage;
    
    if (!this->isLoaded)
        return 0;
    
    lst = figList;
    for (size_t i = 0; i < this->count && lstSize < TrophiesPerPage; i++) {
        tyFigListData* fig = this->data + i;
        if (series == fig->kind && 
            gmCheckExistFigure((u16)fig->id) == TRUE && 
            ++total > start) {

            *lst++ = i;
            lstSize++;
        }
    }
    return lstSize;
}

// Get the number of pages of existing trophies belonging
// to the specified kind.
u32 tyFigListDataManager::getPageNumKind(s32 kind) {
    size_t cnt = 0;

    if (!this->isLoaded)
        return 0;
    for (size_t i = 0; i < this->count; i++) {
        tyFigListData* fig = this->data + i;
        if (kind == fig->kind && gmCheckExistFigure((u16)fig->id) == TRUE) {
            cnt++;
        }
    }

    return !(cnt % TrophiesPerPage) ? cnt / TrophiesPerPage : cnt / TrophiesPerPage + 1;
}

u32 tyFigListDataManager::nextIdKind(u32 idx) {
    if (!this->isLoaded)
        return 0;
    s32 next;
    for (next = 0; next < this->count; next++) {
        if (idx == this->byKind[next]) {
            if (++next >= this->count) 
                next = 0;
            break;
        }
    }

    const u32 start = (u32)next;
    for (size_t i = 0; i < this->count; i++) {
        u32 j = (start + i) % this->count;
        if (gmCheckExistFigure((u16)this->data[this->byKind[j]].id) == TRUE)
            return this->byKind[j];
    }

    return idx;
}

u32 tyFigListDataManager::prevIdKind(u32 idx) {
    if (!this->isLoaded)
        return 0;
    s32 prev;
    for (prev = 0; prev < this->count; prev++) {
        if (idx == this->byKind[prev]) {
            if (--prev < 0) 
                prev = static_cast<s32>(this->count - 1);
            break;
        }
    }

    for (size_t i = 0; i < this->count; i++) {
        u32 j = this->count - (i - prev);
        if (prev >= i)
            j = prev - i;
        if (gmCheckExistFigure((u16)this->data[this->byKind[j]].id) == TRUE)
            return this->byKind[j];
    }

    return idx;
}

u32 tyFigListDataManager::getTotalId(u32 idx, BOOL bySeries) {
    if (!this->isLoaded)
        return 0;
    if (bySeries) {
        u32 r28 = 0;
        for (size_t i = 0; i < this->count; i++) {
            if (gmCheckExistFigure((u16)this->data[this->bySeries[i]].id) == TRUE) {
                r28++;
                if (idx == this->bySeries[i])
                    return r28;
            }
        }
    } else {
        u32 r27 = 0;
        for (size_t i = 0; i < this->count; i++) {
            if (gmCheckExistFigure((u16)this->data[this->byKind[i]].id) == TRUE) {
                r27++;
                if (idx == this->byKind[i])
                    return r27;
            }
        }
    }
    return idx;
}

s32 tyFigListDataManager::getBilTexFileIdx(u32 i) {
    if (!this->isLoaded)
        return -1;
    return this->data[i].bilTexIdx / 10;
}

s32 tyFigListDataManager::getBilTexFileIdxFigId(u16 id) {
    if (!this->isLoaded)
        return -1;
    tyFigListData* fig = getFigDataId(id);
    return (!fig) ? -1 : fig->bilTexIdx / 10;
}

void tyFigListDataManager::getBilTexFileNameFigId(u16 id, char* name) {
    sprintf(name, "/toy/figdisp/figdisp%03d.brres", getBilTexFileIdxFigId(id)*10);
}

void tyFigListDataManager::getBilTexName(u32 i, char* name) {
    sprintf(name, "MenCollDisply01.%03d", this->data[i].bilTexIdx);
}

#pragma force_active reset

void tyFigListDataManager::getBilTexNameFigId(u32 id, char* name) {
    sprintf(name, "MenCollDisply01.%03d", getFigDataId(id)->bilTexIdx);
}

tyFigListData* tyFigListDataManager::getFigDataId(u32 id) {
    if (!this->isLoaded)
        return 0;

    for (size_t i = 0; i < this->count; i++) {
        if (id == this->data[i].id) {
            return &this->data[i];
        }
    }
    return 0;
}
