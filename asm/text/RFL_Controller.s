.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global RFLiInitCtrlBuf
RFLiInitCtrlBuf:
/* 803D55D4 003CB354  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D55D8 003CB358  7C 08 02 A6 */	mflr r0
/* 803D55DC 003CB35C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D55E0 003CB360  39 61 00 30 */	addi r11, r1, 0x30
/* 803D55E4 003CB364  48 01 BD 31 */	bl _savegpr_24
/* 803D55E8 003CB368  7C 7E 1B 78 */	mr r30, r3
/* 803D55EC 003CB36C  4B FF 7D ED */	bl RFLiGetCtrlBufManager
/* 803D55F0 003CB370  7C 7F 1B 78 */	mr r31, r3
/* 803D55F4 003CB374  3C 60 52 4E */	lis r3, 0x524E4344@ha
/* 803D55F8 003CB378  7F FA FB 78 */	mr r26, r31
/* 803D55FC 003CB37C  3B 00 00 00 */	li r24, 0
/* 803D5600 003CB380  3B 83 43 44 */	addi r28, r3, 0x524E4344@l
/* 803D5604 003CB384  3B A0 00 00 */	li r29, 0
lbl_803D5608:
/* 803D5608 003CB388  7F C3 F3 78 */	mr r3, r30
/* 803D560C 003CB38C  38 80 02 F0 */	li r4, 0x2f0
/* 803D5610 003CB390  38 A0 00 20 */	li r5, 0x20
/* 803D5614 003CB394  4B E2 F1 55 */	bl MEMAllocFromExpHeapEx
/* 803D5618 003CB398  90 7A 00 00 */	stw r3, 0(r26)
/* 803D561C 003CB39C  3B 23 00 08 */	addi r25, r3, 8
/* 803D5620 003CB3A0  3B 60 00 00 */	li r27, 0
/* 803D5624 003CB3A4  93 83 00 00 */	stw r28, 0(r3)
/* 803D5628 003CB3A8  B3 A3 00 04 */	sth r29, 4(r3)
/* 803D562C 003CB3AC  B3 A3 02 EC */	sth r29, 0x2ec(r3)
/* 803D5630 003CB3B0  B3 A3 02 EE */	sth r29, 0x2ee(r3)
lbl_803D5634:
/* 803D5634 003CB3B4  7F 23 CB 78 */	mr r3, r25
/* 803D5638 003CB3B8  38 80 00 00 */	li r4, 0
/* 803D563C 003CB3BC  38 A0 00 4A */	li r5, 0x4a
/* 803D5640 003CB3C0  4B C2 ED FD */	bl func_8000443C
/* 803D5644 003CB3C4  3B 7B 00 01 */	addi r27, r27, 1
/* 803D5648 003CB3C8  3B 39 00 4A */	addi r25, r25, 0x4a
/* 803D564C 003CB3CC  2C 1B 00 0A */	cmpwi r27, 0xa
/* 803D5650 003CB3D0  41 80 FF E4 */	blt lbl_803D5634
/* 803D5654 003CB3D4  3B 18 00 01 */	addi r24, r24, 1
/* 803D5658 003CB3D8  93 BA 00 10 */	stw r29, 0x10(r26)
/* 803D565C 003CB3DC  2C 18 00 04 */	cmpwi r24, 4
/* 803D5660 003CB3E0  3B 5A 00 04 */	addi r26, r26, 4
/* 803D5664 003CB3E4  41 80 FF A4 */	blt lbl_803D5608
/* 803D5668 003CB3E8  7F C3 F3 78 */	mr r3, r30
/* 803D566C 003CB3EC  38 80 02 F0 */	li r4, 0x2f0
/* 803D5670 003CB3F0  38 A0 00 20 */	li r5, 0x20
/* 803D5674 003CB3F4  4B E2 F0 F5 */	bl MEMAllocFromExpHeapEx
/* 803D5678 003CB3F8  3C 80 52 4E */	lis r4, 0x524E4344@ha
/* 803D567C 003CB3FC  90 7F 00 20 */	stw r3, 0x20(r31)
/* 803D5680 003CB400  38 84 43 44 */	addi r4, r4, 0x524E4344@l
/* 803D5684 003CB404  38 00 00 00 */	li r0, 0
/* 803D5688 003CB408  90 83 00 00 */	stw r4, 0(r3)
/* 803D568C 003CB40C  3B 83 00 08 */	addi r28, r3, 8
/* 803D5690 003CB410  3B 60 00 00 */	li r27, 0
/* 803D5694 003CB414  B0 03 00 04 */	sth r0, 4(r3)
/* 803D5698 003CB418  B0 03 02 EC */	sth r0, 0x2ec(r3)
/* 803D569C 003CB41C  B0 03 02 EE */	sth r0, 0x2ee(r3)
lbl_803D56A0:
/* 803D56A0 003CB420  7F 83 E3 78 */	mr r3, r28
/* 803D56A4 003CB424  38 80 00 00 */	li r4, 0
/* 803D56A8 003CB428  38 A0 00 4A */	li r5, 0x4a
/* 803D56AC 003CB42C  4B C2 ED 91 */	bl func_8000443C
/* 803D56B0 003CB430  3B 7B 00 01 */	addi r27, r27, 1
/* 803D56B4 003CB434  3B 9C 00 4A */	addi r28, r28, 0x4a
/* 803D56B8 003CB438  2C 1B 00 0A */	cmpwi r27, 0xa
/* 803D56BC 003CB43C  41 80 FF E4 */	blt lbl_803D56A0
/* 803D56C0 003CB440  7F C3 F3 78 */	mr r3, r30
/* 803D56C4 003CB444  38 80 02 F0 */	li r4, 0x2f0
/* 803D56C8 003CB448  38 A0 00 20 */	li r5, 0x20
/* 803D56CC 003CB44C  4B E2 F0 9D */	bl MEMAllocFromExpHeapEx
/* 803D56D0 003CB450  3C 80 52 4E */	lis r4, 0x524E4344@ha
/* 803D56D4 003CB454  90 7F 00 24 */	stw r3, 0x24(r31)
/* 803D56D8 003CB458  38 84 43 44 */	addi r4, r4, 0x524E4344@l
/* 803D56DC 003CB45C  38 00 00 00 */	li r0, 0
/* 803D56E0 003CB460  90 83 00 00 */	stw r4, 0(r3)
/* 803D56E4 003CB464  3B 83 00 08 */	addi r28, r3, 8
/* 803D56E8 003CB468  3B 60 00 00 */	li r27, 0
/* 803D56EC 003CB46C  B0 03 00 04 */	sth r0, 4(r3)
/* 803D56F0 003CB470  B0 03 02 EC */	sth r0, 0x2ec(r3)
/* 803D56F4 003CB474  B0 03 02 EE */	sth r0, 0x2ee(r3)
lbl_803D56F8:
/* 803D56F8 003CB478  7F 83 E3 78 */	mr r3, r28
/* 803D56FC 003CB47C  38 80 00 00 */	li r4, 0
/* 803D5700 003CB480  38 A0 00 4A */	li r5, 0x4a
/* 803D5704 003CB484  4B C2 ED 39 */	bl func_8000443C
/* 803D5708 003CB488  3B 7B 00 01 */	addi r27, r27, 1
/* 803D570C 003CB48C  3B 9C 00 4A */	addi r28, r28, 0x4a
/* 803D5710 003CB490  2C 1B 00 0A */	cmpwi r27, 0xa
/* 803D5714 003CB494  41 80 FF E4 */	blt lbl_803D56F8
/* 803D5718 003CB498  38 A0 00 00 */	li r5, 0
/* 803D571C 003CB49C  38 80 FF FF */	li r4, -1
/* 803D5720 003CB4A0  90 BF 00 44 */	stw r5, 0x44(r31)
/* 803D5724 003CB4A4  38 00 00 01 */	li r0, 1
/* 803D5728 003CB4A8  38 60 00 0A */	li r3, 0xa
/* 803D572C 003CB4AC  90 BF 00 48 */	stw r5, 0x48(r31)
/* 803D5730 003CB4B0  90 9F 00 54 */	stw r4, 0x54(r31)
/* 803D5734 003CB4B4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 803D5738 003CB4B8  90 BF 00 6C */	stw r5, 0x6c(r31)
/* 803D573C 003CB4BC  48 00 01 35 */	bl RFLGetMiddleDBBufferSize
/* 803D5740 003CB4C0  7C 64 1B 78 */	mr r4, r3
/* 803D5744 003CB4C4  7F C3 F3 78 */	mr r3, r30
/* 803D5748 003CB4C8  38 A0 00 20 */	li r5, 0x20
/* 803D574C 003CB4CC  4B E2 F0 1D */	bl MEMAllocFromExpHeapEx
/* 803D5750 003CB4D0  7C 65 1B 78 */	mr r5, r3
/* 803D5754 003CB4D4  38 7F 00 70 */	addi r3, r31, 0x70
/* 803D5758 003CB4D8  38 80 00 00 */	li r4, 0
/* 803D575C 003CB4DC  38 C0 00 0A */	li r6, 0xa
/* 803D5760 003CB4E0  48 00 01 19 */	bl RFLInitMiddleDB
/* 803D5764 003CB4E4  39 61 00 30 */	addi r11, r1, 0x30
/* 803D5768 003CB4E8  48 01 BB F9 */	bl _restgpr_24
/* 803D576C 003CB4EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D5770 003CB4F0  7C 08 03 A6 */	mtlr r0
/* 803D5774 003CB4F4  38 21 00 30 */	addi r1, r1, 0x30
/* 803D5778 003CB4F8  4E 80 00 20 */	blr 

