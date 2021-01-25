.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global bta_hh_sm_execute
bta_hh_sm_execute:
/* 80237600 0022D380  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80237604 0022D384  7C 08 02 A6 */	mflr r0
/* 80237608 0022D388  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023760C 0022D38C  39 61 00 40 */	addi r11, r1, 0x40
/* 80237610 0022D390  48 1B 9D 0D */	bl _savegpr_26
/* 80237614 0022D394  3F E0 80 48 */	lis r31, lbl_80480358@ha
/* 80237618 0022D398  7C 7B 1B 78 */	mr r27, r3
/* 8023761C 0022D39C  7C 9C 23 78 */	mr r28, r4
/* 80237620 0022D3A0  7C BD 2B 78 */	mr r29, r5
/* 80237624 0022D3A4  3B FF 03 58 */	addi r31, r31, lbl_80480358@l
/* 80237628 0022D3A8  38 61 00 08 */	addi r3, r1, 8
/* 8023762C 0022D3AC  3B C0 00 00 */	li r30, 0
/* 80237630 0022D3B0  38 80 00 00 */	li r4, 0
/* 80237634 0022D3B4  38 A0 00 20 */	li r5, 0x20
/* 80237638 0022D3B8  4B DC CE 05 */	bl func_8000443C
/* 8023763C 0022D3BC  2C 1B 00 00 */	cmpwi r27, 0
/* 80237640 0022D3C0  40 82 01 58 */	bne lbl_80237798
/* 80237644 0022D3C4  3C 60 80 53 */	lis r3, lbl_80529AC8@ha
/* 80237648 0022D3C8  38 63 9A C8 */	addi r3, r3, lbl_80529AC8@l
/* 8023764C 0022D3CC  80 03 02 24 */	lwz r0, 0x224(r3)
/* 80237650 0022D3D0  2C 00 00 00 */	cmpwi r0, 0
/* 80237654 0022D3D4  41 82 02 E8 */	beq lbl_8023793C
/* 80237658 0022D3D8  2C 1C 17 08 */	cmpwi r28, 0x1708
/* 8023765C 0022D3DC  41 82 00 90 */	beq lbl_802376EC
/* 80237660 0022D3E0  40 80 00 1C */	bge lbl_8023767C
/* 80237664 0022D3E4  2C 1C 17 01 */	cmpwi r28, 0x1701
/* 80237668 0022D3E8  41 82 00 D8 */	beq lbl_80237740
/* 8023766C 0022D3EC  40 80 00 EC */	bge lbl_80237758
/* 80237670 0022D3F0  2C 1C 17 00 */	cmpwi r28, 0x1700
/* 80237674 0022D3F4  40 80 00 14 */	bge lbl_80237688
/* 80237678 0022D3F8  48 00 00 E0 */	b lbl_80237758
lbl_8023767C:
/* 8023767C 0022D3FC  2C 1C 17 0A */	cmpwi r28, 0x170a
/* 80237680 0022D400  41 82 00 2C */	beq lbl_802376AC
/* 80237684 0022D404  48 00 00 D4 */	b lbl_80237758
lbl_80237688:
/* 80237688 0022D408  38 61 00 08 */	addi r3, r1, 8
/* 8023768C 0022D40C  38 9D 00 08 */	addi r4, r29, 8
/* 80237690 0022D410  3B C0 00 02 */	li r30, 2
/* 80237694 0022D414  4B FF A9 A1 */	bl bdcpy
/* 80237698 0022D418  38 60 00 09 */	li r3, 9
/* 8023769C 0022D41C  38 00 00 FF */	li r0, 0xff
/* 802376A0 0022D420  98 61 00 0E */	stb r3, 0xe(r1)
/* 802376A4 0022D424  98 01 00 0F */	stb r0, 0xf(r1)
/* 802376A8 0022D428  48 00 00 CC */	b lbl_80237774
lbl_802376AC:
/* 802376AC 0022D42C  A3 DD 00 10 */	lhz r30, 0x10(r29)
/* 802376B0 0022D430  28 1E 00 0B */	cmplwi r30, 0xb
/* 802376B4 0022D434  40 82 00 24 */	bne lbl_802376D8
/* 802376B8 0022D438  38 61 00 08 */	addi r3, r1, 8
/* 802376BC 0022D43C  38 9D 00 08 */	addi r4, r29, 8
/* 802376C0 0022D440  4B FF A9 75 */	bl bdcpy
/* 802376C4 0022D444  38 60 00 09 */	li r3, 9
/* 802376C8 0022D448  38 00 00 FF */	li r0, 0xff
/* 802376CC 0022D44C  98 61 00 0E */	stb r3, 0xe(r1)
/* 802376D0 0022D450  98 01 00 0F */	stb r0, 0xf(r1)
/* 802376D4 0022D454  48 00 00 A0 */	b lbl_80237774
lbl_802376D8:
/* 802376D8 0022D458  38 00 00 0D */	li r0, 0xd
/* 802376DC 0022D45C  98 01 00 0E */	stb r0, 0xe(r1)
/* 802376E0 0022D460  A0 1D 00 06 */	lhz r0, 6(r29)
/* 802376E4 0022D464  98 01 00 0F */	stb r0, 0xf(r1)
/* 802376E8 0022D468  48 00 00 8C */	b lbl_80237774
lbl_802376EC:
/* 802376EC 0022D46C  8B DD 00 08 */	lbz r30, 8(r29)
/* 802376F0 0022D470  28 1E 00 07 */	cmplwi r30, 7
/* 802376F4 0022D474  41 82 00 14 */	beq lbl_80237708
/* 802376F8 0022D478  28 1E 00 05 */	cmplwi r30, 5
/* 802376FC 0022D47C  41 82 00 0C */	beq lbl_80237708
/* 80237700 0022D480  28 1E 00 09 */	cmplwi r30, 9
/* 80237704 0022D484  40 82 00 18 */	bne lbl_8023771C
lbl_80237708:
/* 80237708 0022D488  38 00 00 0D */	li r0, 0xd
/* 8023770C 0022D48C  98 01 00 08 */	stb r0, 8(r1)
/* 80237710 0022D490  A0 1D 00 06 */	lhz r0, 6(r29)
/* 80237714 0022D494  98 01 00 09 */	stb r0, 9(r1)
/* 80237718 0022D498  48 00 00 5C */	b lbl_80237774
lbl_8023771C:
/* 8023771C 0022D49C  28 1E 00 0A */	cmplwi r30, 0xa
/* 80237720 0022D4A0  41 82 00 54 */	beq lbl_80237774
/* 80237724 0022D4A4  28 1E 00 01 */	cmplwi r30, 1
/* 80237728 0022D4A8  41 82 00 4C */	beq lbl_80237774
/* 8023772C 0022D4AC  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80237730 0022D4B0  38 00 00 0D */	li r0, 0xd
/* 80237734 0022D4B4  98 61 00 09 */	stb r3, 9(r1)
/* 80237738 0022D4B8  98 01 00 08 */	stb r0, 8(r1)
/* 8023773C 0022D4BC  48 00 00 38 */	b lbl_80237774
lbl_80237740:
/* 80237740 0022D4C0  38 00 00 0D */	li r0, 0xd
/* 80237744 0022D4C4  3B C0 00 03 */	li r30, 3
/* 80237748 0022D4C8  98 01 00 08 */	stb r0, 8(r1)
/* 8023774C 0022D4CC  A0 1D 00 06 */	lhz r0, 6(r29)
/* 80237750 0022D4D0  98 01 00 09 */	stb r0, 9(r1)
/* 80237754 0022D4D4  48 00 00 20 */	b lbl_80237774
lbl_80237758:
/* 80237758 0022D4D8  88 0D C9 10 */	lbz r0, lbl_805A0D30-_SDA_BASE_(r13)
/* 8023775C 0022D4DC  28 00 00 01 */	cmplwi r0, 1
/* 80237760 0022D4E0  41 80 00 14 */	blt lbl_80237774
/* 80237764 0022D4E4  A0 BD 00 06 */	lhz r5, 6(r29)
/* 80237768 0022D4E8  38 9F 00 00 */	addi r4, r31, 0
/* 8023776C 0022D4EC  38 60 05 00 */	li r3, 0x500
/* 80237770 0022D4F0  4B FF A2 8D */	bl LogMsg_1
lbl_80237774:
/* 80237774 0022D4F4  57 C3 04 3F */	clrlwi. r3, r30, 0x10
/* 80237778 0022D4F8  41 82 01 C4 */	beq lbl_8023793C
/* 8023777C 0022D4FC  3C A0 80 53 */	lis r5, lbl_80529AC8@ha
/* 80237780 0022D500  38 81 00 08 */	addi r4, r1, 8
/* 80237784 0022D504  38 A5 9A C8 */	addi r5, r5, lbl_80529AC8@l
/* 80237788 0022D508  81 85 02 24 */	lwz r12, 0x224(r5)
/* 8023778C 0022D50C  7D 89 03 A6 */	mtctr r12
/* 80237790 0022D510  4E 80 04 21 */	bctrl 
/* 80237794 0022D514  48 00 01 A8 */	b lbl_8023793C
lbl_80237798:
/* 80237798 0022D518  88 0D C9 10 */	lbz r0, lbl_805A0D30-_SDA_BASE_(r13)
/* 8023779C 0022D51C  8B DB 00 1C */	lbz r30, 0x1c(r27)
/* 802377A0 0022D520  28 00 00 04 */	cmplwi r0, 4
/* 802377A4 0022D524  41 80 00 70 */	blt lbl_80237814
/* 802377A8 0022D528  2C 1E 00 02 */	cmpwi r30, 2
/* 802377AC 0022D52C  41 82 00 34 */	beq lbl_802377E0
/* 802377B0 0022D530  40 80 00 14 */	bge lbl_802377C4
/* 802377B4 0022D534  2C 1E 00 00 */	cmpwi r30, 0
/* 802377B8 0022D538  41 82 00 18 */	beq lbl_802377D0
/* 802377BC 0022D53C  40 80 00 1C */	bge lbl_802377D8
/* 802377C0 0022D540  48 00 00 30 */	b lbl_802377F0
lbl_802377C4:
/* 802377C4 0022D544  2C 1E 00 04 */	cmpwi r30, 4
/* 802377C8 0022D548  40 80 00 28 */	bge lbl_802377F0
/* 802377CC 0022D54C  48 00 00 1C */	b lbl_802377E8
lbl_802377D0:
/* 802377D0 0022D550  3B 5F 00 1C */	addi r26, r31, 0x1c
/* 802377D4 0022D554  48 00 00 20 */	b lbl_802377F4
lbl_802377D8:
/* 802377D8 0022D558  3B 5F 00 2C */	addi r26, r31, 0x2c
/* 802377DC 0022D55C  48 00 00 18 */	b lbl_802377F4
lbl_802377E0:
/* 802377E0 0022D560  3B 5F 00 3C */	addi r26, r31, 0x3c
/* 802377E4 0022D564  48 00 00 10 */	b lbl_802377F4
lbl_802377E8:
/* 802377E8 0022D568  3B 5F 00 50 */	addi r26, r31, 0x50
/* 802377EC 0022D56C  48 00 00 08 */	b lbl_802377F4
lbl_802377F0:
/* 802377F0 0022D570  3B 5F 00 60 */	addi r26, r31, 0x60
lbl_802377F4:
/* 802377F4 0022D574  7F 83 E3 78 */	mr r3, r28
/* 802377F8 0022D578  48 00 02 A9 */	bl bta_hh_evt_code
/* 802377FC 0022D57C  7C 67 1B 78 */	mr r7, r3
/* 80237800 0022D580  7F C5 F3 78 */	mr r5, r30
/* 80237804 0022D584  7F 46 D3 78 */	mr r6, r26
/* 80237808 0022D588  38 9F 00 78 */	addi r4, r31, 0x78
/* 8023780C 0022D58C  38 60 05 03 */	li r3, 0x503
/* 80237810 0022D590  4B FF A2 1D */	bl LogMsg_3
lbl_80237814:
/* 80237814 0022D594  88 9B 00 1C */	lbz r4, 0x1c(r27)
/* 80237818 0022D598  3C 60 80 41 */	lis r3, lbl_8040D980@ha
/* 8023781C 0022D59C  38 63 D9 80 */	addi r3, r3, lbl_8040D980@l
/* 80237820 0022D5A0  57 9C 06 3E */	clrlwi r28, r28, 0x18
/* 80237824 0022D5A4  38 04 FF FF */	addi r0, r4, -1
/* 80237828 0022D5A8  54 00 10 3A */	slwi r0, r0, 2
/* 8023782C 0022D5AC  57 84 08 3C */	slwi r4, r28, 1
/* 80237830 0022D5B0  7C A3 00 2E */	lwzx r5, r3, r0
/* 80237834 0022D5B4  7C 65 22 14 */	add r3, r5, r4
/* 80237838 0022D5B8  88 03 00 01 */	lbz r0, 1(r3)
/* 8023783C 0022D5BC  98 1B 00 1C */	stb r0, 0x1c(r27)
/* 80237840 0022D5C0  7C 05 20 AE */	lbzx r0, r5, r4
/* 80237844 0022D5C4  28 00 00 0C */	cmplwi r0, 0xc
/* 80237848 0022D5C8  41 82 00 24 */	beq lbl_8023786C
/* 8023784C 0022D5CC  3C 80 80 41 */	lis r4, lbl_8040D908@ha
/* 80237850 0022D5D0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80237854 0022D5D4  38 84 D9 08 */	addi r4, r4, lbl_8040D908@l
/* 80237858 0022D5D8  7F 63 DB 78 */	mr r3, r27
/* 8023785C 0022D5DC  7D 84 00 2E */	lwzx r12, r4, r0
/* 80237860 0022D5E0  7F A4 EB 78 */	mr r4, r29
/* 80237864 0022D5E4  7D 89 03 A6 */	mtctr r12
/* 80237868 0022D5E8  4E 80 04 21 */	bctrl 
lbl_8023786C:
/* 8023786C 0022D5EC  88 7B 00 1C */	lbz r3, 0x1c(r27)
/* 80237870 0022D5F0  7C 1E 18 40 */	cmplw r30, r3
/* 80237874 0022D5F4  41 82 00 C8 */	beq lbl_8023793C
/* 80237878 0022D5F8  88 0D C9 10 */	lbz r0, lbl_805A0D30-_SDA_BASE_(r13)
/* 8023787C 0022D5FC  28 00 00 05 */	cmplwi r0, 5
/* 80237880 0022D600  41 80 00 BC */	blt lbl_8023793C
/* 80237884 0022D604  2C 1E 00 02 */	cmpwi r30, 2
/* 80237888 0022D608  41 82 00 34 */	beq lbl_802378BC
/* 8023788C 0022D60C  40 80 00 14 */	bge lbl_802378A0
/* 80237890 0022D610  2C 1E 00 00 */	cmpwi r30, 0
/* 80237894 0022D614  41 82 00 18 */	beq lbl_802378AC
/* 80237898 0022D618  40 80 00 1C */	bge lbl_802378B4
/* 8023789C 0022D61C  48 00 00 30 */	b lbl_802378CC
lbl_802378A0:
/* 802378A0 0022D620  2C 1E 00 04 */	cmpwi r30, 4
/* 802378A4 0022D624  40 80 00 28 */	bge lbl_802378CC
/* 802378A8 0022D628  48 00 00 1C */	b lbl_802378C4
lbl_802378AC:
/* 802378AC 0022D62C  3B 5F 00 1C */	addi r26, r31, 0x1c
/* 802378B0 0022D630  48 00 00 20 */	b lbl_802378D0
lbl_802378B4:
/* 802378B4 0022D634  3B 5F 00 2C */	addi r26, r31, 0x2c
/* 802378B8 0022D638  48 00 00 18 */	b lbl_802378D0
lbl_802378BC:
/* 802378BC 0022D63C  3B 5F 00 3C */	addi r26, r31, 0x3c
/* 802378C0 0022D640  48 00 00 10 */	b lbl_802378D0
lbl_802378C4:
/* 802378C4 0022D644  3B 5F 00 50 */	addi r26, r31, 0x50
/* 802378C8 0022D648  48 00 00 08 */	b lbl_802378D0
lbl_802378CC:
/* 802378CC 0022D64C  3B 5F 00 60 */	addi r26, r31, 0x60
lbl_802378D0:
/* 802378D0 0022D650  2C 03 00 02 */	cmpwi r3, 2
/* 802378D4 0022D654  41 82 00 34 */	beq lbl_80237908
/* 802378D8 0022D658  40 80 00 14 */	bge lbl_802378EC
/* 802378DC 0022D65C  2C 03 00 00 */	cmpwi r3, 0
/* 802378E0 0022D660  41 82 00 18 */	beq lbl_802378F8
/* 802378E4 0022D664  40 80 00 1C */	bge lbl_80237900
/* 802378E8 0022D668  48 00 00 30 */	b lbl_80237918
lbl_802378EC:
/* 802378EC 0022D66C  2C 03 00 04 */	cmpwi r3, 4
/* 802378F0 0022D670  40 80 00 28 */	bge lbl_80237918
/* 802378F4 0022D674  48 00 00 1C */	b lbl_80237910
lbl_802378F8:
/* 802378F8 0022D678  3B 7F 00 1C */	addi r27, r31, 0x1c
/* 802378FC 0022D67C  48 00 00 20 */	b lbl_8023791C
lbl_80237900:
/* 80237900 0022D680  3B 7F 00 2C */	addi r27, r31, 0x2c
/* 80237904 0022D684  48 00 00 18 */	b lbl_8023791C
lbl_80237908:
/* 80237908 0022D688  3B 7F 00 3C */	addi r27, r31, 0x3c
/* 8023790C 0022D68C  48 00 00 10 */	b lbl_8023791C
lbl_80237910:
/* 80237910 0022D690  3B 7F 00 50 */	addi r27, r31, 0x50
/* 80237914 0022D694  48 00 00 08 */	b lbl_8023791C
lbl_80237918:
/* 80237918 0022D698  3B 7F 00 60 */	addi r27, r31, 0x60
lbl_8023791C:
/* 8023791C 0022D69C  7F 83 E3 78 */	mr r3, r28
/* 80237920 0022D6A0  48 00 01 81 */	bl bta_hh_evt_code
/* 80237924 0022D6A4  7C 67 1B 78 */	mr r7, r3
/* 80237928 0022D6A8  7F 45 D3 78 */	mr r5, r26
/* 8023792C 0022D6AC  7F 66 DB 78 */	mr r6, r27
/* 80237930 0022D6B0  38 9F 00 AC */	addi r4, r31, 0xac
/* 80237934 0022D6B4  38 60 05 04 */	li r3, 0x504
/* 80237938 0022D6B8  4B FF A0 F5 */	bl LogMsg_3
lbl_8023793C:
/* 8023793C 0022D6BC  39 61 00 40 */	addi r11, r1, 0x40
/* 80237940 0022D6C0  48 1B 9A 29 */	bl _restgpr_26
/* 80237944 0022D6C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80237948 0022D6C8  7C 08 03 A6 */	mtlr r0
/* 8023794C 0022D6CC  38 21 00 40 */	addi r1, r1, 0x40
/* 80237950 0022D6D0  4E 80 00 20 */	blr 

