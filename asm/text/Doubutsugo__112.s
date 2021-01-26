.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global Doubutsugo$7HangulKumi2Script
Doubutsugo$7HangulKumi2Script:
/* 803ED9A0 003E3720  28 1C 00 17 */	cmplwi r28, 0x17
/* 803ED9A4 003E3724  41 80 FF B0 */	blt lbl_803ED954

.global lbl_803ED9A8
lbl_803ED9A8:
/* 803ED9A8 003E3728  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 803ED9AC 003E372C  38 00 FF EA */	li r0, -22
/* 803ED9B0 003E3730  38 83 FF E9 */	addi r4, r3, -23
/* 803ED9B4 003E3734  20 63 00 17 */	subfic r3, r3, 0x17
/* 803ED9B8 003E3738  7C 83 18 F8 */	nor r3, r4, r3
/* 803ED9BC 003E373C  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 803ED9C0 003E3740  7C 03 18 38 */	and r3, r0, r3

.global lbl_803ED9C4
lbl_803ED9C4:
/* 803ED9C4 003E3744  39 61 00 20 */	addi r11, r1, 0x20
/* 803ED9C8 003E3748  48 00 39 A1 */	bl _restgpr_26
/* 803ED9CC 003E374C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ED9D0 003E3750  7C 08 03 A6 */	mtlr r0
/* 803ED9D4 003E3754  38 21 00 20 */	addi r1, r1, 0x20
/* 803ED9D8 003E3758  4E 80 00 20 */	blr 

