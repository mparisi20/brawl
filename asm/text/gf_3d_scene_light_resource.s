.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfLightResHandle$7getCharacterLight
gfLightResHandle$7getCharacterLight:
/* 80010D38 00006AB8  7C 64 1B 78 */	mr r4, r3
/* 80010D3C 00006ABC  80 6D BB 60 */	lwz r3, lbl_8059FF80-_SDA_BASE_(r13)
/* 80010D40 00006AC0  88 84 00 00 */	lbz r4, 0(r4)
/* 80010D44 00006AC4  4B FF CE 24 */	b gfSceneRoot$7getLightObj

.global gfLightResHandle$7setZoneLightSet
gfLightResHandle$7setZoneLightSet:
/* 80010D48 00006AC8  7C 66 1B 78 */	mr r6, r3
/* 80010D4C 00006ACC  7C 85 23 78 */	mr r5, r4
/* 80010D50 00006AD0  80 6D BB 60 */	lwz r3, lbl_8059FF80-_SDA_BASE_(r13)
/* 80010D54 00006AD4  88 86 00 00 */	lbz r4, 0(r6)
/* 80010D58 00006AD8  4B FF CE 28 */	b gfSceneRoot$7updateZoneLightSet

