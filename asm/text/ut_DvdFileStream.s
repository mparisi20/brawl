.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ut13DvdFileStreamFlP11DVDFile$7DvdAsyncCallback
nw4r2ut13DvdFileStreamFlP11DVDFile$7DvdAsyncCallback:
/* 8015CD54 00152AD4  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 8015CD58 00152AD8  38 00 00 00 */	li r0, 0
/* 8015CD5C 00152ADC  98 04 00 6C */	stb r0, 0x6c(r4)
/* 8015CD60 00152AE0  90 64 00 08 */	stw r3, 8(r4)
/* 8015CD64 00152AE4  81 84 00 0C */	lwz r12, 0xc(r4)
/* 8015CD68 00152AE8  2C 0C 00 00 */	cmpwi r12, 0
/* 8015CD6C 00152AEC  4D 82 00 20 */	beqlr 
/* 8015CD70 00152AF0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8015CD74 00152AF4  7D 89 03 A6 */	mtctr r12
/* 8015CD78 00152AF8  4E 80 04 20 */	bctr 
/* 8015CD7C 00152AFC  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFlP15DVDComm$7DvdCBAsyncCallback
nw4r2ut13DvdFileStreamFlP15DVDComm$7DvdCBAsyncCallback:
/* 8015CD80 00152B00  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 8015CD84 00152B04  38 00 00 00 */	li r0, 0
/* 8015CD88 00152B08  98 04 00 24 */	stb r0, 0x24(r4)
/* 8015CD8C 00152B0C  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 8015CD90 00152B10  2C 0C 00 00 */	cmpwi r12, 0
/* 8015CD94 00152B14  4D 82 00 20 */	beqlr 
/* 8015CD98 00152B18  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 8015CD9C 00152B1C  7D 89 03 A6 */	mtctr r12
/* 8015CDA0 00152B20  4E 80 04 20 */	bctr 
/* 8015CDA4 00152B24  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFl$7__ct
nw4r2ut13DvdFileStreamFl$7__ct:
/* 8015CDA8 00152B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CDAC 00152B2C  7C 08 02 A6 */	mflr r0
/* 8015CDB0 00152B30  3C A0 80 46 */	lis r5, lbl_804645A8@ha
/* 8015CDB4 00152B34  38 C0 00 00 */	li r6, 0
/* 8015CDB8 00152B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CDBC 00152B3C  38 A5 45 A8 */	addi r5, r5, lbl_804645A8@l
/* 8015CDC0 00152B40  38 00 00 02 */	li r0, 2
/* 8015CDC4 00152B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CDC8 00152B48  7C 7F 1B 78 */	mr r31, r3
/* 8015CDCC 00152B4C  98 C3 00 6C */	stb r6, 0x6c(r3)
/* 8015CDD0 00152B50  90 A3 00 00 */	stw r5, 0(r3)
/* 8015CDD4 00152B54  90 C3 00 14 */	stw r6, 0x14(r3)
/* 8015CDD8 00152B58  90 C3 00 18 */	stw r6, 0x18(r3)
/* 8015CDDC 00152B5C  98 C3 00 6D */	stb r6, 0x6d(r3)
/* 8015CDE0 00152B60  98 C3 00 6E */	stb r6, 0x6e(r3)
/* 8015CDE4 00152B64  98 C3 00 04 */	stb r6, 4(r3)
/* 8015CDE8 00152B68  90 03 00 68 */	stw r0, 0x68(r3)
/* 8015CDEC 00152B6C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8015CDF0 00152B70  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8015CDF4 00152B74  90 C3 00 08 */	stw r6, 8(r3)
/* 8015CDF8 00152B78  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 8015CDFC 00152B7C  98 C3 00 24 */	stb r6, 0x24(r3)
/* 8015CE00 00152B80  90 C3 00 20 */	stw r6, 0x20(r3)
/* 8015CE04 00152B84  90 63 00 64 */	stw r3, 0x64(r3)
/* 8015CE08 00152B88  48 00 00 08 */	b lbl_8015CE10
/* 8015CE0C 00152B8C  4E 80 04 21 */	bctrl 
lbl_8015CE10:
/* 8015CE10 00152B90  7C 83 23 78 */	mr r3, r4
/* 8015CE14 00152B94  38 9F 00 28 */	addi r4, r31, 0x28
/* 8015CE18 00152B98  48 09 93 F9 */	bl DVDFastOpen
/* 8015CE1C 00152B9C  2C 03 00 00 */	cmpwi r3, 0
/* 8015CE20 00152BA0  41 82 00 2C */	beq lbl_8015CE4C
/* 8015CE24 00152BA4  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8015CE28 00152BA8  38 7F 00 14 */	addi r3, r31, 0x14
/* 8015CE2C 00152BAC  38 80 00 00 */	li r4, 0
/* 8015CE30 00152BB0  38 A0 00 00 */	li r5, 0
/* 8015CE34 00152BB4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8015CE38 00152BB8  4B FF FE 71 */	bl nw4r2ut10FileStream12FilePositionFlUl$7Seek
/* 8015CE3C 00152BBC  38 00 00 01 */	li r0, 1
/* 8015CE40 00152BC0  98 1F 00 6D */	stb r0, 0x6d(r31)
/* 8015CE44 00152BC4  98 1F 00 6E */	stb r0, 0x6e(r31)
/* 8015CE48 00152BC8  98 1F 00 04 */	stb r0, 4(r31)
lbl_8015CE4C:
/* 8015CE4C 00152BCC  7F E3 FB 78 */	mr r3, r31
/* 8015CE50 00152BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CE54 00152BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CE58 00152BD8  7C 08 03 A6 */	mtlr r0
/* 8015CE5C 00152BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CE60 00152BE0  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFPC11DVDFile$7__ct
nw4r2ut13DvdFileStreamFPC11DVDFile$7__ct:
/* 8015CE64 00152BE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015CE68 00152BE8  7C 08 02 A6 */	mflr r0
/* 8015CE6C 00152BEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015CE70 00152BF0  39 61 00 30 */	addi r11, r1, 0x30
/* 8015CE74 00152BF4  48 29 44 99 */	bl _savegpr_22
/* 8015CE78 00152BF8  3C C0 80 46 */	lis r6, lbl_804645A8@ha
/* 8015CE7C 00152BFC  38 E0 00 00 */	li r7, 0
/* 8015CE80 00152C00  38 C6 45 A8 */	addi r6, r6, lbl_804645A8@l
/* 8015CE84 00152C04  38 00 00 02 */	li r0, 2
/* 8015CE88 00152C08  98 E3 00 6C */	stb r7, 0x6c(r3)
/* 8015CE8C 00152C0C  7C 7E 1B 78 */	mr r30, r3
/* 8015CE90 00152C10  7C 96 23 78 */	mr r22, r4
/* 8015CE94 00152C14  7C BF 2B 78 */	mr r31, r5
/* 8015CE98 00152C18  90 C3 00 00 */	stw r6, 0(r3)
/* 8015CE9C 00152C1C  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8015CEA0 00152C20  90 E3 00 18 */	stw r7, 0x18(r3)
/* 8015CEA4 00152C24  98 E3 00 6D */	stb r7, 0x6d(r3)
/* 8015CEA8 00152C28  98 E3 00 6E */	stb r7, 0x6e(r3)
/* 8015CEAC 00152C2C  98 E3 00 04 */	stb r7, 4(r3)
/* 8015CEB0 00152C30  90 03 00 68 */	stw r0, 0x68(r3)
/* 8015CEB4 00152C34  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8015CEB8 00152C38  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8015CEBC 00152C3C  90 E3 00 08 */	stw r7, 8(r3)
/* 8015CEC0 00152C40  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8015CEC4 00152C44  98 E3 00 24 */	stb r7, 0x24(r3)
/* 8015CEC8 00152C48  90 E3 00 20 */	stw r7, 0x20(r3)
/* 8015CECC 00152C4C  90 63 00 64 */	stw r3, 0x64(r3)
/* 8015CED0 00152C50  48 00 00 08 */	b lbl_8015CED8
/* 8015CED4 00152C54  4E 80 04 21 */	bctrl 
lbl_8015CED8:
/* 8015CED8 00152C58  80 D6 00 34 */	lwz r6, 0x34(r22)
/* 8015CEDC 00152C5C  38 7E 00 14 */	addi r3, r30, 0x14
/* 8015CEE0 00152C60  82 F6 00 00 */	lwz r23, 0(r22)
/* 8015CEE4 00152C64  38 80 00 00 */	li r4, 0
/* 8015CEE8 00152C68  83 16 00 04 */	lwz r24, 4(r22)
/* 8015CEEC 00152C6C  38 A0 00 00 */	li r5, 0
/* 8015CEF0 00152C70  83 36 00 08 */	lwz r25, 8(r22)
/* 8015CEF4 00152C74  83 56 00 0C */	lwz r26, 0xc(r22)
/* 8015CEF8 00152C78  83 76 00 10 */	lwz r27, 0x10(r22)
/* 8015CEFC 00152C7C  83 96 00 14 */	lwz r28, 0x14(r22)
/* 8015CF00 00152C80  83 B6 00 18 */	lwz r29, 0x18(r22)
/* 8015CF04 00152C84  81 96 00 1C */	lwz r12, 0x1c(r22)
/* 8015CF08 00152C88  81 76 00 20 */	lwz r11, 0x20(r22)
/* 8015CF0C 00152C8C  81 56 00 24 */	lwz r10, 0x24(r22)
/* 8015CF10 00152C90  81 36 00 28 */	lwz r9, 0x28(r22)
/* 8015CF14 00152C94  81 16 00 2C */	lwz r8, 0x2c(r22)
/* 8015CF18 00152C98  80 F6 00 30 */	lwz r7, 0x30(r22)
/* 8015CF1C 00152C9C  80 16 00 38 */	lwz r0, 0x38(r22)
/* 8015CF20 00152CA0  92 FE 00 28 */	stw r23, 0x28(r30)
/* 8015CF24 00152CA4  93 1E 00 2C */	stw r24, 0x2c(r30)
/* 8015CF28 00152CA8  93 3E 00 30 */	stw r25, 0x30(r30)
/* 8015CF2C 00152CAC  93 5E 00 34 */	stw r26, 0x34(r30)
/* 8015CF30 00152CB0  93 7E 00 38 */	stw r27, 0x38(r30)
/* 8015CF34 00152CB4  93 9E 00 3C */	stw r28, 0x3c(r30)
/* 8015CF38 00152CB8  93 BE 00 40 */	stw r29, 0x40(r30)
/* 8015CF3C 00152CBC  91 9E 00 44 */	stw r12, 0x44(r30)
/* 8015CF40 00152CC0  91 7E 00 48 */	stw r11, 0x48(r30)
/* 8015CF44 00152CC4  91 5E 00 4C */	stw r10, 0x4c(r30)
/* 8015CF48 00152CC8  91 3E 00 50 */	stw r9, 0x50(r30)
/* 8015CF4C 00152CCC  91 1E 00 54 */	stw r8, 0x54(r30)
/* 8015CF50 00152CD0  90 FE 00 58 */	stw r7, 0x58(r30)
/* 8015CF54 00152CD4  90 DE 00 5C */	stw r6, 0x5c(r30)
/* 8015CF58 00152CD8  90 1E 00 60 */	stw r0, 0x60(r30)
/* 8015CF5C 00152CDC  90 DE 00 14 */	stw r6, 0x14(r30)
/* 8015CF60 00152CE0  4B FF FD 49 */	bl nw4r2ut10FileStream12FilePositionFlUl$7Seek
/* 8015CF64 00152CE4  38 60 00 00 */	li r3, 0
/* 8015CF68 00152CE8  38 00 00 01 */	li r0, 1
/* 8015CF6C 00152CEC  98 7E 00 6D */	stb r3, 0x6d(r30)
/* 8015CF70 00152CF0  39 61 00 30 */	addi r11, r1, 0x30
/* 8015CF74 00152CF4  7F C3 F3 78 */	mr r3, r30
/* 8015CF78 00152CF8  9B FE 00 6E */	stb r31, 0x6e(r30)
/* 8015CF7C 00152CFC  98 1E 00 04 */	stb r0, 4(r30)
/* 8015CF80 00152D00  48 29 43 D9 */	bl _restgpr_22
/* 8015CF84 00152D04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015CF88 00152D08  7C 08 03 A6 */	mtlr r0
/* 8015CF8C 00152D0C  38 21 00 30 */	addi r1, r1, 0x30
/* 8015CF90 00152D10  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFv$7__dt
nw4r2ut13DvdFileStreamFv$7__dt:
/* 8015CF94 00152D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CF98 00152D18  7C 08 02 A6 */	mflr r0
/* 8015CF9C 00152D1C  2C 03 00 00 */	cmpwi r3, 0
/* 8015CFA0 00152D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CFA4 00152D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CFA8 00152D28  7C 9F 23 78 */	mr r31, r4
/* 8015CFAC 00152D2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8015CFB0 00152D30  7C 7E 1B 78 */	mr r30, r3
/* 8015CFB4 00152D34  41 82 00 3C */	beq lbl_8015CFF0
/* 8015CFB8 00152D38  88 03 00 6D */	lbz r0, 0x6d(r3)
/* 8015CFBC 00152D3C  3C 80 80 46 */	lis r4, lbl_804645A8@ha
/* 8015CFC0 00152D40  38 84 45 A8 */	addi r4, r4, lbl_804645A8@l
/* 8015CFC4 00152D44  2C 00 00 00 */	cmpwi r0, 0
/* 8015CFC8 00152D48  90 83 00 00 */	stw r4, 0(r3)
/* 8015CFCC 00152D4C  41 82 00 14 */	beq lbl_8015CFE0
/* 8015CFD0 00152D50  81 83 00 00 */	lwz r12, 0(r3)
/* 8015CFD4 00152D54  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8015CFD8 00152D58  7D 89 03 A6 */	mtctr r12
/* 8015CFDC 00152D5C  4E 80 04 21 */	bctrl 
lbl_8015CFE0:
/* 8015CFE0 00152D60  2C 1F 00 00 */	cmpwi r31, 0
/* 8015CFE4 00152D64  40 81 00 0C */	ble lbl_8015CFF0
/* 8015CFE8 00152D68  7F C3 F3 78 */	mr r3, r30
/* 8015CFEC 00152D6C  4B EA F8 DD */	bl __dl__FPv
lbl_8015CFF0:
/* 8015CFF0 00152D70  7F C3 F3 78 */	mr r3, r30
/* 8015CFF4 00152D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CFF8 00152D78  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015CFFC 00152D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D000 00152D80  7C 08 03 A6 */	mtlr r0
/* 8015D004 00152D84  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D008 00152D88  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFv$7Close
nw4r2ut13DvdFileStreamFv$7Close:
/* 8015D00C 00152D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D010 00152D90  7C 08 02 A6 */	mflr r0
/* 8015D014 00152D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D018 00152D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D01C 00152D9C  7C 7F 1B 78 */	mr r31, r3
/* 8015D020 00152DA0  88 03 00 6E */	lbz r0, 0x6e(r3)
/* 8015D024 00152DA4  2C 00 00 00 */	cmpwi r0, 0
/* 8015D028 00152DA8  41 82 00 20 */	beq lbl_8015D048
/* 8015D02C 00152DAC  88 03 00 04 */	lbz r0, 4(r3)
/* 8015D030 00152DB0  2C 00 00 00 */	cmpwi r0, 0
/* 8015D034 00152DB4  41 82 00 14 */	beq lbl_8015D048
/* 8015D038 00152DB8  38 63 00 28 */	addi r3, r3, 0x28
/* 8015D03C 00152DBC  48 09 94 E9 */	bl DVDClose
/* 8015D040 00152DC0  38 00 00 00 */	li r0, 0
/* 8015D044 00152DC4  98 1F 00 04 */	stb r0, 4(r31)
lbl_8015D048:
/* 8015D048 00152DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D04C 00152DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D050 00152DD0  7C 08 03 A6 */	mtlr r0
/* 8015D054 00152DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D058 00152DD8  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFPvUl$7Read
nw4r2ut13DvdFileStreamFPvUl$7Read:
/* 8015D05C 00152DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D060 00152DE0  7C 08 02 A6 */	mflr r0
/* 8015D064 00152DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D068 00152DE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D06C 00152DEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8015D070 00152DF0  7C 7E 1B 78 */	mr r30, r3
/* 8015D074 00152DF4  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8015D078 00152DF8  81 03 00 14 */	lwz r8, 0x14(r3)
/* 8015D07C 00152DFC  7C E6 2A 14 */	add r7, r6, r5
/* 8015D080 00152E00  38 E7 00 1F */	addi r7, r7, 0x1f
/* 8015D084 00152E04  38 08 00 1F */	addi r0, r8, 0x1f
/* 8015D088 00152E08  54 E7 00 34 */	rlwinm r7, r7, 0, 0, 0x1a
/* 8015D08C 00152E0C  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8015D090 00152E10  7C 07 00 40 */	cmplw r7, r0
/* 8015D094 00152E14  40 81 00 10 */	ble lbl_8015D0A4
/* 8015D098 00152E18  7C A6 40 50 */	subf r5, r6, r8
/* 8015D09C 00152E1C  38 05 00 1F */	addi r0, r5, 0x1f
/* 8015D0A0 00152E20  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
lbl_8015D0A4:
/* 8015D0A4 00152E24  80 E3 00 68 */	lwz r7, 0x68(r3)
/* 8015D0A8 00152E28  38 63 00 28 */	addi r3, r3, 0x28
/* 8015D0AC 00152E2C  48 09 97 45 */	bl DVDReadPrio
/* 8015D0B0 00152E30  2C 03 00 00 */	cmpwi r3, 0
/* 8015D0B4 00152E34  7C 7F 1B 78 */	mr r31, r3
/* 8015D0B8 00152E38  40 81 00 10 */	ble lbl_8015D0C8
/* 8015D0BC 00152E3C  7F E4 FB 78 */	mr r4, r31
/* 8015D0C0 00152E40  38 7E 00 14 */	addi r3, r30, 0x14
/* 8015D0C4 00152E44  4B FF FB 81 */	bl nw4r2ut10FileStream12FilePositionFl$7Skip
lbl_8015D0C8:
/* 8015D0C8 00152E48  7F E3 FB 78 */	mr r3, r31
/* 8015D0CC 00152E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D0D0 00152E50  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015D0D4 00152E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D0D8 00152E58  7C 08 03 A6 */	mtlr r0
/* 8015D0DC 00152E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D0E0 00152E60  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFPvUlPFlPQ34$7ReadAsync
nw4r2ut13DvdFileStreamFPvUlPFlPQ34$7ReadAsync:
/* 8015D0E4 00152E64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015D0E8 00152E68  7C 08 02 A6 */	mflr r0
/* 8015D0EC 00152E6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015D0F0 00152E70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015D0F4 00152E74  7C 7F 1B 78 */	mr r31, r3
/* 8015D0F8 00152E78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015D0FC 00152E7C  7C BE 2B 78 */	mr r30, r5
/* 8015D100 00152E80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8015D104 00152E84  81 03 00 18 */	lwz r8, 0x18(r3)
/* 8015D108 00152E88  81 23 00 14 */	lwz r9, 0x14(r3)
/* 8015D10C 00152E8C  7C A8 2A 14 */	add r5, r8, r5
/* 8015D110 00152E90  38 A5 00 1F */	addi r5, r5, 0x1f
/* 8015D114 00152E94  38 09 00 1F */	addi r0, r9, 0x1f
/* 8015D118 00152E98  54 A5 00 34 */	rlwinm r5, r5, 0, 0, 0x1a
/* 8015D11C 00152E9C  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8015D120 00152EA0  7C 05 00 40 */	cmplw r5, r0
/* 8015D124 00152EA4  40 81 00 10 */	ble lbl_8015D134
/* 8015D128 00152EA8  7C A8 48 50 */	subf r5, r8, r9
/* 8015D12C 00152EAC  38 05 00 1F */	addi r0, r5, 0x1f
/* 8015D130 00152EB0  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
lbl_8015D134:
/* 8015D134 00152EB4  81 63 00 18 */	lwz r11, 0x18(r3)
/* 8015D138 00152EB8  39 20 00 01 */	li r9, 1
/* 8015D13C 00152EBC  81 43 00 14 */	lwz r10, 0x14(r3)
/* 8015D140 00152EC0  7F C5 F3 78 */	mr r5, r30
/* 8015D144 00152EC4  7D 0B F2 14 */	add r8, r11, r30
/* 8015D148 00152EC8  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8015D14C 00152ECC  38 C8 00 1F */	addi r6, r8, 0x1f
/* 8015D150 00152ED0  38 0A 00 1F */	addi r0, r10, 0x1f
/* 8015D154 00152ED4  54 C6 00 34 */	rlwinm r6, r6, 0, 0, 0x1a
/* 8015D158 00152ED8  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8015D15C 00152EDC  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8015D160 00152EE0  7C 06 00 40 */	cmplw r6, r0
/* 8015D164 00152EE4  99 23 00 6C */	stb r9, 0x6c(r3)
/* 8015D168 00152EE8  40 81 00 10 */	ble lbl_8015D178
/* 8015D16C 00152EEC  7C AB 50 50 */	subf r5, r11, r10
/* 8015D170 00152EF0  38 05 00 1F */	addi r0, r5, 0x1f
/* 8015D174 00152EF4  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
lbl_8015D178:
/* 8015D178 00152EF8  81 03 00 68 */	lwz r8, 0x68(r3)
/* 8015D17C 00152EFC  3C E0 80 16 */	lis r7, nw4r2ut13DvdFileStreamFlP11DVDFile$7DvdAsyncCallback@ha
/* 8015D180 00152F00  7D 66 5B 78 */	mr r6, r11
/* 8015D184 00152F04  38 63 00 28 */	addi r3, r3, 0x28
/* 8015D188 00152F08  38 E7 CD 54 */	addi r7, r7, nw4r2ut13DvdFileStreamFlP11DVDFile$7DvdAsyncCallback@l
/* 8015D18C 00152F0C  48 09 95 7D */	bl DVDReadAsyncPrio
/* 8015D190 00152F10  7C 03 00 D0 */	neg r0, r3
/* 8015D194 00152F14  7C 00 1B 78 */	or r0, r0, r3
/* 8015D198 00152F18  54 1D 0F FF */	rlwinm. r29, r0, 1, 0x1f, 0x1f
/* 8015D19C 00152F1C  41 82 00 14 */	beq lbl_8015D1B0
/* 8015D1A0 00152F20  7F C4 F3 78 */	mr r4, r30
/* 8015D1A4 00152F24  38 7F 00 14 */	addi r3, r31, 0x14
/* 8015D1A8 00152F28  4B FF FA 9D */	bl nw4r2ut10FileStream12FilePositionFl$7Skip
/* 8015D1AC 00152F2C  48 00 00 0C */	b lbl_8015D1B8
lbl_8015D1B0:
/* 8015D1B0 00152F30  38 00 00 00 */	li r0, 0
/* 8015D1B4 00152F34  98 1F 00 6C */	stb r0, 0x6c(r31)
lbl_8015D1B8:
/* 8015D1B8 00152F38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015D1BC 00152F3C  7F A3 EB 78 */	mr r3, r29
/* 8015D1C0 00152F40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015D1C4 00152F44  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8015D1C8 00152F48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015D1CC 00152F4C  7C 08 03 A6 */	mtlr r0
/* 8015D1D0 00152F50  38 21 00 20 */	addi r1, r1, 0x20
/* 8015D1D4 00152F54  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFPvUl$7Peek
nw4r2ut13DvdFileStreamFPvUl$7Peek:
/* 8015D1D8 00152F58  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8015D1DC 00152F5C  81 03 00 14 */	lwz r8, 0x14(r3)
/* 8015D1E0 00152F60  7C E6 2A 14 */	add r7, r6, r5
/* 8015D1E4 00152F64  38 E7 00 1F */	addi r7, r7, 0x1f
/* 8015D1E8 00152F68  38 08 00 1F */	addi r0, r8, 0x1f
/* 8015D1EC 00152F6C  54 E7 00 34 */	rlwinm r7, r7, 0, 0, 0x1a
/* 8015D1F0 00152F70  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8015D1F4 00152F74  7C 07 00 40 */	cmplw r7, r0
/* 8015D1F8 00152F78  40 81 00 10 */	ble lbl_8015D208
/* 8015D1FC 00152F7C  7C A6 40 50 */	subf r5, r6, r8
/* 8015D200 00152F80  38 05 00 1F */	addi r0, r5, 0x1f
/* 8015D204 00152F84  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
lbl_8015D208:
/* 8015D208 00152F88  80 E3 00 68 */	lwz r7, 0x68(r3)
/* 8015D20C 00152F8C  38 63 00 28 */	addi r3, r3, 0x28
/* 8015D210 00152F90  48 09 95 E0 */	b DVDReadPrio

