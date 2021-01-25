.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkListAgent$7registerAgent
hkListAgent$7registerAgent:
/* 802B85EC 002AE36C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B85F0 002AE370  7C 08 02 A6 */	mflr r0
/* 802B85F4 002AE374  3C 80 80 2C */	lis r4, hkListAgent$7createListAAgent@ha
/* 802B85F8 002AE378  3C A0 80 2C */	lis r5, hkShapeCollectionAgent$7staticGetPenetrations@ha
/* 802B85FC 002AE37C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B8600 002AE380  3D 00 80 2C */	lis r8, hkShapeCollectionAgent$7staticGetClosestPoints@ha
/* 802B8604 002AE384  3C E0 80 2C */	lis r7, hkShapeCollectionAgent$7staticLinearCast@ha
/* 802B8608 002AE388  38 84 86 B8 */	addi r4, r4, hkListAgent$7createListAAgent@l
/* 802B860C 002AE38C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802B8610 002AE390  3B E0 00 01 */	li r31, 1
/* 802B8614 002AE394  38 A5 1A B8 */	addi r5, r5, hkShapeCollectionAgent$7staticGetPenetrations@l
/* 802B8618 002AE398  39 08 13 D0 */	addi r8, r8, hkShapeCollectionAgent$7staticGetClosestPoints@l
/* 802B861C 002AE39C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802B8620 002AE3A0  38 E7 17 38 */	addi r7, r7, hkShapeCollectionAgent$7staticLinearCast@l
/* 802B8624 002AE3A4  7C 7E 1B 78 */	mr r30, r3
/* 802B8628 002AE3A8  38 C0 FF FF */	li r6, -1
/* 802B862C 002AE3AC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802B8630 002AE3B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 802B8634 002AE3B4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802B8638 002AE3B8  38 A0 00 0C */	li r5, 0xc
/* 802B863C 002AE3BC  91 01 00 24 */	stw r8, 0x24(r1)
/* 802B8640 002AE3C0  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802B8644 002AE3C4  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802B8648 002AE3C8  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802B864C 002AE3CC  48 01 3A A1 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802B8650 002AE3D0  3C 60 80 2C */	lis r3, hkListAgent$7createListBAgent@ha
/* 802B8654 002AE3D4  3C 80 80 2B */	lis r4, hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticGetPenetrations@ha
/* 802B8658 002AE3D8  3D 00 80 2B */	lis r8, hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticGetClosestPoints@ha
/* 802B865C 002AE3DC  3C E0 80 2B */	lis r7, hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticLinearCast@ha
/* 802B8660 002AE3E0  38 63 87 3C */	addi r3, r3, hkListAgent$7createListBAgent@l
/* 802B8664 002AE3E4  38 84 0F E0 */	addi r4, r4, hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticGetPenetrations@l
/* 802B8668 002AE3E8  39 08 10 28 */	addi r8, r8, hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticGetClosestPoints@l
/* 802B866C 002AE3EC  38 E7 10 70 */	addi r7, r7, hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticLinearCast@l
/* 802B8670 002AE3F0  38 00 00 00 */	li r0, 0
/* 802B8674 002AE3F4  90 61 00 08 */	stw r3, 8(r1)
/* 802B8678 002AE3F8  7F C3 F3 78 */	mr r3, r30
/* 802B867C 002AE3FC  38 A0 FF FF */	li r5, -1
/* 802B8680 002AE400  90 81 00 0C */	stw r4, 0xc(r1)
/* 802B8684 002AE404  38 81 00 08 */	addi r4, r1, 8
/* 802B8688 002AE408  38 C0 00 0C */	li r6, 0xc
/* 802B868C 002AE40C  91 01 00 10 */	stw r8, 0x10(r1)
/* 802B8690 002AE410  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802B8694 002AE414  98 01 00 18 */	stb r0, 0x18(r1)
/* 802B8698 002AE418  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802B869C 002AE41C  48 01 3A 51 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802B86A0 002AE420  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B86A4 002AE424  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802B86A8 002AE428  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802B86AC 002AE42C  7C 08 03 A6 */	mtlr r0
/* 802B86B0 002AE430  38 21 00 40 */	addi r1, r1, 0x40
/* 802B86B4 002AE434  4E 80 00 20 */	blr 

.global hkListAgent$7createListAAgent
hkListAgent$7createListAAgent:
/* 802B86B8 002AE438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B86BC 002AE43C  7C 08 02 A6 */	mflr r0
/* 802B86C0 002AE440  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B86C4 002AE444  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B86C8 002AE448  7C 7B 1B 78 */	mr r27, r3
/* 802B86CC 002AE44C  7C 9C 23 78 */	mr r28, r4
/* 802B86D0 002AE450  7C BD 2B 78 */	mr r29, r5
/* 802B86D4 002AE454  7C DE 33 78 */	mr r30, r6
/* 802B86D8 002AE458  38 80 00 20 */	li r4, 0x20
/* 802B86DC 002AE45C  38 A0 00 1D */	li r5, 0x1d
/* 802B86E0 002AE460  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802B86E4 002AE464  81 83 00 00 */	lwz r12, 0(r3)
/* 802B86E8 002AE468  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B86EC 002AE46C  7D 89 03 A6 */	mtctr r12
/* 802B86F0 002AE470  4E 80 04 21 */	bctrl 
/* 802B86F4 002AE474  38 00 00 20 */	li r0, 0x20
/* 802B86F8 002AE478  7C 7F 1B 79 */	or. r31, r3, r3
/* 802B86FC 002AE47C  B0 03 00 04 */	sth r0, 4(r3)
/* 802B8700 002AE480  41 82 00 24 */	beq lbl_802B8724
/* 802B8704 002AE484  7F 84 E3 78 */	mr r4, r28
/* 802B8708 002AE488  7F 65 DB 78 */	mr r5, r27
/* 802B870C 002AE48C  7F A6 EB 78 */	mr r6, r29
/* 802B8710 002AE490  7F C7 F3 78 */	mr r7, r30
/* 802B8714 002AE494  48 00 00 A5 */	bl hkListAgent$7__ct
/* 802B8718 002AE498  3C 60 80 48 */	lis r3, lbl_80486A30@ha
/* 802B871C 002AE49C  38 63 6A 30 */	addi r3, r3, lbl_80486A30@l
/* 802B8720 002AE4A0  90 7F 00 00 */	stw r3, 0(r31)
lbl_802B8724:
/* 802B8724 002AE4A4  7F E3 FB 78 */	mr r3, r31
/* 802B8728 002AE4A8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B872C 002AE4AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8730 002AE4B0  7C 08 03 A6 */	mtlr r0
/* 802B8734 002AE4B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8738 002AE4B8  4E 80 00 20 */	blr 

