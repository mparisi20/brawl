.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ef19DrawStrategyBuilderFUl$7Create
nw4r2ef19DrawStrategyBuilderFUl$7Create:
/* 80174434 0016A1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80174438 0016A1B8  7C 08 02 A6 */	mflr r0
/* 8017443C 0016A1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174440 0016A1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80174444 0016A1C4  3F E0 80 4A */	lis r31, lbl_804A3E90@ha
/* 80174448 0016A1C8  3B FF 3E 90 */	addi r31, r31, lbl_804A3E90@l
/* 8017444C 0016A1CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80174450 0016A1D0  7C 9E 23 78 */	mr r30, r4
/* 80174454 0016A1D4  88 0D C0 D0 */	lbz r0, lbl_805A04F0-_SDA_BASE_(r13)
/* 80174458 0016A1D8  7C 00 07 75 */	extsb. r0, r0
/* 8017445C 0016A1DC  40 82 00 28 */	bne lbl_80174484
/* 80174460 0016A1E0  38 7F 00 0C */	addi r3, r31, 0xc
/* 80174464 0016A1E4  48 00 1F E1 */	bl nw4r2ef21DrawBillboardStrategyFv$7__ct
/* 80174468 0016A1E8  3C 80 80 17 */	lis r4, nw4r2ef21DrawBillboardStrategyFv$7__dt@ha
/* 8017446C 0016A1EC  38 7F 00 0C */	addi r3, r31, 0xc
/* 80174470 0016A1F0  38 84 46 18 */	addi r4, r4, nw4r2ef21DrawBillboardStrategyFv$7__dt@l
/* 80174474 0016A1F4  38 BF 00 00 */	addi r5, r31, 0
/* 80174478 0016A1F8  48 27 C2 AD */	bl __register_global_object_tmp
/* 8017447C 0016A1FC  38 00 00 01 */	li r0, 1
/* 80174480 0016A200  98 0D C0 D0 */	stb r0, lbl_805A04F0-_SDA_BASE_(r13)
lbl_80174484:
/* 80174484 0016A204  88 0D C0 D1 */	lbz r0, lbl_805A04F1-_SDA_BASE_(r13)
/* 80174488 0016A208  7C 00 07 75 */	extsb. r0, r0
/* 8017448C 0016A20C  40 82 00 28 */	bne lbl_801744B4
/* 80174490 0016A210  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80174494 0016A214  48 00 3F 5D */	bl nw4r2ef23DrawDirectionalStrategyFv$7__ct
/* 80174498 0016A218  3C 80 80 17 */	lis r4, nw4r2ef23DrawDirectionalStrategyFv$7__dt@ha
/* 8017449C 0016A21C  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 801744A0 0016A220  38 84 46 58 */	addi r4, r4, nw4r2ef23DrawDirectionalStrategyFv$7__dt@l
/* 801744A4 0016A224  38 BF 00 C8 */	addi r5, r31, 0xc8
/* 801744A8 0016A228  48 27 C2 7D */	bl __register_global_object_tmp
/* 801744AC 0016A22C  38 00 00 01 */	li r0, 1
/* 801744B0 0016A230  98 0D C0 D1 */	stb r0, lbl_805A04F1-_SDA_BASE_(r13)
lbl_801744B4:
/* 801744B4 0016A234  88 0D C0 D2 */	lbz r0, lbl_805A04F2-_SDA_BASE_(r13)
/* 801744B8 0016A238  7C 00 07 75 */	extsb. r0, r0
/* 801744BC 0016A23C  40 82 00 28 */	bne lbl_801744E4
/* 801744C0 0016A240  38 7F 01 9C */	addi r3, r31, 0x19c
/* 801744C4 0016A244  48 00 5F E1 */	bl nw4r2ef16DrawFreeStrategyFv$7__ct
/* 801744C8 0016A248  3C 80 80 17 */	lis r4, nw4r2ef16DrawFreeStrategyFv$7__dt@ha
/* 801744CC 0016A24C  38 7F 01 9C */	addi r3, r31, 0x19c
/* 801744D0 0016A250  38 84 46 98 */	addi r4, r4, nw4r2ef16DrawFreeStrategyFv$7__dt@l
/* 801744D4 0016A254  38 BF 01 90 */	addi r5, r31, 0x190
/* 801744D8 0016A258  48 27 C2 4D */	bl __register_global_object_tmp
/* 801744DC 0016A25C  38 00 00 01 */	li r0, 1
/* 801744E0 0016A260  98 0D C0 D2 */	stb r0, lbl_805A04F2-_SDA_BASE_(r13)
lbl_801744E4:
/* 801744E4 0016A264  88 0D C0 D3 */	lbz r0, lbl_805A04F3-_SDA_BASE_(r13)
/* 801744E8 0016A268  7C 00 07 75 */	extsb. r0, r0
/* 801744EC 0016A26C  40 82 00 28 */	bne lbl_80174514
/* 801744F0 0016A270  38 7F 02 64 */	addi r3, r31, 0x264
/* 801744F4 0016A274  48 00 67 3D */	bl nw4r2ef16DrawLineStrategyFv$7__ct
/* 801744F8 0016A278  3C 80 80 17 */	lis r4, nw4r2ef16DrawLineStrategyFv$7__dt@ha
/* 801744FC 0016A27C  38 7F 02 64 */	addi r3, r31, 0x264
/* 80174500 0016A280  38 84 46 D8 */	addi r4, r4, nw4r2ef16DrawLineStrategyFv$7__dt@l
/* 80174504 0016A284  38 BF 02 58 */	addi r5, r31, 0x258
/* 80174508 0016A288  48 27 C2 1D */	bl __register_global_object_tmp
/* 8017450C 0016A28C  38 00 00 01 */	li r0, 1
/* 80174510 0016A290  98 0D C0 D3 */	stb r0, lbl_805A04F3-_SDA_BASE_(r13)
lbl_80174514:
/* 80174514 0016A294  88 0D C0 D4 */	lbz r0, lbl_805A04F4-_SDA_BASE_(r13)
/* 80174518 0016A298  7C 00 07 75 */	extsb. r0, r0
/* 8017451C 0016A29C  40 82 00 28 */	bne lbl_80174544
/* 80174520 0016A2A0  38 7F 03 2C */	addi r3, r31, 0x32c
/* 80174524 0016A2A4  48 00 6B E9 */	bl nw4r2ef17DrawPointStrategyFv$7__ct
/* 80174528 0016A2A8  3C 80 80 17 */	lis r4, nw4r2ef17DrawPointStrategyFv$7__dt@ha
/* 8017452C 0016A2AC  38 7F 03 2C */	addi r3, r31, 0x32c
/* 80174530 0016A2B0  38 84 47 18 */	addi r4, r4, nw4r2ef17DrawPointStrategyFv$7__dt@l
/* 80174534 0016A2B4  38 BF 03 20 */	addi r5, r31, 0x320
/* 80174538 0016A2B8  48 27 C1 ED */	bl __register_global_object_tmp
/* 8017453C 0016A2BC  38 00 00 01 */	li r0, 1
/* 80174540 0016A2C0  98 0D C0 D4 */	stb r0, lbl_805A04F4-_SDA_BASE_(r13)
lbl_80174544:
/* 80174544 0016A2C4  88 0D C0 D5 */	lbz r0, lbl_805A04F5-_SDA_BASE_(r13)
/* 80174548 0016A2C8  7C 00 07 75 */	extsb. r0, r0
/* 8017454C 0016A2CC  40 82 00 28 */	bne lbl_80174574
/* 80174550 0016A2D0  38 7F 03 F4 */	addi r3, r31, 0x3f4
/* 80174554 0016A2D4  48 00 6E AD */	bl nw4r2ef18DrawStripeStrategyFv$7__ct
/* 80174558 0016A2D8  3C 80 80 17 */	lis r4, nw4r2ef18DrawStripeStrategyFv$7__dt@ha
/* 8017455C 0016A2DC  38 7F 03 F4 */	addi r3, r31, 0x3f4
/* 80174560 0016A2E0  38 84 47 58 */	addi r4, r4, nw4r2ef18DrawStripeStrategyFv$7__dt@l
/* 80174564 0016A2E4  38 BF 03 E8 */	addi r5, r31, 0x3e8
/* 80174568 0016A2E8  48 27 C1 BD */	bl __register_global_object_tmp
/* 8017456C 0016A2EC  38 00 00 01 */	li r0, 1
/* 80174570 0016A2F0  98 0D C0 D5 */	stb r0, lbl_805A04F5-_SDA_BASE_(r13)
lbl_80174574:
/* 80174574 0016A2F4  88 0D C0 D6 */	lbz r0, lbl_805A04F6-_SDA_BASE_(r13)
/* 80174578 0016A2F8  7C 00 07 75 */	extsb. r0, r0
/* 8017457C 0016A2FC  40 82 00 28 */	bne lbl_801745A4
/* 80174580 0016A300  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 80174584 0016A304  48 00 9C C9 */	bl nw4r2ef24DrawSmoothStripeStrategyF$7__ct
/* 80174588 0016A308  3C 80 80 17 */	lis r4, nw4r2ef24DrawSmoothStripeStrategyF$7__dt@ha
/* 8017458C 0016A30C  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 80174590 0016A310  38 84 47 98 */	addi r4, r4, nw4r2ef24DrawSmoothStripeStrategyF$7__dt@l
/* 80174594 0016A314  38 BF 04 B0 */	addi r5, r31, 0x4b0
/* 80174598 0016A318  48 27 C1 8D */	bl __register_global_object_tmp
/* 8017459C 0016A31C  38 00 00 01 */	li r0, 1
/* 801745A0 0016A320  98 0D C0 D6 */	stb r0, lbl_805A04F6-_SDA_BASE_(r13)
lbl_801745A4:
/* 801745A4 0016A324  28 1E 00 06 */	cmplwi r30, 6
/* 801745A8 0016A328  41 81 00 54 */	bgt lbl_801745FC
/* 801745AC 0016A32C  3C 60 80 46 */	lis r3, lbl_80465468@ha
/* 801745B0 0016A330  57 C0 10 3A */	slwi r0, r30, 2
/* 801745B4 0016A334  38 63 54 68 */	addi r3, r3, lbl_80465468@l
/* 801745B8 0016A338  7C 63 00 2E */	lwzx r3, r3, r0
/* 801745BC 0016A33C  7C 69 03 A6 */	mtctr r3
/* 801745C0 0016A340  4E 80 04 20 */	bctr 
/* 801745C4 0016A344  38 7F 00 0C */	addi r3, r31, 0xc
/* 801745C8 0016A348  48 00 00 38 */	b lbl_80174600
/* 801745CC 0016A34C  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 801745D0 0016A350  48 00 00 30 */	b lbl_80174600
/* 801745D4 0016A354  38 7F 01 9C */	addi r3, r31, 0x19c
/* 801745D8 0016A358  48 00 00 28 */	b lbl_80174600
/* 801745DC 0016A35C  38 7F 02 64 */	addi r3, r31, 0x264
/* 801745E0 0016A360  48 00 00 20 */	b lbl_80174600
/* 801745E4 0016A364  38 7F 03 2C */	addi r3, r31, 0x32c
/* 801745E8 0016A368  48 00 00 18 */	b lbl_80174600
/* 801745EC 0016A36C  38 7F 03 F4 */	addi r3, r31, 0x3f4
/* 801745F0 0016A370  48 00 00 10 */	b lbl_80174600
/* 801745F4 0016A374  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 801745F8 0016A378  48 00 00 08 */	b lbl_80174600
lbl_801745FC:
/* 801745FC 0016A37C  38 7F 00 0C */	addi r3, r31, 0xc
lbl_80174600:
/* 80174600 0016A380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80174604 0016A384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80174608 0016A388  83 C1 00 08 */	lwz r30, 8(r1)
/* 8017460C 0016A38C  7C 08 03 A6 */	mtlr r0
/* 80174610 0016A390  38 21 00 10 */	addi r1, r1, 0x10
/* 80174614 0016A394  4E 80 00 20 */	blr 

