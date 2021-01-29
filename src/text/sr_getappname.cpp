typedef unsigned u32;

extern "C" {

const char* OSGetAppGamename();

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

const char* LocaleStr = "RSBJRSBERSBP";

u32 srGetAppInitialCodeLocale(u32 i)
{
    return ((u32*)LocaleStr)[i];
}

}