.global hkListAgent$7createListBAgent
hkListAgent$7createListBAgent:
/* 802B873C 002AE4BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8740 002AE4C0  7C 08 02 A6 */	mflr r0
/* 802B8744 002AE4C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8748 002AE4C8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B874C 002AE4CC  7C 7B 1B 78 */	mr r27, r3
/* 802B8750 002AE4D0  7C 9C 23 78 */	mr r28, r4
/* 802B8754 002AE4D4  7C BD 2B 78 */	mr r29, r5
/* 802B8758 002AE4D8  7C DE 33 78 */	mr r30, r6
/* 802B875C 002AE4DC  38 80 00 20 */	li r4, 0x20
/* 802B8760 002AE4E0  38 A0 00 1D */	li r5, 0x1d
/* 802B8764 002AE4E4  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802B8768 002AE4E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802B876C 002AE4EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B8770 002AE4F0  7D 89 03 A6 */	mtctr r12
/* 802B8774 002AE4F4  4E 80 04 21 */	bctrl 
/* 802B8778 002AE4F8  38 00 00 20 */	li r0, 0x20
/* 802B877C 002AE4FC  2C 03 00 00 */	cmpwi r3, 0
/* 802B8780 002AE500  B0 03 00 04 */	sth r0, 4(r3)
/* 802B8784 002AE504  7C 7F 1B 78 */	mr r31, r3
/* 802B8788 002AE508  41 82 00 18 */	beq lbl_802B87A0
/* 802B878C 002AE50C  7F 64 DB 78 */	mr r4, r27
/* 802B8790 002AE510  7F 85 E3 78 */	mr r5, r28
/* 802B8794 002AE514  7F A6 EB 78 */	mr r6, r29
/* 802B8798 002AE518  7F C7 F3 78 */	mr r7, r30
/* 802B879C 002AE51C  48 00 00 1D */	bl hkListAgent$7__ct
lbl_802B87A0:
/* 802B87A0 002AE520  7F E3 FB 78 */	mr r3, r31
/* 802B87A4 002AE524  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B87A8 002AE528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B87AC 002AE52C  7C 08 03 A6 */	mtlr r0
/* 802B87B0 002AE530  38 21 00 20 */	addi r1, r1, 0x20
/* 802B87B4 002AE534  4E 80 00 20 */	blr 

.global hkListAgent$7__ct
hkListAgent$7__ct:
/* 802B87B8 002AE538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B87BC 002AE53C  7C 08 02 A6 */	mflr r0
/* 802B87C0 002AE540  35 43 00 10 */	addic. r10, r3, 0x10
/* 802B87C4 002AE544  3D 20 80 48 */	lis r9, lbl_80486CE8@ha
/* 802B87C8 002AE548  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B87CC 002AE54C  3C 80 80 00 */	lis r4, 0x80000001@ha
/* 802B87D0 002AE550  38 00 00 01 */	li r0, 1
/* 802B87D4 002AE554  39 29 6C E8 */	addi r9, r9, lbl_80486CE8@l
/* 802B87D8 002AE558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B87DC 002AE55C  39 0A 00 0C */	addi r8, r10, 0xc
/* 802B87E0 002AE560  38 84 00 01 */	addi r4, r4, 0x80000001@l
/* 802B87E4 002AE564  38 A0 00 00 */	li r5, 0
/* 802B87E8 002AE568  B0 03 00 06 */	sth r0, 6(r3)
/* 802B87EC 002AE56C  7C 7F 1B 78 */	mr r31, r3
/* 802B87F0 002AE570  90 E3 00 08 */	stw r7, 8(r3)
/* 802B87F4 002AE574  91 23 00 00 */	stw r9, 0(r3)
/* 802B87F8 002AE578  91 0A 00 00 */	stw r8, 0(r10)
/* 802B87FC 002AE57C  90 AA 00 04 */	stw r5, 4(r10)
/* 802B8800 002AE580  90 8A 00 08 */	stw r4, 8(r10)
/* 802B8804 002AE584  80 06 00 00 */	lwz r0, 0(r6)
/* 802B8808 002AE588  90 03 00 0C */	stw r0, 0xc(r3)
/* 802B880C 002AE58C  41 82 00 10 */	beq lbl_802B881C
/* 802B8810 002AE590  91 0A 00 00 */	stw r8, 0(r10)
/* 802B8814 002AE594  90 AA 00 04 */	stw r5, 4(r10)
/* 802B8818 002AE598  90 8A 00 08 */	stw r4, 8(r10)
lbl_802B881C:
/* 802B881C 002AE59C  38 63 00 10 */	addi r3, r3, 0x10
/* 802B8820 002AE5A0  48 04 42 F5 */	bl hkAgent1nMachine_Create
/* 802B8824 002AE5A4  7F E3 FB 78 */	mr r3, r31
/* 802B8828 002AE5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B882C 002AE5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8830 002AE5B0  7C 08 03 A6 */	mtlr r0
/* 802B8834 002AE5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8838 002AE5B8  4E 80 00 20 */	blr 

