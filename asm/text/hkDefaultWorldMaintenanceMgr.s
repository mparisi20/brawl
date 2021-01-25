.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkDefaultWorldMaintenanceMgr$7__ct
hkDefaultWorldMaintenanceMgr$7__ct:
/* 802F0714 002E6494  C0 22 B1 C8 */	lfs f1, lbl_805A44E8-_SDA2_BASE_(r2)
/* 802F0718 002E6498  3C 80 80 49 */	lis r4, lbl_80488600@ha
/* 802F071C 002E649C  C0 02 B1 CC */	lfs f0, lbl_805A44EC-_SDA2_BASE_(r2)
/* 802F0720 002E64A0  38 84 86 00 */	addi r4, r4, lbl_80488600@l
/* 802F0724 002E64A4  38 00 00 01 */	li r0, 1
/* 802F0728 002E64A8  90 83 00 00 */	stw r4, 0(r3)
/* 802F072C 002E64AC  B0 03 00 06 */	sth r0, 6(r3)
/* 802F0730 002E64B0  D0 23 00 08 */	stfs f1, 8(r3)
/* 802F0734 002E64B4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802F0738 002E64B8  4E 80 00 20 */	blr 

.global hkDefaultWorldMaintenanceMgr$7init
hkDefaultWorldMaintenanceMgr$7init:
/* 802F073C 002E64BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 802F0740 002E64C0  80 A4 00 08 */	lwz r5, 8(r4)
/* 802F0744 002E64C4  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 802F0748 002E64C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 802F074C 002E64CC  80 64 00 08 */	lwz r3, 8(r4)
/* 802F0750 002E64D0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802F0754 002E64D4  4E 80 00 20 */	blr 

