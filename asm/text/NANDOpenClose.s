.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nandOpen
nandOpen:
/* 8020B8A8 00201628  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8020B8AC 0020162C  7C 08 02 A6 */	mflr r0
/* 8020B8B0 00201630  90 01 00 64 */	stw r0, 0x64(r1)
/* 8020B8B4 00201634  39 61 00 60 */	addi r11, r1, 0x60
/* 8020B8B8 00201638  48 1E 5A 69 */	bl _savegpr_27
/* 8020B8BC 0020163C  38 00 00 00 */	li r0, 0
/* 8020B8C0 00201640  7C 9B 23 78 */	mr r27, r4
/* 8020B8C4 00201644  90 01 00 08 */	stw r0, 8(r1)
/* 8020B8C8 00201648  7C 64 1B 78 */	mr r4, r3
/* 8020B8CC 0020164C  7C BC 2B 78 */	mr r28, r5
/* 8020B8D0 00201650  7C DD 33 78 */	mr r29, r6
/* 8020B8D4 00201654  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020B8D8 00201658  7C FE 3B 78 */	mr r30, r7
/* 8020B8DC 0020165C  38 61 00 08 */	addi r3, r1, 8
/* 8020B8E0 00201660  3B E0 00 00 */	li r31, 0
/* 8020B8E4 00201664  90 01 00 10 */	stw r0, 0x10(r1)
/* 8020B8E8 00201668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020B8EC 0020166C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8020B8F0 00201670  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8020B8F4 00201674  90 01 00 20 */	stw r0, 0x20(r1)
/* 8020B8F8 00201678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020B8FC 0020167C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8020B900 00201680  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8020B904 00201684  90 01 00 30 */	stw r0, 0x30(r1)
/* 8020B908 00201688  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020B90C 0020168C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8020B910 00201690  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8020B914 00201694  90 01 00 40 */	stw r0, 0x40(r1)
/* 8020B918 00201698  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020B91C 0020169C  48 00 13 31 */	bl nandGenerateAbsPath
/* 8020B920 002016A0  2C 1E 00 00 */	cmpwi r30, 0
/* 8020B924 002016A4  40 82 00 1C */	bne lbl_8020B940
/* 8020B928 002016A8  38 61 00 08 */	addi r3, r1, 8
/* 8020B92C 002016AC  48 00 11 1D */	bl nandIsPrivatePath
/* 8020B930 002016B0  2C 03 00 00 */	cmpwi r3, 0
/* 8020B934 002016B4  41 82 00 0C */	beq lbl_8020B940
/* 8020B938 002016B8  38 60 FF 9A */	li r3, -102
/* 8020B93C 002016BC  48 00 00 68 */	b lbl_8020B9A4
lbl_8020B940:
/* 8020B940 002016C0  2C 1B 00 02 */	cmpwi r27, 2
/* 8020B944 002016C4  41 82 00 2C */	beq lbl_8020B970
/* 8020B948 002016C8  40 80 00 10 */	bge lbl_8020B958
/* 8020B94C 002016CC  2C 1B 00 01 */	cmpwi r27, 1
/* 8020B950 002016D0  40 80 00 18 */	bge lbl_8020B968
/* 8020B954 002016D4  48 00 00 20 */	b lbl_8020B974
lbl_8020B958:
/* 8020B958 002016D8  2C 1B 00 04 */	cmpwi r27, 4
/* 8020B95C 002016DC  40 80 00 18 */	bge lbl_8020B974
/* 8020B960 002016E0  3B E0 00 03 */	li r31, 3
/* 8020B964 002016E4  48 00 00 10 */	b lbl_8020B974
lbl_8020B968:
/* 8020B968 002016E8  3B E0 00 01 */	li r31, 1
/* 8020B96C 002016EC  48 00 00 08 */	b lbl_8020B974
lbl_8020B970:
/* 8020B970 002016F0  3B E0 00 02 */	li r31, 2
lbl_8020B974:
/* 8020B974 002016F4  2C 1D 00 00 */	cmpwi r29, 0
/* 8020B978 002016F8  41 82 00 20 */	beq lbl_8020B998
/* 8020B97C 002016FC  3C A0 80 21 */	lis r5, nandOpenCallback@ha
/* 8020B980 00201700  7F E4 FB 78 */	mr r4, r31
/* 8020B984 00201704  7F 86 E3 78 */	mr r6, r28
/* 8020B988 00201708  38 61 00 08 */	addi r3, r1, 8
/* 8020B98C 0020170C  38 A5 BB C4 */	addi r5, r5, nandOpenCallback@l
/* 8020B990 00201710  48 00 94 F1 */	bl ISFS_OpenAsync
/* 8020B994 00201714  48 00 00 10 */	b lbl_8020B9A4
lbl_8020B998:
/* 8020B998 00201718  7F E4 FB 78 */	mr r4, r31
/* 8020B99C 0020171C  38 61 00 08 */	addi r3, r1, 8
/* 8020B9A0 00201720  48 00 94 19 */	bl ISFS_Open
lbl_8020B9A4:
/* 8020B9A4 00201724  39 61 00 60 */	addi r11, r1, 0x60
/* 8020B9A8 00201728  48 1E 59 C5 */	bl _restgpr_27
/* 8020B9AC 0020172C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8020B9B0 00201730  7C 08 03 A6 */	mtlr r0
/* 8020B9B4 00201734  38 21 00 60 */	addi r1, r1, 0x60
/* 8020B9B8 00201738  4E 80 00 20 */	blr 

