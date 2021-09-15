#ifndef OS_H
#define OS_H

#include "global.h"

#ifdef __cplusplus
extern "C" {
#endif

const char* OSGetAppGamename();
u32 OSGetStackPointer(void);
void OSReport(const char* msg, ...);

#ifdef __cplusplus
}
#endif

#endif //OS_H
