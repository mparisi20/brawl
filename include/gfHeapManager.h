#ifndef GF_HEAP_MANAGER_H
#define GF_HEAP_MANAGER_H

#include "global.h"

struct gfHeapManager
{
    static void* alloc(size_t heap, size_t size);
    static void free(void* ptr);
    static size_t getMaxFreeSize(u32 heap);
};

#endif //GF_HEAP_MANAGER_H
