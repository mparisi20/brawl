.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf_toupper
VFipf_toupper:
/* 803A962C 0039F3AC  2C 03 00 61 */	cmpwi r3, 0x61
/* 803A9630 0039F3B0  4D 80 00 20 */	bltlr 
/* 803A9634 0039F3B4  2C 03 00 7A */	cmpwi r3, 0x7a
/* 803A9638 0039F3B8  4D 81 00 20 */	bgtlr 
/* 803A963C 0039F3BC  38 63 FF E0 */	addi r3, r3, -32
/* 803A9640 0039F3C0  4E 80 00 20 */	blr 

.global VFipf_memcpy
VFipf_memcpy:
/* 803A9644 0039F3C4  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 803A9648 0039F3C8  7C 68 1B 78 */	mr r8, r3
/* 803A964C 0039F3CC  40 82 00 9C */	bne lbl_803A96E8
/* 803A9650 0039F3D0  54 80 07 BF */	clrlwi. r0, r4, 0x1e
/* 803A9654 0039F3D4  40 82 00 94 */	bne lbl_803A96E8
/* 803A9658 0039F3D8  28 05 00 03 */	cmplwi r5, 3
/* 803A965C 0039F3DC  54 A7 F0 BE */	srwi r7, r5, 2
/* 803A9660 0039F3E0  40 81 00 88 */	ble lbl_803A96E8
/* 803A9664 0039F3E4  54 E6 E8 FF */	rlwinm. r6, r7, 0x1d, 3, 0x1f
/* 803A9668 0039F3E8  54 E0 10 3A */	slwi r0, r7, 2
/* 803A966C 0039F3EC  7C 00 00 D0 */	neg r0, r0
/* 803A9670 0039F3F0  7C C9 03 A6 */	mtctr r6
/* 803A9674 0039F3F4  41 82 00 58 */	beq lbl_803A96CC
lbl_803A9678:
/* 803A9678 0039F3F8  80 C4 00 00 */	lwz r6, 0(r4)
/* 803A967C 0039F3FC  90 C8 00 00 */	stw r6, 0(r8)
/* 803A9680 0039F400  80 C4 00 04 */	lwz r6, 4(r4)
/* 803A9684 0039F404  90 C8 00 04 */	stw r6, 4(r8)
/* 803A9688 0039F408  80 C4 00 08 */	lwz r6, 8(r4)
/* 803A968C 0039F40C  90 C8 00 08 */	stw r6, 8(r8)
/* 803A9690 0039F410  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 803A9694 0039F414  90 C8 00 0C */	stw r6, 0xc(r8)
/* 803A9698 0039F418  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 803A969C 0039F41C  90 C8 00 10 */	stw r6, 0x10(r8)
/* 803A96A0 0039F420  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 803A96A4 0039F424  90 C8 00 14 */	stw r6, 0x14(r8)
/* 803A96A8 0039F428  80 C4 00 18 */	lwz r6, 0x18(r4)
/* 803A96AC 0039F42C  90 C8 00 18 */	stw r6, 0x18(r8)
/* 803A96B0 0039F430  80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 803A96B4 0039F434  38 84 00 20 */	addi r4, r4, 0x20
/* 803A96B8 0039F438  90 C8 00 1C */	stw r6, 0x1c(r8)
/* 803A96BC 0039F43C  39 08 00 20 */	addi r8, r8, 0x20
/* 803A96C0 0039F440  42 00 FF B8 */	bdnz lbl_803A9678
/* 803A96C4 0039F444  70 E7 00 07 */	andi. r7, r7, 7
/* 803A96C8 0039F448  41 82 00 1C */	beq lbl_803A96E4
lbl_803A96CC:
/* 803A96CC 0039F44C  7C E9 03 A6 */	mtctr r7
lbl_803A96D0:
/* 803A96D0 0039F450  80 C4 00 00 */	lwz r6, 0(r4)
/* 803A96D4 0039F454  38 84 00 04 */	addi r4, r4, 4
/* 803A96D8 0039F458  90 C8 00 00 */	stw r6, 0(r8)
/* 803A96DC 0039F45C  39 08 00 04 */	addi r8, r8, 4
/* 803A96E0 0039F460  42 00 FF F0 */	bdnz lbl_803A96D0
lbl_803A96E4:
/* 803A96E4 0039F464  7C A5 02 14 */	add r5, r5, r0
lbl_803A96E8:
/* 803A96E8 0039F468  2C 05 00 00 */	cmpwi r5, 0
/* 803A96EC 0039F46C  4D 82 00 20 */	beqlr 
/* 803A96F0 0039F470  54 A0 E8 FF */	rlwinm. r0, r5, 0x1d, 3, 0x1f
/* 803A96F4 0039F474  7C 09 03 A6 */	mtctr r0
/* 803A96F8 0039F478  41 82 00 58 */	beq lbl_803A9750
lbl_803A96FC:
/* 803A96FC 0039F47C  88 04 00 00 */	lbz r0, 0(r4)
/* 803A9700 0039F480  98 08 00 00 */	stb r0, 0(r8)
/* 803A9704 0039F484  88 04 00 01 */	lbz r0, 1(r4)
/* 803A9708 0039F488  98 08 00 01 */	stb r0, 1(r8)
/* 803A970C 0039F48C  88 04 00 02 */	lbz r0, 2(r4)
/* 803A9710 0039F490  98 08 00 02 */	stb r0, 2(r8)
/* 803A9714 0039F494  88 04 00 03 */	lbz r0, 3(r4)
/* 803A9718 0039F498  98 08 00 03 */	stb r0, 3(r8)
/* 803A971C 0039F49C  88 04 00 04 */	lbz r0, 4(r4)
/* 803A9720 0039F4A0  98 08 00 04 */	stb r0, 4(r8)
/* 803A9724 0039F4A4  88 04 00 05 */	lbz r0, 5(r4)
/* 803A9728 0039F4A8  98 08 00 05 */	stb r0, 5(r8)
/* 803A972C 0039F4AC  88 04 00 06 */	lbz r0, 6(r4)
/* 803A9730 0039F4B0  98 08 00 06 */	stb r0, 6(r8)
/* 803A9734 0039F4B4  88 04 00 07 */	lbz r0, 7(r4)
/* 803A9738 0039F4B8  38 84 00 08 */	addi r4, r4, 8
/* 803A973C 0039F4BC  98 08 00 07 */	stb r0, 7(r8)
/* 803A9740 0039F4C0  39 08 00 08 */	addi r8, r8, 8
/* 803A9744 0039F4C4  42 00 FF B8 */	bdnz lbl_803A96FC
/* 803A9748 0039F4C8  70 A5 00 07 */	andi. r5, r5, 7
/* 803A974C 0039F4CC  4D 82 00 20 */	beqlr 
lbl_803A9750:
/* 803A9750 0039F4D0  7C A9 03 A6 */	mtctr r5
lbl_803A9754:
/* 803A9754 0039F4D4  88 04 00 00 */	lbz r0, 0(r4)
/* 803A9758 0039F4D8  38 84 00 01 */	addi r4, r4, 1
/* 803A975C 0039F4DC  98 08 00 00 */	stb r0, 0(r8)
/* 803A9760 0039F4E0  39 08 00 01 */	addi r8, r8, 1
/* 803A9764 0039F4E4  42 00 FF F0 */	bdnz lbl_803A9754
/* 803A9768 0039F4E8  4E 80 00 20 */	blr 

