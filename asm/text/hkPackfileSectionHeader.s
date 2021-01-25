.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkPackfileSectionHeader$7getExports
hkPackfileSectionHeader$7getExports:
/* 80331C3C 003279BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80331C40 003279C0  7C 08 02 A6 */	mflr r0
/* 80331C44 003279C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80331C48 003279C8  38 00 00 00 */	li r0, 0
/* 80331C4C 003279CC  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80331C50 003279D0  7C 7C 1B 78 */	mr r28, r3
/* 80331C54 003279D4  7C 9D 23 78 */	mr r29, r4
/* 80331C58 003279D8  7C BE 2B 78 */	mr r30, r5
/* 80331C5C 003279DC  80 C3 00 24 */	lwz r6, 0x24(r3)
/* 80331C60 003279E0  90 01 00 08 */	stw r0, 8(r1)
/* 80331C64 003279E4  7F E4 32 14 */	add r31, r4, r6
/* 80331C68 003279E8  48 00 00 6C */	b lbl_80331CD4
lbl_80331C6C:
/* 80331C6C 003279EC  7F E3 FB 78 */	mr r3, r31
/* 80331C70 003279F0  38 81 00 08 */	addi r4, r1, 8
/* 80331C74 003279F4  48 00 00 8D */	bl $2unnamed$2hkPackfileSectionHeader_cpp$2$7extractAndAdvance$0i$1
/* 80331C78 003279F8  2C 03 FF FF */	cmpwi r3, -1
/* 80331C7C 003279FC  7C 7A 1B 78 */	mr r26, r3
/* 80331C80 00327A00  41 82 00 6C */	beq lbl_80331CEC
/* 80331C84 00327A04  7F E3 FB 78 */	mr r3, r31
/* 80331C88 00327A08  38 81 00 08 */	addi r4, r1, 8
/* 80331C8C 00327A0C  4B FF FF 69 */	bl $2unnamed$2hkPackfileSectionHeader_cpp$2$7extractAndAdvanceString
/* 80331C90 00327A10  80 1E 00 08 */	lwz r0, 8(r30)
/* 80331C94 00327A14  7C 7B 1B 78 */	mr r27, r3
/* 80331C98 00327A18  80 7E 00 04 */	lwz r3, 4(r30)
/* 80331C9C 00327A1C  54 00 00 BE */	clrlwi r0, r0, 2
/* 80331CA0 00327A20  7C 03 00 00 */	cmpw r3, r0
/* 80331CA4 00327A24  40 82 00 10 */	bne lbl_80331CB4
/* 80331CA8 00327A28  7F C3 F3 78 */	mr r3, r30
/* 80331CAC 00327A2C  38 80 00 08 */	li r4, 8
/* 80331CB0 00327A30  4B F4 B1 8D */	bl hkArrayUtil$7_reserveMore
lbl_80331CB4:
/* 80331CB4 00327A34  80 7E 00 04 */	lwz r3, 4(r30)
/* 80331CB8 00327A38  7C 1D D2 14 */	add r0, r29, r26
/* 80331CBC 00327A3C  80 BE 00 00 */	lwz r5, 0(r30)
/* 80331CC0 00327A40  38 83 00 01 */	addi r4, r3, 1
/* 80331CC4 00327A44  54 63 18 38 */	slwi r3, r3, 3
/* 80331CC8 00327A48  90 9E 00 04 */	stw r4, 4(r30)
/* 80331CCC 00327A4C  7F 63 29 6E */	stwux r27, r3, r5
/* 80331CD0 00327A50  90 03 00 04 */	stw r0, 4(r3)
lbl_80331CD4:
/* 80331CD4 00327A54  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 80331CD8 00327A58  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 80331CDC 00327A5C  80 81 00 08 */	lwz r4, 8(r1)
/* 80331CE0 00327A60  7C 03 00 50 */	subf r0, r3, r0
/* 80331CE4 00327A64  7C 04 00 00 */	cmpw r4, r0
/* 80331CE8 00327A68  41 80 FF 84 */	blt lbl_80331C6C
lbl_80331CEC:
/* 80331CEC 00327A6C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80331CF0 00327A70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80331CF4 00327A74  7C 08 03 A6 */	mtlr r0
/* 80331CF8 00327A78  38 21 00 30 */	addi r1, r1, 0x30
/* 80331CFC 00327A7C  4E 80 00 20 */	blr 

