.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkNullAgent$7__ct
hkNullAgent$7__ct:
/* 802C0590 002B6310  3C 80 80 48 */	lis r4, lbl_80486EB8@ha
/* 802C0594 002B6314  38 A0 00 01 */	li r5, 1
/* 802C0598 002B6318  38 84 6E B8 */	addi r4, r4, lbl_80486EB8@l
/* 802C059C 002B631C  38 00 00 00 */	li r0, 0
/* 802C05A0 002B6320  B0 A3 00 06 */	sth r5, 6(r3)
/* 802C05A4 002B6324  90 03 00 08 */	stw r0, 8(r3)
/* 802C05A8 002B6328  90 83 00 00 */	stw r4, 0(r3)
/* 802C05AC 002B632C  4E 80 00 20 */	blr 

.global hkNullAgent$7staticGetClosestPoints
hkNullAgent$7staticGetClosestPoints:
/* 802C05B0 002B6330  4E 80 00 20 */	blr 

.global hkNullAgent$7staticGetPenetrations
hkNullAgent$7staticGetPenetrations:
/* 802C05B4 002B6334  4E 80 00 20 */	blr 

.global hkNullAgent$7staticLinearCast
hkNullAgent$7staticLinearCast:
/* 802C05B8 002B6338  4E 80 00 20 */	blr 

.global hkNullAgent$7createNullAgent
hkNullAgent$7createNullAgent:
/* 802C05BC 002B633C  3C 60 80 53 */	lis r3, lbl_805325BC@ha
/* 802C05C0 002B6340  38 63 25 BC */	addi r3, r3, lbl_805325BC@l
/* 802C05C4 002B6344  4E 80 00 20 */	blr 

.global hkNullAgent$7getNullAgent
hkNullAgent$7getNullAgent:
/* 802C05C8 002B6348  3C 60 80 53 */	lis r3, lbl_805325BC@ha
/* 802C05CC 002B634C  38 63 25 BC */	addi r3, r3, lbl_805325BC@l
/* 802C05D0 002B6350  4E 80 00 20 */	blr 

.global hkNullAgent$7cleanup
hkNullAgent$7cleanup:
/* 802C05D4 002B6354  4E 80 00 20 */	blr 

.global hkNullAgent$7processCollision
hkNullAgent$7processCollision:
/* 802C05D8 002B6358  4E 80 00 20 */	blr 

.global hkNullAgent$7linearCast
hkNullAgent$7linearCast:
/* 802C05DC 002B635C  4E 80 00 20 */	blr 

.global hkNullAgent$7getClosestPoints
hkNullAgent$7getClosestPoints:
/* 802C05E0 002B6360  4E 80 00 20 */	blr 

.global hkNullAgent$7getPenetrations
hkNullAgent$7getPenetrations:
/* 802C05E4 002B6364  4E 80 00 20 */	blr 

.global hkNullAgent$7__dt
hkNullAgent$7__dt:
/* 802C05E8 002B6368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C05EC 002B636C  7C 08 02 A6 */	mflr r0
/* 802C05F0 002B6370  2C 03 00 00 */	cmpwi r3, 0
/* 802C05F4 002B6374  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C05F8 002B6378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C05FC 002B637C  7C 7F 1B 78 */	mr r31, r3
/* 802C0600 002B6380  41 82 00 2C */	beq lbl_802C062C
/* 802C0604 002B6384  2C 04 00 00 */	cmpwi r4, 0
/* 802C0608 002B6388  40 81 00 24 */	ble lbl_802C062C
/* 802C060C 002B638C  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802C0610 002B6390  7F E4 FB 78 */	mr r4, r31
/* 802C0614 002B6394  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802C0618 002B6398  38 C0 00 1D */	li r6, 0x1d
/* 802C061C 002B639C  81 83 00 00 */	lwz r12, 0(r3)
/* 802C0620 002B63A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C0624 002B63A4  7D 89 03 A6 */	mtctr r12
/* 802C0628 002B63A8  4E 80 04 21 */	bctrl 
lbl_802C062C:
/* 802C062C 002B63AC  7F E3 FB 78 */	mr r3, r31
/* 802C0630 002B63B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0634 002B63B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0638 002B63B8  7C 08 03 A6 */	mtlr r0
/* 802C063C 002B63BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0640 002B63C0  4E 80 00 20 */	blr 

.global __sinit_$3hkNullAgent_cpp
__sinit_$3hkNullAgent_cpp:
/* 802C0644 002B63C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0648 002B63C8  7C 08 02 A6 */	mflr r0
/* 802C064C 002B63CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0650 002B63D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0654 002B63D4  3F E0 80 53 */	lis r31, lbl_805325BC@ha
/* 802C0658 002B63D8  38 7F 25 BC */	addi r3, r31, lbl_805325BC@l
/* 802C065C 002B63DC  4B FF FF 35 */	bl hkNullAgent$7__ct
/* 802C0660 002B63E0  3C 80 80 2C */	lis r4, hkNullAgent$7__dt@ha
/* 802C0664 002B63E4  3C A0 80 53 */	lis r5, lbl_805325B0@ha
/* 802C0668 002B63E8  38 7F 25 BC */	addi r3, r31, 0x25bc
/* 802C066C 002B63EC  38 84 05 E8 */	addi r4, r4, hkNullAgent$7__dt@l
/* 802C0670 002B63F0  38 A5 25 B0 */	addi r5, r5, lbl_805325B0@l
/* 802C0674 002B63F4  48 13 00 B1 */	bl __register_global_object
/* 802C0678 002B63F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C067C 002B63FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0680 002B6400  7C 08 03 A6 */	mtlr r0
/* 802C0684 002B6404  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0688 002B6408  4E 80 00 20 */	blr 

