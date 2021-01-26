.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global muNoticeWndTask$7setYesButtonLabel
muNoticeWndTask$7setYesButtonLabel:
/* 800BF97C 000B56FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BF980 000B5700  7C 08 02 A6 */	mflr r0
/* 800BF984 000B5704  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BF988 000B5708  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BF98C 000B570C  7C 7F 1B 78 */	mr r31, r3
/* 800BF990 000B5710  80 03 00 FC */	lwz r0, 0xfc(r3)
/* 800BF994 000B5714  2C 00 00 01 */	cmpwi r0, 1
/* 800BF998 000B5718  40 82 00 58 */	bne lbl_800BF9F0
/* 800BF99C 000B571C  2C 04 00 00 */	cmpwi r4, 0
/* 800BF9A0 000B5720  40 82 00 1C */	bne lbl_800BF9BC
/* 800BF9A4 000B5724  80 63 00 48 */	lwz r3, 0x48(r3)
/* 800BF9A8 000B5728  7C A4 2B 78 */	mr r4, r5
/* 800BF9AC 000B572C  38 A1 00 0C */	addi r5, r1, 0xc
/* 800BF9B0 000B5730  4B FF 99 99 */	bl MuMsg$7getMsgData
/* 800BF9B4 000B5734  90 61 00 08 */	stw r3, 8(r1)
/* 800BF9B8 000B5738  48 00 00 20 */	b lbl_800BF9D8
lbl_800BF9BC:
/* 800BF9BC 000B573C  7C 83 23 78 */	mr r3, r4
/* 800BF9C0 000B5740  7C A4 2B 78 */	mr r4, r5
/* 800BF9C4 000B5744  38 A1 00 08 */	addi r5, r1, 8
/* 800BF9C8 000B5748  38 C1 00 10 */	addi r6, r1, 0x10
/* 800BF9CC 000B574C  4B FA B7 69 */	bl Message$7getPrintIndexData
/* 800BF9D0 000B5750  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800BF9D4 000B5754  90 01 00 0C */	stw r0, 0xc(r1)
lbl_800BF9D8:
/* 800BF9D8 000B5758  80 A1 00 08 */	lwz r5, 8(r1)
/* 800BF9DC 000B575C  7F E3 FB 78 */	mr r3, r31
/* 800BF9E0 000B5760  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800BF9E4 000B5764  38 80 00 02 */	li r4, 2
/* 800BF9E8 000B5768  38 E0 00 02 */	li r7, 2
/* 800BF9EC 000B576C  4B FF FE 65 */	bl muNoticeWndTask$7printText
lbl_800BF9F0:
/* 800BF9F0 000B5770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BF9F4 000B5774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BF9F8 000B5778  7C 08 03 A6 */	mtlr r0
/* 800BF9FC 000B577C  38 21 00 20 */	addi r1, r1, 0x20
/* 800BFA00 000B5780  4E 80 00 20 */	blr 

.global muNoticeWndTask$7setNoButtonLabel
muNoticeWndTask$7setNoButtonLabel:
/* 800BFA04 000B5784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BFA08 000B5788  7C 08 02 A6 */	mflr r0
/* 800BFA0C 000B578C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BFA10 000B5790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BFA14 000B5794  7C 7F 1B 78 */	mr r31, r3
/* 800BFA18 000B5798  80 03 00 FC */	lwz r0, 0xfc(r3)
/* 800BFA1C 000B579C  2C 00 00 01 */	cmpwi r0, 1
/* 800BFA20 000B57A0  40 82 00 58 */	bne lbl_800BFA78
/* 800BFA24 000B57A4  2C 04 00 00 */	cmpwi r4, 0
/* 800BFA28 000B57A8  40 82 00 1C */	bne lbl_800BFA44
/* 800BFA2C 000B57AC  80 63 00 48 */	lwz r3, 0x48(r3)
/* 800BFA30 000B57B0  7C A4 2B 78 */	mr r4, r5
/* 800BFA34 000B57B4  38 A1 00 0C */	addi r5, r1, 0xc
/* 800BFA38 000B57B8  4B FF 99 11 */	bl MuMsg$7getMsgData
/* 800BFA3C 000B57BC  90 61 00 08 */	stw r3, 8(r1)
/* 800BFA40 000B57C0  48 00 00 20 */	b lbl_800BFA60
lbl_800BFA44:
/* 800BFA44 000B57C4  7C 83 23 78 */	mr r3, r4
/* 800BFA48 000B57C8  7C A4 2B 78 */	mr r4, r5
/* 800BFA4C 000B57CC  38 A1 00 08 */	addi r5, r1, 8
/* 800BFA50 000B57D0  38 C1 00 10 */	addi r6, r1, 0x10
/* 800BFA54 000B57D4  4B FA B6 E1 */	bl Message$7getPrintIndexData
/* 800BFA58 000B57D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800BFA5C 000B57DC  90 01 00 0C */	stw r0, 0xc(r1)
lbl_800BFA60:
/* 800BFA60 000B57E0  80 A1 00 08 */	lwz r5, 8(r1)
/* 800BFA64 000B57E4  7F E3 FB 78 */	mr r3, r31
/* 800BFA68 000B57E8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800BFA6C 000B57EC  38 80 00 03 */	li r4, 3
/* 800BFA70 000B57F0  38 E0 00 02 */	li r7, 2
/* 800BFA74 000B57F4  4B FF FD DD */	bl muNoticeWndTask$7printText
lbl_800BFA78:
/* 800BFA78 000B57F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BFA7C 000B57FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BFA80 000B5800  7C 08 03 A6 */	mtlr r0
/* 800BFA84 000B5804  38 21 00 20 */	addi r1, r1, 0x20
/* 800BFA88 000B5808  4E 80 00 20 */	blr 