.global nw4r2ef21DrawBillboardStrategyFv$7__dt
nw4r2ef21DrawBillboardStrategyFv$7__dt:
/* 80174618 0016A398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017461C 0016A39C  7C 08 02 A6 */	mflr r0
/* 80174620 0016A3A0  2C 03 00 00 */	cmpwi r3, 0
/* 80174624 0016A3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174628 0016A3A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017462C 0016A3AC  7C 7F 1B 78 */	mr r31, r3
/* 80174630 0016A3B0  41 82 00 10 */	beq lbl_80174640
/* 80174634 0016A3B4  2C 04 00 00 */	cmpwi r4, 0
/* 80174638 0016A3B8  40 81 00 08 */	ble lbl_80174640
/* 8017463C 0016A3BC  4B E9 82 8D */	bl __dl__FPv
lbl_80174640:
/* 80174640 0016A3C0  7F E3 FB 78 */	mr r3, r31
/* 80174644 0016A3C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80174648 0016A3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017464C 0016A3CC  7C 08 03 A6 */	mtlr r0
/* 80174650 0016A3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80174654 0016A3D4  4E 80 00 20 */	blr 

.global nw4r2ef23DrawDirectionalStrategyFv$7__dt
nw4r2ef23DrawDirectionalStrategyFv$7__dt:
/* 80174658 0016A3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017465C 0016A3DC  7C 08 02 A6 */	mflr r0
/* 80174660 0016A3E0  2C 03 00 00 */	cmpwi r3, 0
/* 80174664 0016A3E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174668 0016A3E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017466C 0016A3EC  7C 7F 1B 78 */	mr r31, r3
/* 80174670 0016A3F0  41 82 00 10 */	beq lbl_80174680
/* 80174674 0016A3F4  2C 04 00 00 */	cmpwi r4, 0
/* 80174678 0016A3F8  40 81 00 08 */	ble lbl_80174680
/* 8017467C 0016A3FC  4B E9 82 4D */	bl __dl__FPv
lbl_80174680:
/* 80174680 0016A400  7F E3 FB 78 */	mr r3, r31
/* 80174684 0016A404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80174688 0016A408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017468C 0016A40C  7C 08 03 A6 */	mtlr r0
/* 80174690 0016A410  38 21 00 10 */	addi r1, r1, 0x10
/* 80174694 0016A414  4E 80 00 20 */	blr 