.global hkListAgent$7cleanup
hkListAgent$7cleanup:
/* 802B883C 002AE5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8840 002AE5C0  7C 08 02 A6 */	mflr r0
/* 802B8844 002AE5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8848 002AE5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B884C 002AE5CC  7C 7F 1B 78 */	mr r31, r3
/* 802B8850 002AE5D0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802B8854 002AE5D4  80 A3 00 08 */	lwz r5, 8(r3)
/* 802B8858 002AE5D8  38 63 00 10 */	addi r3, r3, 0x10
/* 802B885C 002AE5DC  48 04 3E 51 */	bl hkAgent1nMachine_Destroy
/* 802B8860 002AE5E0  2C 1F 00 00 */	cmpwi r31, 0
/* 802B8864 002AE5E4  41 82 00 1C */	beq lbl_802B8880
/* 802B8868 002AE5E8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802B886C 002AE5EC  7F E3 FB 78 */	mr r3, r31
/* 802B8870 002AE5F0  38 80 00 01 */	li r4, 1
/* 802B8874 002AE5F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B8878 002AE5F8  7D 89 03 A6 */	mtctr r12
/* 802B887C 002AE5FC  4E 80 04 21 */	bctrl 
lbl_802B8880:
/* 802B8880 002AE600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8884 002AE604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8888 002AE608  7C 08 03 A6 */	mtlr r0
/* 802B888C 002AE60C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8890 002AE610  4E 80 00 20 */	blr 

.global hkListAgent$7invalidateTim
hkListAgent$7invalidateTim:
/* 802B8894 002AE614  38 63 00 10 */	addi r3, r3, 0x10
/* 802B8898 002AE618  48 04 3F 8C */	b hkAgent1nMachine_InvalidateTim

.global hkListAgent$7warpTime
hkListAgent$7warpTime:
/* 802B889C 002AE61C  38 63 00 10 */	addi r3, r3, 0x10
/* 802B88A0 002AE620  48 04 40 E8 */	b hkAgent1nMachine_WarpTime

