#ifndef MU_OBJECT_H
#define MU_OBJECT_H

#include "nw4r/math.h"

using nw4r::math::VEC3;

class MuObject {

public:
    void getPos(VEC3& pos, const char* node);
    void getRotate(VEC3& rot, const char* node);
    void getScale(VEC3& scale, const char* node);
    void setPos(const VEC3& pos, const char* node);
    void setRotate(const char* node, const VEC3& rot);
    void setObjScale(const VEC3& scale);
};

#endif // MU_OBJECT_H
