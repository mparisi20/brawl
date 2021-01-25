.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAOpendir
FAOpendir:
/* 803EC128 003E1EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC12C 003E1EAC  7C 08 02 A6 */	mflr r0
/* 803EC130 003E1EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC134 003E1EB4  4B FF F8 3D */	bl pf2_opendir
/* 803EC138 003E1EB8  2C 03 00 00 */	cmpwi r3, 0
/* 803EC13C 003E1EBC  40 82 00 08 */	bne lbl_803EC144
/* 803EC140 003E1EC0  38 60 00 00 */	li r3, 0
lbl_803EC144:
/* 803EC144 003E1EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC148 003E1EC8  7C 08 03 A6 */	mtlr r0
/* 803EC14C 003E1ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC150 003E1ED0  4E 80 00 20 */	blr 

