.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkDefaultToiResourceMgr$7__ct
hkDefaultToiResourceMgr$7__ct:
/* 8032BBE8 00321968  3C 80 80 49 */	lis r4, lbl_80488D38@ha
/* 8032BBEC 0032196C  38 A0 00 01 */	li r5, 1
/* 8032BBF0 00321970  38 84 8D 38 */	addi r4, r4, lbl_80488D38@l
/* 8032BBF4 00321974  3C 00 00 02 */	lis r0, 2
/* 8032BBF8 00321978  B0 A3 00 06 */	sth r5, 6(r3)
/* 8032BBFC 0032197C  90 83 00 00 */	stw r4, 0(r3)
/* 8032BC00 00321980  90 03 00 08 */	stw r0, 8(r3)
/* 8032BC04 00321984  4E 80 00 20 */	blr 

.global hkDefaultToiResourceMgr$7beginToiAndSetupResources
hkDefaultToiResourceMgr$7beginToiAndSetupResources:
/* 8032BC08 00321988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BC0C 0032198C  7C 08 02 A6 */	mflr r0
/* 8032BC10 00321990  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BC14 00321994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BC18 00321998  7C DF 33 78 */	mr r31, r6
/* 8032BC1C 0032199C  93 C1 00 08 */	stw r30, 8(r1)
/* 8032BC20 003219A0  7C 7E 1B 78 */	mr r30, r3
/* 8032BC24 003219A4  48 00 01 39 */	bl hkDefaultToiResourceMgr$7shouldHandleGivenToi
/* 8032BC28 003219A8  54 60 46 3E */	srwi r0, r3, 0x18
/* 8032BC2C 003219AC  7C 03 07 74 */	extsb r3, r0
/* 8032BC30 003219B0  7C 03 00 D0 */	neg r0, r3
/* 8032BC34 003219B4  7C 00 1B 78 */	or r0, r0, r3
/* 8032BC38 003219B8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8032BC3C 003219BC  41 82 00 7C */	beq lbl_8032BCB8
/* 8032BC40 003219C0  80 7E 00 08 */	lwz r3, 8(r30)
/* 8032BC44 003219C4  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8032BC48 003219C8  38 03 00 10 */	addi r0, r3, 0x10
/* 8032BC4C 003219CC  54 04 00 36 */	rlwinm r4, r0, 0, 0, 0x1b
/* 8032BC50 003219D0  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 8032BC54 003219D4  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8032BC58 003219D8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8032BC5C 003219DC  7C A7 22 14 */	add r5, r7, r4
/* 8032BC60 003219E0  7C 05 00 40 */	cmplw r5, r0
/* 8032BC64 003219E4  41 81 00 0C */	bgt lbl_8032BC70
/* 8032BC68 003219E8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8032BC6C 003219EC  48 00 00 18 */	b lbl_8032BC84
lbl_8032BC70:
/* 8032BC70 003219F0  81 83 00 00 */	lwz r12, 0(r3)
/* 8032BC74 003219F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8032BC78 003219F8  7D 89 03 A6 */	mtctr r12
/* 8032BC7C 003219FC  4E 80 04 21 */	bctrl 
/* 8032BC80 00321A00  7C 67 1B 78 */	mr r7, r3
lbl_8032BC84:
/* 8032BC84 00321A04  38 80 03 E8 */	li r4, 0x3e8
/* 8032BC88 00321A08  38 C0 00 03 */	li r6, 3
/* 8032BC8C 00321A0C  38 A0 00 04 */	li r5, 4
/* 8032BC90 00321A10  38 00 00 02 */	li r0, 2
/* 8032BC94 00321A14  90 FF 00 18 */	stw r7, 0x18(r31)
/* 8032BC98 00321A18  38 60 00 00 */	li r3, 0
/* 8032BC9C 00321A1C  90 DF 00 10 */	stw r6, 0x10(r31)
/* 8032BCA0 00321A20  90 BF 00 14 */	stw r5, 0x14(r31)
/* 8032BCA4 00321A24  90 9F 00 08 */	stw r4, 8(r31)
/* 8032BCA8 00321A28  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8032BCAC 00321A2C  90 9F 00 04 */	stw r4, 4(r31)
/* 8032BCB0 00321A30  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BCB4 00321A34  48 00 00 08 */	b lbl_8032BCBC
lbl_8032BCB8:
/* 8032BCB8 00321A38  38 60 00 01 */	li r3, 1
lbl_8032BCBC:
/* 8032BCBC 00321A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BCC0 00321A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BCC4 00321A44  83 C1 00 08 */	lwz r30, 8(r1)
/* 8032BCC8 00321A48  7C 08 03 A6 */	mtlr r0
/* 8032BCCC 00321A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BCD0 00321A50  4E 80 00 20 */	blr 

