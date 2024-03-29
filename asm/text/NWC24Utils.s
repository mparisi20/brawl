.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NWC24Data_Init
NWC24Data_Init:
/* 80399CB8 0038FA38  38 00 00 00 */	li r0, 0
/* 80399CBC 0038FA3C  90 03 00 00 */	stw r0, 0(r3)
/* 80399CC0 0038FA40  90 03 00 04 */	stw r0, 4(r3)
/* 80399CC4 0038FA44  4E 80 00 20 */	blr 

.global NWC24Data_SetDataP
NWC24Data_SetDataP:
/* 80399CC8 0038FA48  90 83 00 00 */	stw r4, 0(r3)
/* 80399CCC 0038FA4C  90 A3 00 04 */	stw r5, 4(r3)
/* 80399CD0 0038FA50  4E 80 00 20 */	blr 

.global NWC24Date_Init
NWC24Date_Init:
/* 80399CD4 0038FA54  38 00 00 00 */	li r0, 0
/* 80399CD8 0038FA58  38 A0 00 01 */	li r5, 1
/* 80399CDC 0038FA5C  38 C0 07 D0 */	li r6, 0x7d0
/* 80399CE0 0038FA60  38 80 00 0C */	li r4, 0xc
/* 80399CE4 0038FA64  B0 C3 00 00 */	sth r6, 0(r3)
/* 80399CE8 0038FA68  98 A3 00 02 */	stb r5, 2(r3)
/* 80399CEC 0038FA6C  98 A3 00 03 */	stb r5, 3(r3)
/* 80399CF0 0038FA70  98 83 00 04 */	stb r4, 4(r3)
/* 80399CF4 0038FA74  98 03 00 06 */	stb r0, 6(r3)
/* 80399CF8 0038FA78  98 03 00 05 */	stb r0, 5(r3)
/* 80399CFC 0038FA7C  98 03 00 07 */	stb r0, 7(r3)
/* 80399D00 0038FA80  4E 80 00 20 */	blr 

