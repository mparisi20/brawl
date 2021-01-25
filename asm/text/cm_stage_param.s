.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global cmStageParamPausedOffsetRange$7__ct
cmStageParamPausedOffsetRange$7__ct:
/* 800AC9B8 000A2738  C0 62 8E B8 */	lfs f3, lbl_805A21D8-_SDA2_BASE_(r2)
/* 800AC9BC 000A273C  C0 42 8E BC */	lfs f2, lbl_805A21DC-_SDA2_BASE_(r2)
/* 800AC9C0 000A2740  C0 22 8E C0 */	lfs f1, lbl_805A21E0-_SDA2_BASE_(r2)
/* 800AC9C4 000A2744  C0 02 8E C4 */	lfs f0, lbl_805A21E4-_SDA2_BASE_(r2)
/* 800AC9C8 000A2748  D0 63 00 00 */	stfs f3, 0(r3)
/* 800AC9CC 000A274C  D0 43 00 04 */	stfs f2, 4(r3)
/* 800AC9D0 000A2750  D0 23 00 08 */	stfs f1, 8(r3)
/* 800AC9D4 000A2754  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800AC9D8 000A2758  4E 80 00 20 */	blr 

