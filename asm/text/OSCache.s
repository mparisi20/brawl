.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DCEnable
DCEnable:
/* 801D76A8 001CD428  7C 00 04 AC */	sync 0
/* 801D76AC 001CD42C  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 801D76B0 001CD430  60 63 40 00 */	ori r3, r3, 0x4000
/* 801D76B4 001CD434  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 801D76B8 001CD438  4E 80 00 20 */	blr 

.global DCInvalidateRange
DCInvalidateRange:
/* 801D76BC 001CD43C  28 04 00 00 */	cmplwi r4, 0
/* 801D76C0 001CD440  4C 81 00 20 */	blelr 
/* 801D76C4 001CD444  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 801D76C8 001CD448  7C 84 2A 14 */	add r4, r4, r5
/* 801D76CC 001CD44C  38 84 00 1F */	addi r4, r4, 0x1f
/* 801D76D0 001CD450  54 84 D9 7E */	srwi r4, r4, 5
/* 801D76D4 001CD454  7C 89 03 A6 */	mtctr r4
lbl_801D76D8:
/* 801D76D8 001CD458  7C 00 1B AC */	dcbi 0, r3
/* 801D76DC 001CD45C  38 63 00 20 */	addi r3, r3, 0x20
/* 801D76E0 001CD460  42 00 FF F8 */	bdnz lbl_801D76D8
/* 801D76E4 001CD464  4E 80 00 20 */	blr 

.global DCFlushRange
DCFlushRange:
/* 801D76E8 001CD468  28 04 00 00 */	cmplwi r4, 0
/* 801D76EC 001CD46C  4C 81 00 20 */	blelr 
/* 801D76F0 001CD470  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 801D76F4 001CD474  7C 84 2A 14 */	add r4, r4, r5
/* 801D76F8 001CD478  38 84 00 1F */	addi r4, r4, 0x1f
/* 801D76FC 001CD47C  54 84 D9 7E */	srwi r4, r4, 5
/* 801D7700 001CD480  7C 89 03 A6 */	mtctr r4
lbl_801D7704:
/* 801D7704 001CD484  7C 00 18 AC */	dcbf 0, r3
/* 801D7708 001CD488  38 63 00 20 */	addi r3, r3, 0x20
/* 801D770C 001CD48C  42 00 FF F8 */	bdnz lbl_801D7704
/* 801D7710 001CD490  44 00 00 02 */	sc 
/* 801D7714 001CD494  4E 80 00 20 */	blr 

.global DCStoreRange
DCStoreRange:
/* 801D7718 001CD498  28 04 00 00 */	cmplwi r4, 0
/* 801D771C 001CD49C  4C 81 00 20 */	blelr 
/* 801D7720 001CD4A0  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 801D7724 001CD4A4  7C 84 2A 14 */	add r4, r4, r5
/* 801D7728 001CD4A8  38 84 00 1F */	addi r4, r4, 0x1f
/* 801D772C 001CD4AC  54 84 D9 7E */	srwi r4, r4, 5
/* 801D7730 001CD4B0  7C 89 03 A6 */	mtctr r4
lbl_801D7734:
/* 801D7734 001CD4B4  7C 00 18 6C */	dcbst 0, r3
/* 801D7738 001CD4B8  38 63 00 20 */	addi r3, r3, 0x20
/* 801D773C 001CD4BC  42 00 FF F8 */	bdnz lbl_801D7734
/* 801D7740 001CD4C0  44 00 00 02 */	sc 
/* 801D7744 001CD4C4  4E 80 00 20 */	blr 

.global DCFlushRangeNoSync
DCFlushRangeNoSync:
/* 801D7748 001CD4C8  28 04 00 00 */	cmplwi r4, 0
/* 801D774C 001CD4CC  4C 81 00 20 */	blelr 
/* 801D7750 001CD4D0  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 801D7754 001CD4D4  7C 84 2A 14 */	add r4, r4, r5
/* 801D7758 001CD4D8  38 84 00 1F */	addi r4, r4, 0x1f
/* 801D775C 001CD4DC  54 84 D9 7E */	srwi r4, r4, 5
/* 801D7760 001CD4E0  7C 89 03 A6 */	mtctr r4
lbl_801D7764:
/* 801D7764 001CD4E4  7C 00 18 AC */	dcbf 0, r3
/* 801D7768 001CD4E8  38 63 00 20 */	addi r3, r3, 0x20
/* 801D776C 001CD4EC  42 00 FF F8 */	bdnz lbl_801D7764
/* 801D7770 001CD4F0  4E 80 00 20 */	blr 

