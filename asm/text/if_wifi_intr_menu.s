.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfWifiIntrMenu$7__ct
IfWifiIntrMenu$7__ct:
/* 800FBB18 000F1898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FBB1C 000F189C  7C 08 02 A6 */	mflr r0
/* 800FBB20 000F18A0  3C A0 80 46 */	lis r5, lbl_8045C594@ha
/* 800FBB24 000F18A4  38 80 00 FF */	li r4, 0xff
/* 800FBB28 000F18A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FBB2C 000F18AC  38 A5 C5 94 */	addi r5, r5, lbl_8045C594@l
/* 800FBB30 000F18B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FBB34 000F18B4  7C 7F 1B 78 */	mr r31, r3
/* 800FBB38 000F18B8  90 A3 00 CC */	stw r5, 0xcc(r3)
/* 800FBB3C 000F18BC  38 63 00 24 */	addi r3, r3, 0x24
/* 800FBB40 000F18C0  4B FB DB A9 */	bl muMenuController$7init
/* 800FBB44 000F18C4  38 00 00 00 */	li r0, 0
/* 800FBB48 000F18C8  7F E3 FB 78 */	mr r3, r31
/* 800FBB4C 000F18CC  90 1F 00 00 */	stw r0, 0(r31)
/* 800FBB50 000F18D0  90 1F 00 04 */	stw r0, 4(r31)
/* 800FBB54 000F18D4  90 1F 00 08 */	stw r0, 8(r31)
/* 800FBB58 000F18D8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 800FBB5C 000F18DC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 800FBB60 000F18E0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 800FBB64 000F18E4  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 800FBB68 000F18E8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800FBB6C 000F18EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FBB70 000F18F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FBB74 000F18F4  7C 08 03 A6 */	mtlr r0
/* 800FBB78 000F18F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800FBB7C 000F18FC  4E 80 00 20 */	blr 

.global IfWifiIntrMenu$7__dt
IfWifiIntrMenu$7__dt:
/* 800FBB80 000F1900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FBB84 000F1904  7C 08 02 A6 */	mflr r0
/* 800FBB88 000F1908  2C 03 00 00 */	cmpwi r3, 0
/* 800FBB8C 000F190C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FBB90 000F1910  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FBB94 000F1914  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FBB98 000F1918  7C 9E 23 78 */	mr r30, r4
/* 800FBB9C 000F191C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FBBA0 000F1920  7C 7D 1B 78 */	mr r29, r3
/* 800FBBA4 000F1924  41 82 00 74 */	beq lbl_800FBC18
/* 800FBBA8 000F1928  3C A0 80 46 */	lis r5, lbl_8045C594@ha
/* 800FBBAC 000F192C  80 9D 00 04 */	lwz r4, 4(r29)
/* 800FBBB0 000F1930  38 A5 C5 94 */	addi r5, r5, lbl_8045C594@l
/* 800FBBB4 000F1934  90 A3 00 CC */	stw r5, 0xcc(r3)
/* 800FBBB8 000F1938  80 63 00 08 */	lwz r3, 8(r3)
/* 800FBBBC 000F193C  4B FB D3 21 */	bl MuMsg$7detachMuObject
/* 800FBBC0 000F1940  80 7D 00 04 */	lwz r3, 4(r29)
/* 800FBBC4 000F1944  3B E0 00 00 */	li r31, 0
/* 800FBBC8 000F1948  2C 03 00 00 */	cmpwi r3, 0
/* 800FBBCC 000F194C  41 82 00 20 */	beq lbl_800FBBEC
/* 800FBBD0 000F1950  41 82 00 18 */	beq lbl_800FBBE8
/* 800FBBD4 000F1954  81 83 00 5C */	lwz r12, 0x5c(r3)
/* 800FBBD8 000F1958  38 80 00 01 */	li r4, 1
/* 800FBBDC 000F195C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBBE0 000F1960  7D 89 03 A6 */	mtctr r12
/* 800FBBE4 000F1964  4E 80 04 21 */	bctrl 
lbl_800FBBE8:
/* 800FBBE8 000F1968  93 FD 00 04 */	stw r31, 4(r29)
lbl_800FBBEC:
/* 800FBBEC 000F196C  80 7D 00 08 */	lwz r3, 8(r29)
/* 800FBBF0 000F1970  2C 03 00 00 */	cmpwi r3, 0
/* 800FBBF4 000F1974  41 82 00 14 */	beq lbl_800FBC08
/* 800FBBF8 000F1978  38 80 00 01 */	li r4, 1
/* 800FBBFC 000F197C  4B FB CE 11 */	bl MuMsg$7__dt
/* 800FBC00 000F1980  38 00 00 00 */	li r0, 0
/* 800FBC04 000F1984  90 1D 00 08 */	stw r0, 8(r29)
lbl_800FBC08:
/* 800FBC08 000F1988  2C 1E 00 00 */	cmpwi r30, 0
/* 800FBC0C 000F198C  40 81 00 0C */	ble lbl_800FBC18
/* 800FBC10 000F1990  7F A3 EB 78 */	mr r3, r29
/* 800FBC14 000F1994  4B F1 0C B5 */	bl __dl
lbl_800FBC18:
/* 800FBC18 000F1998  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FBC1C 000F199C  7F A3 EB 78 */	mr r3, r29
/* 800FBC20 000F19A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FBC24 000F19A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FBC28 000F19A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FBC2C 000F19AC  7C 08 03 A6 */	mtlr r0
/* 800FBC30 000F19B0  38 21 00 20 */	addi r1, r1, 0x20
/* 800FBC34 000F19B4  4E 80 00 20 */	blr 

