.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global mvMoviePlayer$7getVideoState
mvMoviePlayer$7getVideoState:
/* 8007EF64 00074CE4  4B FF E2 48 */	b THPPlayerGetState

.global mvMoviePlayer$7getTotalFrame
mvMoviePlayer$7getTotalFrame:
/* 8007EF68 00074CE8  80 6D BE 18 */	lwz r3, lbl_805A0238-_SDA_BASE_(r13)
/* 8007EF6C 00074CEC  4E 80 00 20 */	blr 

.global mvMoviePlayer$7drawFrame
mvMoviePlayer$7drawFrame:
/* 8007EF70 00074CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007EF74 00074CF4  7C 08 02 A6 */	mflr r0
/* 8007EF78 00074CF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007EF7C 00074CFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007EF80 00074D00  48 37 23 A1 */	bl _savegpr_27
/* 8007EF84 00074D04  80 0D BD F4 */	lwz r0, lbl_805A0214-_SDA_BASE_(r13)
/* 8007EF88 00074D08  7C 9B 23 78 */	mr r27, r4
/* 8007EF8C 00074D0C  7C BF 2B 78 */	mr r31, r5
/* 8007EF90 00074D10  7C DC 33 78 */	mr r28, r6
/* 8007EF94 00074D14  2C 00 00 00 */	cmpwi r0, 0
/* 8007EF98 00074D18  7C FD 3B 78 */	mr r29, r7
/* 8007EF9C 00074D1C  3B C0 FF FF */	li r30, -1
/* 8007EFA0 00074D20  41 82 01 8C */	beq lbl_8007F12C
/* 8007EFA4 00074D24  4B FF E2 09 */	bl THPPlayerGetState
/* 8007EFA8 00074D28  2C 03 00 05 */	cmpwi r3, 5
/* 8007EFAC 00074D2C  40 82 00 20 */	bne lbl_8007EFCC
/* 8007EFB0 00074D30  4B FF DA 2D */	bl THPPlayerStop
/* 8007EFB4 00074D34  4B FF D1 B5 */	bl THPPlayerClose
/* 8007EFB8 00074D38  80 6D BE 18 */	lwz r3, lbl_805A0238-_SDA_BASE_(r13)
/* 8007EFBC 00074D3C  38 00 00 00 */	li r0, 0
/* 8007EFC0 00074D40  90 0D BD F4 */	stw r0, lbl_805A0214-_SDA_BASE_(r13)
/* 8007EFC4 00074D44  38 63 FF FF */	addi r3, r3, -1
/* 8007EFC8 00074D48  48 00 01 68 */	b lbl_8007F130
lbl_8007EFCC:
/* 8007EFCC 00074D4C  2C 03 00 03 */	cmpwi r3, 3
/* 8007EFD0 00074D50  40 82 00 10 */	bne lbl_8007EFE0
/* 8007EFD4 00074D54  80 6D BE 18 */	lwz r3, lbl_805A0238-_SDA_BASE_(r13)
/* 8007EFD8 00074D58  38 63 FF FF */	addi r3, r3, -1
/* 8007EFDC 00074D5C  48 00 01 54 */	b lbl_8007F130
lbl_8007EFE0:
/* 8007EFE0 00074D60  88 0D BE 2E */	lbz r0, lbl_805A024E-_SDA_BASE_(r13)
/* 8007EFE4 00074D64  2C 00 00 00 */	cmpwi r0, 0
/* 8007EFE8 00074D68  41 82 00 14 */	beq lbl_8007EFFC
/* 8007EFEC 00074D6C  2C 03 00 02 */	cmpwi r3, 2
/* 8007EFF0 00074D70  40 82 00 18 */	bne lbl_8007F008
/* 8007EFF4 00074D74  4B FF DB 15 */	bl sndSystem$7prepareBGM
/* 8007EFF8 00074D78  48 00 00 10 */	b lbl_8007F008
lbl_8007EFFC:
/* 8007EFFC 00074D7C  2C 03 00 04 */	cmpwi r3, 4
/* 8007F000 00074D80  40 82 00 08 */	bne lbl_8007F008
/* 8007F004 00074D84  4B FF D9 41 */	bl THPPlayerPlay
lbl_8007F008:
/* 8007F008 00074D88  2C 1C 00 00 */	cmpwi r28, 0
/* 8007F00C 00074D8C  40 80 00 0C */	bge lbl_8007F018
/* 8007F010 00074D90  3C 60 80 4A */	lis r3, lbl_8049DDB0@ha
/* 8007F014 00074D94  83 83 DD B0 */	lwz r28, lbl_8049DDB0@l(r3)
lbl_8007F018:
/* 8007F018 00074D98  2C 1D 00 00 */	cmpwi r29, 0
/* 8007F01C 00074D9C  40 80 00 10 */	bge lbl_8007F02C
/* 8007F020 00074DA0  3C 60 80 4A */	lis r3, lbl_8049DDB0@ha
/* 8007F024 00074DA4  38 63 DD B0 */	addi r3, r3, lbl_8049DDB0@l
/* 8007F028 00074DA8  83 A3 00 04 */	lwz r29, 4(r3)
lbl_8007F02C:
/* 8007F02C 00074DAC  80 6D BE 30 */	lwz r3, lbl_805A0250-_SDA_BASE_(r13)
/* 8007F030 00074DB0  2C 03 00 00 */	cmpwi r3, 0
/* 8007F034 00074DB4  40 82 00 2C */	bne lbl_8007F060
/* 8007F038 00074DB8  80 6D 97 80 */	lwz r3, lbl_8059DBA0-_SDA_BASE_(r13)
/* 8007F03C 00074DBC  7F 65 DB 78 */	mr r5, r27
/* 8007F040 00074DC0  80 8D 97 84 */	lwz r4, lbl_8059DBA4-_SDA_BASE_(r13)
/* 8007F044 00074DC4  7F E6 FB 78 */	mr r6, r31
/* 8007F048 00074DC8  7F 87 E3 78 */	mr r7, r28
/* 8007F04C 00074DCC  7F A8 EB 78 */	mr r8, r29
/* 8007F050 00074DD0  4B FF DF D9 */	bl THPPlayerDrawCurrentFrame
/* 8007F054 00074DD4  7C 7E 1B 78 */	mr r30, r3
/* 8007F058 00074DD8  4B FF E1 65 */	bl THPPlayerDrawDone
/* 8007F05C 00074DDC  48 00 00 D0 */	b lbl_8007F12C
lbl_8007F060:
/* 8007F060 00074DE0  3F E0 80 4A */	lis r31, lbl_8049DC00@ha
/* 8007F064 00074DE4  3B FF DC 00 */	addi r31, r31, lbl_8049DC00@l
/* 8007F068 00074DE8  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 8007F06C 00074DEC  2C 00 00 00 */	cmpwi r0, 0
/* 8007F070 00074DF0  41 82 00 BC */	beq lbl_8007F12C
/* 8007F074 00074DF4  88 1F 00 A4 */	lbz r0, 0xa4(r31)
/* 8007F078 00074DF8  2C 00 00 00 */	cmpwi r0, 0
/* 8007F07C 00074DFC  41 82 00 B0 */	beq lbl_8007F12C
/* 8007F080 00074E00  80 FF 00 E8 */	lwz r7, 0xe8(r31)
/* 8007F084 00074E04  2C 07 00 00 */	cmpwi r7, 0
/* 8007F088 00074E08  41 82 00 A4 */	beq lbl_8007F12C
/* 8007F08C 00074E0C  80 8D BE 34 */	lwz r4, lbl_805A0254-_SDA_BASE_(r13)
/* 8007F090 00074E10  7F 88 E3 78 */	mr r8, r28
/* 8007F094 00074E14  80 A7 00 00 */	lwz r5, 0(r7)
/* 8007F098 00074E18  7F A9 EB 78 */	mr r9, r29
/* 8007F09C 00074E1C  80 C7 00 04 */	lwz r6, 4(r7)
/* 8007F0A0 00074E20  80 E7 00 08 */	lwz r7, 8(r7)
/* 8007F0A4 00074E24  48 00 0D 5D */	bl $2unnamed$2mv_movie_player_cpp$2$7SetCurrentFrameTexture
/* 8007F0A8 00074E28  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 8007F0AC 00074E2C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8007F0B0 00074E30  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8007F0B4 00074E34  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 8007F0B8 00074E38  7C 84 02 14 */	add r4, r4, r0
/* 8007F0BC 00074E3C  7C 04 1B 96 */	divwu r0, r4, r3
/* 8007F0C0 00074E40  7C 00 19 D6 */	mullw r0, r0, r3
/* 8007F0C4 00074E44  7F C0 20 50 */	subf r30, r0, r4
/* 8007F0C8 00074E48  4B FF E0 F5 */	bl THPPlayerDrawDone
/* 8007F0CC 00074E4C  80 8D BE 1C */	lwz r4, lbl_805A023C-_SDA_BASE_(r13)
/* 8007F0D0 00074E50  7C 04 F0 00 */	cmpw r4, r30
/* 8007F0D4 00074E54  41 82 00 14 */	beq lbl_8007F0E8
/* 8007F0D8 00074E58  38 00 00 00 */	li r0, 0
/* 8007F0DC 00074E5C  93 CD BE 1C */	stw r30, lbl_805A023C-_SDA_BASE_(r13)
/* 8007F0E0 00074E60  90 0D BE 20 */	stw r0, lbl_805A0240-_SDA_BASE_(r13)
/* 8007F0E4 00074E64  48 00 00 48 */	b lbl_8007F12C
lbl_8007F0E8:
/* 8007F0E8 00074E68  88 0D BE 2E */	lbz r0, lbl_805A024E-_SDA_BASE_(r13)
/* 8007F0EC 00074E6C  2C 00 00 00 */	cmpwi r0, 0
/* 8007F0F0 00074E70  40 82 00 3C */	bne lbl_8007F12C
/* 8007F0F4 00074E74  80 AD BE 18 */	lwz r5, lbl_805A0238-_SDA_BASE_(r13)
/* 8007F0F8 00074E78  80 6D BE 20 */	lwz r3, lbl_805A0240-_SDA_BASE_(r13)
/* 8007F0FC 00074E7C  34 C5 FF E2 */	addic. r6, r5, -30
/* 8007F100 00074E80  38 03 00 01 */	addi r0, r3, 1
/* 8007F104 00074E84  90 0D BE 20 */	stw r0, lbl_805A0240-_SDA_BASE_(r13)
/* 8007F108 00074E88  40 80 00 08 */	bge lbl_8007F110
/* 8007F10C 00074E8C  38 C0 00 00 */	li r6, 0
lbl_8007F110:
/* 8007F110 00074E90  7C 04 30 00 */	cmpw r4, r6
/* 8007F114 00074E94  41 80 00 18 */	blt lbl_8007F12C
/* 8007F118 00074E98  7C 64 28 50 */	subf r3, r4, r5
/* 8007F11C 00074E9C  1C 63 00 06 */	mulli r3, r3, 6
/* 8007F120 00074EA0  7C 03 00 40 */	cmplw r3, r0
/* 8007F124 00074EA4  40 80 00 08 */	bge lbl_8007F12C
/* 8007F128 00074EA8  3B C5 FF FF */	addi r30, r5, -1
lbl_8007F12C:
/* 8007F12C 00074EAC  7F C3 F3 78 */	mr r3, r30
lbl_8007F130:
/* 8007F130 00074EB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8007F134 00074EB4  48 37 22 39 */	bl _restgpr_27
/* 8007F138 00074EB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007F13C 00074EBC  7C 08 03 A6 */	mtlr r0
/* 8007F140 00074EC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8007F144 00074EC4  4E 80 00 20 */	blr 

.global mvMoviePlayer$7play
mvMoviePlayer$7play:
/* 8007F148 00074EC8  80 0D BD F4 */	lwz r0, lbl_805A0214-_SDA_BASE_(r13)
/* 8007F14C 00074ECC  2C 00 00 00 */	cmpwi r0, 0
/* 8007F150 00074ED0  4D 82 00 20 */	beqlr 
/* 8007F154 00074ED4  4B FF D7 F0 */	b THPPlayerPlay
/* 8007F158 00074ED8  4E 80 00 20 */	blr 

