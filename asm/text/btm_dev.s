.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global BTM_SecAddDevice
BTM_SecAddDevice:
/* 80239C44 0022F9C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80239C48 0022F9C8  7C 08 02 A6 */	mflr r0
/* 80239C4C 0022F9CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80239C50 0022F9D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80239C54 0022F9D4  48 1B 76 C1 */	bl _savegpr_24
/* 80239C58 0022F9D8  3D 20 80 53 */	lis r9, lbl_80529CF8@ha
/* 80239C5C 0022F9DC  7C 78 1B 78 */	mr r24, r3
/* 80239C60 0022F9E0  39 29 9C F8 */	addi r9, r9, lbl_80529CF8@l
/* 80239C64 0022F9E4  7C 99 23 78 */	mr r25, r4
/* 80239C68 0022F9E8  7C BA 2B 78 */	mr r26, r5
/* 80239C6C 0022F9EC  7C DB 33 78 */	mr r27, r6
/* 80239C70 0022F9F0  7C FC 3B 78 */	mr r28, r7
/* 80239C74 0022F9F4  7D 1D 43 78 */	mr r29, r8
/* 80239C78 0022F9F8  3B C9 1F 30 */	addi r30, r9, 0x1f30
/* 80239C7C 0022F9FC  3B E0 00 00 */	li r31, 0
lbl_80239C80:
/* 80239C80 0022FA00  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 80239C84 0022FA04  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80239C88 0022FA08  41 82 00 20 */	beq lbl_80239CA8
/* 80239C8C 0022FA0C  7F 04 C3 78 */	mr r4, r24
/* 80239C90 0022FA10  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80239C94 0022FA14  38 A0 00 06 */	li r5, 6
/* 80239C98 0022FA18  48 1B C4 B9 */	bl memcmp
/* 80239C9C 0022FA1C  2C 03 00 00 */	cmpwi r3, 0
/* 80239CA0 0022FA20  40 82 00 08 */	bne lbl_80239CA8
/* 80239CA4 0022FA24  48 00 00 18 */	b lbl_80239CBC
lbl_80239CA8:
/* 80239CA8 0022FA28  3B FF 00 01 */	addi r31, r31, 1
/* 80239CAC 0022FA2C  3B DE 00 88 */	addi r30, r30, 0x88
/* 80239CB0 0022FA30  2C 1F 00 10 */	cmpwi r31, 0x10
/* 80239CB4 0022FA34  41 80 FF CC */	blt lbl_80239C80
/* 80239CB8 0022FA38  3B C0 00 00 */	li r30, 0
lbl_80239CBC:
/* 80239CBC 0022FA3C  2C 1E 00 00 */	cmpwi r30, 0
/* 80239CC0 0022FA40  40 82 00 20 */	bne lbl_80239CE0
/* 80239CC4 0022FA44  7F 03 C3 78 */	mr r3, r24
/* 80239CC8 0022FA48  48 00 02 51 */	bl btm_sec_alloc_dev
/* 80239CCC 0022FA4C  2C 03 00 00 */	cmpwi r3, 0
/* 80239CD0 0022FA50  7C 7E 1B 78 */	mr r30, r3
/* 80239CD4 0022FA54  40 82 00 24 */	bne lbl_80239CF8
/* 80239CD8 0022FA58  38 60 00 00 */	li r3, 0
/* 80239CDC 0022FA5C  48 00 00 D8 */	b lbl_80239DB4
lbl_80239CE0:
/* 80239CE0 0022FA60  3C 80 80 53 */	lis r4, lbl_80529CF8@ha
/* 80239CE4 0022FA64  38 84 9C F8 */	addi r4, r4, lbl_80529CF8@l
/* 80239CE8 0022FA68  80 64 19 74 */	lwz r3, 0x1974(r4)
/* 80239CEC 0022FA6C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80239CF0 0022FA70  38 03 00 01 */	addi r0, r3, 1
/* 80239CF4 0022FA74  90 04 19 74 */	stw r0, 0x1974(r4)
lbl_80239CF8:
/* 80239CF8 0022FA78  2C 19 00 00 */	cmpwi r25, 0
/* 80239CFC 0022FA7C  41 82 00 14 */	beq lbl_80239D10
/* 80239D00 0022FA80  7F 24 CB 78 */	mr r4, r25
/* 80239D04 0022FA84  38 7E 00 22 */	addi r3, r30, 0x22
/* 80239D08 0022FA88  38 A0 00 03 */	li r5, 3
/* 80239D0C 0022FA8C  4B DC A6 2D */	bl func_80004338
lbl_80239D10:
/* 80239D10 0022FA90  38 7E 00 35 */	addi r3, r30, 0x35
/* 80239D14 0022FA94  38 80 00 00 */	li r4, 0
/* 80239D18 0022FA98  38 A0 00 41 */	li r5, 0x41
/* 80239D1C 0022FA9C  4B DC A7 21 */	bl func_8000443C
/* 80239D20 0022FAA0  2C 1A 00 00 */	cmpwi r26, 0
/* 80239D24 0022FAA4  41 82 00 2C */	beq lbl_80239D50
/* 80239D28 0022FAA8  88 1A 00 00 */	lbz r0, 0(r26)
/* 80239D2C 0022FAAC  2C 00 00 00 */	cmpwi r0, 0
/* 80239D30 0022FAB0  41 82 00 20 */	beq lbl_80239D50
/* 80239D34 0022FAB4  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 80239D38 0022FAB8  7F 44 D3 78 */	mr r4, r26
/* 80239D3C 0022FABC  38 7E 00 35 */	addi r3, r30, 0x35
/* 80239D40 0022FAC0  38 A0 00 40 */	li r5, 0x40
/* 80239D44 0022FAC4  60 00 00 08 */	ori r0, r0, 8
/* 80239D48 0022FAC8  98 1E 00 76 */	stb r0, 0x76(r30)
/* 80239D4C 0022FACC  48 1C 05 F5 */	bl strncpy
lbl_80239D50:
/* 80239D50 0022FAD0  2C 1B 00 00 */	cmpwi r27, 0
/* 80239D54 0022FAD4  41 82 00 18 */	beq lbl_80239D6C
/* 80239D58 0022FAD8  7F 64 DB 78 */	mr r4, r27
/* 80239D5C 0022FADC  38 7E 00 77 */	addi r3, r30, 0x77
/* 80239D60 0022FAE0  38 A0 00 08 */	li r5, 8
/* 80239D64 0022FAE4  4B DC A5 D5 */	bl func_80004338
/* 80239D68 0022FAE8  48 00 00 14 */	b lbl_80239D7C
lbl_80239D6C:
/* 80239D6C 0022FAEC  38 7E 00 77 */	addi r3, r30, 0x77
/* 80239D70 0022FAF0  38 80 00 00 */	li r4, 0
/* 80239D74 0022FAF4  38 A0 00 08 */	li r5, 8
/* 80239D78 0022FAF8  4B DC A6 C5 */	bl func_8000443C
lbl_80239D7C:
/* 80239D7C 0022FAFC  80 1C 00 00 */	lwz r0, 0(r28)
/* 80239D80 0022FB00  2C 1D 00 00 */	cmpwi r29, 0
/* 80239D84 0022FB04  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80239D88 0022FB08  80 1C 00 04 */	lwz r0, 4(r28)
/* 80239D8C 0022FB0C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80239D90 0022FB10  41 82 00 20 */	beq lbl_80239DB0
/* 80239D94 0022FB14  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 80239D98 0022FB18  7F A4 EB 78 */	mr r4, r29
/* 80239D9C 0022FB1C  38 7E 00 25 */	addi r3, r30, 0x25
/* 80239DA0 0022FB20  38 A0 00 10 */	li r5, 0x10
/* 80239DA4 0022FB24  60 00 00 10 */	ori r0, r0, 0x10
/* 80239DA8 0022FB28  98 1E 00 76 */	stb r0, 0x76(r30)
/* 80239DAC 0022FB2C  4B DC A5 8D */	bl func_80004338
lbl_80239DB0:
/* 80239DB0 0022FB30  38 60 00 01 */	li r3, 1
lbl_80239DB4:
/* 80239DB4 0022FB34  39 61 00 30 */	addi r11, r1, 0x30
/* 80239DB8 0022FB38  48 1B 75 A9 */	bl _restgpr_24
/* 80239DBC 0022FB3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80239DC0 0022FB40  7C 08 03 A6 */	mtlr r0
/* 80239DC4 0022FB44  38 21 00 30 */	addi r1, r1, 0x30
/* 80239DC8 0022FB48  4E 80 00 20 */	blr 

