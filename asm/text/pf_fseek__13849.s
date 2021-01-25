.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_fseek
pf2_fseek:
/* 803EB708 003E1488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB70C 003E148C  7C 08 02 A6 */	mflr r0
/* 803EB710 003E1490  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB714 003E1494  4B FF A5 ED */	bl PFFILE_fseek
/* 803EB718 003E1498  4B FF FD C5 */	bl PFAPI_convertReturnValue
/* 803EB71C 003E149C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB720 003E14A0  7C 08 03 A6 */	mtlr r0
/* 803EB724 003E14A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB728 003E14A8  4E 80 00 20 */	blr 