.global nw4r2ef16DrawFreeStrategyFv$7__dt
nw4r2ef16DrawFreeStrategyFv$7__dt:
/* 80174698 0016A418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017469C 0016A41C  7C 08 02 A6 */	mflr r0
/* 801746A0 0016A420  2C 03 00 00 */	cmpwi r3, 0
/* 801746A4 0016A424  90 01 00 14 */	stw r0, 0x14(r1)
/* 801746A8 0016A428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801746AC 0016A42C  7C 7F 1B 78 */	mr r31, r3
/* 801746B0 0016A430  41 82 00 10 */	beq lbl_801746C0
/* 801746B4 0016A434  2C 04 00 00 */	cmpwi r4, 0
/* 801746B8 0016A438  40 81 00 08 */	ble lbl_801746C0
/* 801746BC 0016A43C  4B E9 82 0D */	bl __dl__FPv
lbl_801746C0:
/* 801746C0 0016A440  7F E3 FB 78 */	mr r3, r31
/* 801746C4 0016A444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801746C8 0016A448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801746CC 0016A44C  7C 08 03 A6 */	mtlr r0
/* 801746D0 0016A450  38 21 00 10 */	addi r1, r1, 0x10
/* 801746D4 0016A454  4E 80 00 20 */	blr 

.global nw4r2ef16DrawLineStrategyFv$7__dt
nw4r2ef16DrawLineStrategyFv$7__dt:
/* 801746D8 0016A458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801746DC 0016A45C  7C 08 02 A6 */	mflr r0
/* 801746E0 0016A460  2C 03 00 00 */	cmpwi r3, 0
/* 801746E4 0016A464  90 01 00 14 */	stw r0, 0x14(r1)
/* 801746E8 0016A468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801746EC 0016A46C  7C 7F 1B 78 */	mr r31, r3
/* 801746F0 0016A470  41 82 00 10 */	beq lbl_80174700
/* 801746F4 0016A474  2C 04 00 00 */	cmpwi r4, 0
/* 801746F8 0016A478  40 81 00 08 */	ble lbl_80174700
/* 801746FC 0016A47C  4B E9 81 CD */	bl __dl__FPv
lbl_80174700:
/* 80174700 0016A480  7F E3 FB 78 */	mr r3, r31
/* 80174704 0016A484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80174708 0016A488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017470C 0016A48C  7C 08 03 A6 */	mtlr r0
/* 80174710 0016A490  38 21 00 10 */	addi r1, r1, 0x10
/* 80174714 0016A494  4E 80 00 20 */	blr 