.global hkListAgent$7processCollision
hkListAgent$7processCollision:
/* 802B88A4 002AE624  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802B88A8 002AE628  7C 2C 0B 78 */	mr r12, r1
/* 802B88AC 002AE62C  21 6B FF 40 */	subfic r11, r11, -192
/* 802B88B0 002AE630  7C 21 59 6E */	stwux r1, r1, r11
/* 802B88B4 002AE634  7C 08 02 A6 */	mflr r0
/* 802B88B8 002AE638  3D 20 80 53 */	lis r9, lbl_80532448@ha
/* 802B88BC 002AE63C  90 0C 00 04 */	stw r0, 4(r12)
/* 802B88C0 002AE640  39 29 24 48 */	addi r9, r9, lbl_80532448@l
/* 802B88C4 002AE644  93 EC FF FC */	stw r31, -4(r12)
/* 802B88C8 002AE648  7C FF 3B 78 */	mr r31, r7
/* 802B88CC 002AE64C  93 CC FF F8 */	stw r30, -8(r12)
/* 802B88D0 002AE650  7C 7E 1B 78 */	mr r30, r3
/* 802B88D4 002AE654  93 AC FF F4 */	stw r29, -0xc(r12)
/* 802B88D8 002AE658  93 8C FF F0 */	stw r28, -0x10(r12)
/* 802B88DC 002AE65C  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 802B88E0 002AE660  81 09 00 04 */	lwz r8, 4(r9)
/* 802B88E4 002AE664  7C E0 42 78 */	xor r0, r7, r8
/* 802B88E8 002AE668  7C 00 00 34 */	cntlzw r0, r0
/* 802B88EC 002AE66C  7C E0 00 30 */	slw r0, r7, r0
/* 802B88F0 002AE670  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B88F4 002AE674  7C 07 07 74 */	extsb r7, r0
/* 802B88F8 002AE678  7C 07 00 D0 */	neg r0, r7
/* 802B88FC 002AE67C  7C 00 3B 78 */	or r0, r0, r7
/* 802B8900 002AE680  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802B8904 002AE684  41 82 00 20 */	beq lbl_802B8924
/* 802B8908 002AE688  3C E0 80 41 */	lis r7, lbl_8040FEB8@ha
/* 802B890C 002AE68C  38 E7 FE B8 */	addi r7, r7, lbl_8040FEB8@l
/* 802B8910 002AE690  90 E8 00 00 */	stw r7, 0(r8)
/* 802B8914 002AE694  7C EC 42 E6 */	mftb r7, 0x10c
/* 802B8918 002AE698  38 08 00 0C */	addi r0, r8, 0xc
/* 802B891C 002AE69C  90 E8 00 04 */	stw r7, 4(r8)
/* 802B8920 002AE6A0  90 09 00 04 */	stw r0, 4(r9)
lbl_802B8924:
/* 802B8924 002AE6A4  90 81 00 40 */	stw r4, 0x40(r1)
/* 802B8928 002AE6A8  80 84 00 08 */	lwz r4, 8(r4)
/* 802B892C 002AE6AC  90 A1 00 44 */	stw r5, 0x44(r1)
/* 802B8930 002AE6B0  80 E5 00 08 */	lwz r7, 8(r5)
/* 802B8934 002AE6B4  80 03 00 08 */	lwz r0, 8(r3)
/* 802B8938 002AE6B8  38 61 00 50 */	addi r3, r1, 0x50
/* 802B893C 002AE6BC  83 A5 00 00 */	lwz r29, 0(r5)
/* 802B8940 002AE6C0  7C E5 3B 78 */	mr r5, r7
/* 802B8944 002AE6C4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802B8948 002AE6C8  90 C1 00 48 */	stw r6, 0x48(r1)
/* 802B894C 002AE6CC  C0 84 00 5C */	lfs f4, 0x5c(r4)
/* 802B8950 002AE6D0  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 802B8954 002AE6D4  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 802B8958 002AE6D8  C0 67 00 5C */	lfs f3, 0x5c(r7)
/* 802B895C 002AE6DC  EC 20 01 32 */	fmuls f1, f0, f4
/* 802B8960 002AE6E0  ED 45 20 28 */	fsubs f10, f5, f4
/* 802B8964 002AE6E4  C0 47 00 4C */	lfs f2, 0x4c(r7)
/* 802B8968 002AE6E8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 802B896C 002AE6EC  C0 84 00 40 */	lfs f4, 0x40(r4)
/* 802B8970 002AE6F0  EC A3 10 28 */	fsubs f5, f3, f2
/* 802B8974 002AE6F4  C0 64 00 50 */	lfs f3, 0x50(r4)
/* 802B8978 002AE6F8  EC 41 02 B2 */	fmuls f2, f1, f10
/* 802B897C 002AE6FC  C0 C4 00 44 */	lfs f6, 0x44(r4)
/* 802B8980 002AE700  ED A4 18 28 */	fsubs f13, f4, f3
/* 802B8984 002AE704  C0 64 00 54 */	lfs f3, 0x54(r4)
/* 802B8988 002AE708  C0 E4 00 48 */	lfs f7, 0x48(r4)
/* 802B898C 002AE70C  ED 86 18 28 */	fsubs f12, f6, f3
/* 802B8990 002AE710  C0 64 00 58 */	lfs f3, 0x58(r4)
/* 802B8994 002AE714  EC 40 11 7A */	fmadds f2, f0, f5, f2
/* 802B8998 002AE718  C0 C7 00 50 */	lfs f6, 0x50(r7)
/* 802B899C 002AE71C  EC 81 03 72 */	fmuls f4, f1, f13
/* 802B89A0 002AE720  ED 67 18 28 */	fsubs f11, f7, f3
/* 802B89A4 002AE724  C0 67 00 40 */	lfs f3, 0x40(r7)
/* 802B89A8 002AE728  C1 07 00 54 */	lfs f8, 0x54(r7)
/* 802B89AC 002AE72C  ED 26 18 28 */	fsubs f9, f6, f3
/* 802B89B0 002AE730  C0 67 00 44 */	lfs f3, 0x44(r7)
/* 802B89B4 002AE734  C0 E7 00 58 */	lfs f7, 0x58(r7)
/* 802B89B8 002AE738  C0 C7 00 48 */	lfs f6, 0x48(r7)
/* 802B89BC 002AE73C  ED 08 18 28 */	fsubs f8, f8, f3
/* 802B89C0 002AE740  EC 61 03 32 */	fmuls f3, f1, f12
/* 802B89C4 002AE744  EC C7 30 28 */	fsubs f6, f7, f6
/* 802B89C8 002AE748  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 802B89CC 002AE74C  EC 41 02 F2 */	fmuls f2, f1, f11
/* 802B89D0 002AE750  EC 80 22 7A */	fmadds f4, f0, f9, f4
/* 802B89D4 002AE754  D1 A1 00 20 */	stfs f13, 0x20(r1)
/* 802B89D8 002AE758  EC 60 1A 3A */	fmadds f3, f0, f8, f3
/* 802B89DC 002AE75C  EC 40 11 BA */	fmadds f2, f0, f6, f2
/* 802B89E0 002AE760  D1 81 00 24 */	stfs f12, 0x24(r1)
/* 802B89E4 002AE764  D0 81 00 A0 */	stfs f4, 0xa0(r1)
/* 802B89E8 002AE768  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 802B89EC 002AE76C  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 802B89F0 002AE770  C0 47 00 9C */	lfs f2, 0x9c(r7)
/* 802B89F4 002AE774  C0 84 00 9C */	lfs f4, 0x9c(r4)
/* 802B89F8 002AE778  EC 60 00 B2 */	fmuls f3, f0, f2
/* 802B89FC 002AE77C  C0 47 00 A0 */	lfs f2, 0xa0(r7)
/* 802B8A00 002AE780  EC 81 01 32 */	fmuls f4, f1, f4
/* 802B8A04 002AE784  C0 04 00 A0 */	lfs f0, 0xa0(r4)
/* 802B8A08 002AE788  D1 61 00 28 */	stfs f11, 0x28(r1)
/* 802B8A0C 002AE78C  EC 22 00 F2 */	fmuls f1, f2, f3
/* 802B8A10 002AE790  D1 41 00 2C */	stfs f10, 0x2c(r1)
/* 802B8A14 002AE794  EC 00 09 3A */	fmadds f0, f0, f4, f1
/* 802B8A18 002AE798  D1 21 00 30 */	stfs f9, 0x30(r1)
/* 802B8A1C 002AE79C  D1 01 00 34 */	stfs f8, 0x34(r1)
/* 802B8A20 002AE7A0  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 802B8A24 002AE7A4  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 802B8A28 002AE7A8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 802B8A2C 002AE7AC  4B FC EB D5 */	bl hkTransform$7setMulInverseMul
/* 802B8A30 002AE7B0  83 9D 00 18 */	lwz r28, 0x18(r29)
/* 802B8A34 002AE7B4  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802B8A38 002AE7B8  38 1C 00 01 */	addi r0, r28, 1
/* 802B8A3C 002AE7BC  54 04 10 3A */	slwi r4, r0, 2
/* 802B8A40 002AE7C0  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 802B8A44 002AE7C4  38 84 00 10 */	addi r4, r4, 0x10
/* 802B8A48 002AE7C8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802B8A4C 002AE7CC  54 84 00 36 */	rlwinm r4, r4, 0, 0, 0x1b
/* 802B8A50 002AE7D0  7C A6 22 14 */	add r5, r6, r4
/* 802B8A54 002AE7D4  7C 05 00 40 */	cmplw r5, r0
/* 802B8A58 002AE7D8  41 81 00 0C */	bgt lbl_802B8A64
/* 802B8A5C 002AE7DC  90 A3 00 10 */	stw r5, 0x10(r3)
/* 802B8A60 002AE7E0  48 00 00 18 */	b lbl_802B8A78
lbl_802B8A64:
/* 802B8A64 002AE7E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802B8A68 002AE7E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802B8A6C 002AE7EC  7D 89 03 A6 */	mtctr r12
/* 802B8A70 002AE7F0  4E 80 04 21 */	bctrl 
/* 802B8A74 002AE7F4  7C 66 1B 78 */	mr r6, r3
lbl_802B8A78:
/* 802B8A78 002AE7F8  2C 1C 00 00 */	cmpwi r28, 0
/* 802B8A7C 002AE7FC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802B8A80 002AE800  7F 83 E3 78 */	mr r3, r28
/* 802B8A84 002AE804  38 A0 00 00 */	li r5, 0
/* 802B8A88 002AE808  38 80 00 00 */	li r4, 0
/* 802B8A8C 002AE80C  40 81 00 90 */	ble lbl_802B8B1C
/* 802B8A90 002AE810  57 80 E8 FF */	rlwinm. r0, r28, 0x1d, 3, 0x1f
/* 802B8A94 002AE814  7C 09 03 A6 */	mtctr r0
/* 802B8A98 002AE818  41 82 00 70 */	beq lbl_802B8B08
lbl_802B8A9C:
/* 802B8A9C 002AE81C  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8AA0 002AE820  38 A5 00 01 */	addi r5, r5, 1
/* 802B8AA4 002AE824  38 84 00 04 */	addi r4, r4, 4
/* 802B8AA8 002AE828  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8AAC 002AE82C  38 A5 00 01 */	addi r5, r5, 1
/* 802B8AB0 002AE830  38 84 00 04 */	addi r4, r4, 4
/* 802B8AB4 002AE834  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8AB8 002AE838  38 A5 00 01 */	addi r5, r5, 1
/* 802B8ABC 002AE83C  38 84 00 04 */	addi r4, r4, 4
/* 802B8AC0 002AE840  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8AC4 002AE844  38 A5 00 01 */	addi r5, r5, 1
/* 802B8AC8 002AE848  38 84 00 04 */	addi r4, r4, 4
/* 802B8ACC 002AE84C  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8AD0 002AE850  38 A5 00 01 */	addi r5, r5, 1
/* 802B8AD4 002AE854  38 84 00 04 */	addi r4, r4, 4
/* 802B8AD8 002AE858  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8ADC 002AE85C  38 A5 00 01 */	addi r5, r5, 1
/* 802B8AE0 002AE860  38 84 00 04 */	addi r4, r4, 4
/* 802B8AE4 002AE864  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8AE8 002AE868  38 A5 00 01 */	addi r5, r5, 1
/* 802B8AEC 002AE86C  38 84 00 04 */	addi r4, r4, 4
/* 802B8AF0 002AE870  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8AF4 002AE874  38 A5 00 01 */	addi r5, r5, 1
/* 802B8AF8 002AE878  38 84 00 04 */	addi r4, r4, 4
/* 802B8AFC 002AE87C  42 00 FF A0 */	bdnz lbl_802B8A9C
/* 802B8B00 002AE880  73 83 00 07 */	andi. r3, r28, 7
/* 802B8B04 002AE884  41 82 00 18 */	beq lbl_802B8B1C
lbl_802B8B08:
/* 802B8B08 002AE888  7C 69 03 A6 */	mtctr r3
lbl_802B8B0C:
/* 802B8B0C 002AE88C  7C A6 21 2E */	stwx r5, r6, r4
/* 802B8B10 002AE890  38 A5 00 01 */	addi r5, r5, 1
/* 802B8B14 002AE894  38 84 00 04 */	addi r4, r4, 4
/* 802B8B18 002AE898  42 00 FF F4 */	bdnz lbl_802B8B0C
lbl_802B8B1C:
/* 802B8B1C 002AE89C  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 802B8B20 002AE8A0  57 83 10 3A */	slwi r3, r28, 2
/* 802B8B24 002AE8A4  38 00 FF FF */	li r0, -1
/* 802B8B28 002AE8A8  7F A5 EB 78 */	mr r5, r29
/* 802B8B2C 002AE8AC  7C 06 19 2E */	stwx r0, r6, r3
/* 802B8B30 002AE8B0  7F 87 E3 78 */	mr r7, r28
/* 802B8B34 002AE8B4  7F E8 FB 78 */	mr r8, r31
/* 802B8B38 002AE8B8  38 7E 00 10 */	addi r3, r30, 0x10
/* 802B8B3C 002AE8BC  38 81 00 40 */	addi r4, r1, 0x40
/* 802B8B40 002AE8C0  48 04 41 B1 */	bl hkAgent1nMachine_Process
/* 802B8B44 002AE8C4  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802B8B48 002AE8C8  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802B8B4C 002AE8CC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802B8B50 002AE8D0  80 85 00 04 */	lwz r4, 4(r5)
/* 802B8B54 002AE8D4  7C 60 22 78 */	xor r0, r3, r4
/* 802B8B58 002AE8D8  7C 00 00 34 */	cntlzw r0, r0
/* 802B8B5C 002AE8DC  7C 60 00 30 */	slw r0, r3, r0
/* 802B8B60 002AE8E0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B8B64 002AE8E4  7C 03 07 74 */	extsb r3, r0
/* 802B8B68 002AE8E8  7C 03 00 D0 */	neg r0, r3
/* 802B8B6C 002AE8EC  7C 00 1B 78 */	or r0, r0, r3
/* 802B8B70 002AE8F0  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802B8B74 002AE8F4  41 82 00 24 */	beq lbl_802B8B98
/* 802B8B78 002AE8F8  3C 60 80 41 */	lis r3, lbl_8040FEB8@ha
/* 802B8B7C 002AE8FC  38 63 FE B8 */	addi r3, r3, lbl_8040FEB8@l
/* 802B8B80 002AE900  38 03 00 07 */	addi r0, r3, 7
/* 802B8B84 002AE904  90 04 00 00 */	stw r0, 0(r4)
/* 802B8B88 002AE908  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802B8B8C 002AE90C  38 04 00 0C */	addi r0, r4, 0xc
/* 802B8B90 002AE910  90 64 00 04 */	stw r3, 4(r4)
/* 802B8B94 002AE914  90 05 00 04 */	stw r0, 4(r5)
lbl_802B8B98:
/* 802B8B98 002AE918  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802B8B9C 002AE91C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802B8BA0 002AE920  90 83 00 10 */	stw r4, 0x10(r3)
/* 802B8BA4 002AE924  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B8BA8 002AE928  7C 04 00 40 */	cmplw r4, r0
/* 802B8BAC 002AE92C  40 82 00 14 */	bne lbl_802B8BC0
/* 802B8BB0 002AE930  81 83 00 00 */	lwz r12, 0(r3)
/* 802B8BB4 002AE934  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B8BB8 002AE938  7D 89 03 A6 */	mtctr r12
/* 802B8BBC 002AE93C  4E 80 04 21 */	bctrl 
lbl_802B8BC0:
/* 802B8BC0 002AE940  81 41 00 00 */	lwz r10, 0(r1)
/* 802B8BC4 002AE944  80 0A 00 04 */	lwz r0, 4(r10)
/* 802B8BC8 002AE948  83 EA FF FC */	lwz r31, -4(r10)
/* 802B8BCC 002AE94C  83 CA FF F8 */	lwz r30, -8(r10)
/* 802B8BD0 002AE950  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 802B8BD4 002AE954  83 8A FF F0 */	lwz r28, -0x10(r10)
/* 802B8BD8 002AE958  7C 08 03 A6 */	mtlr r0
/* 802B8BDC 002AE95C  7D 41 53 78 */	mr r1, r10
/* 802B8BE0 002AE960  4E 80 00 20 */	blr 

