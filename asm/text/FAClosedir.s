.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAClosedir
FAClosedir:
/* 803EBE20 003E1BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBE24 003E1BA4  7C 08 02 A6 */	mflr r0
/* 803EBE28 003E1BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBE2C 003E1BAC  4B FF F7 AD */	bl pf2_closedir
/* 803EBE30 003E1BB0  7C 03 00 D0 */	neg r0, r3
/* 803EBE34 003E1BB4  7C 00 1B 78 */	or r0, r0, r3
/* 803EBE38 003E1BB8  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EBE3C 003E1BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBE40 003E1BC0  7C 08 03 A6 */	mtlr r0
/* 803EBE44 003E1BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBE48 003E1BC8  4E 80 00 20 */	blr 

