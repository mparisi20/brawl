.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfThread$7__dt
gfThread$7__dt:
/* 8002F5B8 00025338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002F5BC 0002533C  7C 08 02 A6 */	mflr r0
/* 8002F5C0 00025340  2C 03 00 00 */	cmpwi r3, 0
/* 8002F5C4 00025344  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002F5C8 00025348  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002F5CC 0002534C  7C 9F 23 78 */	mr r31, r4
/* 8002F5D0 00025350  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8002F5D4 00025354  7C 7E 1B 78 */	mr r30, r3
/* 8002F5D8 00025358  41 82 00 34 */	beq lbl_8002F60C
/* 8002F5DC 0002535C  3C A0 80 42 */	lis r5, lbl_804208B0@ha
/* 8002F5E0 00025360  38 81 00 08 */	addi r4, r1, 8
/* 8002F5E4 00025364  38 A5 08 B0 */	addi r5, r5, lbl_804208B0@l
/* 8002F5E8 00025368  90 A3 00 00 */	stw r5, 0(r3)
/* 8002F5EC 0002536C  38 63 00 08 */	addi r3, r3, 8
/* 8002F5F0 00025370  48 1B 1C 35 */	bl OSJoinThread
/* 8002F5F4 00025374  80 7E 03 24 */	lwz r3, 0x324(r30)
/* 8002F5F8 00025378  4B FF 54 55 */	bl free__13gfHeapManagerFPv
/* 8002F5FC 0002537C  2C 1F 00 00 */	cmpwi r31, 0
/* 8002F600 00025380  40 81 00 0C */	ble lbl_8002F60C
/* 8002F604 00025384  7F C3 F3 78 */	mr r3, r30
/* 8002F608 00025388  4B FD D2 C1 */	bl __dl__FPv
lbl_8002F60C:
/* 8002F60C 0002538C  7F C3 F3 78 */	mr r3, r30
/* 8002F610 00025390  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8002F614 00025394  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8002F618 00025398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002F61C 0002539C  7C 08 03 A6 */	mtlr r0
/* 8002F620 000253A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8002F624 000253A4  4E 80 00 20 */	blr 

.global gfThread$7createThread
gfThread$7createThread:
/* 8002F628 000253A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F62C 000253AC  7C 08 02 A6 */	mflr r0
/* 8002F630 000253B0  2C 04 00 00 */	cmpwi r4, 0
/* 8002F634 000253B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F638 000253B8  38 00 00 00 */	li r0, 0
/* 8002F63C 000253BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002F640 000253C0  7C DF 33 78 */	mr r31, r6
/* 8002F644 000253C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8002F648 000253C8  7C 7E 1B 78 */	mr r30, r3
/* 8002F64C 000253CC  90 03 03 2C */	stw r0, 0x32c(r3)
/* 8002F650 000253D0  90 C3 03 20 */	stw r6, 0x320(r3)
/* 8002F654 000253D4  90 A3 03 30 */	stw r5, 0x330(r3)
/* 8002F658 000253D8  90 03 03 28 */	stw r0, 0x328(r3)
/* 8002F65C 000253DC  B0 03 03 38 */	sth r0, 0x338(r3)
/* 8002F660 000253E0  41 82 00 0C */	beq lbl_8002F66C
/* 8002F664 000253E4  90 83 03 3C */	stw r4, 0x33c(r3)
/* 8002F668 000253E8  48 00 00 08 */	b lbl_8002F670
lbl_8002F66C:
/* 8002F66C 000253EC  90 63 03 3C */	stw r3, 0x33c(r3)
lbl_8002F670:
/* 8002F670 000253F0  7C E3 3B 78 */	mr r3, r7
/* 8002F674 000253F4  7F E4 FB 78 */	mr r4, r31
/* 8002F678 000253F8  4B FF 53 6D */	bl alloc__13gfHeapManagerFUlUl
/* 8002F67C 000253FC  7C C3 FA 14 */	add r6, r3, r31
/* 8002F680 00025400  90 7E 03 24 */	stw r3, 0x324(r30)
/* 8002F684 00025404  3C 80 80 03 */	lis r4, gfThread$7startThread@ha
/* 8002F688 00025408  80 FE 03 20 */	lwz r7, 0x320(r30)
/* 8002F68C 0002540C  90 DE 03 28 */	stw r6, 0x328(r30)
/* 8002F690 00025410  7F C5 F3 78 */	mr r5, r30
/* 8002F694 00025414  81 1E 03 30 */	lwz r8, 0x330(r30)
/* 8002F698 00025418  38 7E 00 08 */	addi r3, r30, 8
/* 8002F69C 0002541C  A1 3E 03 38 */	lhz r9, 0x338(r30)
/* 8002F6A0 00025420  38 84 F6 C0 */	addi r4, r4, gfThread$7startThread@l
/* 8002F6A4 00025424  48 1B 16 59 */	bl OSCreateThread
/* 8002F6A8 00025428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F6AC 0002542C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F6B0 00025430  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002F6B4 00025434  7C 08 03 A6 */	mtlr r0
/* 8002F6B8 00025438  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F6BC 0002543C  4E 80 00 20 */	blr 

.global gfThread$7startThread
gfThread$7startThread:
/* 8002F6C0 00025440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F6C4 00025444  7C 08 02 A6 */	mflr r0
/* 8002F6C8 00025448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F6CC 0002544C  80 63 03 3C */	lwz r3, 0x33c(r3)
/* 8002F6D0 00025450  81 83 00 00 */	lwz r12, 0(r3)
/* 8002F6D4 00025454  81 8C 00 08 */	lwz r12, 8(r12)
/* 8002F6D8 00025458  7D 89 03 A6 */	mtctr r12
/* 8002F6DC 0002545C  4E 80 04 21 */	bctrl 
/* 8002F6E0 00025460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F6E4 00025464  38 60 00 00 */	li r3, 0
/* 8002F6E8 00025468  7C 08 03 A6 */	mtlr r0
/* 8002F6EC 0002546C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F6F0 00025470  4E 80 00 20 */	blr 