.global BTM_SecDeleteDevice
BTM_SecDeleteDevice:
/* 80239DCC 0022FB4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80239DD0 0022FB50  7C 08 02 A6 */	mflr r0
/* 80239DD4 0022FB54  3C 80 80 53 */	lis r4, lbl_80529CF8@ha
/* 80239DD8 0022FB58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80239DDC 0022FB5C  38 84 9C F8 */	addi r4, r4, lbl_80529CF8@l
/* 80239DE0 0022FB60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80239DE4 0022FB64  3B E0 00 00 */	li r31, 0
/* 80239DE8 0022FB68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80239DEC 0022FB6C  3B C4 1F 30 */	addi r30, r4, 0x1f30
/* 80239DF0 0022FB70  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80239DF4 0022FB74  7C 7D 1B 78 */	mr r29, r3
lbl_80239DF8:
/* 80239DF8 0022FB78  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 80239DFC 0022FB7C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80239E00 0022FB80  41 82 00 20 */	beq lbl_80239E20
/* 80239E04 0022FB84  7F A4 EB 78 */	mr r4, r29
/* 80239E08 0022FB88  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80239E0C 0022FB8C  38 A0 00 06 */	li r5, 6
/* 80239E10 0022FB90  48 1B C3 41 */	bl memcmp
/* 80239E14 0022FB94  2C 03 00 00 */	cmpwi r3, 0
/* 80239E18 0022FB98  40 82 00 08 */	bne lbl_80239E20
/* 80239E1C 0022FB9C  48 00 00 18 */	b lbl_80239E34
lbl_80239E20:
/* 80239E20 0022FBA0  3B FF 00 01 */	addi r31, r31, 1
/* 80239E24 0022FBA4  3B DE 00 88 */	addi r30, r30, 0x88
/* 80239E28 0022FBA8  2C 1F 00 10 */	cmpwi r31, 0x10
/* 80239E2C 0022FBAC  41 80 FF CC */	blt lbl_80239DF8
/* 80239E30 0022FBB0  3B C0 00 00 */	li r30, 0
lbl_80239E34:
/* 80239E34 0022FBB4  2C 1E 00 00 */	cmpwi r30, 0
/* 80239E38 0022FBB8  40 82 00 0C */	bne lbl_80239E44
/* 80239E3C 0022FBBC  38 60 00 00 */	li r3, 0
/* 80239E40 0022FBC0  48 00 00 1C */	b lbl_80239E5C
lbl_80239E44:
/* 80239E44 0022FBC4  38 00 00 00 */	li r0, 0
/* 80239E48 0022FBC8  7F A3 EB 78 */	mr r3, r29
/* 80239E4C 0022FBCC  98 1E 00 76 */	stb r0, 0x76(r30)
/* 80239E50 0022FBD0  38 80 00 00 */	li r4, 0
/* 80239E54 0022FBD4  48 00 1A 89 */	bl BTM_DeleteStoredLinkKey
/* 80239E58 0022FBD8  38 60 00 01 */	li r3, 1
lbl_80239E5C:
/* 80239E5C 0022FBDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80239E60 0022FBE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80239E64 0022FBE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80239E68 0022FBE8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80239E6C 0022FBEC  7C 08 03 A6 */	mtlr r0
/* 80239E70 0022FBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80239E74 0022FBF4  4E 80 00 20 */	blr 