.global DCStoreRangeNoSync
DCStoreRangeNoSync:
/* 801D7774 001CD4F4  28 04 00 00 */	cmplwi r4, 0
/* 801D7778 001CD4F8  4C 81 00 20 */	blelr 
/* 801D777C 001CD4FC  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 801D7780 001CD500  7C 84 2A 14 */	add r4, r4, r5
/* 801D7784 001CD504  38 84 00 1F */	addi r4, r4, 0x1f
/* 801D7788 001CD508  54 84 D9 7E */	srwi r4, r4, 5
/* 801D778C 001CD50C  7C 89 03 A6 */	mtctr r4
lbl_801D7790:
/* 801D7790 001CD510  7C 00 18 6C */	dcbst 0, r3
/* 801D7794 001CD514  38 63 00 20 */	addi r3, r3, 0x20
/* 801D7798 001CD518  42 00 FF F8 */	bdnz lbl_801D7790
/* 801D779C 001CD51C  4E 80 00 20 */	blr 

.global DCZeroRange
DCZeroRange:
/* 801D77A0 001CD520  28 04 00 00 */	cmplwi r4, 0
/* 801D77A4 001CD524  4C 81 00 20 */	blelr 
/* 801D77A8 001CD528  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 801D77AC 001CD52C  7C 84 2A 14 */	add r4, r4, r5
/* 801D77B0 001CD530  38 84 00 1F */	addi r4, r4, 0x1f
/* 801D77B4 001CD534  54 84 D9 7E */	srwi r4, r4, 5
/* 801D77B8 001CD538  7C 89 03 A6 */	mtctr r4
lbl_801D77BC:
/* 801D77BC 001CD53C  7C 00 1F EC */	dcbz 0, r3
/* 801D77C0 001CD540  38 63 00 20 */	addi r3, r3, 0x20
/* 801D77C4 001CD544  42 00 FF F8 */	bdnz lbl_801D77BC
/* 801D77C8 001CD548  4E 80 00 20 */	blr 

.global ICInvalidateRange
ICInvalidateRange:
/* 801D77CC 001CD54C  28 04 00 00 */	cmplwi r4, 0
/* 801D77D0 001CD550  4C 81 00 20 */	blelr 
/* 801D77D4 001CD554  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 801D77D8 001CD558  7C 84 2A 14 */	add r4, r4, r5
/* 801D77DC 001CD55C  38 84 00 1F */	addi r4, r4, 0x1f
/* 801D77E0 001CD560  54 84 D9 7E */	srwi r4, r4, 5
/* 801D77E4 001CD564  7C 89 03 A6 */	mtctr r4
lbl_801D77E8:
/* 801D77E8 001CD568  7C 00 1F AC */	icbi 0, r3
/* 801D77EC 001CD56C  38 63 00 20 */	addi r3, r3, 0x20
/* 801D77F0 001CD570  42 00 FF F8 */	bdnz lbl_801D77E8
/* 801D77F4 001CD574  7C 00 04 AC */	sync 0
/* 801D77F8 001CD578  4C 00 01 2C */	isync 
/* 801D77FC 001CD57C  4E 80 00 20 */	blr 

.global ICFlashInvalidate
ICFlashInvalidate:
/* 801D7800 001CD580  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 801D7804 001CD584  60 63 08 00 */	ori r3, r3, 0x800
/* 801D7808 001CD588  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 801D780C 001CD58C  4E 80 00 20 */	blr 

.global ICEnable
ICEnable:
/* 801D7810 001CD590  4C 00 01 2C */	isync 
/* 801D7814 001CD594  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 801D7818 001CD598  60 63 80 00 */	ori r3, r3, 0x8000
/* 801D781C 001CD59C  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 801D7820 001CD5A0  4E 80 00 20 */	blr 

