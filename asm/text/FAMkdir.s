.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAMkdir
FAMkdir:
/* 803EC0CC 003E1E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC0D0 003E1E50  7C 08 02 A6 */	mflr r0
/* 803EC0D4 003E1E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC0D8 003E1E58  4B FF F8 21 */	bl pf2_mkdir
/* 803EC0DC 003E1E5C  7C 03 00 D0 */	neg r0, r3
/* 803EC0E0 003E1E60  7C 00 1B 78 */	or r0, r0, r3
/* 803EC0E4 003E1E64  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 803EC0E8 003E1E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC0EC 003E1E6C  7C 08 03 A6 */	mtlr r0
/* 803EC0F0 003E1E70  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC0F4 003E1E74  4E 80 00 20 */	blr 