.global NWC24iConvIdToStr
NWC24iConvIdToStr:
/* 80399D04 0038FA84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80399D08 0038FA88  7C 08 02 A6 */	mflr r0
/* 80399D0C 0038FA8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80399D10 0038FA90  39 61 00 20 */	addi r11, r1, 0x20
/* 80399D14 0038FA94  48 05 76 09 */	bl _savegpr_26
/* 80399D18 0038FA98  7C 7D 1B 78 */	mr r29, r3
/* 80399D1C 0038FA9C  7C 9C 23 78 */	mr r28, r4
/* 80399D20 0038FAA0  7C BA 2B 78 */	mr r26, r5
/* 80399D24 0038FAA4  3B 60 00 0F */	li r27, 0xf
/* 80399D28 0038FAA8  3B E0 00 30 */	li r31, 0x30
lbl_80399D2C:
/* 80399D2C 0038FAAC  7F A3 EB 78 */	mr r3, r29
/* 80399D30 0038FAB0  7F 84 E3 78 */	mr r4, r28
/* 80399D34 0038FAB4  7F DA DA 14 */	add r30, r26, r27
/* 80399D38 0038FAB8  38 C0 00 0A */	li r6, 0xa
/* 80399D3C 0038FABC  38 A0 00 00 */	li r5, 0
/* 80399D40 0038FAC0  48 05 78 69 */	bl __mod2u
/* 80399D44 0038FAC4  7C 04 F8 14 */	addc r0, r4, r31
/* 80399D48 0038FAC8  7F A3 EB 78 */	mr r3, r29
/* 80399D4C 0038FACC  98 1E 00 00 */	stb r0, 0(r30)
/* 80399D50 0038FAD0  7F 84 E3 78 */	mr r4, r28
/* 80399D54 0038FAD4  38 A0 00 00 */	li r5, 0
/* 80399D58 0038FAD8  38 C0 00 0A */	li r6, 0xa
/* 80399D5C 0038FADC  48 05 76 29 */	bl __div2u
/* 80399D60 0038FAE0  7C 9C 23 78 */	mr r28, r4
/* 80399D64 0038FAE4  7C 7D 1B 78 */	mr r29, r3
/* 80399D68 0038FAE8  38 C0 00 0A */	li r6, 0xa
/* 80399D6C 0038FAEC  38 A0 00 00 */	li r5, 0
/* 80399D70 0038FAF0  48 05 78 39 */	bl __mod2u
/* 80399D74 0038FAF4  7C 04 F8 14 */	addc r0, r4, r31
/* 80399D78 0038FAF8  7F A3 EB 78 */	mr r3, r29
/* 80399D7C 0038FAFC  98 1E FF FF */	stb r0, -1(r30)
/* 80399D80 0038FB00  7F 84 E3 78 */	mr r4, r28
/* 80399D84 0038FB04  38 A0 00 00 */	li r5, 0
/* 80399D88 0038FB08  38 C0 00 0A */	li r6, 0xa
/* 80399D8C 0038FB0C  48 05 75 F9 */	bl __div2u
/* 80399D90 0038FB10  7C 9C 23 78 */	mr r28, r4
/* 80399D94 0038FB14  7C 7D 1B 78 */	mr r29, r3
/* 80399D98 0038FB18  38 C0 00 0A */	li r6, 0xa
/* 80399D9C 0038FB1C  38 A0 00 00 */	li r5, 0
/* 80399DA0 0038FB20  48 05 78 09 */	bl __mod2u
/* 80399DA4 0038FB24  7C 04 F8 14 */	addc r0, r4, r31
/* 80399DA8 0038FB28  7F A3 EB 78 */	mr r3, r29
/* 80399DAC 0038FB2C  98 1E FF FE */	stb r0, -2(r30)
/* 80399DB0 0038FB30  7F 84 E3 78 */	mr r4, r28
/* 80399DB4 0038FB34  38 A0 00 00 */	li r5, 0
/* 80399DB8 0038FB38  38 C0 00 0A */	li r6, 0xa
/* 80399DBC 0038FB3C  48 05 75 C9 */	bl __div2u
/* 80399DC0 0038FB40  7C 9C 23 78 */	mr r28, r4
/* 80399DC4 0038FB44  7C 7D 1B 78 */	mr r29, r3
/* 80399DC8 0038FB48  38 C0 00 0A */	li r6, 0xa
/* 80399DCC 0038FB4C  38 A0 00 00 */	li r5, 0
/* 80399DD0 0038FB50  48 05 77 D9 */	bl __mod2u
/* 80399DD4 0038FB54  7C 04 F8 14 */	addc r0, r4, r31
/* 80399DD8 0038FB58  7F A3 EB 78 */	mr r3, r29
/* 80399DDC 0038FB5C  98 1E FF FD */	stb r0, -3(r30)
/* 80399DE0 0038FB60  7F 84 E3 78 */	mr r4, r28
/* 80399DE4 0038FB64  38 A0 00 00 */	li r5, 0
/* 80399DE8 0038FB68  38 C0 00 0A */	li r6, 0xa
/* 80399DEC 0038FB6C  48 05 75 99 */	bl __div2u
/* 80399DF0 0038FB70  7C 9C 23 78 */	mr r28, r4
/* 80399DF4 0038FB74  7C 7D 1B 78 */	mr r29, r3
/* 80399DF8 0038FB78  38 C0 00 0A */	li r6, 0xa
/* 80399DFC 0038FB7C  38 A0 00 00 */	li r5, 0
/* 80399E00 0038FB80  48 05 77 A9 */	bl __mod2u
/* 80399E04 0038FB84  7C 04 F8 14 */	addc r0, r4, r31
/* 80399E08 0038FB88  7F A3 EB 78 */	mr r3, r29
/* 80399E0C 0038FB8C  98 1E FF FC */	stb r0, -4(r30)
/* 80399E10 0038FB90  7F 84 E3 78 */	mr r4, r28
/* 80399E14 0038FB94  38 A0 00 00 */	li r5, 0
/* 80399E18 0038FB98  38 C0 00 0A */	li r6, 0xa
/* 80399E1C 0038FB9C  48 05 75 69 */	bl __div2u
/* 80399E20 0038FBA0  7C 9C 23 78 */	mr r28, r4
/* 80399E24 0038FBA4  7C 7D 1B 78 */	mr r29, r3
/* 80399E28 0038FBA8  38 C0 00 0A */	li r6, 0xa
/* 80399E2C 0038FBAC  38 A0 00 00 */	li r5, 0
/* 80399E30 0038FBB0  48 05 77 79 */	bl __mod2u
/* 80399E34 0038FBB4  7C 04 F8 14 */	addc r0, r4, r31
/* 80399E38 0038FBB8  7F A3 EB 78 */	mr r3, r29
/* 80399E3C 0038FBBC  98 1E FF FB */	stb r0, -5(r30)
/* 80399E40 0038FBC0  7F 84 E3 78 */	mr r4, r28
/* 80399E44 0038FBC4  38 A0 00 00 */	li r5, 0
/* 80399E48 0038FBC8  38 C0 00 0A */	li r6, 0xa
/* 80399E4C 0038FBCC  48 05 75 39 */	bl __div2u
/* 80399E50 0038FBD0  7C 9C 23 78 */	mr r28, r4
/* 80399E54 0038FBD4  7C 7D 1B 78 */	mr r29, r3
/* 80399E58 0038FBD8  38 C0 00 0A */	li r6, 0xa
/* 80399E5C 0038FBDC  38 A0 00 00 */	li r5, 0
/* 80399E60 0038FBE0  48 05 77 49 */	bl __mod2u
/* 80399E64 0038FBE4  7C 04 F8 14 */	addc r0, r4, r31
/* 80399E68 0038FBE8  7F A3 EB 78 */	mr r3, r29
/* 80399E6C 0038FBEC  98 1E FF FA */	stb r0, -6(r30)
/* 80399E70 0038FBF0  7F 84 E3 78 */	mr r4, r28
/* 80399E74 0038FBF4  38 A0 00 00 */	li r5, 0
/* 80399E78 0038FBF8  38 C0 00 0A */	li r6, 0xa
/* 80399E7C 0038FBFC  48 05 75 09 */	bl __div2u
/* 80399E80 0038FC00  7C 9C 23 78 */	mr r28, r4
/* 80399E84 0038FC04  7C 7D 1B 78 */	mr r29, r3
/* 80399E88 0038FC08  38 C0 00 0A */	li r6, 0xa
/* 80399E8C 0038FC0C  38 A0 00 00 */	li r5, 0
/* 80399E90 0038FC10  48 05 77 19 */	bl __mod2u
/* 80399E94 0038FC14  7C 04 F8 14 */	addc r0, r4, r31
/* 80399E98 0038FC18  7F A3 EB 78 */	mr r3, r29
/* 80399E9C 0038FC1C  98 1E FF F9 */	stb r0, -7(r30)
/* 80399EA0 0038FC20  7F 84 E3 78 */	mr r4, r28
/* 80399EA4 0038FC24  38 A0 00 00 */	li r5, 0
/* 80399EA8 0038FC28  38 C0 00 0A */	li r6, 0xa
/* 80399EAC 0038FC2C  48 05 74 D9 */	bl __div2u
/* 80399EB0 0038FC30  37 7B FF F8 */	addic. r27, r27, -8
/* 80399EB4 0038FC34  7C 9C 23 78 */	mr r28, r4
/* 80399EB8 0038FC38  7C 7D 1B 78 */	mr r29, r3
/* 80399EBC 0038FC3C  40 80 FE 70 */	bge lbl_80399D2C
/* 80399EC0 0038FC40  38 00 00 00 */	li r0, 0
/* 80399EC4 0038FC44  39 61 00 20 */	addi r11, r1, 0x20
/* 80399EC8 0038FC48  98 1A 00 10 */	stb r0, 0x10(r26)
/* 80399ECC 0038FC4C  48 05 74 9D */	bl _restgpr_26
/* 80399ED0 0038FC50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80399ED4 0038FC54  7C 08 03 A6 */	mtlr r0
/* 80399ED8 0038FC58  38 21 00 20 */	addi r1, r1, 0x20
/* 80399EDC 0038FC5C  4E 80 00 20 */	blr 

