.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gmGetItemSwitchData_Simple
gmGetItemSwitchData_Simple:
/* 80055C2C 0004B9AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80055C30 0004B9B0  7C 08 02 A6 */	mflr r0
/* 80055C34 0004B9B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80055C38 0004B9B8  39 61 00 60 */	addi r11, r1, 0x60
/* 80055C3C 0004B9BC  48 39 B6 D9 */	bl _savegpr_24
/* 80055C40 0004B9C0  3C C0 80 40 */	lis r6, lbl_80400004@ha
/* 80055C44 0004B9C4  87 06 6D F0 */	lwzu r24, 0x6df0(r6)
/* 80055C48 0004B9C8  54 60 10 3A */	slwi r0, r3, 2
/* 80055C4C 0004B9CC  3C 80 80 43 */	lis r4, lbl_8042C768@ha
/* 80055C50 0004B9D0  83 26 00 04 */	lwz r25, lbl_80400004@l(r6)
/* 80055C54 0004B9D4  38 A1 00 08 */	addi r5, r1, 8
/* 80055C58 0004B9D8  83 46 00 08 */	lwz r26, 8(r6)
/* 80055C5C 0004B9DC  38 84 C7 68 */	addi r4, r4, lbl_8042C768@l
/* 80055C60 0004B9E0  83 66 00 0C */	lwz r27, 0xc(r6)
/* 80055C64 0004B9E4  3F E0 80 49 */	lis r31, lbl_804977E0@ha
/* 80055C68 0004B9E8  83 86 00 10 */	lwz r28, 0x10(r6)
/* 80055C6C 0004B9EC  83 A6 00 14 */	lwz r29, 0x14(r6)
/* 80055C70 0004B9F0  83 C6 00 18 */	lwz r30, 0x18(r6)
/* 80055C74 0004B9F4  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 80055C78 0004B9F8  81 66 00 20 */	lwz r11, 0x20(r6)
/* 80055C7C 0004B9FC  81 46 00 24 */	lwz r10, 0x24(r6)
/* 80055C80 0004BA00  81 26 00 28 */	lwz r9, 0x28(r6)
/* 80055C84 0004BA04  81 06 00 2C */	lwz r8, 0x2c(r6)
/* 80055C88 0004BA08  80 E6 00 30 */	lwz r7, 0x30(r6)
/* 80055C8C 0004BA0C  80 C6 00 34 */	lwz r6, 0x34(r6)
/* 80055C90 0004BA10  93 01 00 08 */	stw r24, 8(r1)
/* 80055C94 0004BA14  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 80055C98 0004BA18  93 21 00 0C */	stw r25, 0xc(r1)
/* 80055C9C 0004BA1C  93 41 00 10 */	stw r26, 0x10(r1)
/* 80055CA0 0004BA20  93 61 00 14 */	stw r27, 0x14(r1)
/* 80055CA4 0004BA24  93 81 00 18 */	stw r28, 0x18(r1)
/* 80055CA8 0004BA28  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80055CAC 0004BA2C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80055CB0 0004BA30  91 81 00 24 */	stw r12, 0x24(r1)
/* 80055CB4 0004BA34  91 61 00 28 */	stw r11, 0x28(r1)
/* 80055CB8 0004BA38  91 41 00 2C */	stw r10, 0x2c(r1)
/* 80055CBC 0004BA3C  91 21 00 30 */	stw r9, 0x30(r1)
/* 80055CC0 0004BA40  91 01 00 34 */	stw r8, 0x34(r1)
/* 80055CC4 0004BA44  90 E1 00 38 */	stw r7, 0x38(r1)
/* 80055CC8 0004BA48  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80055CCC 0004BA4C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80055CD0 0004BA50  54 00 20 36 */	slwi r0, r0, 4
/* 80055CD4 0004BA54  7C C4 00 2E */	lwzx r6, r4, r0
/* 80055CD8 0004BA58  7C E4 02 14 */	add r7, r4, r0
/* 80055CDC 0004BA5C  80 A7 00 04 */	lwz r5, 4(r7)
/* 80055CE0 0004BA60  94 DF 77 E0 */	stwu r6, lbl_804977E0@l(r31)
/* 80055CE4 0004BA64  80 87 00 08 */	lwz r4, 8(r7)
/* 80055CE8 0004BA68  80 07 00 0C */	lwz r0, 0xc(r7)
/* 80055CEC 0004BA6C  90 BF 00 04 */	stw r5, 4(r31)
/* 80055CF0 0004BA70  90 9F 00 08 */	stw r4, 8(r31)
/* 80055CF4 0004BA74  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80055CF8 0004BA78  80 63 00 08 */	lwz r3, 8(r3)
/* 80055CFC 0004BA7C  88 03 00 13 */	lbz r0, 0x13(r3)
/* 80055D00 0004BA80  28 00 00 01 */	cmplwi r0, 1
/* 80055D04 0004BA84  41 82 00 0C */	beq lbl_80055D10
/* 80055D08 0004BA88  54 C0 04 A0 */	rlwinm r0, r6, 0, 0x12, 0x10
/* 80055D0C 0004BA8C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80055D10:
/* 80055D10 0004BA90  38 60 00 00 */	li r3, 0
/* 80055D14 0004BA94  4B FF 96 A9 */	bl gmCheckAssistKindUseEnable
/* 80055D18 0004BA98  2C 03 00 00 */	cmpwi r3, 0
/* 80055D1C 0004BA9C  40 82 00 10 */	bne lbl_80055D2C
/* 80055D20 0004BAA0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055D24 0004BAA4  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80055D28 0004BAA8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055D2C:
/* 80055D2C 0004BAAC  38 60 00 01 */	li r3, 1
/* 80055D30 0004BAB0  4B FF 96 8D */	bl gmCheckAssistKindUseEnable
/* 80055D34 0004BAB4  2C 03 00 00 */	cmpwi r3, 0
/* 80055D38 0004BAB8  40 82 00 10 */	bne lbl_80055D48
/* 80055D3C 0004BABC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055D40 0004BAC0  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 80055D44 0004BAC4  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055D48:
/* 80055D48 0004BAC8  38 60 00 02 */	li r3, 2
/* 80055D4C 0004BACC  4B FF 96 71 */	bl gmCheckAssistKindUseEnable
/* 80055D50 0004BAD0  2C 03 00 00 */	cmpwi r3, 0
/* 80055D54 0004BAD4  40 82 00 10 */	bne lbl_80055D64
/* 80055D58 0004BAD8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055D5C 0004BADC  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80055D60 0004BAE0  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055D64:
/* 80055D64 0004BAE4  38 60 00 03 */	li r3, 3
/* 80055D68 0004BAE8  4B FF 96 55 */	bl gmCheckAssistKindUseEnable
/* 80055D6C 0004BAEC  2C 03 00 00 */	cmpwi r3, 0
/* 80055D70 0004BAF0  40 82 00 10 */	bne lbl_80055D80
/* 80055D74 0004BAF4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055D78 0004BAF8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80055D7C 0004BAFC  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055D80:
/* 80055D80 0004BB00  38 60 00 04 */	li r3, 4
/* 80055D84 0004BB04  4B FF 96 39 */	bl gmCheckAssistKindUseEnable
/* 80055D88 0004BB08  2C 03 00 00 */	cmpwi r3, 0
/* 80055D8C 0004BB0C  40 82 00 10 */	bne lbl_80055D9C
/* 80055D90 0004BB10  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055D94 0004BB14  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80055D98 0004BB18  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055D9C:
/* 80055D9C 0004BB1C  38 60 00 05 */	li r3, 5
/* 80055DA0 0004BB20  4B FF 96 1D */	bl gmCheckAssistKindUseEnable
/* 80055DA4 0004BB24  2C 03 00 00 */	cmpwi r3, 0
/* 80055DA8 0004BB28  40 82 00 10 */	bne lbl_80055DB8
/* 80055DAC 0004BB2C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055DB0 0004BB30  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 80055DB4 0004BB34  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055DB8:
/* 80055DB8 0004BB38  39 61 00 60 */	addi r11, r1, 0x60
/* 80055DBC 0004BB3C  7F E3 FB 78 */	mr r3, r31
/* 80055DC0 0004BB40  48 39 B5 A1 */	bl _restgpr_24
/* 80055DC4 0004BB44  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80055DC8 0004BB48  7C 08 03 A6 */	mtlr r0
/* 80055DCC 0004BB4C  38 21 00 60 */	addi r1, r1, 0x60
/* 80055DD0 0004BB50  4E 80 00 20 */	blr 