.global nw4r2ef17DrawPointStrategyFv$7__dt
nw4r2ef17DrawPointStrategyFv$7__dt:
/* 80174718 0016A498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017471C 0016A49C  7C 08 02 A6 */	mflr r0
/* 80174720 0016A4A0  2C 03 00 00 */	cmpwi r3, 0
/* 80174724 0016A4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174728 0016A4A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017472C 0016A4AC  7C 7F 1B 78 */	mr r31, r3
/* 80174730 0016A4B0  41 82 00 10 */	beq lbl_80174740
/* 80174734 0016A4B4  2C 04 00 00 */	cmpwi r4, 0
/* 80174738 0016A4B8  40 81 00 08 */	ble lbl_80174740
/* 8017473C 0016A4BC  4B E9 81 8D */	bl __dl__FPv
lbl_80174740:
/* 80174740 0016A4C0  7F E3 FB 78 */	mr r3, r31
/* 80174744 0016A4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80174748 0016A4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017474C 0016A4CC  7C 08 03 A6 */	mtlr r0
/* 80174750 0016A4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80174754 0016A4D4  4E 80 00 20 */	blr 

.global nw4r2ef18DrawStripeStrategyFv$7__dt
nw4r2ef18DrawStripeStrategyFv$7__dt:
/* 80174758 0016A4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017475C 0016A4DC  7C 08 02 A6 */	mflr r0
/* 80174760 0016A4E0  2C 03 00 00 */	cmpwi r3, 0
/* 80174764 0016A4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174768 0016A4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017476C 0016A4EC  7C 7F 1B 78 */	mr r31, r3
/* 80174770 0016A4F0  41 82 00 10 */	beq lbl_80174780
/* 80174774 0016A4F4  2C 04 00 00 */	cmpwi r4, 0
/* 80174778 0016A4F8  40 81 00 08 */	ble lbl_80174780
/* 8017477C 0016A4FC  4B E9 81 4D */	bl __dl__FPv
lbl_80174780:
/* 80174780 0016A500  7F E3 FB 78 */	mr r3, r31
/* 80174784 0016A504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80174788 0016A508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017478C 0016A50C  7C 08 03 A6 */	mtlr r0
/* 80174790 0016A510  38 21 00 10 */	addi r1, r1, 0x10
/* 80174794 0016A514  4E 80 00 20 */	blr 

