#include <stddef.h>
#include <st/module.h>

namespace {

// 8042AEB0
StageModuleId StageModuleIdTable[] = {
    { ST_BATTLES, "st_battles.rel" },
    { ST_BATTLE, "st_battle.rel" },
    { ST_PALUTENA, "st_palutena.rel" },
    { ST_CRAYON, "st_crayon.rel" },
    { ST_EARTH, "st_earth.rel" },
    { ST_VILLAGE, "st_village.rel" },
    { ST_ORPHEON, "st_orpheon.rel" },
    { ST_STADIUM, "st_stadium.rel" },
    { ST_METALGEAR, "st_metalgear.rel" },
    { ST_KART, "st_kart.rel" },
    { ST_DOLPIC, "st_dolpic.rel" },
    { ST_DONKEY, "st_donkey.rel" },
    { ST_NORFAIR, "st_norfair.rel" },
    { ST_PLANKTON, "st_plankton.rel" },
    { ST_ICE, "st_ice.rel" },
    { ST_MADEIN, "st_madein.rel" },
    { ST_STARFOX, "st_starfox.rel" },
    { ST_FAMICOM, "st_Famicom.rel" },
    { ST_JUNGLE, "st_Jungle.rel" },
    { ST_MARIOPAST, "st_mariopast.rel" },
    { ST_TENGAN, "st_tengan.rel" },
    { ST_MANSION, "st_mansion.rel" },
    { ST_PIRATES, "st_pirates.rel" },
    { ST_FINAL, "st_final.rel" },
    { ST_GREENHILL, "st_greenhill.rel" },
    { ST_PICTCHAT, "st_pictchat.rel" },
    { ST_GW, "st_gw.rel" },
    { ST_FZERO, "st_fzero.rel" },
    { ST_EMBLEM, "st_emblem.rel" },
    { ST_HALBERD, "st_halberd.rel" },
    { ST_DXSHRINE, "st_dxshrine.rel" },
    { ST_DXYORSTER, "st_dxyorster.rel" },
    { ST_DXGARDEN, "st_dxgarden.rel" },
    { ST_DXONETT, "st_dxonett.rel" },
    { ST_DXGREENS, "st_dxgreens.rel" },
    { ST_DXRCRUISE, "st_dxrcruise.rel" },
    { ST_DXBIGBLUE, "st_dxbigblue.rel" },
    { ST_DXCORNERIA, "st_dxcorneria.rel" },
    { ST_DXPSTADIUM, "st_dxpstadium.rel" },
    { ST_DXZEBES, "st_dxzebes.rel" },
    { ST_OLDIN, "st_oldin.rel" },
    { ST_NEWPORK, "st_newpork.rel" },
    { ST_HOMERUN, "st_homerun.rel" },
    { ST_STAGEEDIT, "st_stageedit.rel" },
    { ST_OTRAIN, "st_otrain.rel" },
    { ST_HEAL, "st_heal.rel" },
    { ST_TBREAK, "st_tbreak.rel" },
    { ST_CROLL, "st_croll.rel" },
    { ST_CONFIG, "st_config.rel" }
};

const size_t NUM_STAGES = sizeof(StageModuleIdTable)/sizeof(StageModuleIdTable[0]);

} // namespace

void moUnResolvedMessage(char const* name) {
    return;
}

char const* moGetStageModuleName(StageKind kind) {
    for (size_t i = 0; i < NUM_STAGES; i++) {
        if (kind == StageModuleIdTable[i].kind) {
            return StageModuleIdTable[i].name;
        }
    }
    return 0;
}
