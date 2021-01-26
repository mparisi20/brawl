.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global GameGlobal$7isLanguage
GameGlobal$7isLanguage:
/* 80052D94 00048B14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80052D98 00048B18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80052D9C 00048B1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80052DA0 00048B20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80052DA4 00048B24  7C 08 03 A6 */	mtlr r0
/* 80052DA8 00048B28  38 21 00 20 */	addi r1, r1, 0x20
/* 80052DAC 00048B2C  4E 80 00 20 */	blr 

