.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFiPFFAT32_ReadFATEntry
VFiPFFAT32_ReadFATEntry:
/* 803B9584 003AF304  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B9588 003AF308  7C 08 02 A6 */	mflr r0
/* 803B958C 003AF30C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B9590 003AF310  39 61 00 30 */	addi r11, r1, 0x30
/* 803B9594 003AF314  48 03 7D 89 */	bl _savegpr_26
/* 803B9598 003AF318  2C 03 00 00 */	cmpwi r3, 0
/* 803B959C 003AF31C  7C 7D 1B 78 */	mr r29, r3
/* 803B95A0 003AF320  7C BE 2B 78 */	mr r30, r5
/* 803B95A4 003AF324  40 82 00 14 */	bne lbl_803B95B8
/* 803B95A8 003AF328  38 00 FF FF */	li r0, -1
/* 803B95AC 003AF32C  38 60 00 0A */	li r3, 0xa
/* 803B95B0 003AF330  90 05 00 00 */	stw r0, 0(r5)
/* 803B95B4 003AF334  48 00 01 2C */	b lbl_803B96E0
lbl_803B95B8:
/* 803B95B8 003AF338  28 04 00 02 */	cmplwi r4, 2
/* 803B95BC 003AF33C  41 80 00 14 */	blt lbl_803B95D0
/* 803B95C0 003AF340  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 803B95C4 003AF344  38 06 00 02 */	addi r0, r6, 2
/* 803B95C8 003AF348  7C 04 00 40 */	cmplw r4, r0
/* 803B95CC 003AF34C  41 80 00 24 */	blt lbl_803B95F0
lbl_803B95D0:
/* 803B95D0 003AF350  2C 04 00 00 */	cmpwi r4, 0
/* 803B95D4 003AF354  41 82 00 1C */	beq lbl_803B95F0
/* 803B95D8 003AF358  28 04 00 01 */	cmplwi r4, 1
/* 803B95DC 003AF35C  41 82 00 14 */	beq lbl_803B95F0
/* 803B95E0 003AF360  38 00 FF FF */	li r0, -1
/* 803B95E4 003AF364  38 60 00 0E */	li r3, 0xe
/* 803B95E8 003AF368  90 05 00 00 */	stw r0, 0(r5)
/* 803B95EC 003AF36C  48 00 00 F4 */	b lbl_803B96E0
lbl_803B95F0:
/* 803B95F0 003AF370  A0 E3 00 18 */	lhz r7, 0x18(r3)
/* 803B95F4 003AF374  54 88 10 3A */	slwi r8, r4, 2
/* 803B95F8 003AF378  88 A3 00 20 */	lbz r5, 0x20(r3)
/* 803B95FC 003AF37C  3B E0 00 01 */	li r31, 1
/* 803B9600 003AF380  A0 83 00 00 */	lhz r4, 0(r3)
/* 803B9604 003AF384  54 E0 06 31 */	rlwinm. r0, r7, 0, 0x18, 0x18
/* 803B9608 003AF388  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 803B960C 003AF38C  7D 03 2C 30 */	srw r3, r8, r5
/* 803B9610 003AF390  38 04 FF FF */	addi r0, r4, -1
/* 803B9614 003AF394  7C 66 1A 14 */	add r3, r6, r3
/* 803B9618 003AF398  7D 00 00 38 */	and r0, r8, r0
/* 803B961C 003AF39C  54 7C 04 3E */	clrlwi r28, r3, 0x10
/* 803B9620 003AF3A0  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 803B9624 003AF3A4  41 82 00 08 */	beq lbl_803B962C
/* 803B9628 003AF3A8  54 FF 07 7E */	clrlwi r31, r7, 0x1d
lbl_803B962C:
/* 803B962C 003AF3AC  7F A3 EB 78 */	mr r3, r29
/* 803B9630 003AF3B0  7F 85 E3 78 */	mr r5, r28
/* 803B9634 003AF3B4  7F 66 DB 78 */	mr r6, r27
/* 803B9638 003AF3B8  38 81 00 08 */	addi r4, r1, 8
/* 803B963C 003AF3BC  38 E0 00 04 */	li r7, 4
/* 803B9640 003AF3C0  48 00 69 89 */	bl VFiPFSEC_ReadFAT
/* 803B9644 003AF3C4  2C 03 10 00 */	cmpwi r3, 0x1000
/* 803B9648 003AF3C8  7C 7A 1B 78 */	mr r26, r3
/* 803B964C 003AF3CC  40 82 00 50 */	bne lbl_803B969C
/* 803B9650 003AF3D0  81 9D 18 90 */	lwz r12, 0x1890(r29)
/* 803B9654 003AF3D4  2C 0C 00 00 */	cmpwi r12, 0
/* 803B9658 003AF3D8  41 82 00 44 */	beq lbl_803B969C
/* 803B965C 003AF3DC  80 7D 18 70 */	lwz r3, 0x1870(r29)
/* 803B9660 003AF3E0  7D 89 03 A6 */	mtctr r12
/* 803B9664 003AF3E4  4E 80 04 21 */	bctrl 
/* 803B9668 003AF3E8  2C 03 00 00 */	cmpwi r3, 0
/* 803B966C 003AF3EC  41 82 00 48 */	beq lbl_803B96B4
/* 803B9670 003AF3F0  2C 03 00 01 */	cmpwi r3, 1
/* 803B9674 003AF3F4  40 82 00 28 */	bne lbl_803B969C
/* 803B9678 003AF3F8  88 1D 00 22 */	lbz r0, 0x22(r29)
/* 803B967C 003AF3FC  28 00 00 02 */	cmplwi r0, 2
/* 803B9680 003AF400  41 80 00 1C */	blt lbl_803B969C
/* 803B9684 003AF404  7C 1F 00 40 */	cmplw r31, r0
/* 803B9688 003AF408  40 80 00 14 */	bge lbl_803B969C
/* 803B968C 003AF40C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803B9690 003AF410  3B FF 00 01 */	addi r31, r31, 1
/* 803B9694 003AF414  7F 9C 02 14 */	add r28, r28, r0
/* 803B9698 003AF418  48 00 00 1C */	b lbl_803B96B4
lbl_803B969C:
/* 803B969C 003AF41C  2C 1A 00 00 */	cmpwi r26, 0
/* 803B96A0 003AF420  41 82 00 14 */	beq lbl_803B96B4
/* 803B96A4 003AF424  38 00 FF FF */	li r0, -1
/* 803B96A8 003AF428  7F 43 D3 78 */	mr r3, r26
/* 803B96AC 003AF42C  90 1E 00 00 */	stw r0, 0(r30)
/* 803B96B0 003AF430  48 00 00 30 */	b lbl_803B96E0
lbl_803B96B4:
/* 803B96B4 003AF434  2C 1A 00 00 */	cmpwi r26, 0
/* 803B96B8 003AF438  40 82 FF 74 */	bne lbl_803B962C
/* 803B96BC 003AF43C  80 A1 00 08 */	lwz r5, 8(r1)
/* 803B96C0 003AF440  38 60 00 00 */	li r3, 0
/* 803B96C4 003AF444  54 A4 42 1E */	rlwinm r4, r5, 8, 8, 0xf
/* 803B96C8 003AF448  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 803B96CC 003AF44C  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 803B96D0 003AF450  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 803B96D4 003AF454  7C 80 03 78 */	or r0, r4, r0
/* 803B96D8 003AF458  54 00 01 3E */	clrlwi r0, r0, 4
/* 803B96DC 003AF45C  90 1E 00 00 */	stw r0, 0(r30)
lbl_803B96E0:
/* 803B96E0 003AF460  39 61 00 30 */	addi r11, r1, 0x30
/* 803B96E4 003AF464  48 03 7C 85 */	bl _restgpr_26
/* 803B96E8 003AF468  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B96EC 003AF46C  7C 08 03 A6 */	mtlr r0
/* 803B96F0 003AF470  38 21 00 30 */	addi r1, r1, 0x30
/* 803B96F4 003AF474  4E 80 00 20 */	blr 