.global muNoticeWndTask$7setDoneButtonLabel
muNoticeWndTask$7setDoneButtonLabel:
/* 800BFA8C 000B580C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BFA90 000B5810  7C 08 02 A6 */	mflr r0
/* 800BFA94 000B5814  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BFA98 000B5818  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BFA9C 000B581C  7C 7F 1B 78 */	mr r31, r3
/* 800BFAA0 000B5820  80 03 00 FC */	lwz r0, 0xfc(r3)
/* 800BFAA4 000B5824  2C 00 00 02 */	cmpwi r0, 2
/* 800BFAA8 000B5828  40 82 00 58 */	bne lbl_800BFB00
/* 800BFAAC 000B582C  2C 04 00 00 */	cmpwi r4, 0
/* 800BFAB0 000B5830  40 82 00 1C */	bne lbl_800BFACC
/* 800BFAB4 000B5834  80 63 00 48 */	lwz r3, 0x48(r3)
/* 800BFAB8 000B5838  7C A4 2B 78 */	mr r4, r5
/* 800BFABC 000B583C  38 A1 00 0C */	addi r5, r1, 0xc
/* 800BFAC0 000B5840  4B FF 98 89 */	bl MuMsg$7getMsgData
/* 800BFAC4 000B5844  90 61 00 08 */	stw r3, 8(r1)
/* 800BFAC8 000B5848  48 00 00 20 */	b lbl_800BFAE8
lbl_800BFACC:
/* 800BFACC 000B584C  7C 83 23 78 */	mr r3, r4
/* 800BFAD0 000B5850  7C A4 2B 78 */	mr r4, r5
/* 800BFAD4 000B5854  38 A1 00 08 */	addi r5, r1, 8
/* 800BFAD8 000B5858  38 C1 00 10 */	addi r6, r1, 0x10
/* 800BFADC 000B585C  4B FA B6 59 */	bl Message$7getPrintIndexData
/* 800BFAE0 000B5860  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800BFAE4 000B5864  90 01 00 0C */	stw r0, 0xc(r1)
lbl_800BFAE8:
/* 800BFAE8 000B5868  80 A1 00 08 */	lwz r5, 8(r1)
/* 800BFAEC 000B586C  7F E3 FB 78 */	mr r3, r31
/* 800BFAF0 000B5870  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800BFAF4 000B5874  38 80 00 04 */	li r4, 4
/* 800BFAF8 000B5878  38 E0 00 02 */	li r7, 2
/* 800BFAFC 000B587C  4B FF FD 55 */	bl muNoticeWndTask$7printText
lbl_800BFB00:
/* 800BFB00 000B5880  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BFB04 000B5884  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BFB08 000B5888  7C 08 03 A6 */	mtlr r0
/* 800BFB0C 000B588C  38 21 00 20 */	addi r1, r1, 0x20
/* 800BFB10 000B5890  4E 80 00 20 */	blr 

