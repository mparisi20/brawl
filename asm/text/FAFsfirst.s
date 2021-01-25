.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAFsfirst
FAFsfirst:
/* 803EBF14 003E1C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBF18 003E1C98  7C 08 02 A6 */	mflr r0
/* 803EBF1C 003E1C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBF20 003E1CA0  4B FF F8 0D */	bl pf2_fsfirst
/* 803EBF24 003E1CA4  7C 03 00 D0 */	neg r0, r3
/* 803EBF28 003E1CA8  7C 00 1B 78 */	or r0, r0, r3
/* 803EBF2C 003E1CAC  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EBF30 003E1CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBF34 003E1CB4  7C 08 03 A6 */	mtlr r0
/* 803EBF38 003E1CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBF3C 003E1CBC  4E 80 00 20 */	blr 