.global hkDefaultToiResourceMgr$7endToiAndFreeResources
hkDefaultToiResourceMgr$7endToiAndFreeResources:
/* 8032BCD4 00321A54  80 86 00 18 */	lwz r4, 0x18(r6)
/* 8032BCD8 00321A58  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 8032BCDC 00321A5C  90 83 00 10 */	stw r4, 0x10(r3)
/* 8032BCE0 00321A60  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8032BCE4 00321A64  7C 04 00 40 */	cmplw r4, r0
/* 8032BCE8 00321A68  4C 82 00 20 */	bnelr 
/* 8032BCEC 00321A6C  81 83 00 00 */	lwz r12, 0(r3)
/* 8032BCF0 00321A70  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8032BCF4 00321A74  7D 89 03 A6 */	mtctr r12
/* 8032BCF8 00321A78  4E 80 04 20 */	bctr 
/* 8032BCFC 00321A7C  4E 80 00 20 */	blr 

.global hkDefaultToiResourceMgr$7__dt
hkDefaultToiResourceMgr$7__dt:
/* 8032BD00 00321A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BD04 00321A84  7C 08 02 A6 */	mflr r0
/* 8032BD08 00321A88  2C 03 00 00 */	cmpwi r3, 0
/* 8032BD0C 00321A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BD10 00321A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BD14 00321A94  7C 7F 1B 78 */	mr r31, r3
/* 8032BD18 00321A98  41 82 00 2C */	beq lbl_8032BD44
/* 8032BD1C 00321A9C  2C 04 00 00 */	cmpwi r4, 0
/* 8032BD20 00321AA0  40 81 00 24 */	ble lbl_8032BD44
/* 8032BD24 00321AA4  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 8032BD28 00321AA8  7F E4 FB 78 */	mr r4, r31
/* 8032BD2C 00321AAC  A0 BF 00 04 */	lhz r5, 4(r31)
/* 8032BD30 00321AB0  38 C0 00 13 */	li r6, 0x13
/* 8032BD34 00321AB4  81 83 00 00 */	lwz r12, 0(r3)
/* 8032BD38 00321AB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8032BD3C 00321ABC  7D 89 03 A6 */	mtctr r12
/* 8032BD40 00321AC0  4E 80 04 21 */	bctrl 
lbl_8032BD44:
/* 8032BD44 00321AC4  7F E3 FB 78 */	mr r3, r31
/* 8032BD48 00321AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BD4C 00321ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BD50 00321AD0  7C 08 03 A6 */	mtlr r0
/* 8032BD54 00321AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BD58 00321AD8  4E 80 00 20 */	blr 

.global hkDefaultToiResourceMgr$7shouldHandleGivenToi
hkDefaultToiResourceMgr$7shouldHandleGivenToi:
/* 8032BD5C 00321ADC  3C 60 01 00 */	lis r3, 0x100
/* 8032BD60 00321AE0  4E 80 00 20 */	blr 

.global hkDefaultToiResourceMgr$7resourcesDepleted
hkDefaultToiResourceMgr$7resourcesDepleted:
/* 8032BD64 00321AE4  38 60 00 01 */	li r3, 1
/* 8032BD68 00321AE8  4E 80 00 20 */	blr 

.global hkDefaultToiResourceMgr$7cannotSolve
hkDefaultToiResourceMgr$7cannotSolve:
/* 8032BD6C 00321AEC  38 60 00 00 */	li r3, 0
/* 8032BD70 00321AF0  4E 80 00 20 */	blr 