.global NWC24iCheckStringLength
NWC24iCheckStringLength:
/* 80399EE0 0038FC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399EE4 0038FC64  7C 08 02 A6 */	mflr r0
/* 80399EE8 0038FC68  2C 03 00 00 */	cmpwi r3, 0
/* 80399EEC 0038FC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399EF0 0038FC70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80399EF4 0038FC74  7C BF 2B 78 */	mr r31, r5
/* 80399EF8 0038FC78  93 C1 00 08 */	stw r30, 8(r1)
/* 80399EFC 0038FC7C  7C 9E 23 78 */	mr r30, r4
/* 80399F00 0038FC80  40 82 00 0C */	bne lbl_80399F0C
/* 80399F04 0038FC84  38 60 FF FB */	li r3, -5
/* 80399F08 0038FC88  48 00 00 3C */	b lbl_80399F44
lbl_80399F0C:
/* 80399F0C 0038FC8C  38 85 00 01 */	addi r4, r5, 1
/* 80399F10 0038FC90  4B FF D7 55 */	bl STD_strnlen
/* 80399F14 0038FC94  2C 03 00 00 */	cmpwi r3, 0
/* 80399F18 0038FC98  40 82 00 0C */	bne lbl_80399F24
/* 80399F1C 0038FC9C  38 60 FF FB */	li r3, -5
/* 80399F20 0038FCA0  48 00 00 24 */	b lbl_80399F44
lbl_80399F24:
/* 80399F24 0038FCA4  7C 03 F8 40 */	cmplw r3, r31
/* 80399F28 0038FCA8  40 81 00 0C */	ble lbl_80399F34
/* 80399F2C 0038FCAC  38 60 FF FA */	li r3, -6
/* 80399F30 0038FCB0  48 00 00 14 */	b lbl_80399F44
lbl_80399F34:
/* 80399F34 0038FCB4  7C 03 F0 40 */	cmplw r3, r30
/* 80399F38 0038FCB8  38 60 00 00 */	li r3, 0
/* 80399F3C 0038FCBC  40 80 00 08 */	bge lbl_80399F44
/* 80399F40 0038FCC0  38 60 FF E8 */	li r3, -24
lbl_80399F44:
/* 80399F44 0038FCC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399F48 0038FCC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80399F4C 0038FCCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80399F50 0038FCD0  7C 08 03 A6 */	mtlr r0
/* 80399F54 0038FCD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80399F58 0038FCD8  4E 80 00 20 */	blr 

