.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_fread
pf2_fread:
/* 803EB6E0 003E1460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB6E4 003E1464  7C 08 02 A6 */	mflr r0
/* 803EB6E8 003E1468  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB6EC 003E146C  38 E1 00 08 */	addi r7, r1, 8
/* 803EB6F0 003E1470  4B FF A3 61 */	bl PFFILE_fread
/* 803EB6F4 003E1474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB6F8 003E1478  80 61 00 08 */	lwz r3, 8(r1)
/* 803EB6FC 003E147C  7C 08 03 A6 */	mtlr r0
/* 803EB700 003E1480  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB704 003E1484  4E 80 00 20 */	blr 