.global gmGetItemSwitchData_Allstar
gmGetItemSwitchData_Allstar:
/* 80055DD4 0004BB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80055DD8 0004BB58  7C 08 02 A6 */	mflr r0
/* 80055DDC 0004BB5C  3C 80 80 43 */	lis r4, lbl_8042C828@ha
/* 80055DE0 0004BB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80055DE4 0004BB64  54 60 20 36 */	slwi r0, r3, 4
/* 80055DE8 0004BB68  38 84 C8 28 */	addi r4, r4, lbl_8042C828@l
/* 80055DEC 0004BB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80055DF0 0004BB70  7C E4 02 14 */	add r7, r4, r0
/* 80055DF4 0004BB74  3F E0 80 49 */	lis r31, lbl_804977E0@ha
/* 80055DF8 0004BB78  7C C4 00 2E */	lwzx r6, r4, r0
/* 80055DFC 0004BB7C  80 A7 00 04 */	lwz r5, 4(r7)
/* 80055E00 0004BB80  94 DF 77 E0 */	stwu r6, lbl_804977E0@l(r31)
/* 80055E04 0004BB84  80 87 00 08 */	lwz r4, 8(r7)
/* 80055E08 0004BB88  80 07 00 0C */	lwz r0, 0xc(r7)
/* 80055E0C 0004BB8C  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 80055E10 0004BB90  90 BF 00 04 */	stw r5, 4(r31)
/* 80055E14 0004BB94  90 9F 00 08 */	stw r4, 8(r31)
/* 80055E18 0004BB98  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80055E1C 0004BB9C  80 63 00 08 */	lwz r3, 8(r3)
/* 80055E20 0004BBA0  88 03 00 13 */	lbz r0, 0x13(r3)
/* 80055E24 0004BBA4  28 00 00 01 */	cmplwi r0, 1
/* 80055E28 0004BBA8  41 82 00 0C */	beq lbl_80055E34
/* 80055E2C 0004BBAC  54 C0 04 A0 */	rlwinm r0, r6, 0, 0x12, 0x10
/* 80055E30 0004BBB0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80055E34:
/* 80055E34 0004BBB4  38 60 00 00 */	li r3, 0
/* 80055E38 0004BBB8  4B FF 95 85 */	bl gmCheckAssistKindUseEnable
/* 80055E3C 0004BBBC  2C 03 00 00 */	cmpwi r3, 0
/* 80055E40 0004BBC0  40 82 00 10 */	bne lbl_80055E50
/* 80055E44 0004BBC4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055E48 0004BBC8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80055E4C 0004BBCC  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055E50:
/* 80055E50 0004BBD0  38 60 00 01 */	li r3, 1
/* 80055E54 0004BBD4  4B FF 95 69 */	bl gmCheckAssistKindUseEnable
/* 80055E58 0004BBD8  2C 03 00 00 */	cmpwi r3, 0
/* 80055E5C 0004BBDC  40 82 00 10 */	bne lbl_80055E6C
/* 80055E60 0004BBE0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055E64 0004BBE4  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 80055E68 0004BBE8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055E6C:
/* 80055E6C 0004BBEC  38 60 00 02 */	li r3, 2
/* 80055E70 0004BBF0  4B FF 95 4D */	bl gmCheckAssistKindUseEnable
/* 80055E74 0004BBF4  2C 03 00 00 */	cmpwi r3, 0
/* 80055E78 0004BBF8  40 82 00 10 */	bne lbl_80055E88
/* 80055E7C 0004BBFC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055E80 0004BC00  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80055E84 0004BC04  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055E88:
/* 80055E88 0004BC08  38 60 00 03 */	li r3, 3
/* 80055E8C 0004BC0C  4B FF 95 31 */	bl gmCheckAssistKindUseEnable
/* 80055E90 0004BC10  2C 03 00 00 */	cmpwi r3, 0
/* 80055E94 0004BC14  40 82 00 10 */	bne lbl_80055EA4
/* 80055E98 0004BC18  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055E9C 0004BC1C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80055EA0 0004BC20  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055EA4:
/* 80055EA4 0004BC24  38 60 00 04 */	li r3, 4
/* 80055EA8 0004BC28  4B FF 95 15 */	bl gmCheckAssistKindUseEnable
/* 80055EAC 0004BC2C  2C 03 00 00 */	cmpwi r3, 0
/* 80055EB0 0004BC30  40 82 00 10 */	bne lbl_80055EC0
/* 80055EB4 0004BC34  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055EB8 0004BC38  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80055EBC 0004BC3C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055EC0:
/* 80055EC0 0004BC40  38 60 00 05 */	li r3, 5
/* 80055EC4 0004BC44  4B FF 94 F9 */	bl gmCheckAssistKindUseEnable
/* 80055EC8 0004BC48  2C 03 00 00 */	cmpwi r3, 0
/* 80055ECC 0004BC4C  40 82 00 10 */	bne lbl_80055EDC
/* 80055ED0 0004BC50  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055ED4 0004BC54  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 80055ED8 0004BC58  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055EDC:
/* 80055EDC 0004BC5C  7F E3 FB 78 */	mr r3, r31
/* 80055EE0 0004BC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80055EE4 0004BC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80055EE8 0004BC68  7C 08 03 A6 */	mtlr r0
/* 80055EEC 0004BC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80055EF0 0004BC70  4E 80 00 20 */	blr 

