.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_fwrite
pf2_fwrite:
/* 803EB824 003E15A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB828 003E15A8  7C 08 02 A6 */	mflr r0
/* 803EB82C 003E15AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB830 003E15B0  38 E1 00 08 */	addi r7, r1, 8
/* 803EB834 003E15B4  4B FF A3 59 */	bl PFFILE_fwrite
/* 803EB838 003E15B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB83C 003E15BC  80 61 00 08 */	lwz r3, 8(r1)
/* 803EB840 003E15C0  7C 08 03 A6 */	mtlr r0
/* 803EB844 003E15C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB848 003E15C8  4E 80 00 20 */	blr 

