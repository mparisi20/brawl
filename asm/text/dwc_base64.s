.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DWC_Base64Encode
DWC_Base64Encode:
/* 80334DE4 0032AB64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80334DE8 0032AB68  7C 08 02 A6 */	mflr r0
/* 80334DEC 0032AB6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80334DF0 0032AB70  39 61 00 30 */	addi r11, r1, 0x30
/* 80334DF4 0032AB74  48 0B C5 21 */	bl _savegpr_24
/* 80334DF8 0032AB78  3C E0 AA AB */	lis r7, 0xAAAAAAAB@ha
/* 80334DFC 0032AB7C  2C 05 00 00 */	cmpwi r5, 0
/* 80334E00 0032AB80  3B C7 AA AB */	addi r30, r7, 0xAAAAAAAB@l
/* 80334E04 0032AB84  7C B9 2B 78 */	mr r25, r5
/* 80334E08 0032AB88  7C FE 20 16 */	mulhwu r7, r30, r4
/* 80334E0C 0032AB8C  54 E0 F8 7E */	srwi r0, r7, 1
/* 80334E10 0032AB90  54 E7 08 3A */	rlwinm r7, r7, 1, 0, 0x1d
/* 80334E14 0032AB94  1C 00 00 03 */	mulli r0, r0, 3
/* 80334E18 0032AB98  7C A0 20 50 */	subf r5, r0, r4
/* 80334E1C 0032AB9C  7C 05 00 D0 */	neg r0, r5
/* 80334E20 0032ABA0  7C 00 2B 78 */	or r0, r0, r5
/* 80334E24 0032ABA4  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 80334E28 0032ABA8  54 00 07 7A */	rlwinm r0, r0, 0, 0x1d, 0x1d
/* 80334E2C 0032ABAC  7C 07 02 14 */	add r0, r7, r0
/* 80334E30 0032ABB0  40 82 00 0C */	bne lbl_80334E3C
/* 80334E34 0032ABB4  7C 03 03 78 */	mr r3, r0
/* 80334E38 0032ABB8  48 00 01 24 */	b lbl_80334F5C
lbl_80334E3C:
/* 80334E3C 0032ABBC  7C 06 00 40 */	cmplw r6, r0
/* 80334E40 0032ABC0  40 80 00 0C */	bge lbl_80334E4C
/* 80334E44 0032ABC4  38 60 FF FF */	li r3, -1
/* 80334E48 0032ABC8  48 00 01 14 */	b lbl_80334F5C
lbl_80334E4C:
/* 80334E4C 0032ABCC  7C 7C 1B 78 */	mr r28, r3
/* 80334E50 0032ABD0  7F 3A CB 78 */	mr r26, r25
/* 80334E54 0032ABD4  7F 63 22 14 */	add r27, r3, r4
/* 80334E58 0032ABD8  3B 00 00 2A */	li r24, 0x2a
/* 80334E5C 0032ABDC  48 00 00 F4 */	b lbl_80334F50
lbl_80334E60:
/* 80334E60 0032ABE0  7C BC D8 50 */	subf r5, r28, r27
/* 80334E64 0032ABE4  3B E0 00 03 */	li r31, 3
/* 80334E68 0032ABE8  54 A3 18 38 */	slwi r3, r5, 3
/* 80334E6C 0032ABEC  7C 1E 18 16 */	mulhwu r0, r30, r3
/* 80334E70 0032ABF0  2C 05 00 03 */	cmpwi r5, 3
/* 80334E74 0032ABF4  54 04 F0 BE */	srwi r4, r0, 2
/* 80334E78 0032ABF8  1C 04 00 06 */	mulli r0, r4, 6
/* 80334E7C 0032ABFC  7C 60 18 50 */	subf r3, r0, r3
/* 80334E80 0032AC00  7C 03 00 D0 */	neg r0, r3
/* 80334E84 0032AC04  7C 00 1B 78 */	or r0, r0, r3
/* 80334E88 0032AC08  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80334E8C 0032AC0C  7F A4 02 14 */	add r29, r4, r0
/* 80334E90 0032AC10  40 80 00 08 */	bge lbl_80334E98
/* 80334E94 0032AC14  7C BF 2B 78 */	mr r31, r5
lbl_80334E98:
/* 80334E98 0032AC18  38 61 00 08 */	addi r3, r1, 8
/* 80334E9C 0032AC1C  38 80 00 00 */	li r4, 0
/* 80334EA0 0032AC20  38 A0 00 03 */	li r5, 3
/* 80334EA4 0032AC24  4B CC F5 99 */	bl memset
/* 80334EA8 0032AC28  7F 84 E3 78 */	mr r4, r28
/* 80334EAC 0032AC2C  7F E5 FB 78 */	mr r5, r31
/* 80334EB0 0032AC30  38 61 00 08 */	addi r3, r1, 8
/* 80334EB4 0032AC34  48 01 A1 75 */	bl DWCi_Np_CPUCopyFast
/* 80334EB8 0032AC38  88 01 00 08 */	lbz r0, 8(r1)
/* 80334EBC 0032AC3C  28 1D 00 02 */	cmplwi r29, 2
/* 80334EC0 0032AC40  80 6D AC 38 */	lwz r3, lbl_8059F058-_SDA_BASE_(r13)
/* 80334EC4 0032AC44  7C 00 16 70 */	srawi r0, r0, 2
/* 80334EC8 0032AC48  7C 03 00 AE */	lbzx r0, r3, r0
/* 80334ECC 0032AC4C  98 1A 00 00 */	stb r0, 0(r26)
/* 80334ED0 0032AC50  41 80 00 24 */	blt lbl_80334EF4
/* 80334ED4 0032AC54  88 01 00 09 */	lbz r0, 9(r1)
/* 80334ED8 0032AC58  88 61 00 08 */	lbz r3, 8(r1)
/* 80334EDC 0032AC5C  7C 00 26 70 */	srawi r0, r0, 4
/* 80334EE0 0032AC60  80 8D AC 38 */	lwz r4, lbl_8059F058-_SDA_BASE_(r13)
/* 80334EE4 0032AC64  50 60 26 B6 */	rlwimi r0, r3, 4, 0x1a, 0x1b
/* 80334EE8 0032AC68  7C 04 00 AE */	lbzx r0, r4, r0
/* 80334EEC 0032AC6C  98 1A 00 01 */	stb r0, 1(r26)
/* 80334EF0 0032AC70  48 00 00 08 */	b lbl_80334EF8
lbl_80334EF4:
/* 80334EF4 0032AC74  9B 1A 00 01 */	stb r24, 1(r26)
lbl_80334EF8:
/* 80334EF8 0032AC78  28 1D 00 03 */	cmplwi r29, 3
/* 80334EFC 0032AC7C  41 80 00 24 */	blt lbl_80334F20
/* 80334F00 0032AC80  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80334F04 0032AC84  88 61 00 09 */	lbz r3, 9(r1)
/* 80334F08 0032AC88  7C 00 36 70 */	srawi r0, r0, 6
/* 80334F0C 0032AC8C  80 8D AC 38 */	lwz r4, lbl_8059F058-_SDA_BASE_(r13)
/* 80334F10 0032AC90  50 60 16 BA */	rlwimi r0, r3, 2, 0x1a, 0x1d
/* 80334F14 0032AC94  7C 04 00 AE */	lbzx r0, r4, r0
/* 80334F18 0032AC98  98 1A 00 02 */	stb r0, 2(r26)
/* 80334F1C 0032AC9C  48 00 00 08 */	b lbl_80334F24
lbl_80334F20:
/* 80334F20 0032ACA0  9B 1A 00 02 */	stb r24, 2(r26)
lbl_80334F24:
/* 80334F24 0032ACA4  28 1D 00 04 */	cmplwi r29, 4
/* 80334F28 0032ACA8  41 80 00 1C */	blt lbl_80334F44
/* 80334F2C 0032ACAC  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80334F30 0032ACB0  80 6D AC 38 */	lwz r3, lbl_8059F058-_SDA_BASE_(r13)
/* 80334F34 0032ACB4  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80334F38 0032ACB8  7C 03 00 AE */	lbzx r0, r3, r0
/* 80334F3C 0032ACBC  98 1A 00 03 */	stb r0, 3(r26)
/* 80334F40 0032ACC0  48 00 00 08 */	b lbl_80334F48
lbl_80334F44:
/* 80334F44 0032ACC4  9B 1A 00 03 */	stb r24, 3(r26)
lbl_80334F48:
/* 80334F48 0032ACC8  7F 9C FA 14 */	add r28, r28, r31
/* 80334F4C 0032ACCC  3B 5A 00 04 */	addi r26, r26, 4
lbl_80334F50:
/* 80334F50 0032ACD0  7C 1C D8 40 */	cmplw r28, r27
/* 80334F54 0032ACD4  40 82 FF 0C */	bne lbl_80334E60
/* 80334F58 0032ACD8  7C 79 D0 50 */	subf r3, r25, r26
lbl_80334F5C:
/* 80334F5C 0032ACDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80334F60 0032ACE0  48 0B C4 01 */	bl _restgpr_24
/* 80334F64 0032ACE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80334F68 0032ACE8  7C 08 03 A6 */	mtlr r0
/* 80334F6C 0032ACEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80334F70 0032ACF0  4E 80 00 20 */	blr 

