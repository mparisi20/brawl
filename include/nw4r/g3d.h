#ifndef NW4R_G3D_H
#define NW4R_G3D_H

#include "global.h"
#include "nw4r/math.h"

namespace nw4r {
namespace g3d {

class ResFile {        
public:
    void* fileBuf;

    void Init();
};

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

// ScnGroup vtable @80466270
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

#endif //NW4R_G3D_H