.global BTM_SecReadDevName
BTM_SecReadDevName:
/* 80239E78 0022FBF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80239E7C 0022FBFC  7C 08 02 A6 */	mflr r0
/* 80239E80 0022FC00  3C 80 80 53 */	lis r4, lbl_80529CF8@ha
/* 80239E84 0022FC04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80239E88 0022FC08  38 84 9C F8 */	addi r4, r4, lbl_80529CF8@l
/* 80239E8C 0022FC0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80239E90 0022FC10  3B E0 00 00 */	li r31, 0
/* 80239E94 0022FC14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80239E98 0022FC18  3B C4 1F 30 */	addi r30, r4, 0x1f30
/* 80239E9C 0022FC1C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80239EA0 0022FC20  3B A0 00 00 */	li r29, 0
/* 80239EA4 0022FC24  93 81 00 10 */	stw r28, 0x10(r1)
/* 80239EA8 0022FC28  7C 7C 1B 78 */	mr r28, r3
lbl_80239EAC:
/* 80239EAC 0022FC2C  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 80239EB0 0022FC30  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80239EB4 0022FC34  41 82 00 20 */	beq lbl_80239ED4
/* 80239EB8 0022FC38  7F 84 E3 78 */	mr r4, r28
/* 80239EBC 0022FC3C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80239EC0 0022FC40  38 A0 00 06 */	li r5, 6
/* 80239EC4 0022FC44  48 1B C2 8D */	bl memcmp
/* 80239EC8 0022FC48  2C 03 00 00 */	cmpwi r3, 0
/* 80239ECC 0022FC4C  40 82 00 08 */	bne lbl_80239ED4
/* 80239ED0 0022FC50  48 00 00 18 */	b lbl_80239EE8
lbl_80239ED4:
/* 80239ED4 0022FC54  3B FF 00 01 */	addi r31, r31, 1
/* 80239ED8 0022FC58  3B DE 00 88 */	addi r30, r30, 0x88
/* 80239EDC 0022FC5C  2C 1F 00 10 */	cmpwi r31, 0x10
/* 80239EE0 0022FC60  41 80 FF CC */	blt lbl_80239EAC
/* 80239EE4 0022FC64  3B C0 00 00 */	li r30, 0
lbl_80239EE8:
/* 80239EE8 0022FC68  2C 1E 00 00 */	cmpwi r30, 0
/* 80239EEC 0022FC6C  41 82 00 08 */	beq lbl_80239EF4
/* 80239EF0 0022FC70  3B BE 00 35 */	addi r29, r30, 0x35
lbl_80239EF4:
/* 80239EF4 0022FC74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80239EF8 0022FC78  7F A3 EB 78 */	mr r3, r29
/* 80239EFC 0022FC7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80239F00 0022FC80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80239F04 0022FC84  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80239F08 0022FC88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80239F0C 0022FC8C  7C 08 03 A6 */	mtlr r0
/* 80239F10 0022FC90  38 21 00 20 */	addi r1, r1, 0x20
/* 80239F14 0022FC94  4E 80 00 20 */	blr 

