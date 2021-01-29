.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global efPostRenderCallback$7__dt
efPostRenderCallback$7__dt:
/* 8005C5B0 00052330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005C5B4 00052334  7C 08 02 A6 */	mflr r0
/* 8005C5B8 00052338  2C 03 00 00 */	cmpwi r3, 0
/* 8005C5BC 0005233C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005C5C0 00052340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005C5C4 00052344  7C 7F 1B 78 */	mr r31, r3
/* 8005C5C8 00052348  41 82 00 10 */	beq lbl_8005C5D8
/* 8005C5CC 0005234C  2C 04 00 00 */	cmpwi r4, 0
/* 8005C5D0 00052350  40 81 00 08 */	ble lbl_8005C5D8
/* 8005C5D4 00052354  4B FB 02 F5 */	bl __dl__FPv
lbl_8005C5D8:
/* 8005C5D8 00052358  7F E3 FB 78 */	mr r3, r31
/* 8005C5DC 0005235C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005C5E0 00052360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005C5E4 00052364  7C 08 03 A6 */	mtlr r0
/* 8005C5E8 00052368  38 21 00 10 */	addi r1, r1, 0x10
/* 8005C5EC 0005236C  4E 80 00 20 */	blr 