.global nw4r2ef24DrawSmoothStripeStrategyF$7__dt
nw4r2ef24DrawSmoothStripeStrategyF$7__dt:
/* 80174798 0016A518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017479C 0016A51C  7C 08 02 A6 */	mflr r0
/* 801747A0 0016A520  2C 03 00 00 */	cmpwi r3, 0
/* 801747A4 0016A524  90 01 00 14 */	stw r0, 0x14(r1)
/* 801747A8 0016A528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801747AC 0016A52C  7C 7F 1B 78 */	mr r31, r3
/* 801747B0 0016A530  41 82 00 10 */	beq lbl_801747C0
/* 801747B4 0016A534  2C 04 00 00 */	cmpwi r4, 0
/* 801747B8 0016A538  40 81 00 08 */	ble lbl_801747C0
/* 801747BC 0016A53C  4B E9 81 0D */	bl __dl__FPv
lbl_801747C0:
/* 801747C0 0016A540  7F E3 FB 78 */	mr r3, r31
/* 801747C4 0016A544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801747C8 0016A548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801747CC 0016A54C  7C 08 03 A6 */	mtlr r0
/* 801747D0 0016A550  38 21 00 10 */	addi r1, r1, 0x10
/* 801747D4 0016A554  4E 80 00 20 */	blr 