.global DWC_Base64Decode
DWC_Base64Decode:
/* 80334F74 0032ACF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80334F78 0032ACF8  54 80 07 BF */	clrlwi. r0, r4, 0x1e
/* 80334F7C 0032ACFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80334F80 0032AD00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80334F84 0032AD04  41 82 00 0C */	beq lbl_80334F90
/* 80334F88 0032AD08  38 60 FF FF */	li r3, -1
/* 80334F8C 0032AD0C  48 00 01 B0 */	b lbl_8033513C
lbl_80334F90:
/* 80334F90 0032AD10  7C 68 1B 78 */	mr r8, r3
/* 80334F94 0032AD14  38 E0 00 00 */	li r7, 0
/* 80334F98 0032AD18  7C 89 03 A6 */	mtctr r4
/* 80334F9C 0032AD1C  2C 04 00 00 */	cmpwi r4, 0
/* 80334FA0 0032AD20  40 81 00 1C */	ble lbl_80334FBC
lbl_80334FA4:
/* 80334FA4 0032AD24  88 08 00 00 */	lbz r0, 0(r8)
/* 80334FA8 0032AD28  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80334FAC 0032AD2C  41 82 00 08 */	beq lbl_80334FB4
/* 80334FB0 0032AD30  38 E7 00 06 */	addi r7, r7, 6
lbl_80334FB4:
/* 80334FB4 0032AD34  39 08 00 01 */	addi r8, r8, 1
/* 80334FB8 0032AD38  42 00 FF EC */	bdnz lbl_80334FA4
lbl_80334FBC:
/* 80334FBC 0032AD3C  2C 05 00 00 */	cmpwi r5, 0
/* 80334FC0 0032AD40  7C E0 1E 70 */	srawi r0, r7, 3
/* 80334FC4 0032AD44  7C E0 01 94 */	addze r7, r0
/* 80334FC8 0032AD48  40 82 00 0C */	bne lbl_80334FD4
/* 80334FCC 0032AD4C  7C E3 3B 78 */	mr r3, r7
/* 80334FD0 0032AD50  48 00 01 6C */	b lbl_8033513C
lbl_80334FD4:
/* 80334FD4 0032AD54  7C 06 38 40 */	cmplw r6, r7
/* 80334FD8 0032AD58  40 80 00 0C */	bge lbl_80334FE4
/* 80334FDC 0032AD5C  38 60 FF FF */	li r3, -1
/* 80334FE0 0032AD60  48 00 01 5C */	b lbl_8033513C
lbl_80334FE4:
/* 80334FE4 0032AD64  2C 04 00 00 */	cmpwi r4, 0
/* 80334FE8 0032AD68  40 82 00 14 */	bne lbl_80334FFC
/* 80334FEC 0032AD6C  38 00 00 00 */	li r0, 0
/* 80334FF0 0032AD70  38 60 00 00 */	li r3, 0
/* 80334FF4 0032AD74  98 05 00 00 */	stb r0, 0(r5)
/* 80334FF8 0032AD78  48 00 01 44 */	b lbl_8033513C
lbl_80334FFC:
/* 80334FFC 0032AD7C  7C A4 2B 78 */	mr r4, r5
/* 80335000 0032AD80  39 40 00 00 */	li r10, 0
/* 80335004 0032AD84  39 60 00 3F */	li r11, 0x3f
/* 80335008 0032AD88  39 80 00 3E */	li r12, 0x3e
/* 8033500C 0032AD8C  38 00 00 04 */	li r0, 4
lbl_80335010:
/* 80335010 0032AD90  7C 66 1B 78 */	mr r6, r3
/* 80335014 0032AD94  39 21 00 08 */	addi r9, r1, 8
/* 80335018 0032AD98  3B C0 00 00 */	li r30, 0
/* 8033501C 0032AD9C  7C 09 03 A6 */	mtctr r0
lbl_80335020:
/* 80335020 0032ADA0  8B E6 00 00 */	lbz r31, 0(r6)
/* 80335024 0032ADA4  7F E8 07 74 */	extsb r8, r31
/* 80335028 0032ADA8  2C 08 00 41 */	cmpwi r8, 0x41
/* 8033502C 0032ADAC  41 80 00 18 */	blt lbl_80335044
/* 80335030 0032ADB0  2C 08 00 5A */	cmpwi r8, 0x5a
/* 80335034 0032ADB4  41 81 00 10 */	bgt lbl_80335044
/* 80335038 0032ADB8  39 1F FF BF */	addi r8, r31, -65
/* 8033503C 0032ADBC  99 09 00 00 */	stb r8, 0(r9)
/* 80335040 0032ADC0  48 00 00 6C */	b lbl_803350AC
lbl_80335044:
/* 80335044 0032ADC4  7F E8 07 74 */	extsb r8, r31
/* 80335048 0032ADC8  2C 08 00 61 */	cmpwi r8, 0x61
/* 8033504C 0032ADCC  41 80 00 18 */	blt lbl_80335064
/* 80335050 0032ADD0  2C 08 00 7A */	cmpwi r8, 0x7a
/* 80335054 0032ADD4  41 81 00 10 */	bgt lbl_80335064
/* 80335058 0032ADD8  39 1F FF B9 */	addi r8, r31, -71
/* 8033505C 0032ADDC  99 09 00 00 */	stb r8, 0(r9)
/* 80335060 0032ADE0  48 00 00 4C */	b lbl_803350AC
lbl_80335064:
/* 80335064 0032ADE4  7F E8 07 74 */	extsb r8, r31
/* 80335068 0032ADE8  2C 08 00 30 */	cmpwi r8, 0x30
/* 8033506C 0032ADEC  41 80 00 18 */	blt lbl_80335084
/* 80335070 0032ADF0  2C 08 00 39 */	cmpwi r8, 0x39
/* 80335074 0032ADF4  41 81 00 10 */	bgt lbl_80335084
/* 80335078 0032ADF8  39 1F 00 04 */	addi r8, r31, 4
/* 8033507C 0032ADFC  99 09 00 00 */	stb r8, 0(r9)
/* 80335080 0032AE00  48 00 00 2C */	b lbl_803350AC
lbl_80335084:
/* 80335084 0032AE04  7F E8 07 74 */	extsb r8, r31
/* 80335088 0032AE08  2C 08 00 2E */	cmpwi r8, 0x2e
/* 8033508C 0032AE0C  40 82 00 0C */	bne lbl_80335098
/* 80335090 0032AE10  99 89 00 00 */	stb r12, 0(r9)
/* 80335094 0032AE14  48 00 00 18 */	b lbl_803350AC
lbl_80335098:
/* 80335098 0032AE18  2C 08 00 2D */	cmpwi r8, 0x2d
/* 8033509C 0032AE1C  40 82 00 0C */	bne lbl_803350A8
/* 803350A0 0032AE20  99 69 00 00 */	stb r11, 0(r9)
/* 803350A4 0032AE24  48 00 00 08 */	b lbl_803350AC
lbl_803350A8:
/* 803350A8 0032AE28  99 49 00 00 */	stb r10, 0(r9)
lbl_803350AC:
/* 803350AC 0032AE2C  39 29 00 01 */	addi r9, r9, 1
/* 803350B0 0032AE30  3B DE 00 01 */	addi r30, r30, 1
/* 803350B4 0032AE34  38 C6 00 01 */	addi r6, r6, 1
/* 803350B8 0032AE38  42 00 FF 68 */	bdnz lbl_80335020
/* 803350BC 0032AE3C  89 21 00 08 */	lbz r9, 8(r1)
/* 803350C0 0032AE40  38 C4 00 01 */	addi r6, r4, 1
/* 803350C4 0032AE44  89 01 00 09 */	lbz r8, 9(r1)
/* 803350C8 0032AE48  7F E5 30 50 */	subf r31, r5, r6
/* 803350CC 0032AE4C  7D 26 07 74 */	extsb r6, r9
/* 803350D0 0032AE50  38 63 00 04 */	addi r3, r3, 4
/* 803350D4 0032AE54  7D 09 07 74 */	extsb r9, r8
/* 803350D8 0032AE58  7C 1F 38 00 */	cmpw r31, r7
/* 803350DC 0032AE5C  54 C8 10 3A */	slwi r8, r6, 2
/* 803350E0 0032AE60  7D 26 26 70 */	srawi r6, r9, 4
/* 803350E4 0032AE64  7D 06 33 78 */	or r6, r8, r6
/* 803350E8 0032AE68  98 C4 00 00 */	stb r6, 0(r4)
/* 803350EC 0032AE6C  40 80 00 4C */	bge lbl_80335138
/* 803350F0 0032AE70  89 01 00 0A */	lbz r8, 0xa(r1)
/* 803350F4 0032AE74  38 C4 00 02 */	addi r6, r4, 2
/* 803350F8 0032AE78  7F E5 30 50 */	subf r31, r5, r6
/* 803350FC 0032AE7C  55 29 20 36 */	slwi r9, r9, 4
/* 80335100 0032AE80  7D 08 07 74 */	extsb r8, r8
/* 80335104 0032AE84  7D 06 16 70 */	srawi r6, r8, 2
/* 80335108 0032AE88  7C 1F 38 00 */	cmpw r31, r7
/* 8033510C 0032AE8C  7D 26 33 78 */	or r6, r9, r6
/* 80335110 0032AE90  98 C4 00 01 */	stb r6, 1(r4)
/* 80335114 0032AE94  40 80 00 24 */	bge lbl_80335138
/* 80335118 0032AE98  88 C1 00 0B */	lbz r6, 0xb(r1)
/* 8033511C 0032AE9C  55 08 30 32 */	slwi r8, r8, 6
/* 80335120 0032AEA0  7D 06 33 78 */	or r6, r8, r6
/* 80335124 0032AEA4  98 C4 00 02 */	stb r6, 2(r4)
/* 80335128 0032AEA8  38 84 00 03 */	addi r4, r4, 3
/* 8033512C 0032AEAC  7F E5 20 50 */	subf r31, r5, r4
/* 80335130 0032AEB0  7C 1F 38 00 */	cmpw r31, r7
/* 80335134 0032AEB4  41 80 FE DC */	blt lbl_80335010
lbl_80335138:
/* 80335138 0032AEB8  7F E3 FB 78 */	mr r3, r31
lbl_8033513C:
/* 8033513C 0032AEBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80335140 0032AEC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80335144 0032AEC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80335148 0032AEC8  4E 80 00 20 */	blr 

