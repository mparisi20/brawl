#ifndef SR_COMMON_H
#define SR_COMMON_H

struct srHeapType
{
    static void* operator new(size_t sz, size_t heap);
    static void* operator new[](size_t sz, size_t heap);
};

u32 srSystemGetDebugLevel();
void* operator new(size_t sz);
void operator delete(void* ptr);
void operator delete[](void* ptr);

#endif //SR_COMMON_H