.global hkDefaultWorldMaintenanceMgr$7performMaintenance
hkDefaultWorldMaintenanceMgr$7performMaintenance:
/* 802F0758 002E64D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F075C 002E64DC  7C 08 02 A6 */	mflr r0
/* 802F0760 002E64E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F0764 002E64E4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802F0768 002E64E8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802F076C 002E64EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0770 002E64F0  48 10 0B B1 */	bl _savegpr_27
/* 802F0774 002E64F4  3C C0 80 53 */	lis r6, lbl_80532448@ha
/* 802F0778 002E64F8  7C 7D 1B 78 */	mr r29, r3
/* 802F077C 002E64FC  38 C6 24 48 */	addi r6, r6, lbl_80532448@l
/* 802F0780 002E6500  7C 9E 23 78 */	mr r30, r4
/* 802F0784 002E6504  80 66 00 0C */	lwz r3, 0xc(r6)
/* 802F0788 002E6508  7C BF 2B 78 */	mr r31, r5
/* 802F078C 002E650C  80 86 00 04 */	lwz r4, 4(r6)
/* 802F0790 002E6510  7C 60 22 78 */	xor r0, r3, r4
/* 802F0794 002E6514  7C 00 00 34 */	cntlzw r0, r0
/* 802F0798 002E6518  7C 60 00 30 */	slw r0, r3, r0
/* 802F079C 002E651C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802F07A0 002E6520  7C 03 07 74 */	extsb r3, r0
/* 802F07A4 002E6524  7C 03 00 D0 */	neg r0, r3
/* 802F07A8 002E6528  7C 00 1B 78 */	or r0, r0, r3
/* 802F07AC 002E652C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802F07B0 002E6530  41 82 00 28 */	beq lbl_802F07D8
/* 802F07B4 002E6534  3C 60 80 41 */	lis r3, lbl_80413FC0@ha
/* 802F07B8 002E6538  38 63 3F C0 */	addi r3, r3, lbl_80413FC0@l
/* 802F07BC 002E653C  90 64 00 00 */	stw r3, 0(r4)
/* 802F07C0 002E6540  38 03 00 0E */	addi r0, r3, 0xe
/* 802F07C4 002E6544  90 04 00 0C */	stw r0, 0xc(r4)
/* 802F07C8 002E6548  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802F07CC 002E654C  38 04 00 10 */	addi r0, r4, 0x10
/* 802F07D0 002E6550  90 64 00 04 */	stw r3, 4(r4)
/* 802F07D4 002E6554  90 06 00 04 */	stw r0, 4(r6)
lbl_802F07D8:
/* 802F07D8 002E6558  7F C3 F3 78 */	mr r3, r30
/* 802F07DC 002E655C  48 00 88 91 */	bl hkWorldOperationUtil$7splitSimulationIslands
/* 802F07E0 002E6560  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802F07E4 002E6564  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 802F07E8 002E6568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F07EC 002E656C  4C 41 13 82 */	cror 2, 1, 2
/* 802F07F0 002E6570  40 82 01 B8 */	bne lbl_802F09A8
/* 802F07F4 002E6574  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802F07F8 002E6578  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802F07FC 002E657C  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802F0800 002E6580  80 85 00 04 */	lwz r4, 4(r5)
/* 802F0804 002E6584  7C 60 22 78 */	xor r0, r3, r4
/* 802F0808 002E6588  7C 00 00 34 */	cntlzw r0, r0
/* 802F080C 002E658C  7C 60 00 30 */	slw r0, r3, r0
/* 802F0810 002E6590  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802F0814 002E6594  7C 03 07 74 */	extsb r3, r0
/* 802F0818 002E6598  7C 03 00 D0 */	neg r0, r3
/* 802F081C 002E659C  7C 00 1B 78 */	or r0, r0, r3
/* 802F0820 002E65A0  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802F0824 002E65A4  41 82 00 24 */	beq lbl_802F0848
/* 802F0828 002E65A8  3C 60 80 41 */	lis r3, lbl_80413FC0@ha
/* 802F082C 002E65AC  38 63 3F C0 */	addi r3, r3, lbl_80413FC0@l
/* 802F0830 002E65B0  38 03 00 16 */	addi r0, r3, 0x16
/* 802F0834 002E65B4  90 04 00 00 */	stw r0, 0(r4)
/* 802F0838 002E65B8  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802F083C 002E65BC  38 04 00 0C */	addi r0, r4, 0xc
/* 802F0840 002E65C0  90 64 00 04 */	stw r3, 4(r4)
/* 802F0844 002E65C4  90 05 00 04 */	stw r0, 4(r5)
lbl_802F0848:
/* 802F0848 002E65C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 802F084C 002E65CC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802F0850 002E65D0  C0 7D 00 08 */	lfs f3, 8(r29)
/* 802F0854 002E65D4  EC 81 00 28 */	fsubs f4, f1, f0
/* 802F0858 002E65D8  C0 02 B1 D0 */	lfs f0, lbl_805A44F0-_SDA2_BASE_(r2)
/* 802F085C 002E65DC  D0 7E 01 70 */	stfs f3, 0x170(r30)
/* 802F0860 002E65E0  80 7E 00 08 */	lwz r3, 8(r30)
/* 802F0864 002E65E4  EC 20 20 24 */	fdivs f1, f0, f4
/* 802F0868 002E65E8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 802F086C 002E65EC  C0 02 B1 D4 */	lfs f0, lbl_805A44F4-_SDA2_BASE_(r2)
/* 802F0870 002E65F0  D0 9E 01 78 */	stfs f4, 0x178(r30)
/* 802F0874 002E65F4  EC 42 20 2A */	fadds f2, f2, f4
/* 802F0878 002E65F8  D0 3E 01 7C */	stfs f1, 0x17c(r30)
/* 802F087C 002E65FC  D0 5E 01 74 */	stfs f2, 0x174(r30)
/* 802F0880 002E6600  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802F0884 002E6604  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 802F0888 002E6608  EF E3 08 28 */	fsubs f31, f3, f1
/* 802F088C 002E660C  EC 3F 10 2A */	fadds f1, f31, f2
/* 802F0890 002E6610  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 802F0894 002E6614  C0 3E 01 70 */	lfs f1, 0x170(r30)
/* 802F0898 002E6618  80 7E 00 08 */	lwz r3, 8(r30)
/* 802F089C 002E661C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 802F08A0 002E6620  80 7E 00 08 */	lwz r3, 8(r30)
/* 802F08A4 002E6624  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 802F08A8 002E6628  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802F08AC 002E662C  41 82 00 0C */	beq lbl_802F08B8
/* 802F08B0 002E6630  EC 1F 08 2A */	fadds f0, f31, f1
/* 802F08B4 002E6634  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_802F08B8:
/* 802F08B8 002E6638  39 00 00 00 */	li r8, 0
/* 802F08BC 002E663C  38 60 00 00 */	li r3, 0
/* 802F08C0 002E6640  48 00 00 48 */	b lbl_802F0908
lbl_802F08C4:
/* 802F08C4 002E6644  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 802F08C8 002E6648  38 C0 00 00 */	li r6, 0
/* 802F08CC 002E664C  38 80 00 00 */	li r4, 0
/* 802F08D0 002E6650  7C E5 18 2E */	lwzx r7, r5, r3
/* 802F08D4 002E6654  48 00 00 20 */	b lbl_802F08F4
lbl_802F08D8:
/* 802F08D8 002E6658  80 A7 00 38 */	lwz r5, 0x38(r7)
/* 802F08DC 002E665C  38 C6 00 01 */	addi r6, r6, 1
/* 802F08E0 002E6660  7C A5 20 2E */	lwzx r5, r5, r4
/* 802F08E4 002E6664  38 84 00 04 */	addi r4, r4, 4
/* 802F08E8 002E6668  C0 05 00 FC */	lfs f0, 0xfc(r5)
/* 802F08EC 002E666C  EC 00 F8 2A */	fadds f0, f0, f31
/* 802F08F0 002E6670  D0 05 00 FC */	stfs f0, 0xfc(r5)
lbl_802F08F4:
/* 802F08F4 002E6674  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 802F08F8 002E6678  7C 06 00 00 */	cmpw r6, r0
/* 802F08FC 002E667C  41 80 FF DC */	blt lbl_802F08D8
/* 802F0900 002E6680  39 08 00 01 */	addi r8, r8, 1
/* 802F0904 002E6684  38 63 00 04 */	addi r3, r3, 4
lbl_802F0908:
/* 802F0908 002E6688  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 802F090C 002E668C  7C 08 00 00 */	cmpw r8, r0
/* 802F0910 002E6690  41 80 FF B4 */	blt lbl_802F08C4
/* 802F0914 002E6694  3B 80 00 00 */	li r28, 0
/* 802F0918 002E6698  3B A0 00 00 */	li r29, 0
/* 802F091C 002E669C  48 00 00 24 */	b lbl_802F0940
lbl_802F0920:
/* 802F0920 002E66A0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802F0924 002E66A4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 802F0928 002E66A8  7C 63 E8 2E */	lwzx r3, r3, r29
/* 802F092C 002E66AC  C0 5E 01 74 */	lfs f2, 0x174(r30)
/* 802F0930 002E66B0  80 9E 00 68 */	lwz r4, 0x68(r30)
/* 802F0934 002E66B4  48 00 2F BD */	bl hkWorldAgentUtil$7warpTime
/* 802F0938 002E66B8  3B 9C 00 01 */	addi r28, r28, 1
/* 802F093C 002E66BC  3B BD 00 04 */	addi r29, r29, 4
lbl_802F0940:
/* 802F0940 002E66C0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 802F0944 002E66C4  7C 1C 00 00 */	cmpw r28, r0
/* 802F0948 002E66C8  41 80 FF D8 */	blt lbl_802F0920
/* 802F094C 002E66CC  80 7E 00 08 */	lwz r3, 8(r30)
/* 802F0950 002E66D0  FC 20 F8 90 */	fmr f1, f31
/* 802F0954 002E66D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0958 002E66D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802F095C 002E66DC  7D 89 03 A6 */	mtctr r12
/* 802F0960 002E66E0  4E 80 04 21 */	bctrl 
/* 802F0964 002E66E4  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 802F0968 002E66E8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802F096C 002E66EC  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 802F0970 002E66F0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802F0974 002E66F4  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 802F0978 002E66F8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802F097C 002E66FC  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 802F0980 002E6700  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802F0984 002E6704  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 802F0988 002E6708  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 802F098C 002E670C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802F0990 002E6710  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 802F0994 002E6714  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802F0998 002E6718  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 802F099C 002E671C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802F09A0 002E6720  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 802F09A4 002E6724  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_802F09A8:
/* 802F09A8 002E6728  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802F09AC 002E672C  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802F09B0 002E6730  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802F09B4 002E6734  80 85 00 04 */	lwz r4, 4(r5)
/* 802F09B8 002E6738  7C 60 22 78 */	xor r0, r3, r4
/* 802F09BC 002E673C  7C 00 00 34 */	cntlzw r0, r0
/* 802F09C0 002E6740  7C 60 00 30 */	slw r0, r3, r0
/* 802F09C4 002E6744  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802F09C8 002E6748  7C 03 07 74 */	extsb r3, r0
/* 802F09CC 002E674C  7C 03 00 D0 */	neg r0, r3
/* 802F09D0 002E6750  7C 00 1B 78 */	or r0, r0, r3
/* 802F09D4 002E6754  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802F09D8 002E6758  41 82 00 24 */	beq lbl_802F09FC
/* 802F09DC 002E675C  3C 60 80 41 */	lis r3, lbl_80413FC0@ha
/* 802F09E0 002E6760  38 63 3F C0 */	addi r3, r3, lbl_80413FC0@l
/* 802F09E4 002E6764  38 03 00 22 */	addi r0, r3, 0x22
/* 802F09E8 002E6768  90 04 00 00 */	stw r0, 0(r4)
/* 802F09EC 002E676C  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802F09F0 002E6770  38 04 00 0C */	addi r0, r4, 0xc
/* 802F09F4 002E6774  90 64 00 04 */	stw r3, 4(r4)
/* 802F09F8 002E6778  90 05 00 04 */	stw r0, 4(r5)
lbl_802F09FC:
/* 802F09FC 002E677C  88 1E 00 B5 */	lbz r0, 0xb5(r30)
/* 802F0A00 002E6780  7C 03 07 74 */	extsb r3, r0
/* 802F0A04 002E6784  7C 03 00 D0 */	neg r0, r3
/* 802F0A08 002E6788  7C 00 1B 78 */	or r0, r0, r3
/* 802F0A0C 002E678C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802F0A10 002E6790  41 82 00 5C */	beq lbl_802F0A6C
/* 802F0A14 002E6794  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802F0A18 002E6798  3B 63 FF FF */	addi r27, r3, -1
/* 802F0A1C 002E679C  57 7D 10 3A */	slwi r29, r27, 2
/* 802F0A20 002E67A0  48 00 00 44 */	b lbl_802F0A64
lbl_802F0A24:
/* 802F0A24 002E67A4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802F0A28 002E67A8  7F E4 FB 78 */	mr r4, r31
/* 802F0A2C 002E67AC  7F 83 E8 2E */	lwzx r28, r3, r29
/* 802F0A30 002E67B0  7F 83 E3 78 */	mr r3, r28
/* 802F0A34 002E67B4  4B FF 9B FD */	bl hkSimulationIsland$7shouldDeactivate
/* 802F0A38 002E67B8  54 60 46 3E */	srwi r0, r3, 0x18
/* 802F0A3C 002E67BC  7C 03 07 74 */	extsb r3, r0
/* 802F0A40 002E67C0  7C 03 00 D0 */	neg r0, r3
/* 802F0A44 002E67C4  7C 00 1B 78 */	or r0, r0, r3
/* 802F0A48 002E67C8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802F0A4C 002E67CC  41 82 00 10 */	beq lbl_802F0A5C
/* 802F0A50 002E67D0  7F C3 F3 78 */	mr r3, r30
/* 802F0A54 002E67D4  7F 84 E3 78 */	mr r4, r28
/* 802F0A58 002E67D8  48 00 A1 A5 */	bl hkWorldOperationUtil$7markIslandInactive
lbl_802F0A5C:
/* 802F0A5C 002E67DC  3B 7B FF FF */	addi r27, r27, -1
/* 802F0A60 002E67E0  3B BD FF FC */	addi r29, r29, -4
lbl_802F0A64:
/* 802F0A64 002E67E4  2C 1B 00 00 */	cmpwi r27, 0
/* 802F0A68 002E67E8  40 80 FF BC */	bge lbl_802F0A24
lbl_802F0A6C:
/* 802F0A6C 002E67EC  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802F0A70 002E67F0  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802F0A74 002E67F4  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802F0A78 002E67F8  80 85 00 04 */	lwz r4, 4(r5)
/* 802F0A7C 002E67FC  7C 60 22 78 */	xor r0, r3, r4
/* 802F0A80 002E6800  7C 00 00 34 */	cntlzw r0, r0
/* 802F0A84 002E6804  7C 60 00 30 */	slw r0, r3, r0
/* 802F0A88 002E6808  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802F0A8C 002E680C  7C 03 07 74 */	extsb r3, r0
/* 802F0A90 002E6810  7C 03 00 D0 */	neg r0, r3
/* 802F0A94 002E6814  7C 00 1B 78 */	or r0, r0, r3
/* 802F0A98 002E6818  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802F0A9C 002E681C  41 82 00 24 */	beq lbl_802F0AC0
/* 802F0AA0 002E6820  3C 60 80 41 */	lis r3, lbl_80413FC0@ha
/* 802F0AA4 002E6824  38 63 3F C0 */	addi r3, r3, lbl_80413FC0@l
/* 802F0AA8 002E6828  38 03 00 2F */	addi r0, r3, 0x2f
/* 802F0AAC 002E682C  90 04 00 00 */	stw r0, 0(r4)
/* 802F0AB0 002E6830  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802F0AB4 002E6834  38 04 00 0C */	addi r0, r4, 0xc
/* 802F0AB8 002E6838  90 64 00 04 */	stw r3, 4(r4)
/* 802F0ABC 002E683C  90 05 00 04 */	stw r0, 4(r5)
lbl_802F0AC0:
/* 802F0AC0 002E6840  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802F0AC4 002E6844  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0AC8 002E6848  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802F0ACC 002E684C  48 10 08 A1 */	bl _restgpr_27
/* 802F0AD0 002E6850  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0AD4 002E6854  7C 08 03 A6 */	mtlr r0
/* 802F0AD8 002E6858  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0ADC 002E685C  4E 80 00 20 */	blr 