.global $2unnamed$2hkPackfileSectionHeader_cpp$2$7extractAndAdvance$0i$1
$2unnamed$2hkPackfileSectionHeader_cpp$2$7extractAndAdvance$0i$1:
/* 80331D00 00327A80  80 A4 00 00 */	lwz r5, 0(r4)
/* 80331D04 00327A84  38 05 00 04 */	addi r0, r5, 4
/* 80331D08 00327A88  90 04 00 00 */	stw r0, 0(r4)
/* 80331D0C 00327A8C  7C 63 28 2E */	lwzx r3, r3, r5
/* 80331D10 00327A90  4E 80 00 20 */	blr 

.global hkPackfileSectionHeader$7getImports
hkPackfileSectionHeader$7getImports:
/* 80331D14 00327A94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80331D18 00327A98  7C 08 02 A6 */	mflr r0
/* 80331D1C 00327A9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80331D20 00327AA0  38 00 00 00 */	li r0, 0
/* 80331D24 00327AA4  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80331D28 00327AA8  7C 7C 1B 78 */	mr r28, r3
/* 80331D2C 00327AAC  7C 9D 23 78 */	mr r29, r4
/* 80331D30 00327AB0  7C BE 2B 78 */	mr r30, r5
/* 80331D34 00327AB4  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 80331D38 00327AB8  90 01 00 08 */	stw r0, 8(r1)
/* 80331D3C 00327ABC  7F E4 32 14 */	add r31, r4, r6
/* 80331D40 00327AC0  48 00 00 6C */	b lbl_80331DAC
lbl_80331D44:
/* 80331D44 00327AC4  7F E3 FB 78 */	mr r3, r31
/* 80331D48 00327AC8  38 81 00 08 */	addi r4, r1, 8
/* 80331D4C 00327ACC  4B FF FF B5 */	bl $2unnamed$2hkPackfileSectionHeader_cpp$2$7extractAndAdvance$0i$1
/* 80331D50 00327AD0  2C 03 FF FF */	cmpwi r3, -1
/* 80331D54 00327AD4  7C 7A 1B 78 */	mr r26, r3
/* 80331D58 00327AD8  41 82 00 6C */	beq lbl_80331DC4
/* 80331D5C 00327ADC  7F E3 FB 78 */	mr r3, r31
/* 80331D60 00327AE0  38 81 00 08 */	addi r4, r1, 8
/* 80331D64 00327AE4  4B FF FE 91 */	bl $2unnamed$2hkPackfileSectionHeader_cpp$2$7extractAndAdvanceString
/* 80331D68 00327AE8  80 1E 00 08 */	lwz r0, 8(r30)
/* 80331D6C 00327AEC  7C 7B 1B 78 */	mr r27, r3
/* 80331D70 00327AF0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80331D74 00327AF4  54 00 00 BE */	clrlwi r0, r0, 2
/* 80331D78 00327AF8  7C 03 00 00 */	cmpw r3, r0
/* 80331D7C 00327AFC  40 82 00 10 */	bne lbl_80331D8C
/* 80331D80 00327B00  7F C3 F3 78 */	mr r3, r30
/* 80331D84 00327B04  38 80 00 08 */	li r4, 8
/* 80331D88 00327B08  4B F4 B0 B5 */	bl hkArrayUtil$7_reserveMore
lbl_80331D8C:
/* 80331D8C 00327B0C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80331D90 00327B10  7C 1D D2 14 */	add r0, r29, r26
/* 80331D94 00327B14  80 BE 00 00 */	lwz r5, 0(r30)
/* 80331D98 00327B18  38 83 00 01 */	addi r4, r3, 1
/* 80331D9C 00327B1C  54 63 18 38 */	slwi r3, r3, 3
/* 80331DA0 00327B20  90 9E 00 04 */	stw r4, 4(r30)
/* 80331DA4 00327B24  7F 63 29 6E */	stwux r27, r3, r5
/* 80331DA8 00327B28  90 03 00 04 */	stw r0, 4(r3)
lbl_80331DAC:
/* 80331DAC 00327B2C  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80331DB0 00327B30  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80331DB4 00327B34  80 81 00 08 */	lwz r4, 8(r1)
/* 80331DB8 00327B38  7C 03 00 50 */	subf r0, r3, r0
/* 80331DBC 00327B3C  7C 04 00 00 */	cmpw r4, r0
/* 80331DC0 00327B40  41 80 FF 84 */	blt lbl_80331D44
lbl_80331DC4:
/* 80331DC4 00327B44  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80331DC8 00327B48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80331DCC 00327B4C  7C 08 03 A6 */	mtlr r0
/* 80331DD0 00327B50  38 21 00 30 */	addi r1, r1, 0x30
/* 80331DD4 00327B54  4E 80 00 20 */	blr 