.global btm_sec_alloc_dev
btm_sec_alloc_dev:
/* 80239F18 0022FC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80239F1C 0022FC9C  7C 08 02 A6 */	mflr r0
/* 80239F20 0022FCA0  3C 80 80 53 */	lis r4, lbl_80529CF8@ha
/* 80239F24 0022FCA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80239F28 0022FCA8  38 00 00 10 */	li r0, 0x10
/* 80239F2C 0022FCAC  38 84 9C F8 */	addi r4, r4, lbl_80529CF8@l
/* 80239F30 0022FCB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80239F34 0022FCB4  3B E0 00 00 */	li r31, 0
/* 80239F38 0022FCB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80239F3C 0022FCBC  7C 7E 1B 78 */	mr r30, r3
/* 80239F40 0022FCC0  38 60 00 00 */	li r3, 0
/* 80239F44 0022FCC4  7C 09 03 A6 */	mtctr r0
lbl_80239F48:
/* 80239F48 0022FCC8  88 04 1F A6 */	lbz r0, 0x1fa6(r4)
/* 80239F4C 0022FCCC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80239F50 0022FCD0  40 82 00 1C */	bne lbl_80239F6C
/* 80239F54 0022FCD4  1C 03 00 88 */	mulli r0, r3, 0x88
/* 80239F58 0022FCD8  3C 60 80 53 */	lis r3, lbl_80529CF8@ha
/* 80239F5C 0022FCDC  38 63 9C F8 */	addi r3, r3, lbl_80529CF8@l
/* 80239F60 0022FCE0  7C 63 02 14 */	add r3, r3, r0
/* 80239F64 0022FCE4  3B E3 1F 30 */	addi r31, r3, 0x1f30
/* 80239F68 0022FCE8  48 00 00 10 */	b lbl_80239F78
lbl_80239F6C:
/* 80239F6C 0022FCEC  38 84 00 88 */	addi r4, r4, 0x88
/* 80239F70 0022FCF0  38 63 00 01 */	addi r3, r3, 1
/* 80239F74 0022FCF4  42 00 FF D4 */	bdnz lbl_80239F48
lbl_80239F78:
/* 80239F78 0022FCF8  2C 1F 00 00 */	cmpwi r31, 0
/* 80239F7C 0022FCFC  40 82 00 0C */	bne lbl_80239F88
/* 80239F80 0022FD00  48 00 01 F9 */	bl btm_find_oldest_dev
/* 80239F84 0022FD04  7C 7F 1B 78 */	mr r31, r3
lbl_80239F88:
/* 80239F88 0022FD08  7F E3 FB 78 */	mr r3, r31
/* 80239F8C 0022FD0C  38 80 00 00 */	li r4, 0
/* 80239F90 0022FD10  38 A0 00 88 */	li r5, 0x88
/* 80239F94 0022FD14  4B DC A4 A9 */	bl func_8000443C
/* 80239F98 0022FD18  38 60 00 80 */	li r3, 0x80
/* 80239F9C 0022FD1C  38 00 00 00 */	li r0, 0
/* 80239FA0 0022FD20  98 7F 00 76 */	stb r3, 0x76(r31)
/* 80239FA4 0022FD24  7F C3 F3 78 */	mr r3, r30
/* 80239FA8 0022FD28  98 1F 00 85 */	stb r0, 0x85(r31)
/* 80239FAC 0022FD2C  48 00 28 51 */	bl BTM_InqDbRead
/* 80239FB0 0022FD30  2C 03 00 00 */	cmpwi r3, 0
/* 80239FB4 0022FD34  7C 64 1B 78 */	mr r4, r3
/* 80239FB8 0022FD38  41 82 00 18 */	beq lbl_80239FD0
/* 80239FBC 0022FD3C  38 7F 00 22 */	addi r3, r31, 0x22
/* 80239FC0 0022FD40  38 84 00 08 */	addi r4, r4, 8
/* 80239FC4 0022FD44  38 A0 00 03 */	li r5, 3
/* 80239FC8 0022FD48  4B DC A3 71 */	bl func_80004338
/* 80239FCC 0022FD4C  48 00 00 1C */	b lbl_80239FE8
lbl_80239FD0:
/* 80239FD0 0022FD50  3C 80 80 53 */	lis r4, lbl_80529CF8@ha
/* 80239FD4 0022FD54  38 7F 00 22 */	addi r3, r31, 0x22
/* 80239FD8 0022FD58  38 84 9C F8 */	addi r4, r4, lbl_80529CF8@l
/* 80239FDC 0022FD5C  38 A0 00 03 */	li r5, 3
/* 80239FE0 0022FD60  38 84 27 BA */	addi r4, r4, 0x27ba
/* 80239FE4 0022FD64  4B DC A3 55 */	bl func_80004338
lbl_80239FE8:
/* 80239FE8 0022FD68  7F C4 F3 78 */	mr r4, r30
/* 80239FEC 0022FD6C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80239FF0 0022FD70  38 A0 00 06 */	li r5, 6
/* 80239FF4 0022FD74  4B DC A3 45 */	bl func_80004338
/* 80239FF8 0022FD78  7F C3 F3 78 */	mr r3, r30
/* 80239FFC 0022FD7C  4B FF EE 7D */	bl BTM_GetHCIConnHandle
/* 8023A000 0022FD80  B0 7F 00 18 */	sth r3, 0x18(r31)
/* 8023A004 0022FD84  3C A0 80 53 */	lis r5, lbl_80529CF8@ha
/* 8023A008 0022FD88  38 A5 9C F8 */	addi r5, r5, lbl_80529CF8@l
/* 8023A00C 0022FD8C  7F E3 FB 78 */	mr r3, r31
/* 8023A010 0022FD90  80 85 19 74 */	lwz r4, 0x1974(r5)
/* 8023A014 0022FD94  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8023A018 0022FD98  38 04 00 01 */	addi r0, r4, 1
/* 8023A01C 0022FD9C  90 05 19 74 */	stw r0, 0x1974(r5)
/* 8023A020 0022FDA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023A024 0022FDA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023A028 0022FDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023A02C 0022FDAC  7C 08 03 A6 */	mtlr r0
/* 8023A030 0022FDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8023A034 0022FDB4  4E 80 00 20 */	blr 