.global hkSimulation$7warpTime
hkSimulation$7warpTime:
/* 802F0AE0 002E6860  4E 80 00 20 */	blr 

.global hkDefaultWorldMaintenanceMgr$7__dt
hkDefaultWorldMaintenanceMgr$7__dt:
/* 802F0AE4 002E6864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0AE8 002E6868  7C 08 02 A6 */	mflr r0
/* 802F0AEC 002E686C  2C 03 00 00 */	cmpwi r3, 0
/* 802F0AF0 002E6870  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F0AF4 002E6874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F0AF8 002E6878  7C 7F 1B 78 */	mr r31, r3
/* 802F0AFC 002E687C  41 82 00 2C */	beq lbl_802F0B28
/* 802F0B00 002E6880  2C 04 00 00 */	cmpwi r4, 0
/* 802F0B04 002E6884  40 81 00 24 */	ble lbl_802F0B28
/* 802F0B08 002E6888  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802F0B0C 002E688C  7F E4 FB 78 */	mr r4, r31
/* 802F0B10 002E6890  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802F0B14 002E6894  38 C0 00 13 */	li r6, 0x13
/* 802F0B18 002E6898  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0B1C 002E689C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F0B20 002E68A0  7D 89 03 A6 */	mtctr r12
/* 802F0B24 002E68A4  4E 80 04 21 */	bctrl 
lbl_802F0B28:
/* 802F0B28 002E68A8  7F E3 FB 78 */	mr r3, r31
/* 802F0B2C 002E68AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F0B30 002E68B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F0B34 002E68B4  7C 08 03 A6 */	mtlr r0
/* 802F0B38 002E68B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F0B3C 002E68BC  4E 80 00 20 */	blr 

