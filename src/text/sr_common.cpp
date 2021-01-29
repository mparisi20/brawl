#include "global.h"
#include "gfHeapManager.h"
#include "sr_common.h"

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