.global btm_find_dev_by_handle
btm_find_dev_by_handle:
/* 8023A038 0022FDB8  3C 80 80 53 */	lis r4, lbl_80529CF8@ha
/* 8023A03C 0022FDBC  38 00 00 04 */	li r0, 4
/* 8023A040 0022FDC0  38 84 9C F8 */	addi r4, r4, lbl_80529CF8@l
/* 8023A044 0022FDC4  38 A0 00 00 */	li r5, 0
/* 8023A048 0022FDC8  38 84 1F 30 */	addi r4, r4, 0x1f30
/* 8023A04C 0022FDCC  7C 09 03 A6 */	mtctr r0
lbl_8023A050:
/* 8023A050 0022FDD0  88 04 00 76 */	lbz r0, 0x76(r4)
/* 8023A054 0022FDD4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A058 0022FDD8  41 82 00 18 */	beq lbl_8023A070
/* 8023A05C 0022FDDC  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 8023A060 0022FDE0  7C 00 18 40 */	cmplw r0, r3
/* 8023A064 0022FDE4  40 82 00 0C */	bne lbl_8023A070
/* 8023A068 0022FDE8  7C 83 23 78 */	mr r3, r4
/* 8023A06C 0022FDEC  4E 80 00 20 */	blr 
lbl_8023A070:
/* 8023A070 0022FDF0  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 8023A074 0022FDF4  38 84 00 88 */	addi r4, r4, 0x88
/* 8023A078 0022FDF8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A07C 0022FDFC  41 82 00 18 */	beq lbl_8023A094
/* 8023A080 0022FE00  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 8023A084 0022FE04  7C 00 18 40 */	cmplw r0, r3
/* 8023A088 0022FE08  40 82 00 0C */	bne lbl_8023A094
/* 8023A08C 0022FE0C  7C 83 23 78 */	mr r3, r4
/* 8023A090 0022FE10  4E 80 00 20 */	blr 
lbl_8023A094:
/* 8023A094 0022FE14  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 8023A098 0022FE18  38 84 00 88 */	addi r4, r4, 0x88
/* 8023A09C 0022FE1C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A0A0 0022FE20  41 82 00 18 */	beq lbl_8023A0B8
/* 8023A0A4 0022FE24  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 8023A0A8 0022FE28  7C 00 18 40 */	cmplw r0, r3
/* 8023A0AC 0022FE2C  40 82 00 0C */	bne lbl_8023A0B8
/* 8023A0B0 0022FE30  7C 83 23 78 */	mr r3, r4
/* 8023A0B4 0022FE34  4E 80 00 20 */	blr 
lbl_8023A0B8:
/* 8023A0B8 0022FE38  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 8023A0BC 0022FE3C  38 84 00 88 */	addi r4, r4, 0x88
/* 8023A0C0 0022FE40  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A0C4 0022FE44  41 82 00 18 */	beq lbl_8023A0DC
/* 8023A0C8 0022FE48  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 8023A0CC 0022FE4C  7C 00 18 40 */	cmplw r0, r3
/* 8023A0D0 0022FE50  40 82 00 0C */	bne lbl_8023A0DC
/* 8023A0D4 0022FE54  7C 83 23 78 */	mr r3, r4
/* 8023A0D8 0022FE58  4E 80 00 20 */	blr 
lbl_8023A0DC:
/* 8023A0DC 0022FE5C  38 A5 00 03 */	addi r5, r5, 3
/* 8023A0E0 0022FE60  38 84 00 88 */	addi r4, r4, 0x88
/* 8023A0E4 0022FE64  42 00 FF 6C */	bdnz lbl_8023A050
/* 8023A0E8 0022FE68  38 60 00 00 */	li r3, 0
/* 8023A0EC 0022FE6C  4E 80 00 20 */	blr 