.global RFLiGetControllerData
RFLiGetControllerData:
/* 803D577C 003CB4FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D5780 003CB500  7C 08 02 A6 */	mflr r0
/* 803D5784 003CB504  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D5788 003CB508  39 61 00 20 */	addi r11, r1, 0x20
/* 803D578C 003CB50C  48 01 BB 95 */	bl _savegpr_27
/* 803D5790 003CB510  2C 04 00 00 */	cmpwi r4, 0
/* 803D5794 003CB514  7C 7B 1B 78 */	mr r27, r3
/* 803D5798 003CB518  7C 9E 23 78 */	mr r30, r4
/* 803D579C 003CB51C  7C BD 2B 78 */	mr r29, r5
/* 803D57A0 003CB520  7C DC 33 78 */	mr r28, r6
/* 803D57A4 003CB524  41 80 00 0C */	blt lbl_803D57B0
/* 803D57A8 003CB528  2C 04 00 04 */	cmpwi r4, 4
/* 803D57AC 003CB52C  41 80 00 0C */	blt lbl_803D57B8
lbl_803D57B0:
/* 803D57B0 003CB530  38 60 00 00 */	li r3, 0
/* 803D57B4 003CB534  48 00 00 A4 */	b lbl_803D5858
lbl_803D57B8:
/* 803D57B8 003CB538  28 05 00 0A */	cmplwi r5, 0xa
/* 803D57BC 003CB53C  41 80 00 0C */	blt lbl_803D57C8
/* 803D57C0 003CB540  38 60 00 00 */	li r3, 0
/* 803D57C4 003CB544  48 00 00 94 */	b lbl_803D5858
lbl_803D57C8:
/* 803D57C8 003CB548  4B FF 7C 11 */	bl RFLiGetCtrlBufManager
/* 803D57CC 003CB54C  2C 03 00 00 */	cmpwi r3, 0
/* 803D57D0 003CB550  40 82 00 0C */	bne lbl_803D57DC
/* 803D57D4 003CB554  38 60 00 00 */	li r3, 0
/* 803D57D8 003CB558  48 00 00 80 */	b lbl_803D5858
lbl_803D57DC:
/* 803D57DC 003CB55C  57 C5 10 3A */	slwi r5, r30, 2
/* 803D57E0 003CB560  7C 83 2A 14 */	add r4, r3, r5
/* 803D57E4 003CB564  80 04 00 10 */	lwz r0, 0x10(r4)
/* 803D57E8 003CB568  2C 00 00 00 */	cmpwi r0, 0
/* 803D57EC 003CB56C  40 82 00 0C */	bne lbl_803D57F8
/* 803D57F0 003CB570  38 60 00 00 */	li r3, 0
/* 803D57F4 003CB574  48 00 00 64 */	b lbl_803D5858
lbl_803D57F8:
/* 803D57F8 003CB578  1F FD 00 4A */	mulli r31, r29, 0x4a
/* 803D57FC 003CB57C  7F C3 28 2E */	lwzx r30, r3, r5
/* 803D5800 003CB580  38 00 00 01 */	li r0, 1
/* 803D5804 003CB584  7C 00 E8 30 */	slw r0, r0, r29
/* 803D5808 003CB588  7C 7E FA 14 */	add r3, r30, r31
/* 803D580C 003CB58C  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803D5810 003CB590  38 63 00 20 */	addi r3, r3, 0x20
/* 803D5814 003CB594  4B FF FA 09 */	bl RFLiIsValidID
/* 803D5818 003CB598  2C 03 00 00 */	cmpwi r3, 0
/* 803D581C 003CB59C  40 82 00 0C */	bne lbl_803D5828
/* 803D5820 003CB5A0  38 60 00 00 */	li r3, 0
/* 803D5824 003CB5A4  48 00 00 34 */	b lbl_803D5858
lbl_803D5828:
/* 803D5828 003CB5A8  2C 1C 00 00 */	cmpwi r28, 0
/* 803D582C 003CB5AC  40 82 00 18 */	bne lbl_803D5844
/* 803D5830 003CB5B0  A0 1E 00 04 */	lhz r0, 4(r30)
/* 803D5834 003CB5B4  7C 00 E8 39 */	and. r0, r0, r29
/* 803D5838 003CB5B8  41 82 00 0C */	beq lbl_803D5844
/* 803D583C 003CB5BC  38 60 00 00 */	li r3, 0
/* 803D5840 003CB5C0  48 00 00 18 */	b lbl_803D5858
lbl_803D5844:
/* 803D5844 003CB5C4  7C 7E FA 14 */	add r3, r30, r31
/* 803D5848 003CB5C8  7F 64 DB 78 */	mr r4, r27
/* 803D584C 003CB5CC  38 63 00 08 */	addi r3, r3, 8
/* 803D5850 003CB5D0  4B FF F7 75 */	bl RFLiConvertRaw2Info
/* 803D5854 003CB5D4  38 60 00 01 */	li r3, 1
lbl_803D5858:
/* 803D5858 003CB5D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803D585C 003CB5DC  48 01 BB 11 */	bl _restgpr_27
/* 803D5860 003CB5E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D5864 003CB5E4  7C 08 03 A6 */	mtlr r0
/* 803D5868 003CB5E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803D586C 003CB5EC  4E 80 00 20 */	blr 

