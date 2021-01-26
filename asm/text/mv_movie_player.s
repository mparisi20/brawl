.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global mvMoviePlayer$7__dt
mvMoviePlayer$7__dt:
/* 8007EA78 000747F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007EA7C 000747FC  7C 08 02 A6 */	mflr r0
/* 8007EA80 00074800  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007EA84 00074804  39 61 00 20 */	addi r11, r1, 0x20
/* 8007EA88 00074808  48 37 28 95 */	bl _savegpr_26
/* 8007EA8C 0007480C  2C 03 00 00 */	cmpwi r3, 0
/* 8007EA90 00074810  7C 7E 1B 78 */	mr r30, r3
/* 8007EA94 00074814  7C 9F 23 78 */	mr r31, r4
/* 8007EA98 00074818  41 82 01 54 */	beq lbl_8007EBEC
/* 8007EA9C 0007481C  80 6D BE 40 */	lwz r3, lbl_805A0260-_SDA_BASE_(r13)
/* 8007EAA0 00074820  2C 03 00 00 */	cmpwi r3, 0
/* 8007EAA4 00074824  41 82 00 10 */	beq lbl_8007EAB4
/* 8007EAA8 00074828  4B FA F4 8D */	bl gfTask$7exit
/* 8007EAAC 0007482C  38 00 00 00 */	li r0, 0
/* 8007EAB0 00074830  90 0D BE 40 */	stw r0, lbl_805A0260-_SDA_BASE_(r13)
lbl_8007EAB4:
/* 8007EAB4 00074834  80 0D BD F4 */	lwz r0, lbl_805A0214-_SDA_BASE_(r13)
/* 8007EAB8 00074838  2C 00 00 00 */	cmpwi r0, 0
/* 8007EABC 0007483C  41 82 00 14 */	beq lbl_8007EAD0
/* 8007EAC0 00074840  4B FF DF 1D */	bl THPPlayerStop
/* 8007EAC4 00074844  4B FF D6 A5 */	bl THPPlayerClose
/* 8007EAC8 00074848  38 00 00 00 */	li r0, 0
/* 8007EACC 0007484C  90 0D BD F4 */	stw r0, lbl_805A0214-_SDA_BASE_(r13)
lbl_8007EAD0:
/* 8007EAD0 00074850  4B FF F6 41 */	bl FreeTHPReadWork
/* 8007EAD4 00074854  4B FF F8 F5 */	bl FreeTHPVideoDecWork
/* 8007EAD8 00074858  4B FF C6 01 */	bl FreeTHPAudioDecWork
/* 8007EADC 0007485C  4B FF D2 09 */	bl FreeTHPPlayerWork
/* 8007EAE0 00074860  80 6D BD F8 */	lwz r3, lbl_805A0218-_SDA_BASE_(r13)
/* 8007EAE4 00074864  2C 03 00 00 */	cmpwi r3, 0
/* 8007EAE8 00074868  41 82 00 10 */	beq lbl_8007EAF8
/* 8007EAEC 0007486C  4B FA 5F 61 */	bl gfHeapManager$7free
/* 8007EAF0 00074870  38 00 00 00 */	li r0, 0
/* 8007EAF4 00074874  90 0D BD F8 */	stw r0, lbl_805A0218-_SDA_BASE_(r13)
lbl_8007EAF8:
/* 8007EAF8 00074878  80 6D BD FC */	lwz r3, lbl_805A021C-_SDA_BASE_(r13)
/* 8007EAFC 0007487C  2C 03 00 00 */	cmpwi r3, 0
/* 8007EB00 00074880  41 82 00 10 */	beq lbl_8007EB10
/* 8007EB04 00074884  4B FA 5F 49 */	bl gfHeapManager$7free
/* 8007EB08 00074888  38 00 00 00 */	li r0, 0
/* 8007EB0C 0007488C  90 0D BD FC */	stw r0, lbl_805A021C-_SDA_BASE_(r13)
lbl_8007EB10:
/* 8007EB10 00074890  80 6D BE 00 */	lwz r3, lbl_805A0220-_SDA_BASE_(r13)
/* 8007EB14 00074894  2C 03 00 00 */	cmpwi r3, 0
/* 8007EB18 00074898  41 82 00 10 */	beq lbl_8007EB28
/* 8007EB1C 0007489C  4B FA 5F 31 */	bl gfHeapManager$7free
/* 8007EB20 000748A0  38 00 00 00 */	li r0, 0
/* 8007EB24 000748A4  90 0D BE 00 */	stw r0, lbl_805A0220-_SDA_BASE_(r13)
lbl_8007EB28:
/* 8007EB28 000748A8  80 6D BE 04 */	lwz r3, lbl_805A0224-_SDA_BASE_(r13)
/* 8007EB2C 000748AC  2C 03 00 00 */	cmpwi r3, 0
/* 8007EB30 000748B0  41 82 00 10 */	beq lbl_8007EB40
/* 8007EB34 000748B4  4B FA 5F 19 */	bl gfHeapManager$7free
/* 8007EB38 000748B8  38 00 00 00 */	li r0, 0
/* 8007EB3C 000748BC  90 0D BE 04 */	stw r0, lbl_805A0224-_SDA_BASE_(r13)
lbl_8007EB40:
/* 8007EB40 000748C0  80 6D BE 08 */	lwz r3, lbl_805A0228-_SDA_BASE_(r13)
/* 8007EB44 000748C4  2C 03 00 00 */	cmpwi r3, 0
/* 8007EB48 000748C8  41 82 00 10 */	beq lbl_8007EB58
/* 8007EB4C 000748CC  4B FA 5F 01 */	bl gfHeapManager$7free
/* 8007EB50 000748D0  38 00 00 00 */	li r0, 0
/* 8007EB54 000748D4  90 0D BE 08 */	stw r0, lbl_805A0228-_SDA_BASE_(r13)
lbl_8007EB58:
/* 8007EB58 000748D8  80 6D BE 0C */	lwz r3, lbl_805A022C-_SDA_BASE_(r13)
/* 8007EB5C 000748DC  2C 03 00 00 */	cmpwi r3, 0
/* 8007EB60 000748E0  41 82 00 10 */	beq lbl_8007EB70
/* 8007EB64 000748E4  4B FA 5E E9 */	bl gfHeapManager$7free
/* 8007EB68 000748E8  38 00 00 00 */	li r0, 0
/* 8007EB6C 000748EC  90 0D BE 0C */	stw r0, lbl_805A022C-_SDA_BASE_(r13)
lbl_8007EB70:
/* 8007EB70 000748F0  4B FF D1 ED */	bl THPPlayerQuit
/* 8007EB74 000748F4  3F 60 80 4A */	lis r27, lbl_8049DDF0@ha
/* 8007EB78 000748F8  3B 40 00 00 */	li r26, 0
/* 8007EB7C 000748FC  3B 7B DD F0 */	addi r27, r27, lbl_8049DDF0@l
/* 8007EB80 00074900  3B 8D BE 2C */	addi r28, r13, lbl_805A024C-_SDA_BASE_
/* 8007EB84 00074904  3B A0 00 00 */	li r29, 0
lbl_8007EB88:
/* 8007EB88 00074908  88 1C 00 00 */	lbz r0, 0(r28)
/* 8007EB8C 0007490C  2C 00 00 00 */	cmpwi r0, 0
/* 8007EB90 00074910  41 82 00 10 */	beq lbl_8007EBA0
/* 8007EB94 00074914  7F 63 DB 78 */	mr r3, r27
/* 8007EB98 00074918  48 17 79 8D */	bl DVDClose
/* 8007EB9C 0007491C  9B BC 00 00 */	stb r29, 0(r28)
lbl_8007EBA0:
/* 8007EBA0 00074920  3B 5A 00 01 */	addi r26, r26, 1
/* 8007EBA4 00074924  3B 7B 00 3C */	addi r27, r27, 0x3c
/* 8007EBA8 00074928  2C 1A 00 02 */	cmpwi r26, 2
/* 8007EBAC 0007492C  3B 9C 00 01 */	addi r28, r28, 1
/* 8007EBB0 00074930  41 80 FF D8 */	blt lbl_8007EB88
/* 8007EBB4 00074934  48 0D EB 79 */	bl nw4r2ut2LCFv$7Enable
/* 8007EBB8 00074938  80 8D BD F0 */	lwz r4, lbl_805A0210-_SDA_BASE_(r13)
/* 8007EBBC 0007493C  80 6D BE 10 */	lwz r3, lbl_805A0230-_SDA_BASE_(r13)
/* 8007EBC0 00074940  38 04 FF FF */	addi r0, r4, -1
/* 8007EBC4 00074944  90 0D BD F0 */	stw r0, lbl_805A0210-_SDA_BASE_(r13)
/* 8007EBC8 00074948  48 18 25 11 */	bl AXRegisterCallback
/* 8007EBCC 0007494C  38 00 00 00 */	li r0, 0
/* 8007EBD0 00074950  2C 1F 00 00 */	cmpwi r31, 0
/* 8007EBD4 00074954  90 0D BE 10 */	stw r0, lbl_805A0230-_SDA_BASE_(r13)
/* 8007EBD8 00074958  90 0D BE 30 */	stw r0, lbl_805A0250-_SDA_BASE_(r13)
/* 8007EBDC 0007495C  90 0D BE 3C */	stw r0, lbl_805A025C-_SDA_BASE_(r13)
/* 8007EBE0 00074960  40 81 00 0C */	ble lbl_8007EBEC
/* 8007EBE4 00074964  7F C3 F3 78 */	mr r3, r30
/* 8007EBE8 00074968  4B F8 DC E1 */	bl __dl
lbl_8007EBEC:
/* 8007EBEC 0007496C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007EBF0 00074970  7F C3 F3 78 */	mr r3, r30
/* 8007EBF4 00074974  48 37 27 75 */	bl _restgpr_26
/* 8007EBF8 00074978  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007EBFC 0007497C  7C 08 03 A6 */	mtlr r0
/* 8007EC00 00074980  38 21 00 20 */	addi r1, r1, 0x20
/* 8007EC04 00074984  4E 80 00 20 */	blr 

