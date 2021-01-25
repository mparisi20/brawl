.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_fsnext
pf2_fsnext:
/* 803EB7A0 003E1520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB7A4 003E1524  7C 08 02 A6 */	mflr r0
/* 803EB7A8 003E1528  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB7AC 003E152C  4B FF 09 75 */	bl PFDIR_fsnext
/* 803EB7B0 003E1530  4B FF FD 2D */	bl PFAPI_convertReturnValue
/* 803EB7B4 003E1534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB7B8 003E1538  7C 08 03 A6 */	mtlr r0
/* 803EB7BC 003E153C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB7C0 003E1540  4E 80 00 20 */	blr 