.global VFiPFFAT32_ReadFATEntryPage
VFiPFFAT32_ReadFATEntryPage:
/* 803B96F8 003AF478  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B96FC 003AF47C  7C 08 02 A6 */	mflr r0
/* 803B9700 003AF480  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B9704 003AF484  39 61 00 30 */	addi r11, r1, 0x30
/* 803B9708 003AF488  48 03 7C 11 */	bl _savegpr_25
/* 803B970C 003AF48C  2C 03 00 00 */	cmpwi r3, 0
/* 803B9710 003AF490  7C 79 1B 78 */	mr r25, r3
/* 803B9714 003AF494  7C BA 2B 78 */	mr r26, r5
/* 803B9718 003AF498  7C DB 33 78 */	mr r27, r6
/* 803B971C 003AF49C  3B C0 00 00 */	li r30, 0
/* 803B9720 003AF4A0  40 82 00 0C */	bne lbl_803B972C
/* 803B9724 003AF4A4  38 60 00 0A */	li r3, 0xa
/* 803B9728 003AF4A8  48 00 01 84 */	b lbl_803B98AC
lbl_803B972C:
/* 803B972C 003AF4AC  28 04 00 02 */	cmplwi r4, 2
/* 803B9730 003AF4B0  41 80 00 14 */	blt lbl_803B9744
/* 803B9734 003AF4B4  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 803B9738 003AF4B8  38 05 00 02 */	addi r0, r5, 2
/* 803B973C 003AF4BC  7C 04 00 40 */	cmplw r4, r0
/* 803B9740 003AF4C0  41 80 00 1C */	blt lbl_803B975C
lbl_803B9744:
/* 803B9744 003AF4C4  2C 04 00 00 */	cmpwi r4, 0
/* 803B9748 003AF4C8  41 82 00 14 */	beq lbl_803B975C
/* 803B974C 003AF4CC  28 04 00 01 */	cmplwi r4, 1
/* 803B9750 003AF4D0  41 82 00 0C */	beq lbl_803B975C
/* 803B9754 003AF4D4  38 60 00 0E */	li r3, 0xe
/* 803B9758 003AF4D8  48 00 01 54 */	b lbl_803B98AC
lbl_803B975C:
/* 803B975C 003AF4DC  A0 A3 00 18 */	lhz r5, 0x18(r3)
/* 803B9760 003AF4E0  54 9F 10 3A */	slwi r31, r4, 2
/* 803B9764 003AF4E4  88 E3 00 20 */	lbz r7, 0x20(r3)
/* 803B9768 003AF4E8  3B 80 00 01 */	li r28, 1
/* 803B976C 003AF4EC  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 803B9770 003AF4F0  80 83 00 28 */	lwz r4, 0x28(r3)
/* 803B9774 003AF4F4  7F E0 3C 30 */	srw r0, r31, r7
/* 803B9778 003AF4F8  7C 04 02 14 */	add r0, r4, r0
/* 803B977C 003AF4FC  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803B9780 003AF500  41 82 00 08 */	beq lbl_803B9788
/* 803B9784 003AF504  54 BC 07 7E */	clrlwi r28, r5, 0x1d
lbl_803B9788:
/* 803B9788 003AF508  80 86 00 00 */	lwz r4, 0(r6)
/* 803B978C 003AF50C  80 C4 00 18 */	lwz r6, 0x18(r4)
/* 803B9790 003AF510  7C 06 E8 40 */	cmplw r6, r29
/* 803B9794 003AF514  41 81 00 14 */	bgt lbl_803B97A8
/* 803B9798 003AF518  80 03 16 00 */	lwz r0, 0x1600(r3)
/* 803B979C 003AF51C  7C 06 02 14 */	add r0, r6, r0
/* 803B97A0 003AF520  7C 00 E8 40 */	cmplw r0, r29
/* 803B97A4 003AF524  41 81 00 A8 */	bgt lbl_803B984C
lbl_803B97A8:
/* 803B97A8 003AF528  A0 04 00 02 */	lhz r0, 2(r4)
/* 803B97AC 003AF52C  28 00 00 01 */	cmplwi r0, 1
/* 803B97B0 003AF530  40 82 00 18 */	bne lbl_803B97C8
/* 803B97B4 003AF534  7F 23 CB 78 */	mr r3, r25
/* 803B97B8 003AF538  4B FF D7 C9 */	bl VFiPFFAT_UpdateFATEntry
/* 803B97BC 003AF53C  2C 03 00 00 */	cmpwi r3, 0
/* 803B97C0 003AF540  41 82 00 08 */	beq lbl_803B97C8
/* 803B97C4 003AF544  48 00 00 E8 */	b lbl_803B98AC
lbl_803B97C8:
/* 803B97C8 003AF548  7F 23 CB 78 */	mr r3, r25
/* 803B97CC 003AF54C  7F A4 EB 78 */	mr r4, r29
/* 803B97D0 003AF550  7F 65 DB 78 */	mr r5, r27
/* 803B97D4 003AF554  4B FF 67 09 */	bl VFiPFCACHE_ReadFATPage
/* 803B97D8 003AF558  2C 03 10 00 */	cmpwi r3, 0x1000
/* 803B97DC 003AF55C  7C 7E 1B 78 */	mr r30, r3
/* 803B97E0 003AF560  40 82 00 50 */	bne lbl_803B9830
/* 803B97E4 003AF564  81 99 18 90 */	lwz r12, 0x1890(r25)
/* 803B97E8 003AF568  2C 0C 00 00 */	cmpwi r12, 0
/* 803B97EC 003AF56C  41 82 00 44 */	beq lbl_803B9830
/* 803B97F0 003AF570  80 79 18 70 */	lwz r3, 0x1870(r25)
/* 803B97F4 003AF574  7D 89 03 A6 */	mtctr r12
/* 803B97F8 003AF578  4E 80 04 21 */	bctrl 
/* 803B97FC 003AF57C  2C 03 00 00 */	cmpwi r3, 0
/* 803B9800 003AF580  41 82 00 40 */	beq lbl_803B9840
/* 803B9804 003AF584  2C 03 00 01 */	cmpwi r3, 1
/* 803B9808 003AF588  40 82 00 28 */	bne lbl_803B9830
/* 803B980C 003AF58C  88 19 00 22 */	lbz r0, 0x22(r25)
/* 803B9810 003AF590  28 00 00 02 */	cmplwi r0, 2
/* 803B9814 003AF594  41 80 00 1C */	blt lbl_803B9830
/* 803B9818 003AF598  7C 1C 00 40 */	cmplw r28, r0
/* 803B981C 003AF59C  40 80 00 14 */	bge lbl_803B9830
/* 803B9820 003AF5A0  80 19 00 0C */	lwz r0, 0xc(r25)
/* 803B9824 003AF5A4  3B 9C 00 01 */	addi r28, r28, 1
/* 803B9828 003AF5A8  7F BD 02 14 */	add r29, r29, r0
/* 803B982C 003AF5AC  48 00 00 14 */	b lbl_803B9840
lbl_803B9830:
/* 803B9830 003AF5B0  2C 1E 00 00 */	cmpwi r30, 0
/* 803B9834 003AF5B4  41 82 00 0C */	beq lbl_803B9840
/* 803B9838 003AF5B8  7F C3 F3 78 */	mr r3, r30
/* 803B983C 003AF5BC  48 00 00 70 */	b lbl_803B98AC
lbl_803B9840:
/* 803B9840 003AF5C0  2C 1E 00 00 */	cmpwi r30, 0
/* 803B9844 003AF5C4  40 82 FF 84 */	bne lbl_803B97C8
/* 803B9848 003AF5C8  48 00 00 2C */	b lbl_803B9874
lbl_803B984C:
/* 803B984C 003AF5CC  80 04 00 04 */	lwz r0, 4(r4)
/* 803B9850 003AF5D0  80 A4 00 08 */	lwz r5, 8(r4)
/* 803B9854 003AF5D4  7C 00 28 50 */	subf r0, r0, r5
/* 803B9858 003AF5D8  7C 00 3E 30 */	sraw r0, r0, r7
/* 803B985C 003AF5DC  7C 06 02 14 */	add r0, r6, r0
/* 803B9860 003AF5E0  7C 1D 00 40 */	cmplw r29, r0
/* 803B9864 003AF5E4  41 82 00 10 */	beq lbl_803B9874
/* 803B9868 003AF5E8  A0 03 00 00 */	lhz r0, 0(r3)
/* 803B986C 003AF5EC  7C 05 02 14 */	add r0, r5, r0
/* 803B9870 003AF5F0  90 04 00 08 */	stw r0, 8(r4)
lbl_803B9874:
/* 803B9874 003AF5F4  A0 B9 00 00 */	lhz r5, 0(r25)
/* 803B9878 003AF5F8  7F C3 F3 78 */	mr r3, r30
/* 803B987C 003AF5FC  80 9B 00 00 */	lwz r4, 0(r27)
/* 803B9880 003AF600  38 05 FF FF */	addi r0, r5, -1
/* 803B9884 003AF604  80 84 00 08 */	lwz r4, 8(r4)
/* 803B9888 003AF608  7F E0 00 38 */	and r0, r31, r0
/* 803B988C 003AF60C  7C A4 00 2E */	lwzx r5, r4, r0
/* 803B9890 003AF610  54 A4 42 1E */	rlwinm r4, r5, 8, 8, 0xf
/* 803B9894 003AF614  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 803B9898 003AF618  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 803B989C 003AF61C  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 803B98A0 003AF620  7C 80 03 78 */	or r0, r4, r0
/* 803B98A4 003AF624  54 00 01 3E */	clrlwi r0, r0, 4
/* 803B98A8 003AF628  90 1A 00 00 */	stw r0, 0(r26)
lbl_803B98AC:
/* 803B98AC 003AF62C  39 61 00 30 */	addi r11, r1, 0x30
/* 803B98B0 003AF630  48 03 7A B5 */	bl _restgpr_25
/* 803B98B4 003AF634  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B98B8 003AF638  7C 08 03 A6 */	mtlr r0
/* 803B98BC 003AF63C  38 21 00 30 */	addi r1, r1, 0x30
/* 803B98C0 003AF640  4E 80 00 20 */	blr 