.global NANDOpen
NANDOpen:
/* 8020B9BC 0020173C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020B9C0 00201740  7C 08 02 A6 */	mflr r0
/* 8020B9C4 00201744  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020B9C8 00201748  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020B9CC 0020174C  7C BF 2B 78 */	mr r31, r5
/* 8020B9D0 00201750  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020B9D4 00201754  7C 9E 23 78 */	mr r30, r4
/* 8020B9D8 00201758  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8020B9DC 0020175C  7C 7D 1B 78 */	mr r29, r3
/* 8020B9E0 00201760  48 00 10 F5 */	bl nandIsInitialized
/* 8020B9E4 00201764  2C 03 00 00 */	cmpwi r3, 0
/* 8020B9E8 00201768  40 82 00 0C */	bne lbl_8020B9F4
/* 8020B9EC 0020176C  38 60 FF 80 */	li r3, -128
/* 8020B9F0 00201770  48 00 00 3C */	b lbl_8020BA2C
lbl_8020B9F4:
/* 8020B9F4 00201774  7F A3 EB 78 */	mr r3, r29
/* 8020B9F8 00201778  7F E4 FB 78 */	mr r4, r31
/* 8020B9FC 0020177C  38 A0 00 00 */	li r5, 0
/* 8020BA00 00201780  38 C0 00 00 */	li r6, 0
/* 8020BA04 00201784  38 E0 00 00 */	li r7, 0
/* 8020BA08 00201788  4B FF FE A1 */	bl nandOpen
/* 8020BA0C 0020178C  2C 03 00 00 */	cmpwi r3, 0
/* 8020BA10 00201790  41 80 00 18 */	blt lbl_8020BA28
/* 8020BA14 00201794  38 00 00 01 */	li r0, 1
/* 8020BA18 00201798  90 7E 00 00 */	stw r3, 0(r30)
/* 8020BA1C 0020179C  38 60 00 00 */	li r3, 0
/* 8020BA20 002017A0  98 1E 00 8A */	stb r0, 0x8a(r30)
/* 8020BA24 002017A4  48 00 00 08 */	b lbl_8020BA2C
lbl_8020BA28:
/* 8020BA28 002017A8  48 00 10 C5 */	bl nandConvertErrorCode
lbl_8020BA2C:
/* 8020BA2C 002017AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020BA30 002017B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020BA34 002017B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020BA38 002017B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8020BA3C 002017BC  7C 08 03 A6 */	mtlr r0
/* 8020BA40 002017C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8020BA44 002017C4  4E 80 00 20 */	blr 