.global __LCEnable
__LCEnable:
/* 801D7824 001CD5A4  7C A0 00 A6 */	mfmsr r5
/* 801D7828 001CD5A8  60 A5 10 00 */	ori r5, r5, 0x1000
/* 801D782C 001CD5AC  7C A0 01 24 */	mtmsr r5
/* 801D7830 001CD5B0  3C 60 80 00 */	lis r3, 0x80000020@ha
/* 801D7834 001CD5B4  38 80 04 00 */	li r4, 0x400
/* 801D7838 001CD5B8  7C 89 03 A6 */	mtctr r4
lbl_801D783C:
/* 801D783C 001CD5BC  7C 00 1A 2C */	dcbt 0, r3
/* 801D7840 001CD5C0  7C 00 18 6C */	dcbst 0, r3
/* 801D7844 001CD5C4  38 63 00 20 */	addi r3, r3, 0x80000020@l
/* 801D7848 001CD5C8  42 00 FF F4 */	bdnz lbl_801D783C
/* 801D784C 001CD5CC  7C 98 E2 A6 */	mfspr r4, 0x398
/* 801D7850 001CD5D0  64 84 10 0F */	oris r4, r4, 0x100f
/* 801D7854 001CD5D4  7C 98 E3 A6 */	mtspr 0x398, r4
/* 801D7858 001CD5D8  60 00 00 00 */	nop 
/* 801D785C 001CD5DC  60 00 00 00 */	nop 
/* 801D7860 001CD5E0  60 00 00 00 */	nop 
/* 801D7864 001CD5E4  60 00 00 00 */	nop 
/* 801D7868 001CD5E8  60 00 00 00 */	nop 
/* 801D786C 001CD5EC  60 00 00 00 */	nop 
/* 801D7870 001CD5F0  60 00 00 00 */	nop 
/* 801D7874 001CD5F4  60 00 00 00 */	nop 
/* 801D7878 001CD5F8  60 00 00 00 */	nop 
/* 801D787C 001CD5FC  60 00 00 00 */	nop 
/* 801D7880 001CD600  60 00 00 00 */	nop 
/* 801D7884 001CD604  60 00 00 00 */	nop 
/* 801D7888 001CD608  3C 60 E0 00 */	lis r3, 0xE0000002@h
/* 801D788C 001CD60C  60 63 00 02 */	ori r3, r3, 0xE0000002@l
/* 801D7890 001CD610  7C 7F 83 A6 */	mtdbatl 3, r3
/* 801D7894 001CD614  60 63 01 FE */	ori r3, r3, 0x1fe
/* 801D7898 001CD618  7C 7E 83 A6 */	mtdbatu 3, r3
/* 801D789C 001CD61C  4C 00 01 2C */	isync 
/* 801D78A0 001CD620  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 801D78A4 001CD624  38 C0 02 00 */	li r6, 0x200
/* 801D78A8 001CD628  7C C9 03 A6 */	mtctr r6
/* 801D78AC 001CD62C  38 C0 00 00 */	li r6, 0
lbl_801D78B0:
/* 801D78B0 001CD630  10 06 1F EC */	dcbz_l r6, r3
/* 801D78B4 001CD634  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 801D78B8 001CD638  42 00 FF F8 */	bdnz lbl_801D78B0
/* 801D78BC 001CD63C  60 00 00 00 */	nop 
/* 801D78C0 001CD640  60 00 00 00 */	nop 
/* 801D78C4 001CD644  60 00 00 00 */	nop 
/* 801D78C8 001CD648  60 00 00 00 */	nop 
/* 801D78CC 001CD64C  60 00 00 00 */	nop 
/* 801D78D0 001CD650  60 00 00 00 */	nop 
/* 801D78D4 001CD654  60 00 00 00 */	nop 
/* 801D78D8 001CD658  60 00 00 00 */	nop 
/* 801D78DC 001CD65C  60 00 00 00 */	nop 
/* 801D78E0 001CD660  60 00 00 00 */	nop 
/* 801D78E4 001CD664  60 00 00 00 */	nop 
/* 801D78E8 001CD668  60 00 00 00 */	nop 
/* 801D78EC 001CD66C  4E 80 00 20 */	blr 

.global LCEnable
LCEnable:
/* 801D78F0 001CD670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D78F4 001CD674  7C 08 02 A6 */	mflr r0
/* 801D78F8 001CD678  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D78FC 001CD67C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D7900 001CD680  48 00 56 11 */	bl OSDisableInterrupts
/* 801D7904 001CD684  7C 7F 1B 78 */	mr r31, r3
/* 801D7908 001CD688  4B FF FF 1D */	bl __LCEnable
/* 801D790C 001CD68C  7F E3 FB 78 */	mr r3, r31
/* 801D7910 001CD690  48 00 56 29 */	bl OSRestoreInterrupts
/* 801D7914 001CD694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7918 001CD698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D791C 001CD69C  7C 08 03 A6 */	mtlr r0
/* 801D7920 001CD6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7924 001CD6A4  4E 80 00 20 */	blr 

