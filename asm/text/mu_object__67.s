.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global MuObject$7init
MuObject$7init:
/* 800B85AC 000AE32C  4E 80 00 20 */	blr 

.global muObjProcessTask$7__dt
muObjProcessTask$7__dt:
/* 800B85B0 000AE330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B85B4 000AE334  7C 08 02 A6 */	mflr r0
/* 800B85B8 000AE338  2C 03 00 00 */	cmpwi r3, 0
/* 800B85BC 000AE33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B85C0 000AE340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B85C4 000AE344  7C 9F 23 78 */	mr r31, r4
/* 800B85C8 000AE348  93 C1 00 08 */	stw r30, 8(r1)
/* 800B85CC 000AE34C  7C 7E 1B 78 */	mr r30, r3
/* 800B85D0 000AE350  41 82 00 1C */	beq lbl_800B85EC
/* 800B85D4 000AE354  38 80 00 00 */	li r4, 0
/* 800B85D8 000AE358  4B F7 54 45 */	bl gfTask$7__dt
/* 800B85DC 000AE35C  2C 1F 00 00 */	cmpwi r31, 0
/* 800B85E0 000AE360  40 81 00 0C */	ble lbl_800B85EC
/* 800B85E4 000AE364  7F C3 F3 78 */	mr r3, r30
/* 800B85E8 000AE368  4B F5 42 E1 */	bl __dl__FPv
lbl_800B85EC:
/* 800B85EC 000AE36C  7F C3 F3 78 */	mr r3, r30
/* 800B85F0 000AE370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B85F4 000AE374  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B85F8 000AE378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B85FC 000AE37C  7C 08 03 A6 */	mtlr r0
/* 800B8600 000AE380  38 21 00 10 */	addi r1, r1, 0x10
/* 800B8604 000AE384  4E 80 00 20 */	blr 
/* 800B8608 000AE388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B860C 000AE38C  7C 08 02 A6 */	mflr r0
/* 800B8610 000AE390  2C 03 00 00 */	cmpwi r3, 0
/* 800B8614 000AE394  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B8618 000AE398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B861C 000AE39C  7C 7F 1B 78 */	mr r31, r3
/* 800B8620 000AE3A0  41 82 00 10 */	beq lbl_800B8630
/* 800B8624 000AE3A4  2C 04 00 00 */	cmpwi r4, 0
/* 800B8628 000AE3A8  40 81 00 08 */	ble lbl_800B8630
/* 800B862C 000AE3AC  4B F5 42 9D */	bl __dl__FPv
lbl_800B8630:
/* 800B8630 000AE3B0  7F E3 FB 78 */	mr r3, r31
/* 800B8634 000AE3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B8638 000AE3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B863C 000AE3BC  7C 08 03 A6 */	mtlr r0
/* 800B8640 000AE3C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800B8644 000AE3C4  4E 80 00 20 */	blr 

