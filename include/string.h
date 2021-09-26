#ifndef STRING_H
#define STRING_H

#include "global.h"

#ifdef __cplusplus
extern "C" {
#endif

void* memcpy(void* dest, const void* src, size_t n);
int strcmp(const char* s1, const char* s2);
char* strcat(char* dest, const char* src);

#ifdef __cplusplus
}
#endif

#endif //STRING_H