.global mvMoviePlayer$7openMovie
mvMoviePlayer$7openMovie:
/* 8007EC08 00074988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007EC0C 0007498C  7C 08 02 A6 */	mflr r0
/* 8007EC10 00074990  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007EC14 00074994  39 61 00 20 */	addi r11, r1, 0x20
/* 8007EC18 00074998  48 37 27 09 */	bl _savegpr_27
/* 8007EC1C 0007499C  3F E0 80 45 */	lis r31, lbl_80454708@ha
/* 8007EC20 000749A0  3C 60 80 4A */	lis r3, lbl_8049DDD0@ha
/* 8007EC24 000749A4  7C 9B 23 78 */	mr r27, r4
/* 8007EC28 000749A8  7C BC 2B 78 */	mr r28, r5
/* 8007EC2C 000749AC  7C DD 33 78 */	mr r29, r6
/* 8007EC30 000749B0  7C FE 3B 78 */	mr r30, r7
/* 8007EC34 000749B4  3B FF 47 08 */	addi r31, r31, lbl_80454708@l
/* 8007EC38 000749B8  38 63 DD D0 */	addi r3, r3, lbl_8049DDD0@l
/* 8007EC3C 000749BC  48 37 B6 45 */	bl strcpy
/* 8007EC40 000749C0  80 0D BD F4 */	lwz r0, lbl_805A0214-_SDA_BASE_(r13)
/* 8007EC44 000749C4  2C 00 00 00 */	cmpwi r0, 0
/* 8007EC48 000749C8  41 82 00 20 */	beq lbl_8007EC68
/* 8007EC4C 000749CC  4B FF DD 91 */	bl THPPlayerStop
/* 8007EC50 000749D0  4B FF D5 19 */	bl THPPlayerClose
/* 8007EC54 000749D4  80 6D BD F8 */	lwz r3, lbl_805A0218-_SDA_BASE_(r13)
/* 8007EC58 000749D8  4B FA 5D F5 */	bl gfHeapManager$7free
/* 8007EC5C 000749DC  38 00 00 00 */	li r0, 0
/* 8007EC60 000749E0  90 0D BD F8 */	stw r0, lbl_805A0218-_SDA_BASE_(r13)
/* 8007EC64 000749E4  90 0D BD F4 */	stw r0, lbl_805A0214-_SDA_BASE_(r13)
lbl_8007EC68:
/* 8007EC68 000749E8  38 00 00 00 */	li r0, 0
/* 8007EC6C 000749EC  7F 63 DB 78 */	mr r3, r27
/* 8007EC70 000749F0  98 0D BE 2E */	stb r0, lbl_805A024E-_SDA_BASE_(r13)
/* 8007EC74 000749F4  38 80 00 00 */	li r4, 0
/* 8007EC78 000749F8  4B FF D1 19 */	bl THPPlayerOpen
/* 8007EC7C 000749FC  2C 03 00 00 */	cmpwi r3, 0
/* 8007EC80 00074A00  40 82 00 18 */	bne lbl_8007EC98
/* 8007EC84 00074A04  38 7F 00 00 */	addi r3, r31, 0
/* 8007EC88 00074A08  38 BF 00 14 */	addi r5, r31, 0x14
/* 8007EC8C 00074A0C  38 80 00 D6 */	li r4, 0xd6
/* 8007EC90 00074A10  4C C6 31 82 */	crclr 6
/* 8007EC94 00074A14  48 15 99 FD */	bl OSPanic
lbl_8007EC98:
/* 8007EC98 00074A18  38 A0 00 00 */	li r5, 0
/* 8007EC9C 00074A1C  38 00 00 01 */	li r0, 1
/* 8007ECA0 00074A20  93 8D BE 24 */	stw r28, lbl_805A0244-_SDA_BASE_(r13)
/* 8007ECA4 00074A24  38 60 00 40 */	li r3, 0x40
/* 8007ECA8 00074A28  38 80 00 2A */	li r4, 0x2a
/* 8007ECAC 00074A2C  9B CD BE 28 */	stb r30, lbl_805A0248-_SDA_BASE_(r13)
/* 8007ECB0 00074A30  9B AD BE 29 */	stb r29, lbl_805A0249-_SDA_BASE_(r13)
/* 8007ECB4 00074A34  98 AD BE 2A */	stb r5, lbl_805A024A-_SDA_BASE_(r13)
/* 8007ECB8 00074A38  90 0D BD F4 */	stw r0, lbl_805A0214-_SDA_BASE_(r13)
/* 8007ECBC 00074A3C  90 AD BE 1C */	stw r5, lbl_805A023C-_SDA_BASE_(r13)
/* 8007ECC0 00074A40  90 AD BE 20 */	stw r5, lbl_805A0240-_SDA_BASE_(r13)
/* 8007ECC4 00074A44  4B F8 DB F5 */	bl srHeapType$7__nw
/* 8007ECC8 00074A48  2C 03 00 00 */	cmpwi r3, 0
/* 8007ECCC 00074A4C  7C 7E 1B 78 */	mr r30, r3
/* 8007ECD0 00074A50  41 82 00 28 */	beq lbl_8007ECF8
/* 8007ECD4 00074A54  38 9F 00 34 */	addi r4, r31, 0x34
/* 8007ECD8 00074A58  38 A0 00 08 */	li r5, 8
/* 8007ECDC 00074A5C  38 C0 00 0E */	li r6, 0xe
/* 8007ECE0 00074A60  38 E0 00 06 */	li r7, 6
/* 8007ECE4 00074A64  39 00 00 01 */	li r8, 1
/* 8007ECE8 00074A68  4B FA EB D1 */	bl gfTask$7__ct
/* 8007ECEC 00074A6C  3C 60 80 45 */	lis r3, lbl_804547A4@ha
/* 8007ECF0 00074A70  38 63 47 A4 */	addi r3, r3, lbl_804547A4@l
/* 8007ECF4 00074A74  90 7E 00 3C */	stw r3, 0x3c(r30)
lbl_8007ECF8:
/* 8007ECF8 00074A78  93 CD BE 40 */	stw r30, lbl_805A0260-_SDA_BASE_(r13)
/* 8007ECFC 00074A7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007ED00 00074A80  48 37 26 6D */	bl _restgpr_27
/* 8007ED04 00074A84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007ED08 00074A88  7C 08 03 A6 */	mtlr r0
/* 8007ED0C 00074A8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8007ED10 00074A90  4E 80 00 20 */	blr 