.global VFipf_memset
VFipf_memset:
/* 803A976C 0039F4EC  7C 69 1B 78 */	mr r9, r3
/* 803A9770 0039F4F0  48 00 00 10 */	b lbl_803A9780
lbl_803A9774:
/* 803A9774 0039F4F4  98 89 00 00 */	stb r4, 0(r9)
/* 803A9778 0039F4F8  39 29 00 01 */	addi r9, r9, 1
/* 803A977C 0039F4FC  38 A5 FF FF */	addi r5, r5, -1
lbl_803A9780:
/* 803A9780 0039F500  55 20 07 BF */	clrlwi. r0, r9, 0x1e
/* 803A9784 0039F504  41 82 00 0C */	beq lbl_803A9790
/* 803A9788 0039F508  2C 05 00 00 */	cmpwi r5, 0
/* 803A978C 0039F50C  40 82 FF E8 */	bne lbl_803A9774
lbl_803A9790:
/* 803A9790 0039F510  54 87 40 2E */	slwi r7, r4, 8
/* 803A9794 0039F514  28 05 00 03 */	cmplwi r5, 3
/* 803A9798 0039F518  7C 88 3B 78 */	or r8, r4, r7
/* 803A979C 0039F51C  54 86 C0 0E */	slwi r6, r4, 0x18
/* 803A97A0 0039F520  54 80 80 1E */	slwi r0, r4, 0x10
/* 803A97A4 0039F524  54 A7 F0 BE */	srwi r7, r5, 2
/* 803A97A8 0039F528  7C C0 03 78 */	or r0, r6, r0
/* 803A97AC 0039F52C  7D 08 03 78 */	or r8, r8, r0
/* 803A97B0 0039F530  40 81 00 5C */	ble lbl_803A980C
/* 803A97B4 0039F534  54 E6 E8 FF */	rlwinm. r6, r7, 0x1d, 3, 0x1f
/* 803A97B8 0039F538  54 E0 10 3A */	slwi r0, r7, 2
/* 803A97BC 0039F53C  7C 00 00 D0 */	neg r0, r0
/* 803A97C0 0039F540  7C C9 03 A6 */	mtctr r6
/* 803A97C4 0039F544  41 82 00 34 */	beq lbl_803A97F8
lbl_803A97C8:
/* 803A97C8 0039F548  91 09 00 00 */	stw r8, 0(r9)
/* 803A97CC 0039F54C  91 09 00 04 */	stw r8, 4(r9)
/* 803A97D0 0039F550  91 09 00 08 */	stw r8, 8(r9)
/* 803A97D4 0039F554  91 09 00 0C */	stw r8, 0xc(r9)
/* 803A97D8 0039F558  91 09 00 10 */	stw r8, 0x10(r9)
/* 803A97DC 0039F55C  91 09 00 14 */	stw r8, 0x14(r9)
/* 803A97E0 0039F560  91 09 00 18 */	stw r8, 0x18(r9)
/* 803A97E4 0039F564  91 09 00 1C */	stw r8, 0x1c(r9)
/* 803A97E8 0039F568  39 29 00 20 */	addi r9, r9, 0x20
/* 803A97EC 0039F56C  42 00 FF DC */	bdnz lbl_803A97C8
/* 803A97F0 0039F570  70 E7 00 07 */	andi. r7, r7, 7
/* 803A97F4 0039F574  41 82 00 14 */	beq lbl_803A9808
lbl_803A97F8:
/* 803A97F8 0039F578  7C E9 03 A6 */	mtctr r7
lbl_803A97FC:
/* 803A97FC 0039F57C  91 09 00 00 */	stw r8, 0(r9)
/* 803A9800 0039F580  39 29 00 04 */	addi r9, r9, 4
/* 803A9804 0039F584  42 00 FF F8 */	bdnz lbl_803A97FC
lbl_803A9808:
/* 803A9808 0039F588  7C A5 02 14 */	add r5, r5, r0
lbl_803A980C:
/* 803A980C 0039F58C  2C 05 00 00 */	cmpwi r5, 0
/* 803A9810 0039F590  4D 82 00 20 */	beqlr 
/* 803A9814 0039F594  54 A0 E8 FF */	rlwinm. r0, r5, 0x1d, 3, 0x1f
/* 803A9818 0039F598  7C 09 03 A6 */	mtctr r0
/* 803A981C 0039F59C  41 82 00 34 */	beq lbl_803A9850
lbl_803A9820:
/* 803A9820 0039F5A0  98 89 00 00 */	stb r4, 0(r9)
/* 803A9824 0039F5A4  98 89 00 01 */	stb r4, 1(r9)
/* 803A9828 0039F5A8  98 89 00 02 */	stb r4, 2(r9)
/* 803A982C 0039F5AC  98 89 00 03 */	stb r4, 3(r9)
/* 803A9830 0039F5B0  98 89 00 04 */	stb r4, 4(r9)
/* 803A9834 0039F5B4  98 89 00 05 */	stb r4, 5(r9)
/* 803A9838 0039F5B8  98 89 00 06 */	stb r4, 6(r9)
/* 803A983C 0039F5BC  98 89 00 07 */	stb r4, 7(r9)
/* 803A9840 0039F5C0  39 29 00 08 */	addi r9, r9, 8
/* 803A9844 0039F5C4  42 00 FF DC */	bdnz lbl_803A9820
/* 803A9848 0039F5C8  70 A5 00 07 */	andi. r5, r5, 7
/* 803A984C 0039F5CC  4D 82 00 20 */	beqlr 
lbl_803A9850:
/* 803A9850 0039F5D0  7C A9 03 A6 */	mtctr r5
lbl_803A9854:
/* 803A9854 0039F5D4  98 89 00 00 */	stb r4, 0(r9)
/* 803A9858 0039F5D8  39 29 00 01 */	addi r9, r9, 1
/* 803A985C 0039F5DC  42 00 FF F8 */	bdnz lbl_803A9854
/* 803A9860 0039F5E0  4E 80 00 20 */	blr 

