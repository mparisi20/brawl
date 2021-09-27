#ifndef TY_FIG_LIST_DATA_MANAGER_H
#define TY_FIG_LIST_DATA_MANAGER_H

#include "global.h"
#include "gfFileIOHandle.h"
#include "nw4r/math.h"

struct tyFigListData {
    s32 id;
    u8 unk4[0x4];
    const char* name; // relocated pointer to a string at data section start
    u32 unkC;
    u8 unk10[0x10];
    s32 series;
    s32 kind;
    nw4r::math::VEC3 unk28;
    float unk34;
    float unk38;
    float unk3C;
    u8 unk40[0xC];
    s32 bilTexIdx; 
    u8 unk50[0x10];
};

class tyFigListDataManager {
    tyFigListData* data; // address of symbol 'tyDataList' in file
    size_t count; // count of items in tyDataList, i.e. 544
    u32 bySeries[0x28A]; // trophy indices in order of increasing series code
    u32 byKind[0x28A]; // trophy indices in order of increasing kind (or type) code
    u32 unk1458;
    u8 isLoaded;
    gfFileIOHandle fileHandle;
    u8 unk1464;

    static const u32 TrophiesPerPage = 12;

    void setData(void* fileBuf, u32 fileSz);
public:
    tyFigListDataManager(BOOL loadFile);
    ~tyFigListDataManager();
    BOOL loadRequest();
    BOOL isLoadFinish();
    u32 getFigListSeries(s32 series, u32 pageNum, u32* figList);
    u32 getPageNumSeries(s32 series);
    u32 nextIdSeries(u32 idx);
    u32 prevIdSeries(u32 idx);
    u32 getFigListKind(s32 series, u32 pageNum, u32* figList);
    u32 getPageNumKind(s32 kind);
    u32 nextIdKind(u32 idx);
    u32 prevIdKind(u32 idx);
    u32 getTotalId(u32 idx, BOOL bySeries);
    s32 getBilTexFileIdx(u32 id);
    s32 getBilTexFileIdxFigId(u16 id);
    void getBilTexFileNameFigId(u16 id, char* name);
    void getBilTexName(u32 i, char* name);
    void getBilTexNameFigId(u32 id, char* name);
    tyFigListData* getFigDataId(u32 id);
};

#endif //TY_FIG_LIST_DATA_MANAGER_H
