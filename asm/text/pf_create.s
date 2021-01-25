.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_create
VFipf2_create:
/* 803C2A2C 003B87AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C2A30 003B87B0  7C 08 02 A6 */	mflr r0
/* 803C2A34 003B87B4  7C 64 1B 78 */	mr r4, r3
/* 803C2A38 003B87B8  38 A0 00 01 */	li r5, 1
/* 803C2A3C 003B87BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C2A40 003B87C0  38 61 00 10 */	addi r3, r1, 0x10
/* 803C2A44 003B87C4  4B FE 71 71 */	bl VFiPFSTR_InitStr
/* 803C2A48 003B87C8  2C 03 00 00 */	cmpwi r3, 0
/* 803C2A4C 003B87CC  40 82 00 18 */	bne lbl_803C2A64
/* 803C2A50 003B87D0  38 61 00 10 */	addi r3, r1, 0x10
/* 803C2A54 003B87D4  38 A1 00 08 */	addi r5, r1, 8
/* 803C2A58 003B87D8  38 80 00 19 */	li r4, 0x19
/* 803C2A5C 003B87DC  4B FF 98 65 */	bl VFiPFFILE_fopen
/* 803C2A60 003B87E0  48 00 00 10 */	b lbl_803C2A70
lbl_803C2A64:
/* 803C2A64 003B87E4  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803C2A68 003B87E8  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803C2A6C 003B87EC  90 64 00 1C */	stw r3, 0x1c(r4)
lbl_803C2A70:
/* 803C2A70 003B87F0  80 81 00 08 */	lwz r4, 8(r1)
/* 803C2A74 003B87F4  4B FF FE A9 */	bl VFiPFAPI_convertReturnValue2NULL
/* 803C2A78 003B87F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C2A7C 003B87FC  7C 08 03 A6 */	mtlr r0
/* 803C2A80 003B8800  38 21 00 20 */	addi r1, r1, 0x20
/* 803C2A84 003B8804  4E 80 00 20 */	blr 
