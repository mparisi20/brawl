.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_init_prfile2
pf2_init_prfile2:
/* 803EB874 003E15F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB878 003E15F8  7C 08 02 A6 */	mflr r0
/* 803EB87C 003E15FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB880 003E1600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EB884 003E1604  4B FF 7D 8D */	bl PFFATFS_initializeFATFS
/* 803EB888 003E1608  2C 03 00 00 */	cmpwi r3, 0
/* 803EB88C 003E160C  7C 7F 1B 78 */	mr r31, r3
/* 803EB890 003E1610  40 82 00 08 */	bne lbl_803EB898
/* 803EB894 003E1614  48 00 03 45 */	bl PFSYS_initializeSYS
lbl_803EB898:
/* 803EB898 003E1618  7F E3 FB 78 */	mr r3, r31
/* 803EB89C 003E161C  4B FF FC 41 */	bl PFAPI_convertReturnValue
/* 803EB8A0 003E1620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB8A4 003E1624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EB8A8 003E1628  7C 08 03 A6 */	mtlr r0
/* 803EB8AC 003E162C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB8B0 003E1630  4E 80 00 20 */	blr 

