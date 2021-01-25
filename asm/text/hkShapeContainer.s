.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkSingleShapeContainer
finishLoadedObjecthkSingleShapeContainer:
/* 802D4CE4 002CAA64  2C 03 00 00 */	cmpwi r3, 0
/* 802D4CE8 002CAA68  4D 82 00 20 */	beqlr 
/* 802D4CEC 002CAA6C  3C 80 80 48 */	lis r4, lbl_804873E8@ha
/* 802D4CF0 002CAA70  38 84 73 E8 */	addi r4, r4, lbl_804873E8@l
/* 802D4CF4 002CAA74  90 83 00 00 */	stw r4, 0(r3)
/* 802D4CF8 002CAA78  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkSingleShapeContainer
cleanupLoadedObjecthkSingleShapeContainer:
/* 802D4CFC 002CAA7C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D4D00 002CAA80  38 80 FF FF */	li r4, -1
/* 802D4D04 002CAA84  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D4D08 002CAA88  7D 89 03 A6 */	mtctr r12
/* 802D4D0C 002CAA8C  4E 80 04 20 */	bctr 

.global getVtablehkSingleShapeContainer
getVtablehkSingleShapeContainer:
/* 802D4D10 002CAA90  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802D4D14 002CAA94  7C 2C 0B 78 */	mr r12, r1
/* 802D4D18 002CAA98  21 6B FF E0 */	subfic r11, r11, -32
/* 802D4D1C 002CAA9C  7C 21 59 6E */	stwux r1, r1, r11
/* 802D4D20 002CAAA0  34 01 00 10 */	addic. r0, r1, 0x10
/* 802D4D24 002CAAA4  41 82 00 10 */	beq lbl_802D4D34
/* 802D4D28 002CAAA8  3C 60 80 48 */	lis r3, lbl_804873E8@ha
/* 802D4D2C 002CAAAC  38 63 73 E8 */	addi r3, r3, lbl_804873E8@l
/* 802D4D30 002CAAB0  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802D4D34:
/* 802D4D34 002CAAB4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802D4D38 002CAAB8  81 41 00 00 */	lwz r10, 0(r1)
/* 802D4D3C 002CAABC  7D 41 53 78 */	mr r1, r10
/* 802D4D40 002CAAC0  4E 80 00 20 */	blr 

.global hkShapeContainer$7getNumChildShapes
hkShapeContainer$7getNumChildShapes:
/* 802D4D44 002CAAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4D48 002CAAC8  7C 08 02 A6 */	mflr r0
/* 802D4D4C 002CAACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4D50 002CAAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4D54 002CAAD4  3B E0 00 00 */	li r31, 0
/* 802D4D58 002CAAD8  93 C1 00 08 */	stw r30, 8(r1)
/* 802D4D5C 002CAADC  7C 7E 1B 78 */	mr r30, r3
/* 802D4D60 002CAAE0  81 83 00 00 */	lwz r12, 0(r3)
/* 802D4D64 002CAAE4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D4D68 002CAAE8  7D 89 03 A6 */	mtctr r12
/* 802D4D6C 002CAAEC  4E 80 04 21 */	bctrl 
/* 802D4D70 002CAAF0  7C 64 1B 78 */	mr r4, r3
/* 802D4D74 002CAAF4  48 00 00 20 */	b lbl_802D4D94
lbl_802D4D78:
/* 802D4D78 002CAAF8  81 9E 00 00 */	lwz r12, 0(r30)
/* 802D4D7C 002CAAFC  7F C3 F3 78 */	mr r3, r30
/* 802D4D80 002CAB00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D4D84 002CAB04  7D 89 03 A6 */	mtctr r12
/* 802D4D88 002CAB08  3B FF 00 01 */	addi r31, r31, 1
/* 802D4D8C 002CAB0C  4E 80 04 21 */	bctrl 
/* 802D4D90 002CAB10  7C 64 1B 78 */	mr r4, r3
lbl_802D4D94:
/* 802D4D94 002CAB14  3C 04 00 01 */	addis r0, r4, 1
/* 802D4D98 002CAB18  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D4D9C 002CAB1C  40 82 FF DC */	bne lbl_802D4D78
/* 802D4DA0 002CAB20  7F E3 FB 78 */	mr r3, r31
/* 802D4DA4 002CAB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4DA8 002CAB28  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D4DAC 002CAB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4DB0 002CAB30  7C 08 03 A6 */	mtlr r0
/* 802D4DB4 002CAB34  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4DB8 002CAB38  4E 80 00 20 */	blr 