.global mvMoviePlayer$7isOpened
mvMoviePlayer$7isOpened:
/* 8007ED14 00074A94  80 8D BD F4 */	lwz r4, lbl_805A0214-_SDA_BASE_(r13)
/* 8007ED18 00074A98  88 0D BE 2A */	lbz r0, lbl_805A024A-_SDA_BASE_(r13)
/* 8007ED1C 00074A9C  7C 64 00 D0 */	neg r3, r4
/* 8007ED20 00074AA0  7C 63 23 78 */	or r3, r3, r4
/* 8007ED24 00074AA4  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 8007ED28 00074AA8  7C 03 18 38 */	and r3, r0, r3
/* 8007ED2C 00074AAC  4E 80 00 20 */	blr 

.global mvMoviePlayer$7loadLastFrameInfo
mvMoviePlayer$7loadLastFrameInfo:
/* 8007ED30 00074AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007ED34 00074AB4  7C 08 02 A6 */	mflr r0
/* 8007ED38 00074AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007ED3C 00074ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007ED40 00074AC0  80 0D BD F4 */	lwz r0, lbl_805A0214-_SDA_BASE_(r13)
/* 8007ED44 00074AC4  2C 00 00 00 */	cmpwi r0, 0
/* 8007ED48 00074AC8  41 82 00 44 */	beq lbl_8007ED8C
/* 8007ED4C 00074ACC  3C 60 80 4A */	lis r3, lbl_8049DDD0@ha
/* 8007ED50 00074AD0  3F E0 80 4A */	lis r31, lbl_8049DDF0@ha
/* 8007ED54 00074AD4  38 63 DD D0 */	addi r3, r3, lbl_8049DDD0@l
/* 8007ED58 00074AD8  38 9F DD F0 */	addi r4, r31, lbl_8049DDF0@l
/* 8007ED5C 00074ADC  48 17 75 1D */	bl DVDOpen
/* 8007ED60 00074AE0  3C A0 80 4A */	lis r5, lbl_8049DC00@ha
/* 8007ED64 00074AE4  80 8D BE 0C */	lwz r4, lbl_805A022C-_SDA_BASE_(r13)
/* 8007ED68 00074AE8  38 A5 DC 00 */	addi r5, r5, lbl_8049DC00@l
/* 8007ED6C 00074AEC  38 7F DD F0 */	addi r3, r31, -8720
/* 8007ED70 00074AF0  80 C5 00 64 */	lwz r6, 0x64(r5)
/* 8007ED74 00074AF4  38 A0 00 20 */	li r5, 0x20
/* 8007ED78 00074AF8  38 E0 00 00 */	li r7, 0
/* 8007ED7C 00074AFC  39 00 00 02 */	li r8, 2
/* 8007ED80 00074B00  48 17 79 89 */	bl DVDReadAsyncPrio
/* 8007ED84 00074B04  38 00 00 01 */	li r0, 1
/* 8007ED88 00074B08  98 0D BE 2C */	stb r0, lbl_805A024C-_SDA_BASE_(r13)
lbl_8007ED8C:
/* 8007ED8C 00074B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007ED90 00074B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007ED94 00074B14  7C 08 03 A6 */	mtlr r0
/* 8007ED98 00074B18  38 21 00 10 */	addi r1, r1, 0x10
/* 8007ED9C 00074B1C  4E 80 00 20 */	blr 

