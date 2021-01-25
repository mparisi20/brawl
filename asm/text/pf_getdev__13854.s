.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_devinf
pf2_devinf:
/* 803EB84C 003E15CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB850 003E15D0  7C 08 02 A6 */	mflr r0
/* 803EB854 003E15D4  7C 63 07 74 */	extsb r3, r3
/* 803EB858 003E15D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB85C 003E15DC  4B FF E9 3D */	bl PFVOL_getdev
/* 803EB860 003E15E0  4B FF FC 7D */	bl PFAPI_convertReturnValue
/* 803EB864 003E15E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB868 003E15E8  7C 08 03 A6 */	mtlr r0
/* 803EB86C 003E15EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB870 003E15F0  4E 80 00 20 */	blr 