.global __sinit_$3hkShapeContainer_cpp
__sinit_$3hkShapeContainer_cpp:
/* 802D4DBC 002CAB3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4DC0 002CAB40  7C 08 02 A6 */	mflr r0
/* 802D4DC4 002CAB44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4DC8 002CAB48  4B FF FF 49 */	bl getVtablehkSingleShapeContainer
/* 802D4DCC 002CAB4C  3D 00 80 41 */	lis r8, lbl_804109E0@ha
/* 802D4DD0 002CAB50  3C E0 80 53 */	lis r7, lbl_80532858@ha
/* 802D4DD4 002CAB54  3C C0 80 2D */	lis r6, finishLoadedObjecthkSingleShapeContainer@ha
/* 802D4DD8 002CAB58  3C 80 80 2D */	lis r4, cleanupLoadedObjecthkSingleShapeContainer@ha
/* 802D4DDC 002CAB5C  39 08 09 E0 */	addi r8, r8, lbl_804109E0@l
/* 802D4DE0 002CAB60  38 A7 28 58 */	addi r5, r7, lbl_80532858@l
/* 802D4DE4 002CAB64  38 C6 4C E4 */	addi r6, r6, finishLoadedObjecthkSingleShapeContainer@l
/* 802D4DE8 002CAB68  38 84 4C FC */	addi r4, r4, cleanupLoadedObjecthkSingleShapeContainer@l
/* 802D4DEC 002CAB6C  91 07 28 58 */	stw r8, 0x2858(r7)
/* 802D4DF0 002CAB70  90 C5 00 04 */	stw r6, 4(r5)
/* 802D4DF4 002CAB74  90 85 00 08 */	stw r4, 8(r5)
/* 802D4DF8 002CAB78  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D4DFC 002CAB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4E00 002CAB80  7C 08 03 A6 */	mtlr r0
/* 802D4E04 002CAB84  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4E08 002CAB88  4E 80 00 20 */	blr 

.global __sinit_$3hkShapeContainerClass_cpp
__sinit_$3hkShapeContainerClass_cpp:
/* 802D4E0C 002CAB8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D4E10 002CAB90  7C 08 02 A6 */	mflr r0
/* 802D4E14 002CAB94  38 A0 00 00 */	li r5, 0
/* 802D4E18 002CAB98  38 C0 00 04 */	li r6, 4
/* 802D4E1C 002CAB9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D4E20 002CABA0  38 E0 00 00 */	li r7, 0
/* 802D4E24 002CABA4  39 00 00 01 */	li r8, 1
/* 802D4E28 002CABA8  39 20 00 00 */	li r9, 0
/* 802D4E2C 002CABAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802D4E30 002CABB0  3F E0 80 41 */	lis r31, lbl_80410A18@ha
/* 802D4E34 002CABB4  38 9F 0A 18 */	addi r4, r31, lbl_80410A18@l
/* 802D4E38 002CABB8  39 40 00 00 */	li r10, 0
/* 802D4E3C 002CABBC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802D4E40 002CABC0  3F C0 80 53 */	lis r30, lbl_80532868@ha
/* 802D4E44 002CABC4  38 7E 28 68 */	addi r3, r30, lbl_80532868@l
/* 802D4E48 002CABC8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802D4E4C 002CABCC  3B A0 00 00 */	li r29, 0
/* 802D4E50 002CABD0  93 A1 00 08 */	stw r29, 8(r1)
/* 802D4E54 002CABD4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802D4E58 002CABD8  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802D4E5C 002CABDC  4B FA 79 AD */	bl hkClass$7__ct
/* 802D4E60 002CABE0  3C A0 80 41 */	lis r5, lbl_80410A04@ha
/* 802D4E64 002CABE4  38 9F 0A 18 */	addi r4, r31, 0xa18
/* 802D4E68 002CABE8  38 A5 0A 04 */	addi r5, r5, lbl_80410A04@l
/* 802D4E6C 002CABEC  3C 60 80 53 */	lis r3, lbl_8053288C@ha
/* 802D4E70 002CABF0  90 A1 00 08 */	stw r5, 8(r1)
/* 802D4E74 002CABF4  38 00 00 01 */	li r0, 1
/* 802D4E78 002CABF8  38 63 28 8C */	addi r3, r3, lbl_8053288C@l
/* 802D4E7C 002CABFC  38 84 00 11 */	addi r4, r4, 0x11
/* 802D4E80 002CAC00  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D4E84 002CAC04  38 BE 28 68 */	addi r5, r30, 0x2868
/* 802D4E88 002CAC08  38 C0 00 08 */	li r6, 8
/* 802D4E8C 002CAC0C  38 E0 00 00 */	li r7, 0
/* 802D4E90 002CAC10  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802D4E94 002CAC14  39 00 00 00 */	li r8, 0
/* 802D4E98 002CAC18  39 20 00 00 */	li r9, 0
/* 802D4E9C 002CAC1C  39 40 00 00 */	li r10, 0
/* 802D4EA0 002CAC20  4B FA 79 69 */	bl hkClass$7__ct
/* 802D4EA4 002CAC24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D4EA8 002CAC28  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802D4EAC 002CAC2C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802D4EB0 002CAC30  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802D4EB4 002CAC34  7C 08 03 A6 */	mtlr r0
/* 802D4EB8 002CAC38  38 21 00 30 */	addi r1, r1, 0x30
/* 802D4EBC 002CAC3C  4E 80 00 20 */	blr 

