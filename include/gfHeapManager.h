#ifndef GF_HEAP_MANAGER_H
#define GF_HEAP_MANAGER_H

struct gfHeapManager
{
    static void* alloc(size_t heap, size_t size);
    static void free(void* ptr);
};

#endif //GF_HEAP_MANAGER_H