.global mvMoviePlayer$7isLoadedLastFrameInfo
mvMoviePlayer$7isLoadedLastFrameInfo:
/* 8007EDA0 00074B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007EDA4 00074B24  7C 08 02 A6 */	mflr r0
/* 8007EDA8 00074B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007EDAC 00074B2C  88 0D BE 2C */	lbz r0, lbl_805A024C-_SDA_BASE_(r13)
/* 8007EDB0 00074B30  2C 00 00 00 */	cmpwi r0, 0
/* 8007EDB4 00074B34  41 82 00 20 */	beq lbl_8007EDD4
/* 8007EDB8 00074B38  3C 60 80 4A */	lis r3, lbl_8049DDF0@ha
/* 8007EDBC 00074B3C  38 63 DD F0 */	addi r3, r3, lbl_8049DDF0@l
/* 8007EDC0 00074B40  48 17 BE 11 */	bl DVDGetCommandBlockStatus
/* 8007EDC4 00074B44  2C 03 00 00 */	cmpwi r3, 0
/* 8007EDC8 00074B48  40 82 00 0C */	bne lbl_8007EDD4
/* 8007EDCC 00074B4C  38 60 00 01 */	li r3, 1
/* 8007EDD0 00074B50  48 00 00 08 */	b lbl_8007EDD8
lbl_8007EDD4:
/* 8007EDD4 00074B54  38 60 00 00 */	li r3, 0
lbl_8007EDD8:
/* 8007EDD8 00074B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007EDDC 00074B5C  7C 08 03 A6 */	mtlr r0
/* 8007EDE0 00074B60  38 21 00 10 */	addi r1, r1, 0x10
/* 8007EDE4 00074B64  4E 80 00 20 */	blr 