.global LCDisable
LCDisable:
/* 801D7928 001CD6A8  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 801D792C 001CD6AC  38 80 02 00 */	li r4, 0x200
/* 801D7930 001CD6B0  7C 89 03 A6 */	mtctr r4
lbl_801D7934:
/* 801D7934 001CD6B4  7C 00 1B AC */	dcbi 0, r3
/* 801D7938 001CD6B8  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 801D793C 001CD6BC  42 00 FF F8 */	bdnz lbl_801D7934
/* 801D7940 001CD6C0  7C 98 E2 A6 */	mfspr r4, 0x398
/* 801D7944 001CD6C4  54 84 01 04 */	rlwinm r4, r4, 0, 4, 2
/* 801D7948 001CD6C8  7C 98 E3 A6 */	mtspr 0x398, r4
/* 801D794C 001CD6CC  4E 80 00 20 */	blr 

.global LCLoadBlocks
LCLoadBlocks:
/* 801D7950 001CD6D0  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 801D7954 001CD6D4  54 84 00 FE */	clrlwi r4, r4, 3
/* 801D7958 001CD6D8  7C C6 23 78 */	or r6, r6, r4
/* 801D795C 001CD6DC  7C DA E3 A6 */	mtspr 0x39a, r6
/* 801D7960 001CD6E0  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 801D7964 001CD6E4  7C C6 1B 78 */	or r6, r6, r3
/* 801D7968 001CD6E8  60 C6 00 12 */	ori r6, r6, 0x12
/* 801D796C 001CD6EC  7C DB E3 A6 */	mtspr 0x39b, r6
/* 801D7970 001CD6F0  4E 80 00 20 */	blr 

.global LCStoreBlocks
LCStoreBlocks:
/* 801D7974 001CD6F4  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 801D7978 001CD6F8  54 63 00 FE */	clrlwi r3, r3, 3
/* 801D797C 001CD6FC  7C C6 1B 78 */	or r6, r6, r3
/* 801D7980 001CD700  7C DA E3 A6 */	mtspr 0x39a, r6
/* 801D7984 001CD704  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 801D7988 001CD708  7C C6 23 78 */	or r6, r6, r4
/* 801D798C 001CD70C  60 C6 00 02 */	ori r6, r6, 2
/* 801D7990 001CD710  7C DB E3 A6 */	mtspr 0x39b, r6
/* 801D7994 001CD714  4E 80 00 20 */	blr 

.global LCLoadData
LCLoadData:
/* 801D7998 001CD718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D799C 001CD71C  7C 08 02 A6 */	mflr r0
/* 801D79A0 001CD720  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D79A4 001CD724  38 05 00 1F */	addi r0, r5, 0x1f
/* 801D79A8 001CD728  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D79AC 001CD72C  54 1F D9 7E */	srwi r31, r0, 5
/* 801D79B0 001CD730  38 1F 00 7F */	addi r0, r31, 0x7f
/* 801D79B4 001CD734  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D79B8 001CD738  54 1E C9 FE */	srwi r30, r0, 7
/* 801D79BC 001CD73C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D79C0 001CD740  7C 9D 23 78 */	mr r29, r4
/* 801D79C4 001CD744  93 81 00 10 */	stw r28, 0x10(r1)
/* 801D79C8 001CD748  7C 7C 1B 78 */	mr r28, r3
/* 801D79CC 001CD74C  48 00 00 40 */	b lbl_801D7A0C
lbl_801D79D0:
/* 801D79D0 001CD750  28 1F 00 80 */	cmplwi r31, 0x80
/* 801D79D4 001CD754  40 80 00 1C */	bge lbl_801D79F0
/* 801D79D8 001CD758  7F 83 E3 78 */	mr r3, r28
/* 801D79DC 001CD75C  7F A4 EB 78 */	mr r4, r29
/* 801D79E0 001CD760  7F E5 FB 78 */	mr r5, r31
/* 801D79E4 001CD764  4B FF FF 6D */	bl LCLoadBlocks
/* 801D79E8 001CD768  3B E0 00 00 */	li r31, 0
/* 801D79EC 001CD76C  48 00 00 20 */	b lbl_801D7A0C
lbl_801D79F0:
/* 801D79F0 001CD770  7F 83 E3 78 */	mr r3, r28
/* 801D79F4 001CD774  7F A4 EB 78 */	mr r4, r29
/* 801D79F8 001CD778  38 A0 00 00 */	li r5, 0
/* 801D79FC 001CD77C  4B FF FF 55 */	bl LCLoadBlocks
/* 801D7A00 001CD780  3B FF FF 80 */	addi r31, r31, -128
/* 801D7A04 001CD784  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 801D7A08 001CD788  3B BD 10 00 */	addi r29, r29, 0x1000
lbl_801D7A0C:
/* 801D7A0C 001CD78C  2C 1F 00 00 */	cmpwi r31, 0
/* 801D7A10 001CD790  40 82 FF C0 */	bne lbl_801D79D0
/* 801D7A14 001CD794  7F C3 F3 78 */	mr r3, r30
/* 801D7A18 001CD798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D7A1C 001CD79C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D7A20 001CD7A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D7A24 001CD7A4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801D7A28 001CD7A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D7A2C 001CD7AC  7C 08 03 A6 */	mtlr r0
/* 801D7A30 001CD7B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801D7A34 001CD7B4  4E 80 00 20 */	blr 

