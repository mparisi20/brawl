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
/* 800FBC14 000F1994  4B F1 0C B5 */	bl __dl__FPv
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

