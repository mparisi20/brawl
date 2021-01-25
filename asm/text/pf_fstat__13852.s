.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_fstat
pf2_fstat:
/* 803EB7C4 003E1544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EB7C8 003E1548  7C 08 02 A6 */	mflr r0
/* 803EB7CC 003E154C  38 A0 00 01 */	li r5, 1
/* 803EB7D0 003E1550  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EB7D4 003E1554  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EB7D8 003E1558  7C 9F 23 78 */	mr r31, r4
/* 803EB7DC 003E155C  7C 64 1B 78 */	mr r4, r3
/* 803EB7E0 003E1560  38 61 00 08 */	addi r3, r1, 8
/* 803EB7E4 003E1564  4B FE B0 4D */	bl PFSTR_InitStr
/* 803EB7E8 003E1568  2C 03 00 00 */	cmpwi r3, 0
/* 803EB7EC 003E156C  40 82 00 14 */	bne lbl_803EB800
/* 803EB7F0 003E1570  7F E4 FB 78 */	mr r4, r31
/* 803EB7F4 003E1574  38 61 00 08 */	addi r3, r1, 8
/* 803EB7F8 003E1578  4B FF 09 D1 */	bl PFDIR_fstat
/* 803EB7FC 003E157C  48 00 00 10 */	b lbl_803EB80C
lbl_803EB800:
/* 803EB800 003E1580  3C 80 80 56 */	lis r4, lbl_805644C0@ha
/* 803EB804 003E1584  38 84 44 C0 */	addi r4, r4, lbl_805644C0@l
/* 803EB808 003E1588  90 64 00 40 */	stw r3, 0x40(r4)
lbl_803EB80C:
/* 803EB80C 003E158C  4B FF FC D1 */	bl PFAPI_convertReturnValue
/* 803EB810 003E1590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EB814 003E1594  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EB818 003E1598  7C 08 03 A6 */	mtlr r0
/* 803EB81C 003E159C  38 21 00 20 */	addi r1, r1, 0x20
/* 803EB820 003E15A0  4E 80 00 20 */	blr 