.global VFipf_strlen
VFipf_strlen:
/* 803A9864 0039F5E4  7C 64 1B 78 */	mr r4, r3
/* 803A9868 0039F5E8  48 00 00 08 */	b lbl_803A9870
lbl_803A986C:
/* 803A986C 0039F5EC  38 84 00 01 */	addi r4, r4, 1
lbl_803A9870:
/* 803A9870 0039F5F0  88 04 00 00 */	lbz r0, 0(r4)
/* 803A9874 0039F5F4  7C 00 07 75 */	extsb. r0, r0
/* 803A9878 0039F5F8  40 82 FF F4 */	bne lbl_803A986C
/* 803A987C 0039F5FC  7C 63 20 50 */	subf r3, r3, r4
/* 803A9880 0039F600  4E 80 00 20 */	blr 

.global VFipf_strcpy
VFipf_strcpy:
/* 803A9884 0039F604  7C 66 1B 78 */	mr r6, r3
/* 803A9888 0039F608  48 00 00 0C */	b lbl_803A9894
lbl_803A988C:
/* 803A988C 0039F60C  38 84 00 01 */	addi r4, r4, 1
/* 803A9890 0039F610  38 C6 00 01 */	addi r6, r6, 1
lbl_803A9894:
/* 803A9894 0039F614  88 A4 00 00 */	lbz r5, 0(r4)
/* 803A9898 0039F618  7C A0 07 75 */	extsb. r0, r5
/* 803A989C 0039F61C  98 A6 00 00 */	stb r5, 0(r6)
/* 803A98A0 0039F620  40 82 FF EC */	bne lbl_803A988C
/* 803A98A4 0039F624  4E 80 00 20 */	blr 

