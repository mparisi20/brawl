.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_fclose
pf2_fclose:
/* 803EB620 003E13A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB624 003E13A4  7C 08 02 A6 */	mflr r0
/* 803EB628 003E13A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB62C 003E13AC  4B FF A1 49 */	bl PFFILE_fclose
/* 803EB630 003E13B0  4B FF FE AD */	bl PFAPI_convertReturnValue
/* 803EB634 003E13B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB638 003E13B8  7C 08 03 A6 */	mtlr r0
/* 803EB63C 003E13BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB640 003E13C0  4E 80 00 20 */	blr 

