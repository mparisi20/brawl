.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAMount
FAMount:
/* 803EC0F8 003E1E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC0FC 003E1E7C  7C 08 02 A6 */	mflr r0
/* 803EC100 003E1E80  7C 63 07 74 */	extsb r3, r3
/* 803EC104 003E1E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC108 003E1E88  4B FF F8 41 */	bl pf2_mount
/* 803EC10C 003E1E8C  7C 03 00 D0 */	neg r0, r3
/* 803EC110 003E1E90  7C 00 1B 78 */	or r0, r0, r3
/* 803EC114 003E1E94  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EC118 003E1E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC11C 003E1E9C  7C 08 03 A6 */	mtlr r0
/* 803EC120 003E1EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC124 003E1EA4  4E 80 00 20 */	blr 