.global IfWifiIntrMenu$7createModel
IfWifiIntrMenu$7createModel:
/* 800FBC38 000F19B8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800FBC3C 000F19BC  7C 08 02 A6 */	mflr r0
/* 800FBC40 000F19C0  90 01 00 64 */	stw r0, 0x64(r1)
/* 800FBC44 000F19C4  39 61 00 60 */	addi r11, r1, 0x60
/* 800FBC48 000F19C8  48 2F 56 D5 */	bl _savegpr_26
/* 800FBC4C 000F19CC  38 00 00 00 */	li r0, 0
/* 800FBC50 000F19D0  3B A2 93 C8 */	addi r29, r2, lbl_805A26E8-_SDA2_BASE_
/* 800FBC54 000F19D4  90 03 00 00 */	stw r0, 0(r3)
/* 800FBC58 000F19D8  7C 7A 1B 78 */	mr r26, r3
/* 800FBC5C 000F19DC  7C 9B 23 78 */	mr r27, r4
/* 800FBC60 000F19E0  7C BC 2B 78 */	mr r28, r5
/* 800FBC64 000F19E4  90 03 00 04 */	stw r0, 4(r3)
/* 800FBC68 000F19E8  3B E0 00 01 */	li r31, 1
/* 800FBC6C 000F19EC  90 03 00 08 */	stw r0, 8(r3)
/* 800FBC70 000F19F0  90 03 00 0C */	stw r0, 0xc(r3)
/* 800FBC74 000F19F4  90 03 00 14 */	stw r0, 0x14(r3)
/* 800FBC78 000F19F8  90 03 00 18 */	stw r0, 0x18(r3)
/* 800FBC7C 000F19FC  98 03 00 1C */	stb r0, 0x1c(r3)
/* 800FBC80 000F1A00  90 03 00 20 */	stw r0, 0x20(r3)
/* 800FBC84 000F1A04  88 7D 00 05 */	lbz r3, 5(r29)
/* 800FBC88 000F1A08  88 1D 00 04 */	lbz r0, 4(r29)
/* 800FBC8C 000F1A0C  7C 00 18 40 */	cmplw r0, r3
/* 800FBC90 000F1A10  40 80 00 08 */	bge lbl_800FBC98
/* 800FBC94 000F1A14  7F E0 18 50 */	subf r31, r0, r3
lbl_800FBC98:
/* 800FBC98 000F1A18  3B C0 00 00 */	li r30, 0
/* 800FBC9C 000F1A1C  48 00 00 88 */	b lbl_800FBD24
lbl_800FBCA0:
/* 800FBCA0 000F1A20  80 9D 00 00 */	lwz r4, 0(r29)
/* 800FBCA4 000F1A24  7F 63 DB 78 */	mr r3, r27
/* 800FBCA8 000F1A28  88 BD 00 06 */	lbz r5, 6(r29)
/* 800FBCAC 000F1A2C  38 C0 00 00 */	li r6, 0
/* 800FBCB0 000F1A30  38 E0 00 2A */	li r7, 0x2a
/* 800FBCB4 000F1A34  4B FB 66 E1 */	bl MuObject$7create
/* 800FBCB8 000F1A38  88 1D 00 04 */	lbz r0, 4(r29)
/* 800FBCBC 000F1A3C  7C 00 F2 14 */	add r0, r0, r30
/* 800FBCC0 000F1A40  54 00 10 3A */	slwi r0, r0, 2
/* 800FBCC4 000F1A44  7C 9A 02 14 */	add r4, r26, r0
/* 800FBCC8 000F1A48  90 64 00 04 */	stw r3, 4(r4)
/* 800FBCCC 000F1A4C  38 61 00 08 */	addi r3, r1, 8
/* 800FBCD0 000F1A50  80 9D 00 00 */	lwz r4, 0(r29)
/* 800FBCD4 000F1A54  48 2F E5 AD */	bl strcpy
/* 800FBCD8 000F1A58  38 61 00 08 */	addi r3, r1, 8
/* 800FBCDC 000F1A5C  38 8D A0 A8 */	addi r4, r13, lbl_8059E4C8-_SDA_BASE_
/* 800FBCE0 000F1A60  48 2F E6 A5 */	bl strcat
/* 800FBCE4 000F1A64  88 1D 00 04 */	lbz r0, 4(r29)
/* 800FBCE8 000F1A68  38 81 00 08 */	addi r4, r1, 8
/* 800FBCEC 000F1A6C  7C 00 F2 14 */	add r0, r0, r30
/* 800FBCF0 000F1A70  54 00 10 3A */	slwi r0, r0, 2
/* 800FBCF4 000F1A74  7C 7A 02 14 */	add r3, r26, r0
/* 800FBCF8 000F1A78  80 63 00 04 */	lwz r3, 4(r3)
/* 800FBCFC 000F1A7C  4B FB 96 51 */	bl MuObject$7changeAnimN
/* 800FBD00 000F1A80  88 1D 00 04 */	lbz r0, 4(r29)
/* 800FBD04 000F1A84  C0 22 93 D0 */	lfs f1, lbl_805A26F0-_SDA2_BASE_(r2)
/* 800FBD08 000F1A88  7C 00 F2 14 */	add r0, r0, r30
/* 800FBD0C 000F1A8C  54 00 10 3A */	slwi r0, r0, 2
/* 800FBD10 000F1A90  7C 7A 02 14 */	add r3, r26, r0
/* 800FBD14 000F1A94  80 63 00 04 */	lwz r3, 4(r3)
/* 800FBD18 000F1A98  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800FBD1C 000F1A9C  4B F2 C9 35 */	bl gfModelAnimation$7setUpdateRate
/* 800FBD20 000F1AA0  3B DE 00 01 */	addi r30, r30, 1
lbl_800FBD24:
/* 800FBD24 000F1AA4  7C 1E F8 00 */	cmpw r30, r31
/* 800FBD28 000F1AA8  41 80 FF 78 */	blt lbl_800FBCA0
/* 800FBD2C 000F1AAC  38 60 00 08 */	li r3, 8
/* 800FBD30 000F1AB0  38 80 00 2A */	li r4, 0x2a
/* 800FBD34 000F1AB4  38 A0 00 2A */	li r5, 0x2a
/* 800FBD38 000F1AB8  4B FB CB F9 */	bl MuMsg$7create
/* 800FBD3C 000F1ABC  90 7A 00 08 */	stw r3, 8(r26)
/* 800FBD40 000F1AC0  7C 7B 1B 78 */	mr r27, r3
/* 800FBD44 000F1AC4  38 80 01 00 */	li r4, 0x100
/* 800FBD48 000F1AC8  38 A0 00 02 */	li r5, 2
/* 800FBD4C 000F1ACC  4B FB CD BD */	bl MuMsg$7allocMsgBuf
/* 800FBD50 000F1AD0  80 7A 00 08 */	lwz r3, 8(r26)
/* 800FBD54 000F1AD4  7F 84 E3 78 */	mr r4, r28
/* 800FBD58 000F1AD8  4B FB CF 25 */	bl MuMsg$7setMsgData
/* 800FBD5C 000F1ADC  80 BA 00 04 */	lwz r5, 4(r26)
/* 800FBD60 000F1AE0  7F 63 DB 78 */	mr r3, r27
/* 800FBD64 000F1AE4  C0 22 93 D4 */	lfs f1, lbl_805A26F4-_SDA2_BASE_(r2)
/* 800FBD68 000F1AE8  38 80 00 00 */	li r4, 0
/* 800FBD6C 000F1AEC  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800FBD70 000F1AF0  38 C0 00 00 */	li r6, 0
/* 800FBD74 000F1AF4  4B FB CF 1D */	bl MuMsg$7attachScnMdlSimple
/* 800FBD78 000F1AF8  7F 63 DB 78 */	mr r3, r27
/* 800FBD7C 000F1AFC  38 80 00 00 */	li r4, 0
/* 800FBD80 000F1B00  38 A0 00 04 */	li r5, 4
/* 800FBD84 000F1B04  4B FB D7 05 */	bl func_800B9488
/* 800FBD88 000F1B08  80 7B 00 08 */	lwz r3, 8(r27)
/* 800FBD8C 000F1B0C  38 80 00 00 */	li r4, 0
/* 800FBD90 000F1B10  38 A0 00 07 */	li r5, 7
/* 800FBD94 000F1B14  4B F6 F8 CD */	bl Message$7setObjZcompare
/* 800FBD98 000F1B18  80 BA 00 04 */	lwz r5, 4(r26)
/* 800FBD9C 000F1B1C  7F 63 DB 78 */	mr r3, r27
/* 800FBDA0 000F1B20  C0 22 93 D4 */	lfs f1, lbl_805A26F4-_SDA2_BASE_(r2)
/* 800FBDA4 000F1B24  38 80 00 01 */	li r4, 1
/* 800FBDA8 000F1B28  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800FBDAC 000F1B2C  38 C0 00 01 */	li r6, 1
/* 800FBDB0 000F1B30  4B FB CE E1 */	bl MuMsg$7attachScnMdlSimple
/* 800FBDB4 000F1B34  7F 63 DB 78 */	mr r3, r27
/* 800FBDB8 000F1B38  38 80 00 01 */	li r4, 1
/* 800FBDBC 000F1B3C  38 A0 00 04 */	li r5, 4
/* 800FBDC0 000F1B40  4B FB D6 C9 */	bl func_800B9488
/* 800FBDC4 000F1B44  80 7B 00 08 */	lwz r3, 8(r27)
/* 800FBDC8 000F1B48  38 80 00 01 */	li r4, 1
/* 800FBDCC 000F1B4C  38 A0 00 07 */	li r5, 7
/* 800FBDD0 000F1B50  4B F6 F8 91 */	bl Message$7setObjZcompare
/* 800FBDD4 000F1B54  39 61 00 60 */	addi r11, r1, 0x60
/* 800FBDD8 000F1B58  48 2F 55 91 */	bl _restgpr_26
/* 800FBDDC 000F1B5C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800FBDE0 000F1B60  7C 08 03 A6 */	mtlr r0
/* 800FBDE4 000F1B64  38 21 00 60 */	addi r1, r1, 0x60
/* 800FBDE8 000F1B68  4E 80 00 20 */	blr 