.global hkListAgent$7getClosestPoints
hkListAgent$7getClosestPoints:
/* 802B8BE4 002AE964  7C 83 23 78 */	mr r3, r4
/* 802B8BE8 002AE968  7C A4 2B 78 */	mr r4, r5
/* 802B8BEC 002AE96C  7C C5 33 78 */	mr r5, r6
/* 802B8BF0 002AE970  7C E6 3B 78 */	mr r6, r7
/* 802B8BF4 002AE974  48 00 00 04 */	b hkListAgent$7staticGetClosestPoints

.global hkListAgent$7staticGetClosestPoints
hkListAgent$7staticGetClosestPoints:
/* 802B8BF8 002AE978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8BFC 002AE97C  7C 08 02 A6 */	mflr r0
/* 802B8C00 002AE980  3D 20 80 53 */	lis r9, lbl_80532448@ha
/* 802B8C04 002AE984  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8C08 002AE988  39 29 24 48 */	addi r9, r9, lbl_80532448@l
/* 802B8C0C 002AE98C  81 09 00 04 */	lwz r8, 4(r9)
/* 802B8C10 002AE990  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 802B8C14 002AE994  7C E0 42 78 */	xor r0, r7, r8
/* 802B8C18 002AE998  7C 00 00 34 */	cntlzw r0, r0
/* 802B8C1C 002AE99C  7C E0 00 30 */	slw r0, r7, r0
/* 802B8C20 002AE9A0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B8C24 002AE9A4  7C 00 07 75 */	extsb. r0, r0
/* 802B8C28 002AE9A8  41 82 00 24 */	beq lbl_802B8C4C
/* 802B8C2C 002AE9AC  3C E0 80 41 */	lis r7, lbl_8040FEB8@ha
/* 802B8C30 002AE9B0  38 E7 FE B8 */	addi r7, r7, lbl_8040FEB8@l
/* 802B8C34 002AE9B4  38 07 00 0A */	addi r0, r7, 0xa
/* 802B8C38 002AE9B8  90 08 00 00 */	stw r0, 0(r8)
/* 802B8C3C 002AE9BC  7C EC 42 E6 */	mftb r7, 0x10c
/* 802B8C40 002AE9C0  38 08 00 0C */	addi r0, r8, 0xc
/* 802B8C44 002AE9C4  90 E8 00 04 */	stw r7, 4(r8)
/* 802B8C48 002AE9C8  90 09 00 04 */	stw r0, 4(r9)
lbl_802B8C4C:
/* 802B8C4C 002AE9CC  4B FF 83 DD */	bl hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticGetClosestPoints
/* 802B8C50 002AE9D0  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802B8C54 002AE9D4  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802B8C58 002AE9D8  80 85 00 04 */	lwz r4, 4(r5)
/* 802B8C5C 002AE9DC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802B8C60 002AE9E0  7C 60 22 78 */	xor r0, r3, r4
/* 802B8C64 002AE9E4  7C 00 00 34 */	cntlzw r0, r0
/* 802B8C68 002AE9E8  7C 60 00 30 */	slw r0, r3, r0
/* 802B8C6C 002AE9EC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B8C70 002AE9F0  7C 00 07 75 */	extsb. r0, r0
/* 802B8C74 002AE9F4  41 82 00 24 */	beq lbl_802B8C98
/* 802B8C78 002AE9F8  3C 60 80 41 */	lis r3, lbl_8040FEB8@ha
/* 802B8C7C 002AE9FC  38 63 FE B8 */	addi r3, r3, lbl_8040FEB8@l
/* 802B8C80 002AEA00  38 03 00 07 */	addi r0, r3, 7
/* 802B8C84 002AEA04  90 04 00 00 */	stw r0, 0(r4)
/* 802B8C88 002AEA08  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802B8C8C 002AEA0C  38 04 00 0C */	addi r0, r4, 0xc
/* 802B8C90 002AEA10  90 64 00 04 */	stw r3, 4(r4)
/* 802B8C94 002AEA14  90 05 00 04 */	stw r0, 4(r5)
lbl_802B8C98:
/* 802B8C98 002AEA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8C9C 002AEA1C  7C 08 03 A6 */	mtlr r0
/* 802B8CA0 002AEA20  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8CA4 002AEA24  4E 80 00 20 */	blr 