.global mvMoviePlayer$7closeLastFrameInfo
mvMoviePlayer$7closeLastFrameInfo:
/* 8007EDE8 00074B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007EDEC 00074B6C  7C 08 02 A6 */	mflr r0
/* 8007EDF0 00074B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007EDF4 00074B74  88 0D BE 2C */	lbz r0, lbl_805A024C-_SDA_BASE_(r13)
/* 8007EDF8 00074B78  2C 00 00 00 */	cmpwi r0, 0
/* 8007EDFC 00074B7C  41 82 00 18 */	beq lbl_8007EE14
/* 8007EE00 00074B80  3C 60 80 4A */	lis r3, lbl_8049DDF0@ha
/* 8007EE04 00074B84  38 63 DD F0 */	addi r3, r3, lbl_8049DDF0@l
/* 8007EE08 00074B88  48 17 77 1D */	bl DVDClose
/* 8007EE0C 00074B8C  38 00 00 00 */	li r0, 0
/* 8007EE10 00074B90  98 0D BE 2C */	stb r0, lbl_805A024C-_SDA_BASE_(r13)
lbl_8007EE14:
/* 8007EE14 00074B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007EE18 00074B98  7C 08 03 A6 */	mtlr r0
/* 8007EE1C 00074B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007EE20 00074BA0  4E 80 00 20 */	blr 

