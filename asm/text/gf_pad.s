.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfPadSystem$7wpadSimpleSyncCallback
gfPadSystem$7wpadSimpleSyncCallback:
/* 80026C4C 0001C9CC  2C 1F 00 00 */	cmpwi r31, 0
/* 80026C50 0001C9D0  40 81 00 0C */	ble lbl_80026C5C
/* 80026C54 0001C9D4  7F C3 F3 78 */	mr r3, r30
/* 80026C58 0001C9D8  4B FE 5C 71 */	bl __dl__FPv

.global lbl_80026C5C
lbl_80026C5C:
/* 80026C5C 0001C9DC  7F C3 F3 78 */	mr r3, r30
/* 80026C60 0001C9E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80026C64 0001C9E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80026C68 0001C9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026C6C 0001C9EC  7C 08 03 A6 */	mtlr r0
/* 80026C70 0001C9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80026C74 0001C9F4  4E 80 00 20 */	blr 

