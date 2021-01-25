.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAFclose
FAFclose:
/* 803EBE8C 003E1C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBE90 003E1C10  7C 08 02 A6 */	mflr r0
/* 803EBE94 003E1C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBE98 003E1C18  4B FF F7 89 */	bl pf2_fclose
/* 803EBE9C 003E1C1C  7C 03 00 D0 */	neg r0, r3
/* 803EBEA0 003E1C20  7C 00 1B 78 */	or r0, r0, r3
/* 803EBEA4 003E1C24  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EBEA8 003E1C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBEAC 003E1C2C  7C 08 03 A6 */	mtlr r0
/* 803EBEB0 003E1C30  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBEB4 003E1C34  4E 80 00 20 */	blr 