.global VFiPFFAT32_WriteFATEntry
VFiPFFAT32_WriteFATEntry:
/* 803B98C4 003AF644  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B98C8 003AF648  7C 08 02 A6 */	mflr r0
/* 803B98CC 003AF64C  2C 03 00 00 */	cmpwi r3, 0
/* 803B98D0 003AF650  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B98D4 003AF654  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B98D8 003AF658  7C BF 2B 78 */	mr r31, r5
/* 803B98DC 003AF65C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B98E0 003AF660  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803B98E4 003AF664  93 81 00 10 */	stw r28, 0x10(r1)
/* 803B98E8 003AF668  7C 7C 1B 78 */	mr r28, r3
/* 803B98EC 003AF66C  40 82 00 0C */	bne lbl_803B98F8
/* 803B98F0 003AF670  38 60 00 0A */	li r3, 0xa
/* 803B98F4 003AF674  48 00 00 D0 */	b lbl_803B99C4
lbl_803B98F8:
/* 803B98F8 003AF678  28 04 00 02 */	cmplwi r4, 2
/* 803B98FC 003AF67C  41 80 00 14 */	blt lbl_803B9910
/* 803B9900 003AF680  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 803B9904 003AF684  38 05 00 02 */	addi r0, r5, 2
/* 803B9908 003AF688  7C 04 00 40 */	cmplw r4, r0
/* 803B990C 003AF68C  41 80 00 1C */	blt lbl_803B9928
lbl_803B9910:
/* 803B9910 003AF690  2C 04 00 00 */	cmpwi r4, 0
/* 803B9914 003AF694  41 82 00 14 */	beq lbl_803B9928
/* 803B9918 003AF698  28 04 00 01 */	cmplwi r4, 1
/* 803B991C 003AF69C  41 82 00 0C */	beq lbl_803B9928
/* 803B9920 003AF6A0  38 60 00 0E */	li r3, 0xe
/* 803B9924 003AF6A4  48 00 00 A0 */	b lbl_803B99C4
lbl_803B9928:
/* 803B9928 003AF6A8  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803B992C 003AF6AC  54 88 10 3A */	slwi r8, r4, 2
/* 803B9930 003AF6B0  88 C3 00 20 */	lbz r6, 0x20(r3)
/* 803B9934 003AF6B4  38 81 00 08 */	addi r4, r1, 8
/* 803B9938 003AF6B8  38 05 FF FF */	addi r0, r5, -1
/* 803B993C 003AF6BC  80 E3 00 28 */	lwz r7, 0x28(r3)
/* 803B9940 003AF6C0  7D 05 34 30 */	srw r5, r8, r6
/* 803B9944 003AF6C4  7F 83 E3 78 */	mr r3, r28
/* 803B9948 003AF6C8  7C A7 2A 14 */	add r5, r7, r5
/* 803B994C 003AF6CC  7D 00 00 38 */	and r0, r8, r0
/* 803B9950 003AF6D0  54 BE 04 3E */	clrlwi r30, r5, 0x10
/* 803B9954 003AF6D4  38 E0 00 04 */	li r7, 4
/* 803B9958 003AF6D8  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803B995C 003AF6DC  7F C5 F3 78 */	mr r5, r30
/* 803B9960 003AF6E0  7F A6 EB 78 */	mr r6, r29
/* 803B9964 003AF6E4  48 00 66 65 */	bl VFiPFSEC_ReadFAT
/* 803B9968 003AF6E8  2C 03 00 00 */	cmpwi r3, 0
/* 803B996C 003AF6EC  41 82 00 08 */	beq lbl_803B9974
/* 803B9970 003AF6F0  48 00 00 54 */	b lbl_803B99C4
lbl_803B9974:
/* 803B9974 003AF6F4  80 E1 00 08 */	lwz r7, 8(r1)
/* 803B9978 003AF6F8  7F 83 E3 78 */	mr r3, r28
/* 803B997C 003AF6FC  7F C5 F3 78 */	mr r5, r30
/* 803B9980 003AF700  7F A6 EB 78 */	mr r6, r29
/* 803B9984 003AF704  54 E8 42 1E */	rlwinm r8, r7, 8, 8, 0xf
/* 803B9988 003AF708  54 E0 C4 2E */	rlwinm r0, r7, 0x18, 0x10, 0x17
/* 803B998C 003AF70C  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 803B9990 003AF710  38 81 00 08 */	addi r4, r1, 8
/* 803B9994 003AF714  50 E0 46 3E */	rlwimi r0, r7, 8, 0x18, 0x1f
/* 803B9998 003AF718  38 E0 00 04 */	li r7, 4
/* 803B999C 003AF71C  7D 00 03 78 */	or r0, r8, r0
/* 803B99A0 003AF720  54 09 00 06 */	rlwinm r9, r0, 0, 0, 3
/* 803B99A4 003AF724  53 E9 01 3E */	rlwimi r9, r31, 0, 4, 0x1f
/* 803B99A8 003AF728  55 28 42 1E */	rlwinm r8, r9, 8, 8, 0xf
/* 803B99AC 003AF72C  55 20 C4 2E */	rlwinm r0, r9, 0x18, 0x10, 0x17
/* 803B99B0 003AF730  51 28 C0 0E */	rlwimi r8, r9, 0x18, 0, 7
/* 803B99B4 003AF734  51 20 46 3E */	rlwimi r0, r9, 8, 0x18, 0x1f
/* 803B99B8 003AF738  7D 00 03 78 */	or r0, r8, r0
/* 803B99BC 003AF73C  90 01 00 08 */	stw r0, 8(r1)
/* 803B99C0 003AF740  48 00 69 A1 */	bl VFiPFSEC_WriteFAT
lbl_803B99C4:
/* 803B99C4 003AF744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B99C8 003AF748  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B99CC 003AF74C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B99D0 003AF750  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803B99D4 003AF754  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803B99D8 003AF758  7C 08 03 A6 */	mtlr r0
/* 803B99DC 003AF75C  38 21 00 20 */	addi r1, r1, 0x20
/* 803B99E0 003AF760  4E 80 00 20 */	blr 

