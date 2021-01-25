.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkPhantomBroadPhaseListener$7addCollisionPair
hkPhantomBroadPhaseListener$7addCollisionPair:
/* 802E8F00 002DEC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8F04 002DEC84  7C 08 02 A6 */	mflr r0
/* 802E8F08 002DEC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8F0C 002DEC8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E8F10 002DEC90  7C 9F 23 78 */	mr r31, r4
/* 802E8F14 002DEC94  80 64 00 00 */	lwz r3, 0(r4)
/* 802E8F18 002DEC98  88 03 00 04 */	lbz r0, 4(r3)
/* 802E8F1C 002DEC9C  2C 00 00 02 */	cmpwi r0, 2
/* 802E8F20 002DECA0  40 82 00 34 */	bne lbl_802E8F54
/* 802E8F24 002DECA4  88 03 00 05 */	lbz r0, 5(r3)
/* 802E8F28 002DECA8  80 84 00 04 */	lwz r4, 4(r4)
/* 802E8F2C 002DECAC  7C 00 07 74 */	extsb r0, r0
/* 802E8F30 002DECB0  7C A3 02 14 */	add r5, r3, r0
/* 802E8F34 002DECB4  88 04 00 05 */	lbz r0, 5(r4)
/* 802E8F38 002DECB8  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802E8F3C 002DECBC  7D 83 28 6E */	lwzux r12, r3, r5
/* 802E8F40 002DECC0  7C 00 07 74 */	extsb r0, r0
/* 802E8F44 002DECC4  7C 84 02 14 */	add r4, r4, r0
/* 802E8F48 002DECC8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E8F4C 002DECCC  7D 89 03 A6 */	mtctr r12
/* 802E8F50 002DECD0  4E 80 04 21 */	bctrl 
lbl_802E8F54:
/* 802E8F54 002DECD4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802E8F58 002DECD8  88 03 00 04 */	lbz r0, 4(r3)
/* 802E8F5C 002DECDC  2C 00 00 02 */	cmpwi r0, 2
/* 802E8F60 002DECE0  40 82 00 38 */	bne lbl_802E8F98
/* 802E8F64 002DECE4  80 BF 00 04 */	lwz r5, 4(r31)
/* 802E8F68 002DECE8  80 9F 00 00 */	lwz r4, 0(r31)
/* 802E8F6C 002DECEC  88 65 00 05 */	lbz r3, 5(r5)
/* 802E8F70 002DECF0  88 04 00 05 */	lbz r0, 5(r4)
/* 802E8F74 002DECF4  7C 63 07 74 */	extsb r3, r3
/* 802E8F78 002DECF8  7C A5 1A 14 */	add r5, r5, r3
/* 802E8F7C 002DECFC  7C 00 07 74 */	extsb r0, r0
/* 802E8F80 002DED00  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802E8F84 002DED04  7C 84 02 14 */	add r4, r4, r0
/* 802E8F88 002DED08  7D 83 28 6E */	lwzux r12, r3, r5
/* 802E8F8C 002DED0C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E8F90 002DED10  7D 89 03 A6 */	mtctr r12
/* 802E8F94 002DED14  4E 80 04 21 */	bctrl 
lbl_802E8F98:
/* 802E8F98 002DED18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8F9C 002DED1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E8FA0 002DED20  7C 08 03 A6 */	mtlr r0
/* 802E8FA4 002DED24  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8FA8 002DED28  4E 80 00 20 */	blr 

.global hkPhantomBroadPhaseListener$7removeCollisionPair
hkPhantomBroadPhaseListener$7removeCollisionPair:
/* 802E8FAC 002DED2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8FB0 002DED30  7C 08 02 A6 */	mflr r0
/* 802E8FB4 002DED34  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8FB8 002DED38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E8FBC 002DED3C  7C 9F 23 78 */	mr r31, r4
/* 802E8FC0 002DED40  80 64 00 00 */	lwz r3, 0(r4)
/* 802E8FC4 002DED44  88 03 00 04 */	lbz r0, 4(r3)
/* 802E8FC8 002DED48  2C 00 00 02 */	cmpwi r0, 2
/* 802E8FCC 002DED4C  40 82 00 34 */	bne lbl_802E9000
/* 802E8FD0 002DED50  88 03 00 05 */	lbz r0, 5(r3)
/* 802E8FD4 002DED54  80 84 00 04 */	lwz r4, 4(r4)
/* 802E8FD8 002DED58  7C 00 07 74 */	extsb r0, r0
/* 802E8FDC 002DED5C  7C A3 02 14 */	add r5, r3, r0
/* 802E8FE0 002DED60  88 04 00 05 */	lbz r0, 5(r4)
/* 802E8FE4 002DED64  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802E8FE8 002DED68  7D 83 28 6E */	lwzux r12, r3, r5
/* 802E8FEC 002DED6C  7C 00 07 74 */	extsb r0, r0
/* 802E8FF0 002DED70  7C 84 02 14 */	add r4, r4, r0
/* 802E8FF4 002DED74  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E8FF8 002DED78  7D 89 03 A6 */	mtctr r12
/* 802E8FFC 002DED7C  4E 80 04 21 */	bctrl 
lbl_802E9000:
/* 802E9000 002DED80  80 7F 00 04 */	lwz r3, 4(r31)
/* 802E9004 002DED84  88 03 00 04 */	lbz r0, 4(r3)
/* 802E9008 002DED88  2C 00 00 02 */	cmpwi r0, 2
/* 802E900C 002DED8C  40 82 00 38 */	bne lbl_802E9044
/* 802E9010 002DED90  80 BF 00 04 */	lwz r5, 4(r31)
/* 802E9014 002DED94  80 9F 00 00 */	lwz r4, 0(r31)
/* 802E9018 002DED98  88 65 00 05 */	lbz r3, 5(r5)
/* 802E901C 002DED9C  88 04 00 05 */	lbz r0, 5(r4)
/* 802E9020 002DEDA0  7C 63 07 74 */	extsb r3, r3
/* 802E9024 002DEDA4  7C A5 1A 14 */	add r5, r5, r3
/* 802E9028 002DEDA8  7C 00 07 74 */	extsb r0, r0
/* 802E902C 002DEDAC  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802E9030 002DEDB0  7C 84 02 14 */	add r4, r4, r0
/* 802E9034 002DEDB4  7D 83 28 6E */	lwzux r12, r3, r5
/* 802E9038 002DEDB8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E903C 002DEDBC  7D 89 03 A6 */	mtctr r12
/* 802E9040 002DEDC0  4E 80 04 21 */	bctrl 
lbl_802E9044:
/* 802E9044 002DEDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9048 002DEDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E904C 002DEDCC  7C 08 03 A6 */	mtlr r0
/* 802E9050 002DEDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9054 002DEDD4  4E 80 00 20 */	blr 