.global nw4r2ut13DvdFileStreamFPvUlPFlPQ34$7PeekAsync
nw4r2ut13DvdFileStreamFPvUlPFlPQ34$7PeekAsync:
/* 8015D214 00152F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D218 00152F98  7C 08 02 A6 */	mflr r0
/* 8015D21C 00152F9C  39 20 00 01 */	li r9, 1
/* 8015D220 00152FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D224 00152FA4  81 63 00 18 */	lwz r11, 0x18(r3)
/* 8015D228 00152FA8  81 43 00 14 */	lwz r10, 0x14(r3)
/* 8015D22C 00152FAC  7D 0B 2A 14 */	add r8, r11, r5
/* 8015D230 00152FB0  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8015D234 00152FB4  38 C8 00 1F */	addi r6, r8, 0x1f
/* 8015D238 00152FB8  38 0A 00 1F */	addi r0, r10, 0x1f
/* 8015D23C 00152FBC  54 C6 00 34 */	rlwinm r6, r6, 0, 0, 0x1a
/* 8015D240 00152FC0  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8015D244 00152FC4  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8015D248 00152FC8  7C 06 00 40 */	cmplw r6, r0
/* 8015D24C 00152FCC  99 23 00 6C */	stb r9, 0x6c(r3)
/* 8015D250 00152FD0  40 81 00 10 */	ble lbl_8015D260
/* 8015D254 00152FD4  7C AB 50 50 */	subf r5, r11, r10
/* 8015D258 00152FD8  38 05 00 1F */	addi r0, r5, 0x1f
/* 8015D25C 00152FDC  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
lbl_8015D260:
/* 8015D260 00152FE0  81 03 00 68 */	lwz r8, 0x68(r3)
/* 8015D264 00152FE4  3C E0 80 16 */	lis r7, nw4r2ut13DvdFileStreamFlP11DVDFile$7DvdAsyncCallback@ha
/* 8015D268 00152FE8  7D 66 5B 78 */	mr r6, r11
/* 8015D26C 00152FEC  38 63 00 28 */	addi r3, r3, 0x28
/* 8015D270 00152FF0  38 E7 CD 54 */	addi r7, r7, nw4r2ut13DvdFileStreamFlP11DVDFile$7DvdAsyncCallback@l
/* 8015D274 00152FF4  48 09 94 95 */	bl DVDReadAsyncPrio
/* 8015D278 00152FF8  7C 03 00 D0 */	neg r0, r3
/* 8015D27C 00152FFC  7C 00 1B 78 */	or r0, r0, r3
/* 8015D280 00153000  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8015D284 00153004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D288 00153008  7C 08 03 A6 */	mtlr r0
/* 8015D28C 0015300C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D290 00153010  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamFlUl$7Seek
nw4r2ut13DvdFileStreamFlUl$7Seek:
/* 8015D294 00153014  38 63 00 14 */	addi r3, r3, 0x14
/* 8015D298 00153018  4B FF FA 10 */	b nw4r2ut10FileStream12FilePositionFlUl$7Seek

