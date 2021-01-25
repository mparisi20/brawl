.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FARemove
FARemove:
/* 803EC200 003E1F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC204 003E1F84  7C 08 02 A6 */	mflr r0
/* 803EC208 003E1F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC20C 003E1F8C  4B FF F7 BD */	bl pf2_remove
/* 803EC210 003E1F90  7C 03 00 D0 */	neg r0, r3
/* 803EC214 003E1F94  7C 00 1B 78 */	or r0, r0, r3
/* 803EC218 003E1F98  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EC21C 003E1F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC220 003E1FA0  7C 08 03 A6 */	mtlr r0
/* 803EC224 003E1FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC228 003E1FA8  4E 80 00 20 */	blr 