.global hkPhantomBroadPhaseListener$7__dt
hkPhantomBroadPhaseListener$7__dt:
/* 802E9058 002DEDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E905C 002DEDDC  7C 08 02 A6 */	mflr r0
/* 802E9060 002DEDE0  2C 03 00 00 */	cmpwi r3, 0
/* 802E9064 002DEDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9068 002DEDE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E906C 002DEDEC  7C 7F 1B 78 */	mr r31, r3
/* 802E9070 002DEDF0  41 82 00 2C */	beq lbl_802E909C
/* 802E9074 002DEDF4  2C 04 00 00 */	cmpwi r4, 0
/* 802E9078 002DEDF8  40 81 00 24 */	ble lbl_802E909C
/* 802E907C 002DEDFC  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802E9080 002DEE00  7F E4 FB 78 */	mr r4, r31
/* 802E9084 002DEE04  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802E9088 002DEE08  38 C0 00 1F */	li r6, 0x1f
/* 802E908C 002DEE0C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9090 002DEE10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E9094 002DEE14  7D 89 03 A6 */	mtctr r12
/* 802E9098 002DEE18  4E 80 04 21 */	bctrl 
lbl_802E909C:
/* 802E909C 002DEE1C  7F E3 FB 78 */	mr r3, r31
/* 802E90A0 002DEE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E90A4 002DEE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E90A8 002DEE28  7C 08 03 A6 */	mtlr r0
/* 802E90AC 002DEE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E90B0 002DEE30  4E 80 00 20 */	blr 

.global __sinit_$3hkPhantomClass_cpp
__sinit_$3hkPhantomClass_cpp:
/* 802E90B4 002DEE34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E90B8 002DEE38  7C 08 02 A6 */	mflr r0
/* 802E90BC 002DEE3C  3C A0 80 41 */	lis r5, lbl_80413290@ha
/* 802E90C0 002DEE40  3C 60 80 53 */	lis r3, lbl_805331A0@ha
/* 802E90C4 002DEE44  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E90C8 002DEE48  38 A5 32 90 */	addi r5, r5, lbl_80413290@l
/* 802E90CC 002DEE4C  3C 80 80 41 */	lis r4, lbl_804132B8@ha
/* 802E90D0 002DEE50  38 C0 00 02 */	li r6, 2
/* 802E90D4 002DEE54  90 A1 00 08 */	stw r5, 8(r1)
/* 802E90D8 002DEE58  3C A0 80 53 */	lis r5, lbl_80533238@ha
/* 802E90DC 002DEE5C  38 00 00 00 */	li r0, 0
/* 802E90E0 002DEE60  38 63 31 A0 */	addi r3, r3, lbl_805331A0@l
/* 802E90E4 002DEE64  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802E90E8 002DEE68  38 84 32 B8 */	addi r4, r4, lbl_804132B8@l
/* 802E90EC 002DEE6C  38 A5 32 38 */	addi r5, r5, lbl_80533238@l
/* 802E90F0 002DEE70  38 C0 00 70 */	li r6, 0x70
/* 802E90F4 002DEE74  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E90F8 002DEE78  38 E0 00 00 */	li r7, 0
/* 802E90FC 002DEE7C  39 00 00 00 */	li r8, 0
/* 802E9100 002DEE80  39 20 00 00 */	li r9, 0
/* 802E9104 002DEE84  39 40 00 00 */	li r10, 0
/* 802E9108 002DEE88  4B F9 37 01 */	bl hkClass$7__ct
/* 802E910C 002DEE8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E9110 002DEE90  7C 08 03 A6 */	mtlr r0
/* 802E9114 002DEE94  38 21 00 20 */	addi r1, r1, 0x20
/* 802E9118 002DEE98  4E 80 00 20 */	blr 