.global bta_hh_hdl_event
bta_hh_hdl_event:
/* 80237954 0022D6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237958 0022D6D8  7C 08 02 A6 */	mflr r0
/* 8023795C 0022D6DC  38 C0 00 10 */	li r6, 0x10
/* 80237960 0022D6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237964 0022D6E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80237968 0022D6E8  3B E0 00 00 */	li r31, 0
/* 8023796C 0022D6EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80237970 0022D6F0  7C 7E 1B 78 */	mr r30, r3
/* 80237974 0022D6F4  A0 03 00 00 */	lhz r0, 0(r3)
/* 80237978 0022D6F8  2C 00 17 0E */	cmpwi r0, 0x170e
/* 8023797C 0022D6FC  41 82 00 3C */	beq lbl_802379B8
/* 80237980 0022D700  40 80 00 14 */	bge lbl_80237994
/* 80237984 0022D704  2C 00 17 0C */	cmpwi r0, 0x170c
/* 80237988 0022D708  41 82 00 18 */	beq lbl_802379A0
/* 8023798C 0022D70C  40 80 00 1C */	bge lbl_802379A8
/* 80237990 0022D710  48 00 00 30 */	b lbl_802379C0
lbl_80237994:
/* 80237994 0022D714  2C 00 17 10 */	cmpwi r0, 0x1710
/* 80237998 0022D718  40 80 00 28 */	bge lbl_802379C0
/* 8023799C 0022D71C  48 00 00 14 */	b lbl_802379B0
lbl_802379A0:
/* 802379A0 0022D720  4B FF E1 49 */	bl bta_hh_api_enable
/* 802379A4 0022D724  48 00 00 E0 */	b lbl_80237A84
lbl_802379A8:
/* 802379A8 0022D728  4B FF E2 B5 */	bl bta_hh_api_disable
/* 802379AC 0022D72C  48 00 00 D8 */	b lbl_80237A84
lbl_802379B0:
/* 802379B0 0022D730  4B FF E3 B1 */	bl bta_hh_disc_cmpl
/* 802379B4 0022D734  48 00 00 D0 */	b lbl_80237A84
lbl_802379B8:
/* 802379B8 0022D738  4B FF F2 FD */	bl bta_hh_get_acl_q_info
/* 802379BC 0022D73C  48 00 00 C8 */	b lbl_80237A84
lbl_802379C0:
/* 802379C0 0022D740  28 00 17 00 */	cmplwi r0, 0x1700
/* 802379C4 0022D744  40 82 00 14 */	bne lbl_802379D8
/* 802379C8 0022D748  38 63 00 08 */	addi r3, r3, 8
/* 802379CC 0022D74C  48 00 01 89 */	bl bta_hh_find_cb
/* 802379D0 0022D750  7C 66 1B 78 */	mr r6, r3
/* 802379D4 0022D754  48 00 00 5C */	b lbl_80237A30
lbl_802379D8:
/* 802379D8 0022D758  28 00 17 0A */	cmplwi r0, 0x170a
/* 802379DC 0022D75C  40 82 00 38 */	bne lbl_80237A14
/* 802379E0 0022D760  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 802379E4 0022D764  28 00 00 0B */	cmplwi r0, 0xb
/* 802379E8 0022D768  40 82 00 14 */	bne lbl_802379FC
/* 802379EC 0022D76C  38 63 00 08 */	addi r3, r3, 8
/* 802379F0 0022D770  48 00 01 65 */	bl bta_hh_find_cb
/* 802379F4 0022D774  7C 66 1B 78 */	mr r6, r3
/* 802379F8 0022D778  48 00 00 38 */	b lbl_80237A30
lbl_802379FC:
/* 802379FC 0022D77C  3C 80 80 53 */	lis r4, lbl_80529AC8@ha
/* 80237A00 0022D780  A0 03 00 06 */	lhz r0, 6(r3)
/* 80237A04 0022D784  38 84 9A C8 */	addi r4, r4, lbl_80529AC8@l
/* 80237A08 0022D788  7C 64 02 14 */	add r3, r4, r0
/* 80237A0C 0022D78C  88 C3 02 14 */	lbz r6, 0x214(r3)
/* 80237A10 0022D790  48 00 00 20 */	b lbl_80237A30
lbl_80237A14:
/* 80237A14 0022D794  A0 03 00 06 */	lhz r0, 6(r3)
/* 80237A18 0022D798  28 00 00 10 */	cmplwi r0, 0x10
/* 80237A1C 0022D79C  40 80 00 14 */	bge lbl_80237A30
/* 80237A20 0022D7A0  3C 60 80 53 */	lis r3, lbl_80529AC8@ha
/* 80237A24 0022D7A4  38 63 9A C8 */	addi r3, r3, lbl_80529AC8@l
/* 80237A28 0022D7A8  7C 63 02 14 */	add r3, r3, r0
/* 80237A2C 0022D7AC  88 C3 02 14 */	lbz r6, 0x214(r3)
lbl_80237A30:
/* 80237A30 0022D7B0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80237A34 0022D7B4  28 00 00 10 */	cmplwi r0, 0x10
/* 80237A38 0022D7B8  41 82 00 18 */	beq lbl_80237A50
/* 80237A3C 0022D7BC  3C 60 80 53 */	lis r3, lbl_80529AC8@ha
/* 80237A40 0022D7C0  54 C0 2C F4 */	rlwinm r0, r6, 5, 0x13, 0x1a
/* 80237A44 0022D7C4  38 63 9A C8 */	addi r3, r3, lbl_80529AC8@l
/* 80237A48 0022D7C8  7C 63 02 14 */	add r3, r3, r0
/* 80237A4C 0022D7CC  3B E3 00 10 */	addi r31, r3, 0x10
lbl_80237A50:
/* 80237A50 0022D7D0  88 0D C9 10 */	lbz r0, lbl_805A0D30-_SDA_BASE_(r13)
/* 80237A54 0022D7D4  28 00 00 05 */	cmplwi r0, 5
/* 80237A58 0022D7D8  41 80 00 1C */	blt lbl_80237A74
/* 80237A5C 0022D7DC  3C 80 80 48 */	lis r4, lbl_80480434@ha
/* 80237A60 0022D7E0  A0 BE 00 06 */	lhz r5, 6(r30)
/* 80237A64 0022D7E4  38 84 04 34 */	addi r4, r4, lbl_80480434@l
/* 80237A68 0022D7E8  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 80237A6C 0022D7EC  38 60 05 04 */	li r3, 0x504
/* 80237A70 0022D7F0  4B FF 9F A5 */	bl LogMsg_2
lbl_80237A74:
/* 80237A74 0022D7F4  A0 9E 00 00 */	lhz r4, 0(r30)
/* 80237A78 0022D7F8  7F E3 FB 78 */	mr r3, r31
/* 80237A7C 0022D7FC  7F C5 F3 78 */	mr r5, r30
/* 80237A80 0022D800  4B FF FB 81 */	bl bta_hh_sm_execute
lbl_80237A84:
/* 80237A84 0022D804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80237A88 0022D808  38 60 00 01 */	li r3, 1
/* 80237A8C 0022D80C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80237A90 0022D810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237A94 0022D814  7C 08 03 A6 */	mtlr r0
/* 80237A98 0022D818  38 21 00 10 */	addi r1, r1, 0x10
/* 80237A9C 0022D81C  4E 80 00 20 */	blr 

