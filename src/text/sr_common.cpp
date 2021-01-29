#include "global.h"
//#include "sr_getappname.h"

struct gfHeapManager
{
    static void* alloc(size_t heap, size_t size);
    static void free(void* ptr);
};

struct srHeapType
{
    static void* operator new(size_t sz, size_t heap);
    static void* operator new[](size_t sz, size_t heap);
};

static u32 DebugLevel = 4;

u32 srSystemGetDebugLevel()
{
    return DebugLevel;
}

void* operator new(size_t sz)
{
    return gfHeapManager::alloc(12, sz);
}

void* srHeapType::operator new(size_t sz, size_t heap)
{
    return gfHeapManager::alloc(heap, sz);
}

void operator delete(void* ptr)
{
    gfHeapManager::free(ptr);
}

void* srHeapType::operator new[](size_t sz, size_t heap)
{
    return gfHeapManager::alloc(heap, sz);
}

void operator delete[](void* ptr)
{
    gfHeapManager::free(ptr);
}