.global NWC24iStrLCpy
NWC24iStrLCpy:
/* 80399F5C 0038FCDC  2C 03 00 00 */	cmpwi r3, 0
/* 80399F60 0038FCE0  41 82 00 0C */	beq lbl_80399F6C
/* 80399F64 0038FCE4  2C 04 00 00 */	cmpwi r4, 0
/* 80399F68 0038FCE8  40 82 00 0C */	bne lbl_80399F74
lbl_80399F6C:
/* 80399F6C 0038FCEC  38 60 00 00 */	li r3, 0
/* 80399F70 0038FCF0  4E 80 00 20 */	blr 
lbl_80399F74:
/* 80399F74 0038FCF4  7C 66 1B 78 */	mr r6, r3
/* 80399F78 0038FCF8  38 E0 00 00 */	li r7, 0
/* 80399F7C 0038FCFC  48 00 00 24 */	b lbl_80399FA0
lbl_80399F80:
/* 80399F80 0038FD00  88 04 00 00 */	lbz r0, 0(r4)
/* 80399F84 0038FD04  98 06 00 00 */	stb r0, 0(r6)
/* 80399F88 0038FD08  88 04 00 00 */	lbz r0, 0(r4)
/* 80399F8C 0038FD0C  7C 00 07 75 */	extsb. r0, r0
/* 80399F90 0038FD10  41 82 00 1C */	beq lbl_80399FAC
/* 80399F94 0038FD14  38 84 00 01 */	addi r4, r4, 1
/* 80399F98 0038FD18  38 E7 00 01 */	addi r7, r7, 1
/* 80399F9C 0038FD1C  38 C6 00 01 */	addi r6, r6, 1
lbl_80399FA0:
/* 80399FA0 0038FD20  38 07 00 01 */	addi r0, r7, 1
/* 80399FA4 0038FD24  7C 00 28 00 */	cmpw r0, r5
/* 80399FA8 0038FD28  41 80 FF D8 */	blt lbl_80399F80
lbl_80399FAC:
/* 80399FAC 0038FD2C  38 07 00 01 */	addi r0, r7, 1
/* 80399FB0 0038FD30  7C 00 28 00 */	cmpw r0, r5
/* 80399FB4 0038FD34  41 80 00 14 */	blt lbl_80399FC8
/* 80399FB8 0038FD38  2C 05 00 00 */	cmpwi r5, 0
/* 80399FBC 0038FD3C  41 82 00 0C */	beq lbl_80399FC8
/* 80399FC0 0038FD40  38 00 00 00 */	li r0, 0
/* 80399FC4 0038FD44  7C 03 39 AE */	stbx r0, r3, r7
lbl_80399FC8:
/* 80399FC8 0038FD48  7C E3 3B 78 */	mr r3, r7
/* 80399FCC 0038FD4C  4E 80 00 20 */	blr 