.global bta_hh_evt_code
bta_hh_evt_code:
/* 80237AA0 0022D820  38 03 E9 00 */	addi r0, r3, -5888
/* 80237AA4 0022D824  3C 80 80 48 */	lis r4, lbl_80480358@ha
/* 80237AA8 0022D828  28 00 00 0F */	cmplwi r0, 0xf
/* 80237AAC 0022D82C  38 84 03 58 */	addi r4, r4, lbl_80480358@l
/* 80237AB0 0022D830  41 81 00 9C */	bgt lbl_80237B4C
/* 80237AB4 0022D834  3C 60 80 48 */	lis r3, lbl_804805F8@ha
/* 80237AB8 0022D838  54 00 10 3A */	slwi r0, r0, 2
/* 80237ABC 0022D83C  38 63 05 F8 */	addi r3, r3, lbl_804805F8@l
/* 80237AC0 0022D840  7C 63 00 2E */	lwzx r3, r3, r0
/* 80237AC4 0022D844  7C 69 03 A6 */	mtctr r3
/* 80237AC8 0022D848  4E 80 04 20 */	bctr 
/* 80237ACC 0022D84C  38 64 01 08 */	addi r3, r4, 0x108
/* 80237AD0 0022D850  4E 80 00 20 */	blr 
/* 80237AD4 0022D854  38 64 01 20 */	addi r3, r4, 0x120
/* 80237AD8 0022D858  4E 80 00 20 */	blr 
/* 80237ADC 0022D85C  38 64 01 38 */	addi r3, r4, 0x138
/* 80237AE0 0022D860  4E 80 00 20 */	blr 
/* 80237AE4 0022D864  38 64 01 4C */	addi r3, r4, 0x14c
/* 80237AE8 0022D868  4E 80 00 20 */	blr 
/* 80237AEC 0022D86C  38 64 01 64 */	addi r3, r4, 0x164
/* 80237AF0 0022D870  4E 80 00 20 */	blr 
/* 80237AF4 0022D874  38 64 01 78 */	addi r3, r4, 0x178
/* 80237AF8 0022D878  4E 80 00 20 */	blr 
/* 80237AFC 0022D87C  38 64 01 90 */	addi r3, r4, 0x190
/* 80237B00 0022D880  4E 80 00 20 */	blr 
/* 80237B04 0022D884  38 64 01 A8 */	addi r3, r4, 0x1a8
/* 80237B08 0022D888  4E 80 00 20 */	blr 
/* 80237B0C 0022D88C  38 64 01 BC */	addi r3, r4, 0x1bc
/* 80237B10 0022D890  4E 80 00 20 */	blr 
/* 80237B14 0022D894  38 64 01 D4 */	addi r3, r4, 0x1d4
/* 80237B18 0022D898  4E 80 00 20 */	blr 
/* 80237B1C 0022D89C  38 64 01 F0 */	addi r3, r4, 0x1f0
/* 80237B20 0022D8A0  4E 80 00 20 */	blr 
/* 80237B24 0022D8A4  38 64 02 04 */	addi r3, r4, 0x204
/* 80237B28 0022D8A8  4E 80 00 20 */	blr 
/* 80237B2C 0022D8AC  38 64 02 1C */	addi r3, r4, 0x21c
/* 80237B30 0022D8B0  4E 80 00 20 */	blr 
/* 80237B34 0022D8B4  38 64 02 38 */	addi r3, r4, 0x238
/* 80237B38 0022D8B8  4E 80 00 20 */	blr 
/* 80237B3C 0022D8BC  38 64 02 50 */	addi r3, r4, 0x250
/* 80237B40 0022D8C0  4E 80 00 20 */	blr 
/* 80237B44 0022D8C4  38 64 02 68 */	addi r3, r4, 0x268
/* 80237B48 0022D8C8  4E 80 00 20 */	blr 
lbl_80237B4C:
/* 80237B4C 0022D8CC  38 64 02 84 */	addi r3, r4, 0x284
/* 80237B50 0022D8D0  4E 80 00 20 */	blr 

