#ifndef GF_FILE_IO_HANDLE_H
#define GF_FILE_IO_HANDLE_H

#include "global.h"

class gfFileIOHandle {
public:
    u32 unk0;

    ~gfFileIOHandle();

    void read(const char* file, s32 heapNum, u32 p3);
    void release();
    BOOL isReady();
    u32 getSize();
    void* getBuffer();
};

#endif //GF_FILE_IO_HANDLE_H