.global VFiPFFAT32_WriteFATEntryPage
VFiPFFAT32_WriteFATEntryPage:
/* 803B99E4 003AF764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B99E8 003AF768  7C 08 02 A6 */	mflr r0
/* 803B99EC 003AF76C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B99F0 003AF770  39 61 00 30 */	addi r11, r1, 0x30
/* 803B99F4 003AF774  48 03 79 25 */	bl _savegpr_25
/* 803B99F8 003AF778  2C 03 00 00 */	cmpwi r3, 0
/* 803B99FC 003AF77C  7C 7A 1B 78 */	mr r26, r3
/* 803B9A00 003AF780  7C BB 2B 78 */	mr r27, r5
/* 803B9A04 003AF784  7C DC 33 78 */	mr r28, r6
/* 803B9A08 003AF788  3B C0 00 00 */	li r30, 0
/* 803B9A0C 003AF78C  40 82 00 0C */	bne lbl_803B9A18
/* 803B9A10 003AF790  38 60 00 0A */	li r3, 0xa
/* 803B9A14 003AF794  48 00 01 98 */	b lbl_803B9BAC
lbl_803B9A18:
/* 803B9A18 003AF798  28 04 00 02 */	cmplwi r4, 2
/* 803B9A1C 003AF79C  41 80 00 14 */	blt lbl_803B9A30
/* 803B9A20 003AF7A0  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 803B9A24 003AF7A4  38 05 00 02 */	addi r0, r5, 2
/* 803B9A28 003AF7A8  7C 04 00 40 */	cmplw r4, r0
/* 803B9A2C 003AF7AC  41 80 00 1C */	blt lbl_803B9A48
lbl_803B9A30:
/* 803B9A30 003AF7B0  2C 04 00 00 */	cmpwi r4, 0
/* 803B9A34 003AF7B4  41 82 00 14 */	beq lbl_803B9A48
/* 803B9A38 003AF7B8  28 04 00 01 */	cmplwi r4, 1
/* 803B9A3C 003AF7BC  41 82 00 0C */	beq lbl_803B9A48
/* 803B9A40 003AF7C0  38 60 00 0E */	li r3, 0xe
/* 803B9A44 003AF7C4  48 00 01 68 */	b lbl_803B9BAC
lbl_803B9A48:
/* 803B9A48 003AF7C8  88 E3 00 20 */	lbz r7, 0x20(r3)
/* 803B9A4C 003AF7CC  54 88 10 3A */	slwi r8, r4, 2
/* 803B9A50 003AF7D0  80 86 00 00 */	lwz r4, 0(r6)
/* 803B9A54 003AF7D4  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 803B9A58 003AF7D8  7D 00 3C 30 */	srw r0, r8, r7
/* 803B9A5C 003AF7DC  A0 C3 00 00 */	lhz r6, 0(r3)
/* 803B9A60 003AF7E0  7C 05 02 14 */	add r0, r5, r0
/* 803B9A64 003AF7E4  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 803B9A68 003AF7E8  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803B9A6C 003AF7EC  38 06 FF FF */	addi r0, r6, -1
/* 803B9A70 003AF7F0  7D 00 00 38 */	and r0, r8, r0
/* 803B9A74 003AF7F4  7C 05 E8 40 */	cmplw r5, r29
/* 803B9A78 003AF7F8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 803B9A7C 003AF7FC  41 81 00 14 */	bgt lbl_803B9A90
/* 803B9A80 003AF800  80 03 16 00 */	lwz r0, 0x1600(r3)
/* 803B9A84 003AF804  7C 05 02 14 */	add r0, r5, r0
/* 803B9A88 003AF808  7C 00 E8 40 */	cmplw r0, r29
/* 803B9A8C 003AF80C  41 81 00 B0 */	bgt lbl_803B9B3C
lbl_803B9A90:
/* 803B9A90 003AF810  7F 43 D3 78 */	mr r3, r26
/* 803B9A94 003AF814  4B FF D4 ED */	bl VFiPFFAT_UpdateFATEntry
/* 803B9A98 003AF818  2C 03 00 00 */	cmpwi r3, 0
/* 803B9A9C 003AF81C  41 82 00 08 */	beq lbl_803B9AA4
/* 803B9AA0 003AF820  48 00 01 0C */	b lbl_803B9BAC
lbl_803B9AA4:
/* 803B9AA4 003AF824  A0 7A 00 18 */	lhz r3, 0x18(r26)
/* 803B9AA8 003AF828  3B 20 00 01 */	li r25, 1
/* 803B9AAC 003AF82C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 803B9AB0 003AF830  41 82 00 08 */	beq lbl_803B9AB8
/* 803B9AB4 003AF834  54 79 07 7E */	clrlwi r25, r3, 0x1d
lbl_803B9AB8:
/* 803B9AB8 003AF838  7F 43 D3 78 */	mr r3, r26
/* 803B9ABC 003AF83C  7F A4 EB 78 */	mr r4, r29
/* 803B9AC0 003AF840  7F 85 E3 78 */	mr r5, r28
/* 803B9AC4 003AF844  4B FF 64 19 */	bl VFiPFCACHE_ReadFATPage
/* 803B9AC8 003AF848  2C 03 10 00 */	cmpwi r3, 0x1000
/* 803B9ACC 003AF84C  7C 7E 1B 78 */	mr r30, r3
/* 803B9AD0 003AF850  40 82 00 50 */	bne lbl_803B9B20
/* 803B9AD4 003AF854  81 9A 18 90 */	lwz r12, 0x1890(r26)
/* 803B9AD8 003AF858  2C 0C 00 00 */	cmpwi r12, 0
/* 803B9ADC 003AF85C  41 82 00 44 */	beq lbl_803B9B20
/* 803B9AE0 003AF860  80 7A 18 70 */	lwz r3, 0x1870(r26)
/* 803B9AE4 003AF864  7D 89 03 A6 */	mtctr r12
/* 803B9AE8 003AF868  4E 80 04 21 */	bctrl 
/* 803B9AEC 003AF86C  2C 03 00 00 */	cmpwi r3, 0
/* 803B9AF0 003AF870  41 82 00 40 */	beq lbl_803B9B30
/* 803B9AF4 003AF874  2C 03 00 01 */	cmpwi r3, 1
/* 803B9AF8 003AF878  40 82 00 28 */	bne lbl_803B9B20
/* 803B9AFC 003AF87C  88 1A 00 22 */	lbz r0, 0x22(r26)
/* 803B9B00 003AF880  28 00 00 02 */	cmplwi r0, 2
/* 803B9B04 003AF884  41 80 00 1C */	blt lbl_803B9B20
/* 803B9B08 003AF888  7C 19 00 40 */	cmplw r25, r0
/* 803B9B0C 003AF88C  40 80 00 14 */	bge lbl_803B9B20
/* 803B9B10 003AF890  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 803B9B14 003AF894  3B 39 00 01 */	addi r25, r25, 1
/* 803B9B18 003AF898  7F BD 02 14 */	add r29, r29, r0
/* 803B9B1C 003AF89C  48 00 00 14 */	b lbl_803B9B30
lbl_803B9B20:
/* 803B9B20 003AF8A0  2C 1E 00 00 */	cmpwi r30, 0
/* 803B9B24 003AF8A4  41 82 00 0C */	beq lbl_803B9B30
/* 803B9B28 003AF8A8  7F C3 F3 78 */	mr r3, r30
/* 803B9B2C 003AF8AC  48 00 00 80 */	b lbl_803B9BAC
lbl_803B9B30:
/* 803B9B30 003AF8B0  2C 1E 00 00 */	cmpwi r30, 0
/* 803B9B34 003AF8B4  40 82 FF 84 */	bne lbl_803B9AB8
/* 803B9B38 003AF8B8  48 00 00 28 */	b lbl_803B9B60
lbl_803B9B3C:
/* 803B9B3C 003AF8BC  80 04 00 04 */	lwz r0, 4(r4)
/* 803B9B40 003AF8C0  80 64 00 08 */	lwz r3, 8(r4)
/* 803B9B44 003AF8C4  7C 00 18 50 */	subf r0, r0, r3
/* 803B9B48 003AF8C8  7C 00 3E 30 */	sraw r0, r0, r7
/* 803B9B4C 003AF8CC  7C 05 02 14 */	add r0, r5, r0
/* 803B9B50 003AF8D0  7C 1D 00 40 */	cmplw r29, r0
/* 803B9B54 003AF8D4  41 82 00 0C */	beq lbl_803B9B60
/* 803B9B58 003AF8D8  7C 03 32 14 */	add r0, r3, r6
/* 803B9B5C 003AF8DC  90 04 00 08 */	stw r0, 8(r4)
lbl_803B9B60:
/* 803B9B60 003AF8E0  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B9B64 003AF8E4  80 83 00 08 */	lwz r4, 8(r3)
/* 803B9B68 003AF8E8  7C A4 F8 2E */	lwzx r5, r4, r31
/* 803B9B6C 003AF8EC  54 A3 42 1E */	rlwinm r3, r5, 8, 8, 0xf
/* 803B9B70 003AF8F0  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 803B9B74 003AF8F4  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 803B9B78 003AF8F8  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 803B9B7C 003AF8FC  7C 60 03 78 */	or r0, r3, r0
/* 803B9B80 003AF900  54 05 00 06 */	rlwinm r5, r0, 0, 0, 3
/* 803B9B84 003AF904  53 65 01 3E */	rlwimi r5, r27, 0, 4, 0x1f
/* 803B9B88 003AF908  54 A3 42 1E */	rlwinm r3, r5, 8, 8, 0xf
/* 803B9B8C 003AF90C  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 803B9B90 003AF910  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 803B9B94 003AF914  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 803B9B98 003AF918  7C 60 03 78 */	or r0, r3, r0
/* 803B9B9C 003AF91C  7C 04 F9 2E */	stwx r0, r4, r31
/* 803B9BA0 003AF920  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B9BA4 003AF924  4B FF 60 DD */	bl VFiPFCACHE_UpdateModifiedSector
/* 803B9BA8 003AF928  7F C3 F3 78 */	mr r3, r30
lbl_803B9BAC:
/* 803B9BAC 003AF92C  39 61 00 30 */	addi r11, r1, 0x30
/* 803B9BB0 003AF930  48 03 77 B5 */	bl _restgpr_25
/* 803B9BB4 003AF934  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B9BB8 003AF938  7C 08 03 A6 */	mtlr r0
/* 803B9BBC 003AF93C  38 21 00 30 */	addi r1, r1, 0x30
/* 803B9BC0 003AF940  4E 80 00 20 */	blr 

