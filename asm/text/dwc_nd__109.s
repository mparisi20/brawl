.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DWC_NdProcess
DWC_NdProcess:
/* 8035CEFC 00352C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035CF00 00352C80  7C 08 02 A6 */	mflr r0
/* 8035CF04 00352C84  38 A0 00 00 */	li r5, 0
/* 8035CF08 00352C88  38 C0 00 00 */	li r6, 0
/* 8035CF0C 00352C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035CF10 00352C90  38 00 00 00 */	li r0, 0
/* 8035CF14 00352C94  38 81 00 08 */	addi r4, r1, 8
/* 8035CF18 00352C98  90 01 00 08 */	stw r0, 8(r1)
/* 8035CF1C 00352C9C  4B FF F7 45 */	bl GSISocketSelect
/* 8035CF20 00352CA0  2C 03 00 01 */	cmpwi r3, 1
/* 8035CF24 00352CA4  40 82 00 0C */	bne lbl_8035CF30
/* 8035CF28 00352CA8  80 61 00 08 */	lwz r3, 8(r1)
/* 8035CF2C 00352CAC  48 00 00 08 */	b lbl_8035CF34
lbl_8035CF30:
/* 8035CF30 00352CB0  38 60 00 00 */	li r3, 0
lbl_8035CF34:
/* 8035CF34 00352CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035CF38 00352CB8  7C 08 03 A6 */	mtlr r0
/* 8035CF3C 00352CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8035CF40 00352CC0  4E 80 00 20 */	blr 
