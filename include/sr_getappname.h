#ifndef SR_GETAPPNAME_H
#define SR_GETAPPNAME_H

#ifdef __cplusplus
extern "C" {
#endif

const char* srGetAppGamename();
u32 srGetAppInitialCode();
u32 srGetAppInitialCodeLocaleNum();
u32 srGetAppInitialCodeLocale(u32 i);

#ifdef __cplusplus
}
#endif

#endif //SR_GETAPPNAME_H