.global LCStoreData
LCStoreData:
/* 801D7A38 001CD7B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7A3C 001CD7BC  7C 08 02 A6 */	mflr r0
/* 801D7A40 001CD7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7A44 001CD7C4  38 05 00 1F */	addi r0, r5, 0x1f
/* 801D7A48 001CD7C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D7A4C 001CD7CC  54 1F D9 7E */	srwi r31, r0, 5
/* 801D7A50 001CD7D0  38 1F 00 7F */	addi r0, r31, 0x7f
/* 801D7A54 001CD7D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D7A58 001CD7D8  54 1E C9 FE */	srwi r30, r0, 7
/* 801D7A5C 001CD7DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D7A60 001CD7E0  7C 9D 23 78 */	mr r29, r4
/* 801D7A64 001CD7E4  93 81 00 10 */	stw r28, 0x10(r1)
/* 801D7A68 001CD7E8  7C 7C 1B 78 */	mr r28, r3
/* 801D7A6C 001CD7EC  48 00 00 40 */	b lbl_801D7AAC
lbl_801D7A70:
/* 801D7A70 001CD7F0  28 1F 00 80 */	cmplwi r31, 0x80
/* 801D7A74 001CD7F4  40 80 00 1C */	bge lbl_801D7A90
/* 801D7A78 001CD7F8  7F 83 E3 78 */	mr r3, r28
/* 801D7A7C 001CD7FC  7F A4 EB 78 */	mr r4, r29
/* 801D7A80 001CD800  7F E5 FB 78 */	mr r5, r31
/* 801D7A84 001CD804  4B FF FE F1 */	bl LCStoreBlocks
/* 801D7A88 001CD808  3B E0 00 00 */	li r31, 0
/* 801D7A8C 001CD80C  48 00 00 20 */	b lbl_801D7AAC
lbl_801D7A90:
/* 801D7A90 001CD810  7F 83 E3 78 */	mr r3, r28
/* 801D7A94 001CD814  7F A4 EB 78 */	mr r4, r29
/* 801D7A98 001CD818  38 A0 00 00 */	li r5, 0
/* 801D7A9C 001CD81C  4B FF FE D9 */	bl LCStoreBlocks
/* 801D7AA0 001CD820  3B FF FF 80 */	addi r31, r31, -128
/* 801D7AA4 001CD824  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 801D7AA8 001CD828  3B BD 10 00 */	addi r29, r29, 0x1000
lbl_801D7AAC:
/* 801D7AAC 001CD82C  2C 1F 00 00 */	cmpwi r31, 0
/* 801D7AB0 001CD830  40 82 FF C0 */	bne lbl_801D7A70
/* 801D7AB4 001CD834  7F C3 F3 78 */	mr r3, r30
/* 801D7AB8 001CD838  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D7ABC 001CD83C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D7AC0 001CD840  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D7AC4 001CD844  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801D7AC8 001CD848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D7ACC 001CD84C  7C 08 03 A6 */	mtlr r0
/* 801D7AD0 001CD850  38 21 00 20 */	addi r1, r1, 0x20
/* 801D7AD4 001CD854  4E 80 00 20 */	blr 

.global LCQueueLength
LCQueueLength:
/* 801D7AD8 001CD858  7C 98 E2 A6 */	mfspr r4, 0x398
/* 801D7ADC 001CD85C  54 83 47 3E */	rlwinm r3, r4, 8, 0x1c, 0x1f
/* 801D7AE0 001CD860  4E 80 00 20 */	blr 

.global LCQueueWait
LCQueueWait:
/* 801D7AE4 001CD864  7C 98 E2 A6 */	mfspr r4, 0x398
/* 801D7AE8 001CD868  54 84 47 3E */	rlwinm r4, r4, 8, 0x1c, 0x1f
/* 801D7AEC 001CD86C  7C 04 18 00 */	cmpw r4, r3
/* 801D7AF0 001CD870  41 81 FF F4 */	bgt LCQueueWait
/* 801D7AF4 001CD874  4E 80 00 20 */	blr 

