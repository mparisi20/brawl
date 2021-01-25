.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAFopen
FAFopen:
/* 803EBEB8 003E1C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBEBC 003E1C3C  7C 08 02 A6 */	mflr r0
/* 803EBEC0 003E1C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBEC4 003E1C44  4B FF F7 81 */	bl pf2_fopen
/* 803EBEC8 003E1C48  2C 03 00 00 */	cmpwi r3, 0
/* 803EBECC 003E1C4C  40 82 00 08 */	bne lbl_803EBED4
/* 803EBED0 003E1C50  38 60 00 00 */	li r3, 0
lbl_803EBED4:
/* 803EBED4 003E1C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBED8 003E1C58  7C 08 03 A6 */	mtlr r0
/* 803EBEDC 003E1C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBEE0 003E1C60  4E 80 00 20 */	blr 

