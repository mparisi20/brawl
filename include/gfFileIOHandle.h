#ifndef GF_FILE_IO_HANDLE_H
#define GF_FILE_IO_HANDLE_H

#include "global.h"

class gfFileIOHandle {
public:
    u32 unk0;

    ~gfFileIOHandle();

    void read(const char* file, s32 heapNum, u32 p3);
    void readRequest(const char* file, void* buf, size_t sz, u32 p4); // _312
    void cancelRequest();
    void release();
    BOOL isReady();
    BOOL isCanceled();
    u32 getSize();
    u32 getReturnStatus();
    void* getBuffer();
};

#endif //GF_FILE_IO_HANDLE_H
