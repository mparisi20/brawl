#ifndef GF_HEAP_MANAGER_H
#define GF_HEAP_MANAGER_H

#ifdef __cplusplus
extern "C" {
#endif

struct gfHeapManager
{
    static void* alloc(size_t heap, size_t size);
    static void free(void* ptr);
};

#ifdef __cplusplus
}
#endif

#endif //GF_HEAP_MANAGER_H