.global gmGetItemSwitchData_Event
gmGetItemSwitchData_Event:
/* 80055EF4 0004BC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80055EF8 0004BC78  7C 08 02 A6 */	mflr r0
/* 80055EFC 0004BC7C  2C 04 00 01 */	cmpwi r4, 1
/* 80055F00 0004BC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80055F04 0004BC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80055F08 0004BC88  40 82 00 38 */	bne lbl_80055F40
/* 80055F0C 0004BC8C  3C A0 80 43 */	lis r5, lbl_8042C958@ha
/* 80055F10 0004BC90  54 60 20 36 */	slwi r0, r3, 4
/* 80055F14 0004BC94  38 A5 C9 58 */	addi r5, r5, lbl_8042C958@l
/* 80055F18 0004BC98  3D 20 80 49 */	lis r9, lbl_804977E0@ha
/* 80055F1C 0004BC9C  7C E5 00 2E */	lwzx r7, r5, r0
/* 80055F20 0004BCA0  7D 05 02 14 */	add r8, r5, r0
/* 80055F24 0004BCA4  80 C8 00 04 */	lwz r6, 4(r8)
/* 80055F28 0004BCA8  94 E9 77 E0 */	stwu r7, lbl_804977E0@l(r9)
/* 80055F2C 0004BCAC  80 A8 00 08 */	lwz r5, 8(r8)
/* 80055F30 0004BCB0  80 08 00 0C */	lwz r0, 0xc(r8)
/* 80055F34 0004BCB4  90 C9 00 04 */	stw r6, 4(r9)
/* 80055F38 0004BCB8  90 A9 00 08 */	stw r5, 8(r9)
/* 80055F3C 0004BCBC  90 09 00 0C */	stw r0, 0xc(r9)
lbl_80055F40:
/* 80055F40 0004BCC0  2C 04 00 02 */	cmpwi r4, 2
/* 80055F44 0004BCC4  40 82 00 38 */	bne lbl_80055F7C
/* 80055F48 0004BCC8  3C 80 80 43 */	lis r4, lbl_8042CC88@ha
/* 80055F4C 0004BCCC  54 60 20 36 */	slwi r0, r3, 4
/* 80055F50 0004BCD0  38 84 CC 88 */	addi r4, r4, lbl_8042CC88@l
/* 80055F54 0004BCD4  3C E0 80 49 */	lis r7, lbl_804977E0@ha
/* 80055F58 0004BCD8  7C A4 00 2E */	lwzx r5, r4, r0
/* 80055F5C 0004BCDC  7C C4 02 14 */	add r6, r4, r0
/* 80055F60 0004BCE0  80 86 00 04 */	lwz r4, 4(r6)
/* 80055F64 0004BCE4  94 A7 77 E0 */	stwu r5, lbl_804977E0@l(r7)
/* 80055F68 0004BCE8  80 66 00 08 */	lwz r3, 8(r6)
/* 80055F6C 0004BCEC  80 06 00 0C */	lwz r0, 0xc(r6)
/* 80055F70 0004BCF0  90 87 00 04 */	stw r4, 4(r7)
/* 80055F74 0004BCF4  90 67 00 08 */	stw r3, 8(r7)
/* 80055F78 0004BCF8  90 07 00 0C */	stw r0, 0xc(r7)
lbl_80055F7C:
/* 80055F7C 0004BCFC  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 80055F80 0004BD00  3F E0 80 49 */	lis r31, lbl_804977E0@ha
/* 80055F84 0004BD04  3B FF 77 E0 */	addi r31, r31, lbl_804977E0@l
/* 80055F88 0004BD08  80 63 00 08 */	lwz r3, 8(r3)
/* 80055F8C 0004BD0C  88 03 00 13 */	lbz r0, 0x13(r3)
/* 80055F90 0004BD10  28 00 00 01 */	cmplwi r0, 1
/* 80055F94 0004BD14  41 82 00 10 */	beq lbl_80055FA4
/* 80055F98 0004BD18  80 1F 00 00 */	lwz r0, 0(r31)
/* 80055F9C 0004BD1C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80055FA0 0004BD20  90 1F 00 00 */	stw r0, 0(r31)
lbl_80055FA4:
/* 80055FA4 0004BD24  38 60 00 00 */	li r3, 0
/* 80055FA8 0004BD28  4B FF 94 15 */	bl gmCheckAssistKindUseEnable
/* 80055FAC 0004BD2C  2C 03 00 00 */	cmpwi r3, 0
/* 80055FB0 0004BD30  40 82 00 10 */	bne lbl_80055FC0
/* 80055FB4 0004BD34  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055FB8 0004BD38  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80055FBC 0004BD3C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055FC0:
/* 80055FC0 0004BD40  38 60 00 01 */	li r3, 1
/* 80055FC4 0004BD44  4B FF 93 F9 */	bl gmCheckAssistKindUseEnable
/* 80055FC8 0004BD48  2C 03 00 00 */	cmpwi r3, 0
/* 80055FCC 0004BD4C  40 82 00 10 */	bne lbl_80055FDC
/* 80055FD0 0004BD50  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055FD4 0004BD54  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 80055FD8 0004BD58  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055FDC:
/* 80055FDC 0004BD5C  38 60 00 02 */	li r3, 2
/* 80055FE0 0004BD60  4B FF 93 DD */	bl gmCheckAssistKindUseEnable
/* 80055FE4 0004BD64  2C 03 00 00 */	cmpwi r3, 0
/* 80055FE8 0004BD68  40 82 00 10 */	bne lbl_80055FF8
/* 80055FEC 0004BD6C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80055FF0 0004BD70  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80055FF4 0004BD74  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80055FF8:
/* 80055FF8 0004BD78  38 60 00 03 */	li r3, 3
/* 80055FFC 0004BD7C  4B FF 93 C1 */	bl gmCheckAssistKindUseEnable
/* 80056000 0004BD80  2C 03 00 00 */	cmpwi r3, 0
/* 80056004 0004BD84  40 82 00 10 */	bne lbl_80056014
/* 80056008 0004BD88  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8005600C 0004BD8C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80056010 0004BD90  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056014:
/* 80056014 0004BD94  38 60 00 04 */	li r3, 4
/* 80056018 0004BD98  4B FF 93 A5 */	bl gmCheckAssistKindUseEnable
/* 8005601C 0004BD9C  2C 03 00 00 */	cmpwi r3, 0
/* 80056020 0004BDA0  40 82 00 10 */	bne lbl_80056030
/* 80056024 0004BDA4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056028 0004BDA8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8005602C 0004BDAC  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056030:
/* 80056030 0004BDB0  38 60 00 05 */	li r3, 5
/* 80056034 0004BDB4  4B FF 93 89 */	bl gmCheckAssistKindUseEnable
/* 80056038 0004BDB8  2C 03 00 00 */	cmpwi r3, 0
/* 8005603C 0004BDBC  40 82 00 10 */	bne lbl_8005604C
/* 80056040 0004BDC0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056044 0004BDC4  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 80056048 0004BDC8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_8005604C:
/* 8005604C 0004BDCC  7F E3 FB 78 */	mr r3, r31
/* 80056050 0004BDD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80056054 0004BDD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056058 0004BDD8  7C 08 03 A6 */	mtlr r0
/* 8005605C 0004BDDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80056060 0004BDE0  4E 80 00 20 */	blr 