.global nw4r2ut13DvdFileStreamFv$7Cancel
nw4r2ut13DvdFileStreamFv$7Cancel:
/* 8015D29C 0015301C  38 63 00 28 */	addi r3, r3, 0x28
/* 8015D2A0 00153020  48 09 DE 58 */	b DVDCancel

.global nw4r2ut13DvdFileStreamFPFlPQ34nw4r$7CancelAsync
nw4r2ut13DvdFileStreamFPFlPQ34nw4r$7CancelAsync:
/* 8015D2A4 00153024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D2A8 00153028  7C 08 02 A6 */	mflr r0
/* 8015D2AC 0015302C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D2B0 00153030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D2B4 00153034  7C 7F 1B 78 */	mr r31, r3
/* 8015D2B8 00153038  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8015D2BC 0015303C  3C 80 80 16 */	lis r4, nw4r2ut13DvdFileStreamFlP15DVDComm$7DvdCBAsyncCallback@ha
/* 8015D2C0 00153040  38 84 CD 80 */	addi r4, r4, nw4r2ut13DvdFileStreamFlP15DVDComm$7DvdCBAsyncCallback@l
/* 8015D2C4 00153044  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8015D2C8 00153048  38 63 00 28 */	addi r3, r3, 0x28
/* 8015D2CC 0015304C  48 09 DA C9 */	bl DVDCancelAsync
/* 8015D2D0 00153050  2C 03 00 00 */	cmpwi r3, 0
/* 8015D2D4 00153054  41 82 00 0C */	beq lbl_8015D2E0
/* 8015D2D8 00153058  38 00 00 01 */	li r0, 1
/* 8015D2DC 0015305C  98 1F 00 24 */	stb r0, 0x24(r31)
lbl_8015D2E0:
/* 8015D2E0 00153060  7C 03 00 D0 */	neg r0, r3
/* 8015D2E4 00153064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D2E8 00153068  7C 00 1B 78 */	or r0, r0, r3
/* 8015D2EC 0015306C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8015D2F0 00153070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D2F4 00153074  7C 08 03 A6 */	mtlr r0
/* 8015D2F8 00153078  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D2FC 0015307C  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7GetBufferAlign
nw4r2ut13DvdFileStreamCFv$7GetBufferAlign:
/* 8015D300 00153080  38 60 00 20 */	li r3, 0x20
/* 8015D304 00153084  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7GetSizeAlign
nw4r2ut13DvdFileStreamCFv$7GetSizeAlign:
/* 8015D308 00153088  38 60 00 20 */	li r3, 0x20
/* 8015D30C 0015308C  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7GetOffsetAlign
nw4r2ut13DvdFileStreamCFv$7GetOffsetAlign:
/* 8015D310 00153090  38 60 00 04 */	li r3, 4
/* 8015D314 00153094  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7CanCancel
nw4r2ut13DvdFileStreamCFv$7CanCancel:
/* 8015D318 00153098  38 60 00 01 */	li r3, 1
/* 8015D31C 0015309C  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7CanWrite
nw4r2ut13DvdFileStreamCFv$7CanWrite:
/* 8015D320 001530A0  38 60 00 00 */	li r3, 0
/* 8015D324 001530A4  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7CanRead
nw4r2ut13DvdFileStreamCFv$7CanRead:
/* 8015D328 001530A8  38 60 00 01 */	li r3, 1
/* 8015D32C 001530AC  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7CanSeek
nw4r2ut13DvdFileStreamCFv$7CanSeek:
/* 8015D330 001530B0  38 60 00 01 */	li r3, 1
/* 8015D334 001530B4  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7CanAsync
nw4r2ut13DvdFileStreamCFv$7CanAsync:
/* 8015D338 001530B8  38 60 00 01 */	li r3, 1
/* 8015D33C 001530BC  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7GetSize
nw4r2ut13DvdFileStreamCFv$7GetSize:
/* 8015D340 001530C0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8015D344 001530C4  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7Tell
nw4r2ut13DvdFileStreamCFv$7Tell:
/* 8015D348 001530C8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8015D34C 001530CC  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7IsBusy
nw4r2ut13DvdFileStreamCFv$7IsBusy:
/* 8015D350 001530D0  88 63 00 6C */	lbz r3, 0x6c(r3)
/* 8015D354 001530D4  4E 80 00 20 */	blr 

.global nw4r2ut13DvdFileStreamCFv$7GetRuntimeTypeInfo
nw4r2ut13DvdFileStreamCFv$7GetRuntimeTypeInfo:
/* 8015D358 001530D8  38 6D C0 68 */	addi r3, r13, lbl_805A0488-_SDA_BASE_
/* 8015D35C 001530DC  4E 80 00 20 */	blr 

.global __sinit_$3ut_DvdFileStream_cpp
__sinit_$3ut_DvdFileStream_cpp:
/* 8015D360 001530E0  38 0D C0 60 */	addi r0, r13, lbl_805A0480-_SDA_BASE_
/* 8015D364 001530E4  90 0D C0 68 */	stw r0, lbl_805A0488-_SDA_BASE_(r13)
/* 8015D368 001530E8  4E 80 00 20 */	blr 

