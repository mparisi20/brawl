.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAFsnext
FAFsnext:
/* 803EBF40 003E1CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBF44 003E1CC4  7C 08 02 A6 */	mflr r0
/* 803EBF48 003E1CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBF4C 003E1CCC  4B FF F8 55 */	bl pf2_fsnext
/* 803EBF50 003E1CD0  7C 03 00 D0 */	neg r0, r3
/* 803EBF54 003E1CD4  7C 00 1B 78 */	or r0, r0, r3
/* 803EBF58 003E1CD8  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EBF5C 003E1CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBF60 003E1CE0  7C 08 03 A6 */	mtlr r0
/* 803EBF64 003E1CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBF68 003E1CE8  4E 80 00 20 */	blr 

