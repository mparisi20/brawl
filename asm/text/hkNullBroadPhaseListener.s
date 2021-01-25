.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkNullBroadPhaseListener$7addCollisionPair
hkNullBroadPhaseListener$7addCollisionPair:
/* 802CACF8 002C0A78  4E 80 00 20 */	blr 

.global hkNullBroadPhaseListener$7removeCollisionPair
hkNullBroadPhaseListener$7removeCollisionPair:
/* 802CACFC 002C0A7C  4E 80 00 20 */	blr 

.global hkNullBroadPhaseListener$7__dt
hkNullBroadPhaseListener$7__dt:
/* 802CAD00 002C0A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CAD04 002C0A84  7C 08 02 A6 */	mflr r0
/* 802CAD08 002C0A88  2C 03 00 00 */	cmpwi r3, 0
/* 802CAD0C 002C0A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CAD10 002C0A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CAD14 002C0A94  7C 7F 1B 78 */	mr r31, r3
/* 802CAD18 002C0A98  41 82 00 2C */	beq lbl_802CAD44
/* 802CAD1C 002C0A9C  2C 04 00 00 */	cmpwi r4, 0
/* 802CAD20 002C0AA0  40 81 00 24 */	ble lbl_802CAD44
/* 802CAD24 002C0AA4  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802CAD28 002C0AA8  7F E4 FB 78 */	mr r4, r31
/* 802CAD2C 002C0AAC  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802CAD30 002C0AB0  38 C0 00 1F */	li r6, 0x1f
/* 802CAD34 002C0AB4  81 83 00 00 */	lwz r12, 0(r3)
/* 802CAD38 002C0AB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CAD3C 002C0ABC  7D 89 03 A6 */	mtctr r12
/* 802CAD40 002C0AC0  4E 80 04 21 */	bctrl 
lbl_802CAD44:
/* 802CAD44 002C0AC4  7F E3 FB 78 */	mr r3, r31
/* 802CAD48 002C0AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CAD4C 002C0ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CAD50 002C0AD0  7C 08 03 A6 */	mtlr r0
/* 802CAD54 002C0AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CAD58 002C0AD8  4E 80 00 20 */	blr 