.global hkListAgent$7linearCast
hkListAgent$7linearCast:
/* 802B8CA8 002AEA28  7C 83 23 78 */	mr r3, r4
/* 802B8CAC 002AEA2C  7C A4 2B 78 */	mr r4, r5
/* 802B8CB0 002AEA30  7C C5 33 78 */	mr r5, r6
/* 802B8CB4 002AEA34  7C E6 3B 78 */	mr r6, r7
/* 802B8CB8 002AEA38  7D 07 43 78 */	mr r7, r8
/* 802B8CBC 002AEA3C  48 00 00 04 */	b hkListAgent$7staticLinearCast

.global hkListAgent$7staticLinearCast
hkListAgent$7staticLinearCast:
/* 802B8CC0 002AEA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8CC4 002AEA44  7C 08 02 A6 */	mflr r0
/* 802B8CC8 002AEA48  3D 40 80 53 */	lis r10, lbl_80532448@ha
/* 802B8CCC 002AEA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8CD0 002AEA50  39 4A 24 48 */	addi r10, r10, lbl_80532448@l
/* 802B8CD4 002AEA54  81 2A 00 04 */	lwz r9, 4(r10)
/* 802B8CD8 002AEA58  81 0A 00 0C */	lwz r8, 0xc(r10)
/* 802B8CDC 002AEA5C  7D 00 4A 78 */	xor r0, r8, r9
/* 802B8CE0 002AEA60  7C 00 00 34 */	cntlzw r0, r0
/* 802B8CE4 002AEA64  7D 00 00 30 */	slw r0, r8, r0
/* 802B8CE8 002AEA68  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B8CEC 002AEA6C  7C 00 07 75 */	extsb. r0, r0
/* 802B8CF0 002AEA70  41 82 00 24 */	beq lbl_802B8D14
/* 802B8CF4 002AEA74  3D 00 80 41 */	lis r8, lbl_8040FEB8@ha
/* 802B8CF8 002AEA78  39 08 FE B8 */	addi r8, r8, lbl_8040FEB8@l
/* 802B8CFC 002AEA7C  38 08 00 0A */	addi r0, r8, 0xa
/* 802B8D00 002AEA80  90 09 00 00 */	stw r0, 0(r9)
/* 802B8D04 002AEA84  7D 0C 42 E6 */	mftb r8, 0x10c
/* 802B8D08 002AEA88  38 09 00 0C */	addi r0, r9, 0xc
/* 802B8D0C 002AEA8C  91 09 00 04 */	stw r8, 4(r9)
/* 802B8D10 002AEA90  90 0A 00 04 */	stw r0, 4(r10)
lbl_802B8D14:
/* 802B8D14 002AEA94  4B FF 83 5D */	bl hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticLinearCast
/* 802B8D18 002AEA98  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802B8D1C 002AEA9C  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802B8D20 002AEAA0  80 85 00 04 */	lwz r4, 4(r5)
/* 802B8D24 002AEAA4  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802B8D28 002AEAA8  7C 60 22 78 */	xor r0, r3, r4
/* 802B8D2C 002AEAAC  7C 00 00 34 */	cntlzw r0, r0
/* 802B8D30 002AEAB0  7C 60 00 30 */	slw r0, r3, r0
/* 802B8D34 002AEAB4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B8D38 002AEAB8  7C 00 07 75 */	extsb. r0, r0
/* 802B8D3C 002AEABC  41 82 00 24 */	beq lbl_802B8D60
/* 802B8D40 002AEAC0  3C 60 80 41 */	lis r3, lbl_8040FEB8@ha
/* 802B8D44 002AEAC4  38 63 FE B8 */	addi r3, r3, lbl_8040FEB8@l
/* 802B8D48 002AEAC8  38 03 00 07 */	addi r0, r3, 7
/* 802B8D4C 002AEACC  90 04 00 00 */	stw r0, 0(r4)
/* 802B8D50 002AEAD0  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802B8D54 002AEAD4  38 04 00 0C */	addi r0, r4, 0xc
/* 802B8D58 002AEAD8  90 64 00 04 */	stw r3, 4(r4)
/* 802B8D5C 002AEADC  90 05 00 04 */	stw r0, 4(r5)
lbl_802B8D60:
/* 802B8D60 002AEAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8D64 002AEAE4  7C 08 03 A6 */	mtlr r0
/* 802B8D68 002AEAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8D6C 002AEAEC  4E 80 00 20 */	blr 