.global mvMoviePlayer$7loadLastFrame
mvMoviePlayer$7loadLastFrame:
/* 8007EE24 00074BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007EE28 00074BA8  7C 08 02 A6 */	mflr r0
/* 8007EE2C 00074BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007EE30 00074BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007EE34 00074BB4  93 C1 00 08 */	stw r30, 8(r1)
/* 8007EE38 00074BB8  80 0D BD F4 */	lwz r0, lbl_805A0214-_SDA_BASE_(r13)
/* 8007EE3C 00074BBC  2C 00 00 00 */	cmpwi r0, 0
/* 8007EE40 00074BC0  41 82 00 54 */	beq lbl_8007EE94
/* 8007EE44 00074BC4  80 8D BE 0C */	lwz r4, lbl_805A022C-_SDA_BASE_(r13)
/* 8007EE48 00074BC8  3F E0 80 4A */	lis r31, lbl_8049DDF0@ha
/* 8007EE4C 00074BCC  3C 60 80 4A */	lis r3, lbl_8049DDD0@ha
/* 8007EE50 00074BD0  3B FF DD F0 */	addi r31, r31, lbl_8049DDF0@l
/* 8007EE54 00074BD4  83 C4 00 04 */	lwz r30, 4(r4)
/* 8007EE58 00074BD8  38 63 DD D0 */	addi r3, r3, lbl_8049DDD0@l
/* 8007EE5C 00074BDC  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8007EE60 00074BE0  48 17 74 19 */	bl DVDOpen
/* 8007EE64 00074BE4  3C 60 80 4A */	lis r3, lbl_8049DC00@ha
/* 8007EE68 00074BE8  80 8D BE 0C */	lwz r4, lbl_805A022C-_SDA_BASE_(r13)
/* 8007EE6C 00074BEC  38 63 DC 00 */	addi r3, r3, lbl_8049DC00@l
/* 8007EE70 00074BF0  7F C5 F3 78 */	mr r5, r30
/* 8007EE74 00074BF4  80 C3 00 68 */	lwz r6, 0x68(r3)
/* 8007EE78 00074BF8  38 7F 00 3C */	addi r3, r31, 0x3c
/* 8007EE7C 00074BFC  38 E0 00 00 */	li r7, 0
/* 8007EE80 00074C00  39 00 00 02 */	li r8, 2
/* 8007EE84 00074C04  48 17 78 85 */	bl DVDReadAsyncPrio
/* 8007EE88 00074C08  38 00 00 01 */	li r0, 1
/* 8007EE8C 00074C0C  38 6D BE 2C */	addi r3, r13, lbl_805A024C-_SDA_BASE_
/* 8007EE90 00074C10  98 03 00 01 */	stb r0, 1(r3)
lbl_8007EE94:
/* 8007EE94 00074C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007EE98 00074C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007EE9C 00074C1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8007EEA0 00074C20  7C 08 03 A6 */	mtlr r0
/* 8007EEA4 00074C24  38 21 00 10 */	addi r1, r1, 0x10
/* 8007EEA8 00074C28  4E 80 00 20 */	blr 