.global btm_find_dev
btm_find_dev:
/* 8023A0F0 0022FE70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023A0F4 0022FE74  7C 08 02 A6 */	mflr r0
/* 8023A0F8 0022FE78  3C 80 80 53 */	lis r4, lbl_80529CF8@ha
/* 8023A0FC 0022FE7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023A100 0022FE80  38 84 9C F8 */	addi r4, r4, lbl_80529CF8@l
/* 8023A104 0022FE84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023A108 0022FE88  3B E4 1F 30 */	addi r31, r4, 0x1f30
/* 8023A10C 0022FE8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023A110 0022FE90  3B C0 00 00 */	li r30, 0
/* 8023A114 0022FE94  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8023A118 0022FE98  7C 7D 1B 78 */	mr r29, r3
lbl_8023A11C:
/* 8023A11C 0022FE9C  88 1F 00 76 */	lbz r0, 0x76(r31)
/* 8023A120 0022FEA0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A124 0022FEA4  41 82 00 24 */	beq lbl_8023A148
/* 8023A128 0022FEA8  7F A4 EB 78 */	mr r4, r29
/* 8023A12C 0022FEAC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8023A130 0022FEB0  38 A0 00 06 */	li r5, 6
/* 8023A134 0022FEB4  48 1B C0 1D */	bl memcmp
/* 8023A138 0022FEB8  2C 03 00 00 */	cmpwi r3, 0
/* 8023A13C 0022FEBC  40 82 00 0C */	bne lbl_8023A148
/* 8023A140 0022FEC0  7F E3 FB 78 */	mr r3, r31
/* 8023A144 0022FEC4  48 00 00 18 */	b lbl_8023A15C
lbl_8023A148:
/* 8023A148 0022FEC8  3B DE 00 01 */	addi r30, r30, 1
/* 8023A14C 0022FECC  3B FF 00 88 */	addi r31, r31, 0x88
/* 8023A150 0022FED0  2C 1E 00 10 */	cmpwi r30, 0x10
/* 8023A154 0022FED4  41 80 FF C8 */	blt lbl_8023A11C
/* 8023A158 0022FED8  38 60 00 00 */	li r3, 0
lbl_8023A15C:
/* 8023A15C 0022FEDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023A160 0022FEE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023A164 0022FEE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023A168 0022FEE8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8023A16C 0022FEEC  7C 08 03 A6 */	mtlr r0
/* 8023A170 0022FEF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8023A174 0022FEF4  4E 80 00 20 */	blr 

