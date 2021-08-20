#ifndef OS_H
#define OS_H

#ifdef __cplusplus
extern "C" {
#endif

const char* OSGetAppGamename();
u32 OSGetStackPointer(void);

#ifdef __cplusplus
}
#endif

#endif //OS_H
