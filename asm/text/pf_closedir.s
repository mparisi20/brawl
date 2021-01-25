.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_closedir
pf2_closedir:
/* 803EB5D8 003E1358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB5DC 003E135C  7C 08 02 A6 */	mflr r0
/* 803EB5E0 003E1360  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB5E4 003E1364  4B FF 0D 75 */	bl PFDIR_closedir
/* 803EB5E8 003E1368  4B FF FE F5 */	bl PFAPI_convertReturnValue
/* 803EB5EC 003E136C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB5F0 003E1370  7C 08 03 A6 */	mtlr r0
/* 803EB5F4 003E1374  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB5F8 003E1378  4E 80 00 20 */	blr 