.global DMAErrorHandler
DMAErrorHandler:
/* 801D7AF8 001CD878  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801D7AFC 001CD87C  7C 08 02 A6 */	mflr r0
/* 801D7B00 001CD880  90 01 00 84 */	stw r0, 0x84(r1)
/* 801D7B04 001CD884  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801D7B08 001CD888  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801D7B0C 001CD88C  93 A1 00 74 */	stw r29, 0x74(r1)
/* 801D7B10 001CD890  7C 9D 23 78 */	mr r29, r4
/* 801D7B14 001CD894  40 86 00 24 */	bne cr1, lbl_801D7B38
/* 801D7B18 001CD898  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 801D7B1C 001CD89C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 801D7B20 001CD8A0  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 801D7B24 001CD8A4  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 801D7B28 001CD8A8  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 801D7B2C 001CD8AC  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 801D7B30 001CD8B0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 801D7B34 001CD8B4  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_801D7B38:
/* 801D7B38 001CD8B8  3F E0 80 46 */	lis r31, lbl_804672E8@ha
/* 801D7B3C 001CD8BC  90 61 00 08 */	stw r3, 8(r1)
/* 801D7B40 001CD8C0  3B FF 72 E8 */	addi r31, r31, lbl_804672E8@l
/* 801D7B44 001CD8C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 801D7B48 001CD8C8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801D7B4C 001CD8CC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801D7B50 001CD8D0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 801D7B54 001CD8D4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801D7B58 001CD8D8  91 21 00 20 */	stw r9, 0x20(r1)
/* 801D7B5C 001CD8DC  91 41 00 24 */	stw r10, 0x24(r1)
/* 801D7B60 001CD8E0  4B FF D5 D5 */	bl PPCMfhid2
/* 801D7B64 001CD8E4  7C 7E 1B 78 */	mr r30, r3
/* 801D7B68 001CD8E8  38 7F 00 30 */	addi r3, r31, 0x30
/* 801D7B6C 001CD8EC  4C C6 31 82 */	crclr 6
/* 801D7B70 001CD8F0  48 00 0A 91 */	bl OSReport
/* 801D7B74 001CD8F4  80 BD 01 9C */	lwz r5, 0x19c(r29)
/* 801D7B78 001CD8F8  7F C4 F3 78 */	mr r4, r30
/* 801D7B7C 001CD8FC  38 7F 00 48 */	addi r3, r31, 0x48
/* 801D7B80 001CD900  4C C6 31 82 */	crclr 6
/* 801D7B84 001CD904  48 00 0A 7D */	bl OSReport
/* 801D7B88 001CD908  57 C0 02 17 */	rlwinm. r0, r30, 0, 8, 0xb
/* 801D7B8C 001CD90C  41 82 00 10 */	beq lbl_801D7B9C
/* 801D7B90 001CD910  80 1D 01 9C */	lwz r0, 0x19c(r29)
/* 801D7B94 001CD914  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 801D7B98 001CD918  40 82 00 1C */	bne lbl_801D7BB4
lbl_801D7B9C:
/* 801D7B9C 001CD91C  38 7F 00 68 */	addi r3, r31, 0x68
/* 801D7BA0 001CD920  4C C6 31 82 */	crclr 6
/* 801D7BA4 001CD924  48 00 0A 5D */	bl OSReport
/* 801D7BA8 001CD928  7F A3 EB 78 */	mr r3, r29
/* 801D7BAC 001CD92C  48 00 07 29 */	bl OSDumpContext
/* 801D7BB0 001CD930  4B FF D4 F9 */	bl PPCHalt
lbl_801D7BB4:
/* 801D7BB4 001CD934  38 7F 00 98 */	addi r3, r31, 0x98
/* 801D7BB8 001CD938  4C C6 31 82 */	crclr 6
/* 801D7BBC 001CD93C  48 00 0A 45 */	bl OSReport
/* 801D7BC0 001CD940  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 801D7BC4 001CD944  4C C6 31 82 */	crclr 6
/* 801D7BC8 001CD948  48 00 0A 39 */	bl OSReport
/* 801D7BCC 001CD94C  57 C0 02 11 */	rlwinm. r0, r30, 0, 8, 8
/* 801D7BD0 001CD950  41 82 00 10 */	beq lbl_801D7BE0
/* 801D7BD4 001CD954  38 7F 01 0C */	addi r3, r31, 0x10c
/* 801D7BD8 001CD958  4C C6 31 82 */	crclr 6
/* 801D7BDC 001CD95C  48 00 0A 25 */	bl OSReport
lbl_801D7BE0:
/* 801D7BE0 001CD960  57 C0 02 53 */	rlwinm. r0, r30, 0, 9, 9
/* 801D7BE4 001CD964  41 82 00 10 */	beq lbl_801D7BF4
/* 801D7BE8 001CD968  38 7F 01 4C */	addi r3, r31, 0x14c
/* 801D7BEC 001CD96C  4C C6 31 82 */	crclr 6
/* 801D7BF0 001CD970  48 00 0A 11 */	bl OSReport
lbl_801D7BF4:
/* 801D7BF4 001CD974  57 C0 02 95 */	rlwinm. r0, r30, 0, 0xa, 0xa
/* 801D7BF8 001CD978  41 82 00 10 */	beq lbl_801D7C08
/* 801D7BFC 001CD97C  38 7F 01 78 */	addi r3, r31, 0x178
/* 801D7C00 001CD980  4C C6 31 82 */	crclr 6
/* 801D7C04 001CD984  48 00 09 FD */	bl OSReport
lbl_801D7C08:
/* 801D7C08 001CD988  57 C0 02 D7 */	rlwinm. r0, r30, 0, 0xb, 0xb
/* 801D7C0C 001CD98C  41 82 00 10 */	beq lbl_801D7C1C
/* 801D7C10 001CD990  38 7F 01 98 */	addi r3, r31, 0x198
/* 801D7C14 001CD994  4C C6 31 82 */	crclr 6
/* 801D7C18 001CD998  48 00 09 E9 */	bl OSReport
lbl_801D7C1C:
/* 801D7C1C 001CD99C  7F C3 F3 78 */	mr r3, r30
/* 801D7C20 001CD9A0  4B FF D5 1D */	bl PPCMthid2
/* 801D7C24 001CD9A4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801D7C28 001CD9A8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801D7C2C 001CD9AC  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801D7C30 001CD9B0  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 801D7C34 001CD9B4  7C 08 03 A6 */	mtlr r0
/* 801D7C38 001CD9B8  38 21 00 80 */	addi r1, r1, 0x80
/* 801D7C3C 001CD9BC  4E 80 00 20 */	blr 

