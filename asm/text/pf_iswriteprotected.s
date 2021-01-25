.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_iswriteprotected
pf2_iswriteprotected:
/* 803EB8B4 003E1634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB8B8 003E1638  7C 08 02 A6 */	mflr r0
/* 803EB8BC 003E163C  7C 63 07 74 */	extsb r3, r3
/* 803EB8C0 003E1640  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB8C4 003E1644  38 00 00 00 */	li r0, 0
/* 803EB8C8 003E1648  38 81 00 08 */	addi r4, r1, 8
/* 803EB8CC 003E164C  90 01 00 08 */	stw r0, 8(r1)
/* 803EB8D0 003E1650  4B FF F5 65 */	bl PFVOL_iswriteprotected
/* 803EB8D4 003E1654  2C 03 00 00 */	cmpwi r3, 0
/* 803EB8D8 003E1658  40 82 00 0C */	bne lbl_803EB8E4
/* 803EB8DC 003E165C  80 61 00 08 */	lwz r3, 8(r1)
/* 803EB8E0 003E1660  48 00 00 08 */	b lbl_803EB8E8
lbl_803EB8E4:
/* 803EB8E4 003E1664  4B FF FB F9 */	bl PFAPI_convertReturnValue
lbl_803EB8E8:
/* 803EB8E8 003E1668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB8EC 003E166C  7C 08 03 A6 */	mtlr r0
/* 803EB8F0 003E1670  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB8F4 003E1674  4E 80 00 20 */	blr 