.global mvMoviePlayer$7isLoadedLastFrame
mvMoviePlayer$7isLoadedLastFrame:
/* 8007EEAC 00074C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007EEB0 00074C30  7C 08 02 A6 */	mflr r0
/* 8007EEB4 00074C34  38 6D BE 2C */	addi r3, r13, lbl_805A024C-_SDA_BASE_
/* 8007EEB8 00074C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007EEBC 00074C3C  88 03 00 01 */	lbz r0, 1(r3)
/* 8007EEC0 00074C40  2C 00 00 00 */	cmpwi r0, 0
/* 8007EEC4 00074C44  41 82 00 24 */	beq lbl_8007EEE8
/* 8007EEC8 00074C48  3C 60 80 4A */	lis r3, lbl_8049DDF0@ha
/* 8007EECC 00074C4C  38 63 DD F0 */	addi r3, r3, lbl_8049DDF0@l
/* 8007EED0 00074C50  38 63 00 3C */	addi r3, r3, 0x3c
/* 8007EED4 00074C54  48 17 BC FD */	bl DVDGetCommandBlockStatus
/* 8007EED8 00074C58  2C 03 00 00 */	cmpwi r3, 0
/* 8007EEDC 00074C5C  40 82 00 0C */	bne lbl_8007EEE8
/* 8007EEE0 00074C60  38 60 00 01 */	li r3, 1
/* 8007EEE4 00074C64  48 00 00 08 */	b lbl_8007EEEC
lbl_8007EEE8:
/* 8007EEE8 00074C68  38 60 00 00 */	li r3, 0
lbl_8007EEEC:
/* 8007EEEC 00074C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007EEF0 00074C70  7C 08 03 A6 */	mtlr r0
/* 8007EEF4 00074C74  38 21 00 10 */	addi r1, r1, 0x10
/* 8007EEF8 00074C78  4E 80 00 20 */	blr 

.global mvMoviePlayer$7closeLastFrame
mvMoviePlayer$7closeLastFrame:
/* 8007EEFC 00074C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007EF00 00074C80  7C 08 02 A6 */	mflr r0
/* 8007EF04 00074C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007EF08 00074C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007EF0C 00074C8C  3B ED BE 2C */	addi r31, r13, lbl_805A024C-_SDA_BASE_
/* 8007EF10 00074C90  88 1F 00 01 */	lbz r0, 1(r31)
/* 8007EF14 00074C94  2C 00 00 00 */	cmpwi r0, 0
/* 8007EF18 00074C98  41 82 00 1C */	beq lbl_8007EF34
/* 8007EF1C 00074C9C  3C 60 80 4A */	lis r3, lbl_8049DDF0@ha
/* 8007EF20 00074CA0  38 63 DD F0 */	addi r3, r3, lbl_8049DDF0@l
/* 8007EF24 00074CA4  38 63 00 3C */	addi r3, r3, 0x3c
/* 8007EF28 00074CA8  48 17 75 FD */	bl DVDClose
/* 8007EF2C 00074CAC  38 00 00 00 */	li r0, 0
/* 8007EF30 00074CB0  98 1F 00 01 */	stb r0, 1(r31)
lbl_8007EF34:
/* 8007EF34 00074CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007EF38 00074CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007EF3C 00074CBC  7C 08 03 A6 */	mtlr r0
/* 8007EF40 00074CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007EF44 00074CC4  4E 80 00 20 */	blr 

.global mvMoviePlayer$7getVideoSize
mvMoviePlayer$7getVideoSize:
/* 8007EF48 00074CC8  3C 60 80 4A */	lis r3, lbl_8049DDB0@ha
/* 8007EF4C 00074CCC  80 03 DD B0 */	lwz r0, lbl_8049DDB0@l(r3)

