.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_errnum
pf2_errnum:
/* 803EB5FC 003E137C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB600 003E1380  7C 08 02 A6 */	mflr r0
/* 803EB604 003E1384  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB608 003E1388  4B FF EB 81 */	bl PFVOL_errnum
/* 803EB60C 003E138C  4B FF FE 81 */	bl PFAPI_convertError
/* 803EB610 003E1390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB614 003E1394  7C 08 03 A6 */	mtlr r0
/* 803EB618 003E1398  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB61C 003E139C  4E 80 00 20 */	blr 

