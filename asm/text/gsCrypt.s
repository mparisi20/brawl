.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gsCryptRSAEncryptBuffer
gsCryptRSAEncryptBuffer:
/* 8035EA70 003547F0  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8035EA74 003547F4  7C 08 02 A6 */	mflr r0
/* 8035EA78 003547F8  90 01 01 34 */	stw r0, 0x134(r1)
/* 8035EA7C 003547FC  39 61 01 30 */	addi r11, r1, 0x130
/* 8035EA80 00354800  48 09 28 99 */	bl _savegpr_25
/* 8035EA84 00354804  28 05 00 75 */	cmplwi r5, 0x75
/* 8035EA88 00354808  7C 79 1B 78 */	mr r25, r3
/* 8035EA8C 0035480C  7C 9A 23 78 */	mr r26, r4
/* 8035EA90 00354810  7C BB 2B 78 */	mr r27, r5
/* 8035EA94 00354814  7C DC 33 78 */	mr r28, r6
/* 8035EA98 00354818  3B C1 00 0C */	addi r30, r1, 0xc
/* 8035EA9C 0035481C  40 81 00 0C */	ble lbl_8035EAA8
/* 8035EAA0 00354820  38 60 FF FF */	li r3, -1
/* 8035EAA4 00354824  48 00 00 D0 */	b lbl_8035EB74
lbl_8035EAA8:
/* 8035EAA8 00354828  38 60 00 00 */	li r3, 0
/* 8035EAAC 0035482C  38 00 00 02 */	li r0, 2
/* 8035EAB0 00354830  98 61 00 0C */	stb r3, 0xc(r1)
/* 8035EAB4 00354834  98 01 00 0D */	stb r0, 0xd(r1)
/* 8035EAB8 00354838  4B FF EC 71 */	bl current_time
/* 8035EABC 0035483C  4B FF EF 5D */	bl Util_RandSeed
/* 8035EAC0 00354840  23 BB 00 7D */	subfic r29, r27, 0x7d
/* 8035EAC4 00354844  3B E0 00 00 */	li r31, 0
/* 8035EAC8 00354848  48 00 00 20 */	b lbl_8035EAE8
lbl_8035EACC:
/* 8035EACC 0035484C  38 60 00 00 */	li r3, 0
/* 8035EAD0 00354850  38 80 00 FF */	li r4, 0xff
/* 8035EAD4 00354854  4B FF EF 5D */	bl Util_RandInt
/* 8035EAD8 00354858  7C 9E FA 14 */	add r4, r30, r31
/* 8035EADC 0035485C  38 03 00 01 */	addi r0, r3, 1
/* 8035EAE0 00354860  98 04 00 02 */	stb r0, 2(r4)
/* 8035EAE4 00354864  3B FF 00 01 */	addi r31, r31, 1
lbl_8035EAE8:
/* 8035EAE8 00354868  7C 1F E8 40 */	cmplw r31, r29
/* 8035EAEC 0035486C  41 80 FF E0 */	blt lbl_8035EACC
/* 8035EAF0 00354870  20 1B 00 7E */	subfic r0, r27, 0x7e
/* 8035EAF4 00354874  7C BE EA 14 */	add r5, r30, r29
/* 8035EAF8 00354878  38 C0 00 00 */	li r6, 0
/* 8035EAFC 0035487C  7F 44 D3 78 */	mr r4, r26
/* 8035EB00 00354880  7C 7E 02 14 */	add r3, r30, r0
/* 8035EB04 00354884  98 C5 00 02 */	stb r6, 2(r5)
/* 8035EB08 00354888  7F 65 DB 78 */	mr r5, r27
/* 8035EB0C 0035488C  38 63 00 02 */	addi r3, r3, 2
/* 8035EB10 00354890  4B CA 58 29 */	bl func_80004338
/* 8035EB14 00354894  38 00 00 20 */	li r0, 0x20
/* 8035EB18 00354898  38 61 00 08 */	addi r3, r1, 8
/* 8035EB1C 0035489C  90 01 00 08 */	stw r0, 8(r1)
/* 8035EB20 003548A0  48 00 27 CD */	bl gsLargeIntReverseBytes
/* 8035EB24 003548A4  2C 03 00 00 */	cmpwi r3, 0
/* 8035EB28 003548A8  41 82 00 30 */	beq lbl_8035EB58
/* 8035EB2C 003548AC  38 61 00 08 */	addi r3, r1, 8
/* 8035EB30 003548B0  7F 25 CB 78 */	mr r5, r25
/* 8035EB34 003548B4  7C 66 1B 78 */	mr r6, r3
/* 8035EB38 003548B8  38 99 01 04 */	addi r4, r25, 0x104
/* 8035EB3C 003548BC  48 00 1C 89 */	bl gsLargeIntPowerMod
/* 8035EB40 003548C0  2C 03 00 00 */	cmpwi r3, 0
/* 8035EB44 003548C4  41 82 00 14 */	beq lbl_8035EB58
/* 8035EB48 003548C8  38 61 00 08 */	addi r3, r1, 8
/* 8035EB4C 003548CC  48 00 27 A1 */	bl gsLargeIntReverseBytes
/* 8035EB50 003548D0  2C 03 00 00 */	cmpwi r3, 0
/* 8035EB54 003548D4  40 82 00 0C */	bne lbl_8035EB60
lbl_8035EB58:
/* 8035EB58 003548D8  38 60 FF FF */	li r3, -1
/* 8035EB5C 003548DC  48 00 00 18 */	b lbl_8035EB74
lbl_8035EB60:
/* 8035EB60 003548E0  7F 83 E3 78 */	mr r3, r28
/* 8035EB64 003548E4  38 81 00 0C */	addi r4, r1, 0xc
/* 8035EB68 003548E8  38 A0 00 80 */	li r5, 0x80
/* 8035EB6C 003548EC  4B CA 57 CD */	bl func_80004338
/* 8035EB70 003548F0  38 60 00 00 */	li r3, 0
lbl_8035EB74:
/* 8035EB74 003548F4  39 61 01 30 */	addi r11, r1, 0x130
/* 8035EB78 003548F8  48 09 27 ED */	bl _restgpr_25
/* 8035EB7C 003548FC  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8035EB80 00354900  7C 08 03 A6 */	mtlr r0
/* 8035EB84 00354904  38 21 01 30 */	addi r1, r1, 0x130
/* 8035EB88 00354908  4E 80 00 20 */	blr 
