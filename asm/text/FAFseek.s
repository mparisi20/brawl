.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAFseek
FAFseek:
/* 803EBEE8 003E1C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBEEC 003E1C6C  7C 08 02 A6 */	mflr r0
/* 803EBEF0 003E1C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBEF4 003E1C74  4B FF F8 15 */	bl pf2_fseek
/* 803EBEF8 003E1C78  7C 03 00 D0 */	neg r0, r3
/* 803EBEFC 003E1C7C  7C 00 1B 78 */	or r0, r0, r3
/* 803EBF00 003E1C80  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EBF04 003E1C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBF08 003E1C88  7C 08 03 A6 */	mtlr r0
/* 803EBF0C 003E1C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBF10 003E1C90  4E 80 00 20 */	blr 