.global IfWifiIntrMenu$7startMelee
IfWifiIntrMenu$7startMelee:
/* 800FBDEC 000F1B6C  90 83 00 00 */	stw r4, 0(r3)
/* 800FBDF0 000F1B70  4E 80 00 20 */	blr 

.global IfWifiIntrMenu$7startMenu
IfWifiIntrMenu$7startMenu:
/* 800FBDF4 000F1B74  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800FBDF8 000F1B78  7C 08 02 A6 */	mflr r0
/* 800FBDFC 000F1B7C  90 01 00 74 */	stw r0, 0x74(r1)
/* 800FBE00 000F1B80  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800FBE04 000F1B84  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 800FBE08 000F1B88  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800FBE0C 000F1B8C  7C 9F 23 78 */	mr r31, r4
/* 800FBE10 000F1B90  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800FBE14 000F1B94  7C 7E 1B 78 */	mr r30, r3
/* 800FBE18 000F1B98  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800FBE1C 000F1B9C  93 81 00 50 */	stw r28, 0x50(r1)
/* 800FBE20 000F1BA0  7C BC 2B 78 */	mr r28, r5
/* 800FBE24 000F1BA4  83 A3 00 04 */	lwz r29, 4(r3)
/* 800FBE28 000F1BA8  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 800FBE2C 000F1BAC  80 63 00 08 */	lwz r3, 8(r3)
/* 800FBE30 000F1BB0  81 83 00 00 */	lwz r12, 0(r3)
/* 800FBE34 000F1BB4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800FBE38 000F1BB8  7D 89 03 A6 */	mtctr r12
/* 800FBE3C 000F1BBC  4E 80 04 21 */	bctrl 
/* 800FBE40 000F1BC0  7C 1C 00 D0 */	neg r0, r28
/* 800FBE44 000F1BC4  FF E0 08 90 */	fmr f31, f1
/* 800FBE48 000F1BC8  7C 00 E3 78 */	or r0, r0, r28
/* 800FBE4C 000F1BCC  7F A3 EB 78 */	mr r3, r29
/* 800FBE50 000F1BD0  54 04 0F FE */	srwi r4, r0, 0x1f
/* 800FBE54 000F1BD4  38 A0 00 02 */	li r5, 2
/* 800FBE58 000F1BD8  38 C0 00 00 */	li r6, 0
/* 800FBE5C 000F1BDC  38 E0 00 00 */	li r7, 0
/* 800FBE60 000F1BE0  4B FB 99 F5 */	bl MuObject$7setActionNo
/* 800FBE64 000F1BE4  FC 20 F8 90 */	fmr f1, f31
/* 800FBE68 000F1BE8  7F A3 EB 78 */	mr r3, r29
/* 800FBE6C 000F1BEC  4B FB B9 E1 */	bl MuObject$7setFrameVisible
/* 800FBE70 000F1BF0  7C 1C 00 D0 */	neg r0, r28
/* 800FBE74 000F1BF4  80 7E 00 08 */	lwz r3, 8(r30)
/* 800FBE78 000F1BF8  7C 00 E3 78 */	or r0, r0, r28
/* 800FBE7C 000F1BFC  38 80 00 00 */	li r4, 0
/* 800FBE80 000F1C00  54 06 0F FE */	srwi r6, r0, 0x1f
/* 800FBE84 000F1C04  38 A0 00 1D */	li r5, 0x1d
/* 800FBE88 000F1C08  38 06 00 01 */	addi r0, r6, 1
/* 800FBE8C 000F1C0C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 800FBE90 000F1C10  38 C0 00 00 */	li r6, 0
/* 800FBE94 000F1C14  4B FB D3 25 */	bl MuMsg$7printIndex
/* 800FBE98 000F1C18  2C 1C 00 00 */	cmpwi r28, 0
/* 800FBE9C 000F1C1C  41 82 00 1C */	beq lbl_800FBEB8
/* 800FBEA0 000F1C20  80 7E 00 08 */	lwz r3, 8(r30)
/* 800FBEA4 000F1C24  38 80 00 01 */	li r4, 1
/* 800FBEA8 000F1C28  38 A0 00 1E */	li r5, 0x1e
/* 800FBEAC 000F1C2C  38 C0 00 00 */	li r6, 0
/* 800FBEB0 000F1C30  4B FB D3 09 */	bl MuMsg$7printIndex
/* 800FBEB4 000F1C34  48 00 00 18 */	b lbl_800FBECC
lbl_800FBEB8:
/* 800FBEB8 000F1C38  80 7E 00 08 */	lwz r3, 8(r30)
/* 800FBEBC 000F1C3C  38 80 00 01 */	li r4, 1
/* 800FBEC0 000F1C40  38 AD A0 AC */	addi r5, r13, lbl_8059E4CC-_SDA_BASE_
/* 800FBEC4 000F1C44  4C C6 31 82 */	crclr 6
/* 800FBEC8 000F1C48  4B FB D3 69 */	bl MuMsg$7printf
lbl_800FBECC:
/* 800FBECC 000F1C4C  80 6D BC 20 */	lwz r3, lbl_805A0040-_SDA_BASE_(r13)
/* 800FBED0 000F1C50  7F E4 FB 78 */	mr r4, r31
/* 800FBED4 000F1C54  38 A1 00 08 */	addi r5, r1, 8
/* 800FBED8 000F1C58  4B F2 EF 71 */	bl gfPadSystem$7getSysPadStatus
/* 800FBEDC 000F1C5C  80 81 00 44 */	lwz r4, 0x44(r1)
/* 800FBEE0 000F1C60  38 62 93 E0 */	addi r3, r2, lbl_805A2700-_SDA2_BASE_
/* 800FBEE4 000F1C64  3C 00 43 30 */	lis r0, 0x4330
/* 800FBEE8 000F1C68  C8 22 93 D8 */	lfd f1, lbl_805A26F8-_SDA2_BASE_(r2)
/* 800FBEEC 000F1C6C  7C 83 20 AE */	lbzx r4, r3, r4
/* 800FBEF0 000F1C70  90 01 00 48 */	stw r0, 0x48(r1)
/* 800FBEF4 000F1C74  80 7E 00 04 */	lwz r3, 4(r30)
/* 800FBEF8 000F1C78  90 81 00 4C */	stw r4, 0x4c(r1)
/* 800FBEFC 000F1C7C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 800FBF00 000F1C80  EC 20 08 28 */	fsubs f1, f0, f1
/* 800FBF04 000F1C84  4B FB B9 49 */	bl MuObject$7setFrameVisible
/* 800FBF08 000F1C88  38 00 00 00 */	li r0, 0
/* 800FBF0C 000F1C8C  80 7E 00 04 */	lwz r3, 4(r30)
/* 800FBF10 000F1C90  90 1E 00 14 */	stw r0, 0x14(r30)
/* 800FBF14 000F1C94  38 80 00 00 */	li r4, 0
/* 800FBF18 000F1C98  38 A0 00 10 */	li r5, 0x10
/* 800FBF1C 000F1C9C  38 C0 00 01 */	li r6, 1
/* 800FBF20 000F1CA0  38 E0 00 00 */	li r7, 0
/* 800FBF24 000F1CA4  4B FB 99 31 */	bl MuObject$7setActionNo
/* 800FBF28 000F1CA8  80 7E 00 00 */	lwz r3, 0(r30)
/* 800FBF2C 000F1CAC  80 BE 00 04 */	lwz r5, 4(r30)
/* 800FBF30 000F1CB0  81 83 00 00 */	lwz r12, 0(r3)
/* 800FBF34 000F1CB4  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 800FBF38 000F1CB8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800FBF3C 000F1CBC  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800FBF40 000F1CC0  7D 89 03 A6 */	mtctr r12
/* 800FBF44 000F1CC4  4E 80 04 21 */	bctrl 
/* 800FBF48 000F1CC8  38 A0 00 01 */	li r5, 1
/* 800FBF4C 000F1CCC  38 00 00 0F */	li r0, 0xf
/* 800FBF50 000F1CD0  93 FE 00 18 */	stw r31, 0x18(r30)
/* 800FBF54 000F1CD4  38 7E 00 24 */	addi r3, r30, 0x24
/* 800FBF58 000F1CD8  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 800FBF5C 000F1CDC  98 BE 00 1C */	stb r5, 0x1c(r30)
/* 800FBF60 000F1CE0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 800FBF64 000F1CE4  4B FB D7 85 */	bl muMenuController$7init
/* 800FBF68 000F1CE8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 800FBF6C 000F1CEC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800FBF70 000F1CF0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800FBF74 000F1CF4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800FBF78 000F1CF8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800FBF7C 000F1CFC  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800FBF80 000F1D00  83 81 00 50 */	lwz r28, 0x50(r1)
/* 800FBF84 000F1D04  7C 08 03 A6 */	mtlr r0
/* 800FBF88 000F1D08  38 21 00 70 */	addi r1, r1, 0x70
/* 800FBF8C 000F1D0C  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfWifiIntrMenu$7main
IfWifiIntrMenu$7main:
/* 800FBFDC 000F1D5C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800FBFE0 000F1D60  7C 08 02 A6 */	mflr r0
/* 800FBFE4 000F1D64  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800FBFE8 000F1D68  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 800FBFEC 000F1D6C  3B E0 00 01 */	li r31, 1
/* 800FBFF0 000F1D70  93 C1 00 98 */	stw r30, 0x98(r1)
/* 800FBFF4 000F1D74  7C 7E 1B 78 */	mr r30, r3
/* 800FBFF8 000F1D78  38 63 00 24 */	addi r3, r3, 0x24
/* 800FBFFC 000F1D7C  4B FB D9 89 */	bl muMenuController$7main
/* 800FC000 000F1D80  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 800FC004 000F1D84  2C 00 00 00 */	cmpwi r0, 0
/* 800FC008 000F1D88  40 82 00 0C */	bne lbl_800FC014
/* 800FC00C 000F1D8C  38 60 00 00 */	li r3, 0
/* 800FC010 000F1D90  48 00 02 34 */	b lbl_800FC244
lbl_800FC014:
/* 800FC014 000F1D94  38 7E 00 24 */	addi r3, r30, 0x24
/* 800FC018 000F1D98  4B FB E3 C1 */	bl muMenuController$7getControllerID
/* 800FC01C 000F1D9C  7C 64 1B 78 */	mr r4, r3
/* 800FC020 000F1DA0  80 6D BC 20 */	lwz r3, lbl_805A0040-_SDA_BASE_(r13)
/* 800FC024 000F1DA4  38 A1 00 08 */	addi r5, r1, 8
/* 800FC028 000F1DA8  4B F2 EE 21 */	bl gfPadSystem$7getSysPadStatus
/* 800FC02C 000F1DAC  80 81 00 44 */	lwz r4, 0x44(r1)
/* 800FC030 000F1DB0  38 62 93 E0 */	addi r3, r2, lbl_805A2700-_SDA2_BASE_
/* 800FC034 000F1DB4  3C 00 43 30 */	lis r0, 0x4330
/* 800FC038 000F1DB8  C8 22 93 D8 */	lfd f1, lbl_805A26F8-_SDA2_BASE_(r2)
/* 800FC03C 000F1DBC  7C 83 20 AE */	lbzx r4, r3, r4
/* 800FC040 000F1DC0  90 01 00 88 */	stw r0, 0x88(r1)
/* 800FC044 000F1DC4  80 7E 00 04 */	lwz r3, 4(r30)
/* 800FC048 000F1DC8  90 81 00 8C */	stw r4, 0x8c(r1)
/* 800FC04C 000F1DCC  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 800FC050 000F1DD0  EC 20 08 28 */	fsubs f1, f0, f1
/* 800FC054 000F1DD4  4B FB B7 F9 */	bl MuObject$7setFrameVisible
/* 800FC058 000F1DD8  80 6D BC 20 */	lwz r3, lbl_805A0040-_SDA_BASE_(r13)
/* 800FC05C 000F1DDC  38 A1 00 48 */	addi r5, r1, 0x48
/* 800FC060 000F1DE0  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 800FC064 000F1DE4  4B F2 ED E5 */	bl gfPadSystem$7getSysPadStatus
/* 800FC068 000F1DE8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800FC06C 000F1DEC  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 800FC070 000F1DF0  2C 00 00 01 */	cmpwi r0, 1
/* 800FC074 000F1DF4  40 81 00 6C */	ble lbl_800FC0E0
/* 800FC078 000F1DF8  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 800FC07C 000F1DFC  2C 05 00 00 */	cmpwi r5, 0
/* 800FC080 000F1E00  7C A4 2B 78 */	mr r4, r5
/* 800FC084 000F1E04  41 81 00 14 */	bgt lbl_800FC098
/* 800FC088 000F1E08  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 800FC08C 000F1E0C  41 82 00 18 */	beq lbl_800FC0A4
/* 800FC090 000F1E10  38 85 00 01 */	addi r4, r5, 1
/* 800FC094 000F1E14  48 00 00 10 */	b lbl_800FC0A4
lbl_800FC098:
/* 800FC098 000F1E18  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 800FC09C 000F1E1C  41 82 00 08 */	beq lbl_800FC0A4
/* 800FC0A0 000F1E20  38 85 FF FF */	addi r4, r5, -1
lbl_800FC0A4:
/* 800FC0A4 000F1E24  7C 04 28 00 */	cmpw r4, r5
/* 800FC0A8 000F1E28  41 82 00 38 */	beq lbl_800FC0E0
/* 800FC0AC 000F1E2C  90 9E 00 14 */	stw r4, 0x14(r30)
/* 800FC0B0 000F1E30  38 A0 00 10 */	li r5, 0x10
/* 800FC0B4 000F1E34  80 7E 00 04 */	lwz r3, 4(r30)
/* 800FC0B8 000F1E38  38 C0 00 01 */	li r6, 1
/* 800FC0BC 000F1E3C  38 E0 00 00 */	li r7, 0
/* 800FC0C0 000F1E40  4B FB 97 95 */	bl MuObject$7setActionNo
/* 800FC0C4 000F1E44  80 6D BD B0 */	lwz r3, lbl_805A01D0-_SDA_BASE_(r13)
/* 800FC0C8 000F1E48  38 80 00 00 */	li r4, 0
/* 800FC0CC 000F1E4C  38 A0 FF FF */	li r5, -1
/* 800FC0D0 000F1E50  38 C0 00 00 */	li r6, 0
/* 800FC0D4 000F1E54  38 E0 00 00 */	li r7, 0
/* 800FC0D8 000F1E58  39 00 FF FF */	li r8, -1
/* 800FC0DC 000F1E5C  4B F7 81 D5 */	bl sndSystem$7playSE
lbl_800FC0E0:
/* 800FC0E0 000F1E60  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 800FC0E4 000F1E64  34 03 FF FF */	addic. r0, r3, -1
/* 800FC0E8 000F1E68  90 1E 00 20 */	stw r0, 0x20(r30)
/* 800FC0EC 000F1E6C  40 80 01 54 */	bge lbl_800FC240
/* 800FC0F0 000F1E70  80 C1 00 84 */	lwz r6, 0x84(r1)
/* 800FC0F4 000F1E74  3C 60 80 41 */	lis r3, lbl_804090E0@ha
/* 800FC0F8 000F1E78  38 63 90 E0 */	addi r3, r3, lbl_804090E0@l
/* 800FC0FC 000F1E7C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 800FC100 000F1E80  54 C4 10 3A */	slwi r4, r6, 2
/* 800FC104 000F1E84  7C 83 20 2E */	lwzx r4, r3, r4
/* 800FC108 000F1E88  7C 83 00 38 */	and r3, r4, r0
/* 800FC10C 000F1E8C  7C 04 18 40 */	cmplw r4, r3
/* 800FC110 000F1E90  40 82 00 18 */	bne lbl_800FC128
/* 800FC114 000F1E94  80 61 00 54 */	lwz r3, 0x54(r1)
/* 800FC118 000F1E98  7C 63 20 39 */	and. r3, r3, r4
/* 800FC11C 000F1E9C  41 82 00 0C */	beq lbl_800FC128
/* 800FC120 000F1EA0  38 60 00 01 */	li r3, 1
/* 800FC124 000F1EA4  48 00 00 08 */	b lbl_800FC12C
lbl_800FC128:
/* 800FC128 000F1EA8  38 60 00 00 */	li r3, 0
lbl_800FC12C:
/* 800FC12C 000F1EAC  2C 03 00 00 */	cmpwi r3, 0
/* 800FC130 000F1EB0  41 82 00 0C */	beq lbl_800FC13C
/* 800FC134 000F1EB4  3B E0 00 04 */	li r31, 4
/* 800FC138 000F1EB8  48 00 00 DC */	b lbl_800FC214
lbl_800FC13C:
/* 800FC13C 000F1EBC  80 E1 00 54 */	lwz r7, 0x54(r1)
/* 800FC140 000F1EC0  3C 80 80 41 */	lis r4, lbl_804090E0@ha
/* 800FC144 000F1EC4  54 C5 10 3A */	slwi r5, r6, 2
/* 800FC148 000F1EC8  38 84 90 E0 */	addi r4, r4, lbl_804090E0@l
/* 800FC14C 000F1ECC  54 E3 05 EF */	rlwinm. r3, r7, 0, 0x17, 0x17
/* 800FC150 000F1ED0  7C 84 28 2E */	lwzx r4, r4, r5
/* 800FC154 000F1ED4  41 82 00 28 */	beq lbl_800FC17C
/* 800FC158 000F1ED8  54 83 05 EF */	rlwinm. r3, r4, 0, 0x17, 0x17
/* 800FC15C 000F1EDC  40 82 00 0C */	bne lbl_800FC168
/* 800FC160 000F1EE0  38 60 00 01 */	li r3, 1
/* 800FC164 000F1EE4  48 00 00 1C */	b lbl_800FC180
lbl_800FC168:
/* 800FC168 000F1EE8  7C 03 20 38 */	and r3, r0, r4
/* 800FC16C 000F1EEC  54 63 06 2D */	rlwinm. r3, r3, 0, 0x18, 0x16
/* 800FC170 000F1EF0  40 82 00 0C */	bne lbl_800FC17C
/* 800FC174 000F1EF4  38 60 00 01 */	li r3, 1
/* 800FC178 000F1EF8  48 00 00 08 */	b lbl_800FC180
lbl_800FC17C:
/* 800FC17C 000F1EFC  38 60 00 00 */	li r3, 0
lbl_800FC180:
/* 800FC180 000F1F00  2C 03 00 00 */	cmpwi r3, 0
/* 800FC184 000F1F04  41 82 00 18 */	beq lbl_800FC19C
/* 800FC188 000F1F08  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800FC18C 000F1F0C  3B E0 00 03 */	li r31, 3
/* 800FC190 000F1F10  2C 03 00 00 */	cmpwi r3, 0
/* 800FC194 000F1F14  40 82 00 08 */	bne lbl_800FC19C
/* 800FC198 000F1F18  3B E0 00 02 */	li r31, 2
lbl_800FC19C:
/* 800FC19C 000F1F1C  54 E3 05 AD */	rlwinm. r3, r7, 0, 0x16, 0x16
/* 800FC1A0 000F1F20  54 C4 10 3A */	slwi r4, r6, 2
/* 800FC1A4 000F1F24  3C 60 80 41 */	lis r3, lbl_804090E0@ha
/* 800FC1A8 000F1F28  38 63 90 E0 */	addi r3, r3, lbl_804090E0@l
/* 800FC1AC 000F1F2C  7C 83 20 2E */	lwzx r4, r3, r4
/* 800FC1B0 000F1F30  41 82 00 28 */	beq lbl_800FC1D8
/* 800FC1B4 000F1F34  54 83 05 AD */	rlwinm. r3, r4, 0, 0x16, 0x16
/* 800FC1B8 000F1F38  40 82 00 0C */	bne lbl_800FC1C4
/* 800FC1BC 000F1F3C  38 00 00 01 */	li r0, 1
/* 800FC1C0 000F1F40  48 00 00 48 */	b lbl_800FC208
lbl_800FC1C4:
/* 800FC1C4 000F1F44  7C 03 20 38 */	and r3, r0, r4
/* 800FC1C8 000F1F48  54 63 05 EB */	rlwinm. r3, r3, 0, 0x17, 0x15
/* 800FC1CC 000F1F4C  40 82 00 0C */	bne lbl_800FC1D8
/* 800FC1D0 000F1F50  38 00 00 01 */	li r0, 1
/* 800FC1D4 000F1F54  48 00 00 34 */	b lbl_800FC208
lbl_800FC1D8:
/* 800FC1D8 000F1F58  54 E3 04 E7 */	rlwinm. r3, r7, 0, 0x13, 0x13
/* 800FC1DC 000F1F5C  41 82 00 28 */	beq lbl_800FC204
/* 800FC1E0 000F1F60  54 83 04 E7 */	rlwinm. r3, r4, 0, 0x13, 0x13
/* 800FC1E4 000F1F64  40 82 00 0C */	bne lbl_800FC1F0
/* 800FC1E8 000F1F68  38 00 00 01 */	li r0, 1
/* 800FC1EC 000F1F6C  48 00 00 1C */	b lbl_800FC208
lbl_800FC1F0:
/* 800FC1F0 000F1F70  7C 00 20 38 */	and r0, r0, r4
/* 800FC1F4 000F1F74  54 00 05 25 */	rlwinm. r0, r0, 0, 0x14, 0x12
/* 800FC1F8 000F1F78  40 82 00 0C */	bne lbl_800FC204
/* 800FC1FC 000F1F7C  38 00 00 01 */	li r0, 1
/* 800FC200 000F1F80  48 00 00 08 */	b lbl_800FC208
lbl_800FC204:
/* 800FC204 000F1F84  38 00 00 00 */	li r0, 0
lbl_800FC208:
/* 800FC208 000F1F88  2C 00 00 00 */	cmpwi r0, 0
/* 800FC20C 000F1F8C  41 82 00 08 */	beq lbl_800FC214
/* 800FC210 000F1F90  3B E0 00 02 */	li r31, 2
lbl_800FC214:
/* 800FC214 000F1F94  2C 1F 00 01 */	cmpwi r31, 1
/* 800FC218 000F1F98  41 82 00 28 */	beq lbl_800FC240
/* 800FC21C 000F1F9C  80 7E 00 00 */	lwz r3, 0(r30)
/* 800FC220 000F1FA0  80 9E 00 04 */	lwz r4, 4(r30)
/* 800FC224 000F1FA4  81 83 00 00 */	lwz r12, 0(r3)
/* 800FC228 000F1FA8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 800FC22C 000F1FAC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800FC230 000F1FB0  7D 89 03 A6 */	mtctr r12
/* 800FC234 000F1FB4  4E 80 04 21 */	bctrl 
/* 800FC238 000F1FB8  38 00 00 00 */	li r0, 0
/* 800FC23C 000F1FBC  98 1E 00 1C */	stb r0, 0x1c(r30)
lbl_800FC240:
/* 800FC240 000F1FC0  7F E3 FB 78 */	mr r3, r31
lbl_800FC244:
/* 800FC244 000F1FC4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800FC248 000F1FC8  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 800FC24C 000F1FCC  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 800FC250 000F1FD0  7C 08 03 A6 */	mtlr r0
/* 800FC254 000F1FD4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800FC258 000F1FD8  4E 80 00 20 */	blr 