.global NANDPrivateOpen
NANDPrivateOpen:
/* 8020BA48 002017C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020BA4C 002017CC  7C 08 02 A6 */	mflr r0
/* 8020BA50 002017D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020BA54 002017D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020BA58 002017D8  7C BF 2B 78 */	mr r31, r5
/* 8020BA5C 002017DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020BA60 002017E0  7C 9E 23 78 */	mr r30, r4
/* 8020BA64 002017E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8020BA68 002017E8  7C 7D 1B 78 */	mr r29, r3
/* 8020BA6C 002017EC  48 00 10 69 */	bl nandIsInitialized
/* 8020BA70 002017F0  2C 03 00 00 */	cmpwi r3, 0
/* 8020BA74 002017F4  40 82 00 0C */	bne lbl_8020BA80
/* 8020BA78 002017F8  38 60 FF 80 */	li r3, -128
/* 8020BA7C 002017FC  48 00 00 3C */	b lbl_8020BAB8
lbl_8020BA80:
/* 8020BA80 00201800  7F A3 EB 78 */	mr r3, r29
/* 8020BA84 00201804  7F E4 FB 78 */	mr r4, r31
/* 8020BA88 00201808  38 A0 00 00 */	li r5, 0
/* 8020BA8C 0020180C  38 C0 00 00 */	li r6, 0
/* 8020BA90 00201810  38 E0 00 01 */	li r7, 1
/* 8020BA94 00201814  4B FF FE 15 */	bl nandOpen
/* 8020BA98 00201818  2C 03 00 00 */	cmpwi r3, 0
/* 8020BA9C 0020181C  41 80 00 18 */	blt lbl_8020BAB4
/* 8020BAA0 00201820  38 00 00 01 */	li r0, 1
/* 8020BAA4 00201824  90 7E 00 00 */	stw r3, 0(r30)
/* 8020BAA8 00201828  38 60 00 00 */	li r3, 0
/* 8020BAAC 0020182C  98 1E 00 8A */	stb r0, 0x8a(r30)
/* 8020BAB0 00201830  48 00 00 08 */	b lbl_8020BAB8
lbl_8020BAB4:
/* 8020BAB4 00201834  48 00 10 39 */	bl nandConvertErrorCode
lbl_8020BAB8:
/* 8020BAB8 00201838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020BABC 0020183C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020BAC0 00201840  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020BAC4 00201844  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8020BAC8 00201848  7C 08 03 A6 */	mtlr r0
/* 8020BACC 0020184C  38 21 00 20 */	addi r1, r1, 0x20
/* 8020BAD0 00201850  4E 80 00 20 */	blr 

.global NANDOpenAsync
NANDOpenAsync:
/* 8020BAD4 00201854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020BAD8 00201858  7C 08 02 A6 */	mflr r0
/* 8020BADC 0020185C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020BAE0 00201860  39 61 00 20 */	addi r11, r1, 0x20
/* 8020BAE4 00201864  48 1E 58 3D */	bl _savegpr_27
/* 8020BAE8 00201868  7C 7B 1B 78 */	mr r27, r3
/* 8020BAEC 0020186C  7C 9C 23 78 */	mr r28, r4
/* 8020BAF0 00201870  7C BD 2B 78 */	mr r29, r5
/* 8020BAF4 00201874  7C DE 33 78 */	mr r30, r6
/* 8020BAF8 00201878  7C FF 3B 78 */	mr r31, r7
/* 8020BAFC 0020187C  48 00 0F D9 */	bl nandIsInitialized
/* 8020BB00 00201880  2C 03 00 00 */	cmpwi r3, 0
/* 8020BB04 00201884  40 82 00 0C */	bne lbl_8020BB10
/* 8020BB08 00201888  38 60 FF 80 */	li r3, -128
/* 8020BB0C 0020188C  48 00 00 28 */	b lbl_8020BB34
lbl_8020BB10:
/* 8020BB10 00201890  93 DF 00 04 */	stw r30, 4(r31)
/* 8020BB14 00201894  7F 63 DB 78 */	mr r3, r27
/* 8020BB18 00201898  7F A4 EB 78 */	mr r4, r29
/* 8020BB1C 0020189C  7F E5 FB 78 */	mr r5, r31
/* 8020BB20 002018A0  93 9F 00 08 */	stw r28, 8(r31)
/* 8020BB24 002018A4  38 C0 00 01 */	li r6, 1
/* 8020BB28 002018A8  38 E0 00 00 */	li r7, 0
/* 8020BB2C 002018AC  4B FF FD 7D */	bl nandOpen
/* 8020BB30 002018B0  48 00 0F BD */	bl nandConvertErrorCode
lbl_8020BB34:
/* 8020BB34 002018B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8020BB38 002018B8  48 1E 58 35 */	bl _restgpr_27
/* 8020BB3C 002018BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020BB40 002018C0  7C 08 03 A6 */	mtlr r0

