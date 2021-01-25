.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_mkdir
pf2_mkdir:
/* 803EB8F8 003E1678  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EB8FC 003E167C  7C 08 02 A6 */	mflr r0
/* 803EB900 003E1680  7C 64 1B 78 */	mr r4, r3
/* 803EB904 003E1684  38 A0 00 01 */	li r5, 1
/* 803EB908 003E1688  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EB90C 003E168C  38 61 00 08 */	addi r3, r1, 8
/* 803EB910 003E1690  4B FE AF 21 */	bl PFSTR_InitStr
/* 803EB914 003E1694  2C 03 00 00 */	cmpwi r3, 0
/* 803EB918 003E1698  40 82 00 10 */	bne lbl_803EB928
/* 803EB91C 003E169C  38 61 00 08 */	addi r3, r1, 8
/* 803EB920 003E16A0  4B FF 0B 49 */	bl PFDIR_mkdir
/* 803EB924 003E16A4  48 00 00 10 */	b lbl_803EB934
lbl_803EB928:
/* 803EB928 003E16A8  3C 80 80 56 */	lis r4, lbl_805644C0@ha
/* 803EB92C 003E16AC  38 84 44 C0 */	addi r4, r4, lbl_805644C0@l
/* 803EB930 003E16B0  90 64 00 40 */	stw r3, 0x40(r4)
lbl_803EB934:
/* 803EB934 003E16B4  4B FF FB A9 */	bl PFAPI_convertReturnValue
/* 803EB938 003E16B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EB93C 003E16BC  7C 08 03 A6 */	mtlr r0
/* 803EB940 003E16C0  38 21 00 20 */	addi r1, r1, 0x20
/* 803EB944 003E16C4  4E 80 00 20 */	blr 
