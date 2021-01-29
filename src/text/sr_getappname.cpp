#include "global.h"
#include "OS.h"
#include "sr_getappname.h"

const char* srGetAppGamename()
{
    return OSGetAppGamename();
}

u32 srGetAppInitialCode()
{
    return *(u32*)OSGetAppGamename();
}

u32 srGetAppInitialCodeLocaleNum()
{
    return 3;
}

u32 srGetAppInitialCodeLocale(u32 i)
{
    return ((u32*)"RSBJRSBERSBP")[i];
}