.global __sinit_$3hkWorldMemoryWatchDogClass_cpp
__sinit_$3hkWorldMemoryWatchDogClass_cpp:
/* 802F0B40 002E68C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0B44 002E68C4  7C 08 02 A6 */	mflr r0
/* 802F0B48 002E68C8  3C A0 80 41 */	lis r5, lbl_80414004@ha
/* 802F0B4C 002E68CC  3C 60 80 53 */	lis r3, lbl_80533260@ha
/* 802F0B50 002E68D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0B54 002E68D4  38 A5 40 04 */	addi r5, r5, lbl_80414004@l
/* 802F0B58 002E68D8  3C 80 80 41 */	lis r4, lbl_80414018@ha
/* 802F0B5C 002E68DC  38 C0 00 01 */	li r6, 1
/* 802F0B60 002E68E0  90 A1 00 08 */	stw r5, 8(r1)
/* 802F0B64 002E68E4  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 802F0B68 002E68E8  38 00 00 00 */	li r0, 0
/* 802F0B6C 002E68EC  38 63 32 60 */	addi r3, r3, lbl_80533260@l
/* 802F0B70 002E68F0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802F0B74 002E68F4  38 84 40 18 */	addi r4, r4, lbl_80414018@l
/* 802F0B78 002E68F8  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 802F0B7C 002E68FC  38 C0 00 0C */	li r6, 0xc
/* 802F0B80 002E6900  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F0B84 002E6904  38 E0 00 00 */	li r7, 0
/* 802F0B88 002E6908  39 00 00 00 */	li r8, 0
/* 802F0B8C 002E690C  39 20 00 00 */	li r9, 0
/* 802F0B90 002E6910  39 40 00 00 */	li r10, 0
/* 802F0B94 002E6914  4B F8 BC 75 */	bl hkClass$7__ct
/* 802F0B98 002E6918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0B9C 002E691C  7C 08 03 A6 */	mtlr r0
/* 802F0BA0 002E6920  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0BA4 002E6924  4E 80 00 20 */	blr 