.global __OSCacheInit
__OSCacheInit:
/* 801D7C40 001CD9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7C44 001CD9C4  7C 08 02 A6 */	mflr r0
/* 801D7C48 001CD9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7C4C 001CD9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D7C50 001CD9D0  3F E0 80 46 */	lis r31, lbl_804672E8@ha
/* 801D7C54 001CD9D4  3B FF 72 E8 */	addi r31, r31, lbl_804672E8@l
/* 801D7C58 001CD9D8  93 C1 00 08 */	stw r30, 8(r1)
/* 801D7C5C 001CD9DC  4B FF D4 1D */	bl PPCMfhid0
/* 801D7C60 001CD9E0  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 801D7C64 001CD9E4  40 82 00 14 */	bne lbl_801D7C78
/* 801D7C68 001CD9E8  4B FF FB A9 */	bl ICEnable
/* 801D7C6C 001CD9EC  38 7F 01 B4 */	addi r3, r31, 0x1b4
/* 801D7C70 001CD9F0  4C C6 31 82 */	crclr 6
/* 801D7C74 001CD9F4  48 00 F9 CD */	bl DBPrintf
lbl_801D7C78:
/* 801D7C78 001CD9F8  4B FF D4 01 */	bl PPCMfhid0
/* 801D7C7C 001CD9FC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 801D7C80 001CDA00  40 82 00 14 */	bne lbl_801D7C94
/* 801D7C84 001CDA04  4B FF FA 25 */	bl DCEnable
/* 801D7C88 001CDA08  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 801D7C8C 001CDA0C  4C C6 31 82 */	crclr 6
/* 801D7C90 001CDA10  48 00 F9 B1 */	bl DBPrintf
lbl_801D7C94:
/* 801D7C94 001CDA14  4B FF D3 F5 */	bl PPCMfl2cr
/* 801D7C98 001CDA18  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 801D7C9C 001CDA1C  40 82 00 A8 */	bne lbl_801D7D44
/* 801D7CA0 001CDA20  4B FF D3 C9 */	bl PPCMfmsr
/* 801D7CA4 001CDA24  7C 7E 1B 78 */	mr r30, r3
/* 801D7CA8 001CDA28  7C 00 04 AC */	sync 0
/* 801D7CAC 001CDA2C  38 60 00 30 */	li r3, 0x30
/* 801D7CB0 001CDA30  4B FF D3 C1 */	bl PPCMtmsr
/* 801D7CB4 001CDA34  7C 00 04 AC */	sync 0
/* 801D7CB8 001CDA38  7C 00 04 AC */	sync 0
/* 801D7CBC 001CDA3C  4B FF D3 CD */	bl PPCMfl2cr
/* 801D7CC0 001CDA40  54 63 00 7E */	clrlwi r3, r3, 1
/* 801D7CC4 001CDA44  4B FF D3 CD */	bl PPCMtl2cr
/* 801D7CC8 001CDA48  7C 00 04 AC */	sync 0
/* 801D7CCC 001CDA4C  7C 00 04 AC */	sync 0
/* 801D7CD0 001CDA50  4B FF D3 B9 */	bl PPCMfl2cr
/* 801D7CD4 001CDA54  54 63 00 7E */	clrlwi r3, r3, 1
/* 801D7CD8 001CDA58  4B FF D3 B9 */	bl PPCMtl2cr
/* 801D7CDC 001CDA5C  7C 00 04 AC */	sync 0
/* 801D7CE0 001CDA60  4B FF D3 A9 */	bl PPCMfl2cr
/* 801D7CE4 001CDA64  64 63 00 20 */	oris r3, r3, 0x20
/* 801D7CE8 001CDA68  4B FF D3 A9 */	bl PPCMtl2cr
lbl_801D7CEC:
/* 801D7CEC 001CDA6C  4B FF D3 9D */	bl PPCMfl2cr
/* 801D7CF0 001CDA70  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801D7CF4 001CDA74  40 82 FF F8 */	bne lbl_801D7CEC
/* 801D7CF8 001CDA78  4B FF D3 91 */	bl PPCMfl2cr
/* 801D7CFC 001CDA7C  54 63 02 D2 */	rlwinm r3, r3, 0, 0xb, 9
/* 801D7D00 001CDA80  4B FF D3 91 */	bl PPCMtl2cr
/* 801D7D04 001CDA84  48 00 00 10 */	b lbl_801D7D14
lbl_801D7D08:
/* 801D7D08 001CDA88  38 7F 00 00 */	addi r3, r31, 0
/* 801D7D0C 001CDA8C  4C C6 31 82 */	crclr 6
/* 801D7D10 001CDA90  48 00 F9 31 */	bl DBPrintf
lbl_801D7D14:
/* 801D7D14 001CDA94  4B FF D3 75 */	bl PPCMfl2cr
/* 801D7D18 001CDA98  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801D7D1C 001CDA9C  40 82 FF EC */	bne lbl_801D7D08
/* 801D7D20 001CDAA0  7F C3 F3 78 */	mr r3, r30
/* 801D7D24 001CDAA4  4B FF D3 4D */	bl PPCMtmsr
/* 801D7D28 001CDAA8  4B FF D3 61 */	bl PPCMfl2cr
/* 801D7D2C 001CDAAC  64 60 80 00 */	oris r0, r3, 0x8000
/* 801D7D30 001CDAB0  54 03 02 D2 */	rlwinm r3, r0, 0, 0xb, 9
/* 801D7D34 001CDAB4  4B FF D3 5D */	bl PPCMtl2cr
/* 801D7D38 001CDAB8  38 7F 01 EC */	addi r3, r31, 0x1ec
/* 801D7D3C 001CDABC  4C C6 31 82 */	crclr 6
/* 801D7D40 001CDAC0  48 00 F9 01 */	bl DBPrintf
lbl_801D7D44:
/* 801D7D44 001CDAC4  3C 80 80 1D */	lis r4, DMAErrorHandler@ha
/* 801D7D48 001CDAC8  38 60 00 01 */	li r3, 1
/* 801D7D4C 001CDACC  38 84 7A F8 */	addi r4, r4, DMAErrorHandler@l
/* 801D7D50 001CDAD0  48 00 0A 6D */	bl OSSetErrorHandler
/* 801D7D54 001CDAD4  38 7F 02 04 */	addi r3, r31, 0x204
/* 801D7D58 001CDAD8  4C C6 31 82 */	crclr 6
/* 801D7D5C 001CDADC  48 00 F8 E5 */	bl DBPrintf
/* 801D7D60 001CDAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7D64 001CDAE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D7D68 001CDAE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D7D6C 001CDAEC  7C 08 03 A6 */	mtlr r0
/* 801D7D70 001CDAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7D74 001CDAF4  4E 80 00 20 */	blr 
