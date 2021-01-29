.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global stDataContainer$7__ct
stDataContainer$7__ct:
/* 8015BAB0 00151830  3C A0 80 46 */	lis r5, lbl_80462C48@ha
/* 8015BAB4 00151834  38 00 00 08 */	li r0, 8
/* 8015BAB8 00151838  38 A5 2C 48 */	addi r5, r5, lbl_80462C48@l
/* 8015BABC 0015183C  90 03 00 04 */	stw r0, 4(r3)
/* 8015BAC0 00151840  90 A3 00 00 */	stw r5, 0(r3)
/* 8015BAC4 00151844  90 83 00 08 */	stw r4, 8(r3)
/* 8015BAC8 00151848  4E 80 00 20 */	blr 

.global stDataContainer$7__dt
stDataContainer$7__dt:
/* 8015BACC 0015184C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015BAD0 00151850  7C 08 02 A6 */	mflr r0
/* 8015BAD4 00151854  2C 03 00 00 */	cmpwi r3, 0
/* 8015BAD8 00151858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015BADC 0015185C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BAE0 00151860  7C 7F 1B 78 */	mr r31, r3
/* 8015BAE4 00151864  41 82 00 10 */	beq lbl_8015BAF4
/* 8015BAE8 00151868  2C 04 00 00 */	cmpwi r4, 0
/* 8015BAEC 0015186C  40 81 00 08 */	ble lbl_8015BAF4
/* 8015BAF0 00151870  4B EB 0D D9 */	bl __dl__FPv
lbl_8015BAF4:
/* 8015BAF4 00151874  7F E3 FB 78 */	mr r3, r31
/* 8015BAF8 00151878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015BAFC 0015187C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015BB00 00151880  7C 08 03 A6 */	mtlr r0
/* 8015BB04 00151884  38 21 00 10 */	addi r1, r1, 0x10
/* 8015BB08 00151888  4E 80 00 20 */	blr 

.global stDataContainer$7getData
stDataContainer$7getData:
/* 8015BB0C 0015188C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015BB10 00151890  7C 08 02 A6 */	mflr r0
/* 8015BB14 00151894  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015BB18 00151898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BB1C 0015189C  7C 9F 23 78 */	mr r31, r4
/* 8015BB20 001518A0  93 C1 00 08 */	stw r30, 8(r1)
/* 8015BB24 001518A4  7C 7E 1B 78 */	mr r30, r3
/* 8015BB28 001518A8  80 A3 00 08 */	lwz r5, 8(r3)
/* 8015BB2C 001518AC  80 05 00 04 */	lwz r0, 4(r5)
/* 8015BB30 001518B0  7C 00 20 40 */	cmplw r0, r4
/* 8015BB34 001518B4  41 81 00 0C */	bgt lbl_8015BB40
/* 8015BB38 001518B8  38 60 00 00 */	li r3, 0
/* 8015BB3C 001518BC  48 00 00 24 */	b lbl_8015BB60
lbl_8015BB40:
/* 8015BB40 001518C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8015BB44 001518C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8015BB48 001518C8  7D 89 03 A6 */	mtctr r12
/* 8015BB4C 001518CC  4E 80 04 21 */	bctrl 
/* 8015BB50 001518D0  57 E0 10 3A */	slwi r0, r31, 2
/* 8015BB54 001518D4  80 9E 00 08 */	lwz r4, 8(r30)
/* 8015BB58 001518D8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8015BB5C 001518DC  7C 64 02 14 */	add r3, r4, r0
lbl_8015BB60:
/* 8015BB60 001518E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015BB64 001518E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015BB68 001518E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015BB6C 001518EC  7C 08 03 A6 */	mtlr r0
/* 8015BB70 001518F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015BB74 001518F4  4E 80 00 20 */	blr 

.global stDataContainer$7getDataAddressHead
stDataContainer$7getDataAddressHead:
/* 8015BB78 001518F8  80 83 00 08 */	lwz r4, 8(r3)
/* 8015BB7C 001518FC  80 03 00 04 */	lwz r0, 4(r3)
/* 8015BB80 00151900  7C 64 02 14 */	add r3, r4, r0
/* 8015BB84 00151904  4E 80 00 20 */	blr 

.global stDataSimpleContainer$7__ct
stDataSimpleContainer$7__ct:
/* 8015BB88 00151908  3C A0 80 46 */	lis r5, lbl_80462C08@ha
/* 8015BB8C 0015190C  38 00 00 10 */	li r0, 0x10
/* 8015BB90 00151910  38 A5 2C 08 */	addi r5, r5, lbl_80462C08@l
/* 8015BB94 00151914  90 83 00 08 */	stw r4, 8(r3)
/* 8015BB98 00151918  90 A3 00 00 */	stw r5, 0(r3)
/* 8015BB9C 0015191C  90 03 00 04 */	stw r0, 4(r3)
/* 8015BBA0 00151920  4E 80 00 20 */	blr 

.global stDataSimpleContainer$7__dt
stDataSimpleContainer$7__dt:
/* 8015BBA4 00151924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015BBA8 00151928  7C 08 02 A6 */	mflr r0
/* 8015BBAC 0015192C  2C 03 00 00 */	cmpwi r3, 0
/* 8015BBB0 00151930  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015BBB4 00151934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BBB8 00151938  7C 7F 1B 78 */	mr r31, r3
/* 8015BBBC 0015193C  41 82 00 10 */	beq lbl_8015BBCC
/* 8015BBC0 00151940  2C 04 00 00 */	cmpwi r4, 0
/* 8015BBC4 00151944  40 81 00 08 */	ble lbl_8015BBCC
/* 8015BBC8 00151948  4B EB 0D 01 */	bl __dl__FPv
lbl_8015BBCC:
/* 8015BBCC 0015194C  7F E3 FB 78 */	mr r3, r31
/* 8015BBD0 00151950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015BBD4 00151954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015BBD8 00151958  7C 08 03 A6 */	mtlr r0
/* 8015BBDC 0015195C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015BBE0 00151960  4E 80 00 20 */	blr 

.global stDataContainer$7getExtParam
stDataContainer$7getExtParam:
/* 8015BBE4 00151964  38 60 00 00 */	li r3, 0
/* 8015BBE8 00151968  4E 80 00 20 */	blr 

.global stDataContainer$7getVersion
stDataContainer$7getVersion:
/* 8015BBEC 0015196C  38 60 00 00 */	li r3, 0
/* 8015BBF0 00151970  4E 80 00 20 */	blr 