.global btm_find_oldest_dev
btm_find_oldest_dev:
/* 8023A178 0022FEF8  3C 60 80 53 */	lis r3, lbl_80529CF8@ha
/* 8023A17C 0022FEFC  38 00 00 04 */	li r0, 4
/* 8023A180 0022FF00  38 63 9C F8 */	addi r3, r3, lbl_80529CF8@l
/* 8023A184 0022FF04  38 C0 FF FF */	li r6, -1
/* 8023A188 0022FF08  38 A3 1F 30 */	addi r5, r3, 0x1f30
/* 8023A18C 0022FF0C  38 E0 00 00 */	li r7, 0
/* 8023A190 0022FF10  7C A3 2B 78 */	mr r3, r5
/* 8023A194 0022FF14  7C 09 03 A6 */	mtctr r0
lbl_8023A198:
/* 8023A198 0022FF18  88 85 00 76 */	lbz r4, 0x76(r5)
/* 8023A19C 0022FF1C  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 8023A1A0 0022FF20  41 82 00 20 */	beq lbl_8023A1C0
/* 8023A1A4 0022FF24  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8023A1A8 0022FF28  40 82 00 18 */	bne lbl_8023A1C0
/* 8023A1AC 0022FF2C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8023A1B0 0022FF30  7C 00 30 40 */	cmplw r0, r6
/* 8023A1B4 0022FF34  40 80 00 0C */	bge lbl_8023A1C0
/* 8023A1B8 0022FF38  7C A3 2B 78 */	mr r3, r5
/* 8023A1BC 0022FF3C  7C 06 03 78 */	mr r6, r0
lbl_8023A1C0:
/* 8023A1C0 0022FF40  88 85 00 FE */	lbz r4, 0xfe(r5)
/* 8023A1C4 0022FF44  38 A5 00 88 */	addi r5, r5, 0x88
/* 8023A1C8 0022FF48  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 8023A1CC 0022FF4C  41 82 00 20 */	beq lbl_8023A1EC
/* 8023A1D0 0022FF50  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8023A1D4 0022FF54  40 82 00 18 */	bne lbl_8023A1EC
/* 8023A1D8 0022FF58  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8023A1DC 0022FF5C  7C 00 30 40 */	cmplw r0, r6
/* 8023A1E0 0022FF60  40 80 00 0C */	bge lbl_8023A1EC
/* 8023A1E4 0022FF64  7C A3 2B 78 */	mr r3, r5
/* 8023A1E8 0022FF68  7C 06 03 78 */	mr r6, r0
lbl_8023A1EC:
/* 8023A1EC 0022FF6C  88 85 00 FE */	lbz r4, 0xfe(r5)
/* 8023A1F0 0022FF70  38 A5 00 88 */	addi r5, r5, 0x88
/* 8023A1F4 0022FF74  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 8023A1F8 0022FF78  41 82 00 20 */	beq lbl_8023A218
/* 8023A1FC 0022FF7C  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8023A200 0022FF80  40 82 00 18 */	bne lbl_8023A218
/* 8023A204 0022FF84  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8023A208 0022FF88  7C 00 30 40 */	cmplw r0, r6
/* 8023A20C 0022FF8C  40 80 00 0C */	bge lbl_8023A218
/* 8023A210 0022FF90  7C A3 2B 78 */	mr r3, r5
/* 8023A214 0022FF94  7C 06 03 78 */	mr r6, r0
lbl_8023A218:
/* 8023A218 0022FF98  88 85 00 FE */	lbz r4, 0xfe(r5)
/* 8023A21C 0022FF9C  38 A5 00 88 */	addi r5, r5, 0x88
/* 8023A220 0022FFA0  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 8023A224 0022FFA4  41 82 00 20 */	beq lbl_8023A244
/* 8023A228 0022FFA8  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8023A22C 0022FFAC  40 82 00 18 */	bne lbl_8023A244
/* 8023A230 0022FFB0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8023A234 0022FFB4  7C 00 30 40 */	cmplw r0, r6
/* 8023A238 0022FFB8  40 80 00 0C */	bge lbl_8023A244
/* 8023A23C 0022FFBC  7C A3 2B 78 */	mr r3, r5
/* 8023A240 0022FFC0  7C 06 03 78 */	mr r6, r0
lbl_8023A244:
/* 8023A244 0022FFC4  38 E7 00 03 */	addi r7, r7, 3
/* 8023A248 0022FFC8  38 A5 00 88 */	addi r5, r5, 0x88
/* 8023A24C 0022FFCC  42 00 FF 4C */	bdnz lbl_8023A198
/* 8023A250 0022FFD0  3C 06 00 01 */	addis r0, r6, 1
/* 8023A254 0022FFD4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8023A258 0022FFD8  4C 82 00 20 */	bnelr 
/* 8023A25C 0022FFDC  3C 80 80 53 */	lis r4, lbl_80529CF8@ha
/* 8023A260 0022FFE0  38 00 00 04 */	li r0, 4
/* 8023A264 0022FFE4  38 84 9C F8 */	addi r4, r4, lbl_80529CF8@l
/* 8023A268 0022FFE8  38 A0 00 00 */	li r5, 0
/* 8023A26C 0022FFEC  38 84 1F 30 */	addi r4, r4, 0x1f30
/* 8023A270 0022FFF0  7C 09 03 A6 */	mtctr r0
lbl_8023A274:
/* 8023A274 0022FFF4  88 04 00 76 */	lbz r0, 0x76(r4)
/* 8023A278 0022FFF8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A27C 0022FFFC  41 82 00 18 */	beq lbl_8023A294
/* 8023A280 00230000  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8023A284 00230004  7C 00 30 40 */	cmplw r0, r6
/* 8023A288 00230008  40 80 00 0C */	bge lbl_8023A294
/* 8023A28C 0023000C  7C 83 23 78 */	mr r3, r4
/* 8023A290 00230010  7C 06 03 78 */	mr r6, r0
lbl_8023A294:
/* 8023A294 00230014  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 8023A298 00230018  38 84 00 88 */	addi r4, r4, 0x88
/* 8023A29C 0023001C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A2A0 00230020  41 82 00 18 */	beq lbl_8023A2B8
/* 8023A2A4 00230024  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8023A2A8 00230028  7C 00 30 40 */	cmplw r0, r6
/* 8023A2AC 0023002C  40 80 00 0C */	bge lbl_8023A2B8
/* 8023A2B0 00230030  7C 83 23 78 */	mr r3, r4
/* 8023A2B4 00230034  7C 06 03 78 */	mr r6, r0
lbl_8023A2B8:
/* 8023A2B8 00230038  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 8023A2BC 0023003C  38 84 00 88 */	addi r4, r4, 0x88
/* 8023A2C0 00230040  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A2C4 00230044  41 82 00 18 */	beq lbl_8023A2DC
/* 8023A2C8 00230048  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8023A2CC 0023004C  7C 00 30 40 */	cmplw r0, r6
/* 8023A2D0 00230050  40 80 00 0C */	bge lbl_8023A2DC
/* 8023A2D4 00230054  7C 83 23 78 */	mr r3, r4
/* 8023A2D8 00230058  7C 06 03 78 */	mr r6, r0
lbl_8023A2DC:
/* 8023A2DC 0023005C  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 8023A2E0 00230060  38 84 00 88 */	addi r4, r4, 0x88
/* 8023A2E4 00230064  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8023A2E8 00230068  41 82 00 18 */	beq lbl_8023A300
/* 8023A2EC 0023006C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8023A2F0 00230070  7C 00 30 40 */	cmplw r0, r6
/* 8023A2F4 00230074  40 80 00 0C */	bge lbl_8023A300
/* 8023A2F8 00230078  7C 83 23 78 */	mr r3, r4
/* 8023A2FC 0023007C  7C 06 03 78 */	mr r6, r0
lbl_8023A300:
/* 8023A300 00230080  38 A5 00 03 */	addi r5, r5, 3
/* 8023A304 00230084  38 84 00 88 */	addi r4, r4, 0x88
/* 8023A308 00230088  42 00 FF 6C */	bdnz lbl_8023A274
/* 8023A30C 0023008C  4E 80 00 20 */	blr 
