.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAGetdev
FAGetdev:
/* 803EBF9C 003E1D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBFA0 003E1D20  7C 08 02 A6 */	mflr r0
/* 803EBFA4 003E1D24  7C 63 07 74 */	extsb r3, r3
/* 803EBFA8 003E1D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBFAC 003E1D2C  4B FF F8 A1 */	bl pf2_devinf
/* 803EBFB0 003E1D30  7C 03 00 D0 */	neg r0, r3
/* 803EBFB4 003E1D34  7C 00 1B 78 */	or r0, r0, r3
/* 803EBFB8 003E1D38  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EBFBC 003E1D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBFC0 003E1D40  7C 08 03 A6 */	mtlr r0
/* 803EBFC4 003E1D44  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBFC8 003E1D48  4E 80 00 20 */	blr 

