#ifndef NW4R_MATH_H
#define NW4R_MATH_H

#include "global.h"

namespace nw4r {
namespace math {

struct VEC3 {
    float x, y, z;

    static void PSVEC3Add(register VEC3* sum, const register VEC3* p1, const register VEC3* p2) {
        register float a, b, c, d;
        asm {
            psq_l a, 0(p1), 0, 0;
            psq_l b, 8(p1), 1, 0;
            psq_l c, 0(p2), 0, 0;
            psq_l d, 8(p2), 1, 0;
            ps_add d, b, d;
            ps_add b, a, c;
            
            psq_st b, 0(sum), 0, 0;
            psq_st d, 8(sum), 1, 0;
        }
    }
    
    // Element-wise product
    static void PSVEC3Mult(register VEC3* prod, const register VEC3* p1, const register VEC3* p2) {
        register float a, b, c, d;
        asm {
            psq_l a, 0(p1), 0, 0;
            psq_l b, 8(p1), 1, 0;
            psq_l c, 0(p2), 0, 0;
            psq_l d, 8(p2), 1, 0;
            ps_mul c, a, c;
            ps_mul b, b, d;
            psq_st c, 0(prod), 0, 0;
            psq_st b, 8(prod), 1, 0;
        }
    }

    VEC3() { }
    VEC3(float fx, float fy, float fz) { x = fx; y = fy; z = fz; }
    VEC3(const VEC3& v) { x = v.x; y = v.y; z = v.z; }

    VEC3 operator+(const VEC3& rhs) const {
        VEC3 sum; 
        PSVEC3Add(&sum, this, &rhs);
        return sum;
    }

    VEC3 operator*(const VEC3& rhs) const {
        VEC3 prod;
        PSVEC3Mult(&prod, this, &rhs);
        return prod;
    }

    VEC3& operator+=(const VEC3& rhs) { 
        PSVEC3Add(this, this, &rhs);
        return *this;
    }

    VEC3& operator*=(const VEC3& rhs) { 
        PSVEC3Mult(this, this, &rhs);
        return *this;
    }
};

} // namespace nw4r
} // math

#endif // NW4R_MATH_H
