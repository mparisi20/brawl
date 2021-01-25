.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_mount
pf2_mount:
/* 803EB948 003E16C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB94C 003E16CC  7C 08 02 A6 */	mflr r0
/* 803EB950 003E16D0  7C 63 07 74 */	extsb r3, r3
/* 803EB954 003E16D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB958 003E16D8  4B FF EE 31 */	bl PFVOL_mount
/* 803EB95C 003E16DC  4B FF FB 81 */	bl PFAPI_convertReturnValue
/* 803EB960 003E16E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB964 003E16E4  7C 08 03 A6 */	mtlr r0
/* 803EB968 003E16E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB96C 003E16EC  4E 80 00 20 */	blr 

