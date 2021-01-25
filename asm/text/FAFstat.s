.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAFstat
FAFstat:
/* 803EBF6C 003E1CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBF70 003E1CF0  7C 08 02 A6 */	mflr r0
/* 803EBF74 003E1CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBF78 003E1CF8  4B FF F8 4D */	bl pf2_fstat
/* 803EBF7C 003E1CFC  7C 03 00 D0 */	neg r0, r3
/* 803EBF80 003E1D00  7C 00 1B 78 */	or r0, r0, r3
/* 803EBF84 003E1D04  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EBF88 003E1D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBF8C 003E1D0C  7C 08 03 A6 */	mtlr r0
/* 803EBF90 003E1D10  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBF94 003E1D14  4E 80 00 20 */	blr 