.global muNoticeWndTask$7mainStepAppearInit
muNoticeWndTask$7mainStepAppearInit:
/* 800BFB14 000B5894  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800BFB18 000B5898  7C 08 02 A6 */	mflr r0
/* 800BFB1C 000B589C  90 01 00 84 */	stw r0, 0x84(r1)
/* 800BFB20 000B58A0  39 61 00 80 */	addi r11, r1, 0x80
/* 800BFB24 000B58A4  48 33 17 F5 */	bl _savegpr_25
/* 800BFB28 000B58A8  80 83 00 FC */	lwz r4, 0xfc(r3)
/* 800BFB2C 000B58AC  3C 00 43 30 */	lis r0, 0x4330
/* 800BFB30 000B58B0  90 01 00 50 */	stw r0, 0x50(r1)
/* 800BFB34 000B58B4  3B C2 8F A8 */	addi r30, r2, lbl_805A22C8-_SDA2_BASE_
/* 800BFB38 000B58B8  54 80 08 3C */	slwi r0, r4, 1
/* 800BFB3C 000B58BC  C8 22 8F A0 */	lfd f1, lbl_805A22C0-_SDA2_BASE_(r2)
/* 800BFB40 000B58C0  7C 1E 00 AE */	lbzx r0, r30, r0
/* 800BFB44 000B58C4  7C 7F 1B 78 */	mr r31, r3
/* 800BFB48 000B58C8  83 23 00 40 */	lwz r25, 0x40(r3)
/* 800BFB4C 000B58CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 800BFB50 000B58D0  8B 43 01 20 */	lbz r26, 0x120(r3)
/* 800BFB54 000B58D4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 800BFB58 000B58D8  83 63 01 1C */	lwz r27, 0x11c(r3)
/* 800BFB5C 000B58DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 800BFB60 000B58E0  83 83 01 18 */	lwz r28, 0x118(r3)
/* 800BFB64 000B58E4  83 A3 00 50 */	lwz r29, 0x50(r3)
/* 800BFB68 000B58E8  7F 23 CB 78 */	mr r3, r25
/* 800BFB6C 000B58EC  4B FF 7C E1 */	bl MuObject$7setFrameVisible
/* 800BFB70 000B58F0  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 800BFB74 000B58F4  2C 1C 00 00 */	cmpwi r28, 0
/* 800BFB78 000B58F8  54 00 08 3C */	slwi r0, r0, 1
/* 800BFB7C 000B58FC  7C 7E 02 14 */	add r3, r30, r0
/* 800BFB80 000B5900  8B C3 00 01 */	lbz r30, 1(r3)
/* 800BFB84 000B5904  40 82 00 30 */	bne lbl_800BFBB4
/* 800BFB88 000B5908  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800BFB8C 000B590C  7F A4 EB 78 */	mr r4, r29
/* 800BFB90 000B5910  38 A1 00 08 */	addi r5, r1, 8
/* 800BFB94 000B5914  4B FF 97 B5 */	bl MuMsg$7getMsgData
/* 800BFB98 000B5918  80 C1 00 08 */	lwz r6, 8(r1)
/* 800BFB9C 000B591C  7C 65 1B 78 */	mr r5, r3
/* 800BFBA0 000B5920  7F E3 FB 78 */	mr r3, r31
/* 800BFBA4 000B5924  7F C4 F3 78 */	mr r4, r30
/* 800BFBA8 000B5928  38 E0 00 00 */	li r7, 0
/* 800BFBAC 000B592C  4B FF FC A5 */	bl muNoticeWndTask$7printText
/* 800BFBB0 000B5930  48 00 00 1C */	b lbl_800BFBCC
lbl_800BFBB4:
/* 800BFBB4 000B5934  7F E3 FB 78 */	mr r3, r31
/* 800BFBB8 000B5938  7F C4 F3 78 */	mr r4, r30
/* 800BFBBC 000B593C  7F 85 E3 78 */	mr r5, r28
/* 800BFBC0 000B5940  7F 66 DB 78 */	mr r6, r27
/* 800BFBC4 000B5944  38 E0 00 00 */	li r7, 0
/* 800BFBC8 000B5948  4B FF FC 89 */	bl muNoticeWndTask$7printText
lbl_800BFBCC:
/* 800BFBCC 000B594C  2C 1A 00 00 */	cmpwi r26, 0
/* 800BFBD0 000B5950  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 800BFBD4 000B5954  41 82 00 0C */	beq lbl_800BFBE0
/* 800BFBD8 000B5958  C0 22 8F 90 */	lfs f1, lbl_805A22B0-_SDA2_BASE_(r2)
/* 800BFBDC 000B595C  48 00 00 08 */	b lbl_800BFBE4
lbl_800BFBE0:
/* 800BFBE0 000B5960  C0 22 8F 9C */	lfs f1, lbl_805A22BC-_SDA2_BASE_(r2)
lbl_800BFBE4:
/* 800BFBE4 000B5964  4B FF 7E 35 */	bl MuObject$7setFrameMatCol
/* 800BFBE8 000B5968  9B 5F 01 00 */	stb r26, 0x100(r31)
/* 800BFBEC 000B596C  38 61 00 10 */	addi r3, r1, 0x10
/* 800BFBF0 000B5970  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 800BFBF4 000B5974  38 8D 9C C0 */	addi r4, r13, lbl_8059E0E0-_SDA_BASE_
/* 800BFBF8 000B5978  80 A5 00 08 */	lwz r5, 8(r5)
/* 800BFBFC 000B597C  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 800BFC00 000B5980  2C 00 00 00 */	cmpwi r0, 0
/* 800BFC04 000B5984  41 82 00 0C */	beq lbl_800BFC10
/* 800BFC08 000B5988  7C A5 02 14 */	add r5, r5, r0
/* 800BFC0C 000B598C  48 00 00 08 */	b lbl_800BFC14
lbl_800BFC10:
/* 800BFC10 000B5990  38 A0 00 00 */	li r5, 0
lbl_800BFC14:
/* 800BFC14 000B5994  4C C6 31 82 */	crclr 6
/* 800BFC18 000B5998  48 33 8D E5 */	bl sprintf
/* 800BFC1C 000B599C  7F 23 CB 78 */	mr r3, r25
/* 800BFC20 000B59A0  38 81 00 10 */	addi r4, r1, 0x10
/* 800BFC24 000B59A4  4B FF 49 85 */	bl MuObject$7changeNodeAnimN
/* 800BFC28 000B59A8  C0 22 8F 90 */	lfs f1, lbl_805A22B0-_SDA2_BASE_(r2)
/* 800BFC2C 000B59AC  7F 23 CB 78 */	mr r3, r25
/* 800BFC30 000B59B0  4B FF 7B 69 */	bl MuObject$7setFrameNode
/* 800BFC34 000B59B4  80 79 00 14 */	lwz r3, 0x14(r25)
/* 800BFC38 000B59B8  C0 22 8F 9C */	lfs f1, lbl_805A22BC-_SDA2_BASE_(r2)
/* 800BFC3C 000B59BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800BFC40 000B59C0  81 83 00 00 */	lwz r12, 0(r3)
/* 800BFC44 000B59C4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800BFC48 000B59C8  7D 89 03 A6 */	mtctr r12
/* 800BFC4C 000B59CC  4E 80 04 21 */	bctrl 
/* 800BFC50 000B59D0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 800BFC54 000B59D4  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 800BFC58 000B59D8  81 83 00 00 */	lwz r12, 0(r3)
/* 800BFC5C 000B59DC  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 800BFC60 000B59E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800BFC64 000B59E4  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800BFC68 000B59E8  7D 89 03 A6 */	mtctr r12
/* 800BFC6C 000B59EC  4E 80 04 21 */	bctrl 
/* 800BFC70 000B59F0  80 6D BD B0 */	lwz r3, lbl_805A01D0-_SDA_BASE_(r13)
/* 800BFC74 000B59F4  38 A0 FF FF */	li r5, -1
/* 800BFC78 000B59F8  80 9F 01 28 */	lwz r4, 0x128(r31)
/* 800BFC7C 000B59FC  38 C0 00 00 */	li r6, 0
/* 800BFC80 000B5A00  38 E0 00 00 */	li r7, 0
/* 800BFC84 000B5A04  39 00 FF FF */	li r8, -1
/* 800BFC88 000B5A08  4B FB 46 29 */	bl sndSystem$7playSE
/* 800BFC8C 000B5A0C  39 61 00 80 */	addi r11, r1, 0x80
/* 800BFC90 000B5A10  48 33 16 D5 */	bl _restgpr_25
/* 800BFC94 000B5A14  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800BFC98 000B5A18  7C 08 03 A6 */	mtlr r0
/* 800BFC9C 000B5A1C  38 21 00 80 */	addi r1, r1, 0x80
/* 800BFCA0 000B5A20  4E 80 00 20 */	blr 