.global gmGetItemSwitchData_Challenger
gmGetItemSwitchData_Challenger:
/* 80056064 0004BDE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056068 0004BDE8  7C 08 02 A6 */	mflr r0
/* 8005606C 0004BDEC  3C 80 80 43 */	lis r4, lbl_8042CFB8@ha
/* 80056070 0004BDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056074 0004BDF4  54 60 20 36 */	slwi r0, r3, 4
/* 80056078 0004BDF8  38 84 CF B8 */	addi r4, r4, lbl_8042CFB8@l
/* 8005607C 0004BDFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80056080 0004BE00  7C E4 02 14 */	add r7, r4, r0
/* 80056084 0004BE04  3F E0 80 49 */	lis r31, lbl_804977E0@ha
/* 80056088 0004BE08  7C C4 00 2E */	lwzx r6, r4, r0
/* 8005608C 0004BE0C  80 A7 00 04 */	lwz r5, 4(r7)
/* 80056090 0004BE10  94 DF 77 E0 */	stwu r6, lbl_804977E0@l(r31)
/* 80056094 0004BE14  80 87 00 08 */	lwz r4, 8(r7)
/* 80056098 0004BE18  80 07 00 0C */	lwz r0, 0xc(r7)
/* 8005609C 0004BE1C  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 800560A0 0004BE20  90 BF 00 04 */	stw r5, 4(r31)
/* 800560A4 0004BE24  90 9F 00 08 */	stw r4, 8(r31)
/* 800560A8 0004BE28  90 1F 00 0C */	stw r0, 0xc(r31)
/* 800560AC 0004BE2C  80 63 00 08 */	lwz r3, 8(r3)
/* 800560B0 0004BE30  88 03 00 13 */	lbz r0, 0x13(r3)
/* 800560B4 0004BE34  28 00 00 01 */	cmplwi r0, 1
/* 800560B8 0004BE38  41 82 00 0C */	beq lbl_800560C4
/* 800560BC 0004BE3C  54 C0 04 A0 */	rlwinm r0, r6, 0, 0x12, 0x10
/* 800560C0 0004BE40  90 1F 00 00 */	stw r0, 0(r31)
lbl_800560C4:
/* 800560C4 0004BE44  38 60 00 00 */	li r3, 0
/* 800560C8 0004BE48  4B FF 92 F5 */	bl gmCheckAssistKindUseEnable
/* 800560CC 0004BE4C  2C 03 00 00 */	cmpwi r3, 0
/* 800560D0 0004BE50  40 82 00 10 */	bne lbl_800560E0
/* 800560D4 0004BE54  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800560D8 0004BE58  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800560DC 0004BE5C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_800560E0:
/* 800560E0 0004BE60  38 60 00 01 */	li r3, 1
/* 800560E4 0004BE64  4B FF 92 D9 */	bl gmCheckAssistKindUseEnable
/* 800560E8 0004BE68  2C 03 00 00 */	cmpwi r3, 0
/* 800560EC 0004BE6C  40 82 00 10 */	bne lbl_800560FC
/* 800560F0 0004BE70  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800560F4 0004BE74  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 800560F8 0004BE78  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_800560FC:
/* 800560FC 0004BE7C  38 60 00 02 */	li r3, 2
/* 80056100 0004BE80  4B FF 92 BD */	bl gmCheckAssistKindUseEnable
/* 80056104 0004BE84  2C 03 00 00 */	cmpwi r3, 0
/* 80056108 0004BE88  40 82 00 10 */	bne lbl_80056118
/* 8005610C 0004BE8C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056110 0004BE90  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80056114 0004BE94  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056118:
/* 80056118 0004BE98  38 60 00 03 */	li r3, 3
/* 8005611C 0004BE9C  4B FF 92 A1 */	bl gmCheckAssistKindUseEnable
/* 80056120 0004BEA0  2C 03 00 00 */	cmpwi r3, 0
/* 80056124 0004BEA4  40 82 00 10 */	bne lbl_80056134
/* 80056128 0004BEA8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8005612C 0004BEAC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80056130 0004BEB0  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056134:
/* 80056134 0004BEB4  38 60 00 04 */	li r3, 4
/* 80056138 0004BEB8  4B FF 92 85 */	bl gmCheckAssistKindUseEnable
/* 8005613C 0004BEBC  2C 03 00 00 */	cmpwi r3, 0
/* 80056140 0004BEC0  40 82 00 10 */	bne lbl_80056150
/* 80056144 0004BEC4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056148 0004BEC8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8005614C 0004BECC  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056150:
/* 80056150 0004BED0  38 60 00 05 */	li r3, 5
/* 80056154 0004BED4  4B FF 92 69 */	bl gmCheckAssistKindUseEnable
/* 80056158 0004BED8  2C 03 00 00 */	cmpwi r3, 0
/* 8005615C 0004BEDC  40 82 00 10 */	bne lbl_8005616C
/* 80056160 0004BEE0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056164 0004BEE4  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 80056168 0004BEE8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_8005616C:
/* 8005616C 0004BEEC  7F E3 FB 78 */	mr r3, r31
/* 80056170 0004BEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80056174 0004BEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056178 0004BEF8  7C 08 03 A6 */	mtlr r0
/* 8005617C 0004BEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80056180 0004BF00  4E 80 00 20 */	blr 