.global VFipf_strcmp
VFipf_strcmp:
/* 803A98A8 0039F628  48 00 00 0C */	b lbl_803A98B4
lbl_803A98AC:
/* 803A98AC 0039F62C  38 63 00 01 */	addi r3, r3, 1
/* 803A98B0 0039F630  38 84 00 01 */	addi r4, r4, 1
lbl_803A98B4:
/* 803A98B4 0039F634  88 A3 00 00 */	lbz r5, 0(r3)
/* 803A98B8 0039F638  2C 05 00 00 */	cmpwi r5, 0
/* 803A98BC 0039F63C  41 82 00 18 */	beq lbl_803A98D4
/* 803A98C0 0039F640  88 04 00 00 */	lbz r0, 0(r4)
/* 803A98C4 0039F644  2C 00 00 00 */	cmpwi r0, 0
/* 803A98C8 0039F648  41 82 00 0C */	beq lbl_803A98D4
/* 803A98CC 0039F64C  7C 05 00 40 */	cmplw r5, r0
/* 803A98D0 0039F650  41 82 FF DC */	beq lbl_803A98AC
lbl_803A98D4:
/* 803A98D4 0039F654  88 04 00 00 */	lbz r0, 0(r4)
/* 803A98D8 0039F658  7C 60 28 50 */	subf r3, r0, r5
/* 803A98DC 0039F65C  4E 80 00 20 */	blr 

.global VFipf_strncmp
VFipf_strncmp:
/* 803A98E0 0039F660  7C A9 03 A6 */	mtctr r5
/* 803A98E4 0039F664  2C 05 00 00 */	cmpwi r5, 0
/* 803A98E8 0039F668  41 82 00 3C */	beq lbl_803A9924
lbl_803A98EC:
/* 803A98EC 0039F66C  88 A3 00 00 */	lbz r5, 0(r3)
/* 803A98F0 0039F670  2C 05 00 00 */	cmpwi r5, 0
/* 803A98F4 0039F674  41 82 00 18 */	beq lbl_803A990C
/* 803A98F8 0039F678  88 04 00 00 */	lbz r0, 0(r4)
/* 803A98FC 0039F67C  2C 00 00 00 */	cmpwi r0, 0
/* 803A9900 0039F680  41 82 00 0C */	beq lbl_803A990C
/* 803A9904 0039F684  7C 05 00 40 */	cmplw r5, r0
/* 803A9908 0039F688  41 82 00 10 */	beq lbl_803A9918
lbl_803A990C:
/* 803A990C 0039F68C  88 04 00 00 */	lbz r0, 0(r4)
/* 803A9910 0039F690  7C 60 28 50 */	subf r3, r0, r5
/* 803A9914 0039F694  4E 80 00 20 */	blr 
lbl_803A9918:
/* 803A9918 0039F698  38 63 00 01 */	addi r3, r3, 1
/* 803A991C 0039F69C  38 84 00 01 */	addi r4, r4, 1
/* 803A9920 0039F6A0  42 00 FF CC */	bdnz lbl_803A98EC
lbl_803A9924:
/* 803A9924 0039F6A4  38 60 00 00 */	li r3, 0
/* 803A9928 0039F6A8  4E 80 00 20 */	blr 