.global hkListAgent$7getPenetrations
hkListAgent$7getPenetrations:
/* 802B8D70 002AEAF0  7C 83 23 78 */	mr r3, r4
/* 802B8D74 002AEAF4  7C A4 2B 78 */	mr r4, r5
/* 802B8D78 002AEAF8  7C C5 33 78 */	mr r5, r6
/* 802B8D7C 002AEAFC  7C E6 3B 78 */	mr r6, r7
/* 802B8D80 002AEB00  48 00 00 04 */	b hkListAgent$7staticGetPenetrations

.global hkListAgent$7staticGetPenetrations
hkListAgent$7staticGetPenetrations:
/* 802B8D84 002AEB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8D88 002AEB08  7C 08 02 A6 */	mflr r0
/* 802B8D8C 002AEB0C  3D 20 80 53 */	lis r9, lbl_80532448@ha
/* 802B8D90 002AEB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8D94 002AEB14  39 29 24 48 */	addi r9, r9, lbl_80532448@l
/* 802B8D98 002AEB18  81 09 00 04 */	lwz r8, 4(r9)
/* 802B8D9C 002AEB1C  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 802B8DA0 002AEB20  7C E0 42 78 */	xor r0, r7, r8
/* 802B8DA4 002AEB24  7C 00 00 34 */	cntlzw r0, r0
/* 802B8DA8 002AEB28  7C E0 00 30 */	slw r0, r7, r0
/* 802B8DAC 002AEB2C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B8DB0 002AEB30  7C 00 07 75 */	extsb. r0, r0
/* 802B8DB4 002AEB34  41 82 00 24 */	beq lbl_802B8DD8
/* 802B8DB8 002AEB38  3C E0 80 41 */	lis r7, lbl_8040FEB8@ha
/* 802B8DBC 002AEB3C  38 E7 FE B8 */	addi r7, r7, lbl_8040FEB8@l
/* 802B8DC0 002AEB40  38 07 00 0A */	addi r0, r7, 0xa
/* 802B8DC4 002AEB44  90 08 00 00 */	stw r0, 0(r8)
/* 802B8DC8 002AEB48  7C EC 42 E6 */	mftb r7, 0x10c
/* 802B8DCC 002AEB4C  38 08 00 0C */	addi r0, r8, 0xc
/* 802B8DD0 002AEB50  90 E8 00 04 */	stw r7, 4(r8)
/* 802B8DD4 002AEB54  90 09 00 04 */	stw r0, 4(r9)
lbl_802B8DD8:
/* 802B8DD8 002AEB58  4B FF 82 09 */	bl hkSymmetricAgentLinearCast$022hkShapeCollectionAgent$1$7staticGetPenetrations
/* 802B8DDC 002AEB5C  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802B8DE0 002AEB60  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802B8DE4 002AEB64  80 85 00 04 */	lwz r4, 4(r5)
/* 802B8DE8 002AEB68  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802B8DEC 002AEB6C  7C 60 22 78 */	xor r0, r3, r4
/* 802B8DF0 002AEB70  7C 00 00 34 */	cntlzw r0, r0
/* 802B8DF4 002AEB74  7C 60 00 30 */	slw r0, r3, r0
/* 802B8DF8 002AEB78  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B8DFC 002AEB7C  7C 00 07 75 */	extsb. r0, r0
/* 802B8E00 002AEB80  41 82 00 24 */	beq lbl_802B8E24
/* 802B8E04 002AEB84  3C 60 80 41 */	lis r3, lbl_8040FEB8@ha
/* 802B8E08 002AEB88  38 63 FE B8 */	addi r3, r3, lbl_8040FEB8@l
/* 802B8E0C 002AEB8C  38 03 00 07 */	addi r0, r3, 7
/* 802B8E10 002AEB90  90 04 00 00 */	stw r0, 0(r4)
/* 802B8E14 002AEB94  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802B8E18 002AEB98  38 04 00 0C */	addi r0, r4, 0xc
/* 802B8E1C 002AEB9C  90 64 00 04 */	stw r3, 4(r4)
/* 802B8E20 002AEBA0  90 05 00 04 */	stw r0, 4(r5)
lbl_802B8E24:
/* 802B8E24 002AEBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8E28 002AEBA8  7C 08 03 A6 */	mtlr r0
/* 802B8E2C 002AEBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8E30 002AEBB0  4E 80 00 20 */	blr 

.global hkListAgent$7updateShapeCollectionFilter
hkListAgent$7updateShapeCollectionFilter:
/* 802B8E34 002AEBB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8E38 002AEBB8  7C 08 02 A6 */	mflr r0
/* 802B8E3C 002AEBBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8E40 002AEBC0  80 05 00 00 */	lwz r0, 0(r5)
/* 802B8E44 002AEBC4  90 81 00 08 */	stw r4, 8(r1)
/* 802B8E48 002AEBC8  38 81 00 08 */	addi r4, r1, 8
/* 802B8E4C 002AEBCC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802B8E50 002AEBD0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802B8E54 002AEBD4  80 A3 00 08 */	lwz r5, 8(r3)
/* 802B8E58 002AEBD8  38 63 00 10 */	addi r3, r3, 0x10
/* 802B8E5C 002AEBDC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802B8E60 002AEBE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B8E64 002AEBE4  48 04 5B F1 */	bl hkAgent1nMachine_UpdateShapeCollectionFilter
/* 802B8E68 002AEBE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8E6C 002AEBEC  7C 08 03 A6 */	mtlr r0
/* 802B8E70 002AEBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8E74 002AEBF4  4E 80 00 20 */	blr 