.global gmGetItemSwitchData_Kumite
gmGetItemSwitchData_Kumite:
/* 80056184 0004BF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056188 0004BF08  7C 08 02 A6 */	mflr r0
/* 8005618C 0004BF0C  3C E0 80 43 */	lis r7, lbl_80430004@ha
/* 80056190 0004BF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056194 0004BF14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80056198 0004BF18  3F E0 80 49 */	lis r31, lbl_804977E0@ha
/* 8005619C 0004BF1C  84 C7 D0 98 */	lwzu r6, -0x2f68(r7)
/* 800561A0 0004BF20  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 800561A4 0004BF24  80 A7 00 04 */	lwz r5, lbl_80430004@l(r7)
/* 800561A8 0004BF28  94 DF 77 E0 */	stwu r6, lbl_804977E0@l(r31)
/* 800561AC 0004BF2C  80 87 00 08 */	lwz r4, 8(r7)
/* 800561B0 0004BF30  80 07 00 0C */	lwz r0, 0xc(r7)
/* 800561B4 0004BF34  90 BF 00 04 */	stw r5, 4(r31)
/* 800561B8 0004BF38  90 9F 00 08 */	stw r4, 8(r31)
/* 800561BC 0004BF3C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 800561C0 0004BF40  80 63 00 08 */	lwz r3, 8(r3)
/* 800561C4 0004BF44  88 03 00 13 */	lbz r0, 0x13(r3)
/* 800561C8 0004BF48  28 00 00 01 */	cmplwi r0, 1
/* 800561CC 0004BF4C  41 82 00 0C */	beq lbl_800561D8
/* 800561D0 0004BF50  54 C0 04 A0 */	rlwinm r0, r6, 0, 0x12, 0x10
/* 800561D4 0004BF54  90 1F 00 00 */	stw r0, 0(r31)
lbl_800561D8:
/* 800561D8 0004BF58  38 60 00 00 */	li r3, 0
/* 800561DC 0004BF5C  4B FF 91 E1 */	bl gmCheckAssistKindUseEnable
/* 800561E0 0004BF60  2C 03 00 00 */	cmpwi r3, 0
/* 800561E4 0004BF64  40 82 00 10 */	bne lbl_800561F4
/* 800561E8 0004BF68  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800561EC 0004BF6C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800561F0 0004BF70  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_800561F4:
/* 800561F4 0004BF74  38 60 00 01 */	li r3, 1
/* 800561F8 0004BF78  4B FF 91 C5 */	bl gmCheckAssistKindUseEnable
/* 800561FC 0004BF7C  2C 03 00 00 */	cmpwi r3, 0
/* 80056200 0004BF80  40 82 00 10 */	bne lbl_80056210
/* 80056204 0004BF84  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056208 0004BF88  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 8005620C 0004BF8C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056210:
/* 80056210 0004BF90  38 60 00 02 */	li r3, 2
/* 80056214 0004BF94  4B FF 91 A9 */	bl gmCheckAssistKindUseEnable
/* 80056218 0004BF98  2C 03 00 00 */	cmpwi r3, 0
/* 8005621C 0004BF9C  40 82 00 10 */	bne lbl_8005622C
/* 80056220 0004BFA0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056224 0004BFA4  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80056228 0004BFA8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_8005622C:
/* 8005622C 0004BFAC  38 60 00 03 */	li r3, 3
/* 80056230 0004BFB0  4B FF 91 8D */	bl gmCheckAssistKindUseEnable
/* 80056234 0004BFB4  2C 03 00 00 */	cmpwi r3, 0
/* 80056238 0004BFB8  40 82 00 10 */	bne lbl_80056248
/* 8005623C 0004BFBC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056240 0004BFC0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80056244 0004BFC4  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056248:
/* 80056248 0004BFC8  38 60 00 04 */	li r3, 4
/* 8005624C 0004BFCC  4B FF 91 71 */	bl gmCheckAssistKindUseEnable
/* 80056250 0004BFD0  2C 03 00 00 */	cmpwi r3, 0
/* 80056254 0004BFD4  40 82 00 10 */	bne lbl_80056264
/* 80056258 0004BFD8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8005625C 0004BFDC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80056260 0004BFE0  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056264:
/* 80056264 0004BFE4  38 60 00 05 */	li r3, 5
/* 80056268 0004BFE8  4B FF 91 55 */	bl gmCheckAssistKindUseEnable
/* 8005626C 0004BFEC  2C 03 00 00 */	cmpwi r3, 0
/* 80056270 0004BFF0  40 82 00 10 */	bne lbl_80056280
/* 80056274 0004BFF4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80056278 0004BFF8  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 8005627C 0004BFFC  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80056280:
/* 80056280 0004C000  7F E3 FB 78 */	mr r3, r31
/* 80056284 0004C004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80056288 0004C008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005628C 0004C00C  7C 08 03 A6 */	mtlr r0
/* 80056290 0004C010  38 21 00 10 */	addi r1, r1, 0x10
/* 80056294 0004C014  4E 80 00 20 */	blr 

