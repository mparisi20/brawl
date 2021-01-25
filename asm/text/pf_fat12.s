.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFiPFFAT12_ReadFATEntry
VFiPFFAT12_ReadFATEntry:
/* 803B8524 003AE2A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B8528 003AE2A8  7C 08 02 A6 */	mflr r0
/* 803B852C 003AE2AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B8530 003AE2B0  39 61 00 30 */	addi r11, r1, 0x30
/* 803B8534 003AE2B4  48 03 8D E5 */	bl _savegpr_25
/* 803B8538 003AE2B8  2C 03 00 00 */	cmpwi r3, 0
/* 803B853C 003AE2BC  7C 7C 1B 78 */	mr r28, r3
/* 803B8540 003AE2C0  7C 9D 23 78 */	mr r29, r4
/* 803B8544 003AE2C4  7C BE 2B 78 */	mr r30, r5
/* 803B8548 003AE2C8  40 82 00 14 */	bne lbl_803B855C
/* 803B854C 003AE2CC  38 00 FF FF */	li r0, -1
/* 803B8550 003AE2D0  38 60 00 0A */	li r3, 0xa
/* 803B8554 003AE2D4  90 05 00 00 */	stw r0, 0(r5)
/* 803B8558 003AE2D8  48 00 01 98 */	b lbl_803B86F0
lbl_803B855C:
/* 803B855C 003AE2DC  28 04 00 02 */	cmplwi r4, 2
/* 803B8560 003AE2E0  41 80 00 14 */	blt lbl_803B8574
/* 803B8564 003AE2E4  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 803B8568 003AE2E8  38 06 00 02 */	addi r0, r6, 2
/* 803B856C 003AE2EC  7C 04 00 40 */	cmplw r4, r0
/* 803B8570 003AE2F0  41 80 00 24 */	blt lbl_803B8594
lbl_803B8574:
/* 803B8574 003AE2F4  2C 04 00 00 */	cmpwi r4, 0
/* 803B8578 003AE2F8  41 82 00 1C */	beq lbl_803B8594
/* 803B857C 003AE2FC  28 04 00 01 */	cmplwi r4, 1
/* 803B8580 003AE300  41 82 00 14 */	beq lbl_803B8594
/* 803B8584 003AE304  38 00 FF FF */	li r0, -1
/* 803B8588 003AE308  38 60 00 0E */	li r3, 0xe
/* 803B858C 003AE30C  90 05 00 00 */	stw r0, 0(r5)
/* 803B8590 003AE310  48 00 01 60 */	b lbl_803B86F0
lbl_803B8594:
/* 803B8594 003AE314  7C 80 0E 70 */	srawi r0, r4, 1
/* 803B8598 003AE318  A0 E3 00 18 */	lhz r7, 0x18(r3)
/* 803B859C 003AE31C  7C 04 02 14 */	add r0, r4, r0
/* 803B85A0 003AE320  88 A3 00 20 */	lbz r5, 0x20(r3)
/* 803B85A4 003AE324  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 803B85A8 003AE328  A0 83 00 00 */	lhz r4, 0(r3)
/* 803B85AC 003AE32C  54 E0 06 31 */	rlwinm. r0, r7, 0, 0x18, 0x18
/* 803B85B0 003AE330  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 803B85B4 003AE334  7D 03 2E 30 */	sraw r3, r8, r5
/* 803B85B8 003AE338  3B E0 00 01 */	li r31, 1
/* 803B85BC 003AE33C  38 04 FF FF */	addi r0, r4, -1
/* 803B85C0 003AE340  7C 66 1A 14 */	add r3, r6, r3
/* 803B85C4 003AE344  54 79 04 3E */	clrlwi r25, r3, 0x10
/* 803B85C8 003AE348  7D 00 00 38 */	and r0, r8, r0
/* 803B85CC 003AE34C  41 82 00 08 */	beq lbl_803B85D4
/* 803B85D0 003AE350  54 FF 07 7E */	clrlwi r31, r7, 0x1d
lbl_803B85D4:
/* 803B85D4 003AE354  54 1B 04 3E */	clrlwi r27, r0, 0x10
lbl_803B85D8:
/* 803B85D8 003AE358  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803B85DC 003AE35C  38 03 FF FF */	addi r0, r3, -1
/* 803B85E0 003AE360  7C 1B 00 00 */	cmpw r27, r0
/* 803B85E4 003AE364  40 80 00 24 */	bge lbl_803B8608
/* 803B85E8 003AE368  7F 83 E3 78 */	mr r3, r28
/* 803B85EC 003AE36C  7F 66 DB 78 */	mr r6, r27
/* 803B85F0 003AE370  38 81 00 08 */	addi r4, r1, 8
/* 803B85F4 003AE374  57 25 04 3E */	clrlwi r5, r25, 0x10
/* 803B85F8 003AE378  38 E0 00 02 */	li r7, 2
/* 803B85FC 003AE37C  48 00 79 CD */	bl VFiPFSEC_ReadFAT
/* 803B8600 003AE380  7C 7A 1B 78 */	mr r26, r3
/* 803B8604 003AE384  48 00 00 48 */	b lbl_803B864C
lbl_803B8608:
/* 803B8608 003AE388  7F 83 E3 78 */	mr r3, r28
/* 803B860C 003AE38C  7F 66 DB 78 */	mr r6, r27
/* 803B8610 003AE390  38 81 00 08 */	addi r4, r1, 8
/* 803B8614 003AE394  57 25 04 3E */	clrlwi r5, r25, 0x10
/* 803B8618 003AE398  38 E0 00 01 */	li r7, 1
/* 803B861C 003AE39C  48 00 79 AD */	bl VFiPFSEC_ReadFAT
/* 803B8620 003AE3A0  2C 03 00 00 */	cmpwi r3, 0
/* 803B8624 003AE3A4  7C 7A 1B 78 */	mr r26, r3
/* 803B8628 003AE3A8  40 82 00 24 */	bne lbl_803B864C
/* 803B862C 003AE3AC  57 25 04 3E */	clrlwi r5, r25, 0x10
/* 803B8630 003AE3B0  7F 83 E3 78 */	mr r3, r28
/* 803B8634 003AE3B4  38 81 00 09 */	addi r4, r1, 9
/* 803B8638 003AE3B8  38 C0 00 00 */	li r6, 0
/* 803B863C 003AE3BC  38 A5 00 01 */	addi r5, r5, 1
/* 803B8640 003AE3C0  38 E0 00 01 */	li r7, 1
/* 803B8644 003AE3C4  48 00 79 85 */	bl VFiPFSEC_ReadFAT
/* 803B8648 003AE3C8  7C 7A 1B 78 */	mr r26, r3
lbl_803B864C:
/* 803B864C 003AE3CC  2C 1A 10 00 */	cmpwi r26, 0x1000
/* 803B8650 003AE3D0  40 82 00 54 */	bne lbl_803B86A4
/* 803B8654 003AE3D4  81 9C 18 90 */	lwz r12, 0x1890(r28)
/* 803B8658 003AE3D8  2C 0C 00 00 */	cmpwi r12, 0
/* 803B865C 003AE3DC  41 82 00 48 */	beq lbl_803B86A4
/* 803B8660 003AE3E0  80 7C 18 70 */	lwz r3, 0x1870(r28)
/* 803B8664 003AE3E4  7D 89 03 A6 */	mtctr r12
/* 803B8668 003AE3E8  4E 80 04 21 */	bctrl 
/* 803B866C 003AE3EC  2C 03 00 00 */	cmpwi r3, 0
/* 803B8670 003AE3F0  41 82 00 4C */	beq lbl_803B86BC
/* 803B8674 003AE3F4  2C 03 00 01 */	cmpwi r3, 1
/* 803B8678 003AE3F8  40 82 00 2C */	bne lbl_803B86A4
/* 803B867C 003AE3FC  88 1C 00 22 */	lbz r0, 0x22(r28)
/* 803B8680 003AE400  28 00 00 02 */	cmplwi r0, 2
/* 803B8684 003AE404  41 80 00 20 */	blt lbl_803B86A4
/* 803B8688 003AE408  7C 1F 00 40 */	cmplw r31, r0
/* 803B868C 003AE40C  40 80 00 18 */	bge lbl_803B86A4
/* 803B8690 003AE410  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 803B8694 003AE414  3B FF 00 01 */	addi r31, r31, 1
/* 803B8698 003AE418  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803B869C 003AE41C  7F 39 02 14 */	add r25, r25, r0
/* 803B86A0 003AE420  48 00 00 1C */	b lbl_803B86BC
lbl_803B86A4:
/* 803B86A4 003AE424  2C 1A 00 00 */	cmpwi r26, 0
/* 803B86A8 003AE428  41 82 00 14 */	beq lbl_803B86BC
/* 803B86AC 003AE42C  38 00 FF FF */	li r0, -1
/* 803B86B0 003AE430  7F 43 D3 78 */	mr r3, r26
/* 803B86B4 003AE434  90 1E 00 00 */	stw r0, 0(r30)
/* 803B86B8 003AE438  48 00 00 38 */	b lbl_803B86F0
lbl_803B86BC:
/* 803B86BC 003AE43C  2C 1A 00 00 */	cmpwi r26, 0
/* 803B86C0 003AE440  40 82 FF 18 */	bne lbl_803B85D8
/* 803B86C4 003AE444  57 A0 07 FF */	clrlwi. r0, r29, 0x1f
/* 803B86C8 003AE448  A0 61 00 08 */	lhz r3, 8(r1)
/* 803B86CC 003AE44C  54 60 44 2E */	rlwinm r0, r3, 8, 0x10, 0x17
/* 803B86D0 003AE450  50 60 C6 3E */	rlwimi r0, r3, 0x18, 0x18, 0x1f
/* 803B86D4 003AE454  41 82 00 10 */	beq lbl_803B86E4
/* 803B86D8 003AE458  54 00 E5 3E */	rlwinm r0, r0, 0x1c, 0x14, 0x1f
/* 803B86DC 003AE45C  90 1E 00 00 */	stw r0, 0(r30)
/* 803B86E0 003AE460  48 00 00 0C */	b lbl_803B86EC
lbl_803B86E4:
/* 803B86E4 003AE464  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 803B86E8 003AE468  90 1E 00 00 */	stw r0, 0(r30)
lbl_803B86EC:
/* 803B86EC 003AE46C  38 60 00 00 */	li r3, 0
lbl_803B86F0:
/* 803B86F0 003AE470  39 61 00 30 */	addi r11, r1, 0x30
/* 803B86F4 003AE474  48 03 8C 71 */	bl _restgpr_25
/* 803B86F8 003AE478  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B86FC 003AE47C  7C 08 03 A6 */	mtlr r0
/* 803B8700 003AE480  38 21 00 30 */	addi r1, r1, 0x30
/* 803B8704 003AE484  4E 80 00 20 */	blr 

.global VFiPFFAT12_ReadFATEntryPage
VFiPFFAT12_ReadFATEntryPage:
/* 803B8708 003AE488  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B870C 003AE48C  7C 08 02 A6 */	mflr r0
/* 803B8710 003AE490  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B8714 003AE494  39 61 00 30 */	addi r11, r1, 0x30
/* 803B8718 003AE498  48 03 8B FD */	bl _savegpr_24
/* 803B871C 003AE49C  2C 03 00 00 */	cmpwi r3, 0
/* 803B8720 003AE4A0  7C 78 1B 78 */	mr r24, r3
/* 803B8724 003AE4A4  7C 99 23 78 */	mr r25, r4
/* 803B8728 003AE4A8  7C BA 2B 78 */	mr r26, r5
/* 803B872C 003AE4AC  7C DB 33 78 */	mr r27, r6
/* 803B8730 003AE4B0  40 82 00 0C */	bne lbl_803B873C
/* 803B8734 003AE4B4  38 60 00 0A */	li r3, 0xa
/* 803B8738 003AE4B8  48 00 02 8C */	b lbl_803B89C4
lbl_803B873C:
/* 803B873C 003AE4BC  28 04 00 02 */	cmplwi r4, 2
/* 803B8740 003AE4C0  41 80 00 14 */	blt lbl_803B8754
/* 803B8744 003AE4C4  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 803B8748 003AE4C8  38 05 00 02 */	addi r0, r5, 2
/* 803B874C 003AE4CC  7C 04 00 40 */	cmplw r4, r0
/* 803B8750 003AE4D0  41 80 00 1C */	blt lbl_803B876C
lbl_803B8754:
/* 803B8754 003AE4D4  2C 04 00 00 */	cmpwi r4, 0
/* 803B8758 003AE4D8  41 82 00 14 */	beq lbl_803B876C
/* 803B875C 003AE4DC  28 04 00 01 */	cmplwi r4, 1
/* 803B8760 003AE4E0  41 82 00 0C */	beq lbl_803B876C
/* 803B8764 003AE4E4  38 60 00 0E */	li r3, 0xe
/* 803B8768 003AE4E8  48 00 02 5C */	b lbl_803B89C4
lbl_803B876C:
/* 803B876C 003AE4EC  54 80 FC 7E */	rlwinm r0, r4, 0x1f, 0x11, 0x1f
/* 803B8770 003AE4F0  A0 A3 00 18 */	lhz r5, 0x18(r3)
/* 803B8774 003AE4F4  7C 04 02 14 */	add r0, r4, r0
/* 803B8778 003AE4F8  88 83 00 20 */	lbz r4, 0x20(r3)
/* 803B877C 003AE4FC  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 803B8780 003AE500  80 63 00 28 */	lwz r3, 0x28(r3)
/* 803B8784 003AE504  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 803B8788 003AE508  3B 80 00 01 */	li r28, 1
/* 803B878C 003AE50C  7F E0 24 30 */	srw r0, r31, r4
/* 803B8790 003AE510  7C 03 02 14 */	add r0, r3, r0
/* 803B8794 003AE514  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803B8798 003AE518  41 82 00 08 */	beq lbl_803B87A0
/* 803B879C 003AE51C  54 BC 07 7E */	clrlwi r28, r5, 0x1d
lbl_803B87A0:
/* 803B87A0 003AE520  3B C0 00 00 */	li r30, 0
lbl_803B87A4:
/* 803B87A4 003AE524  2C 1E 10 00 */	cmpwi r30, 0x1000
/* 803B87A8 003AE528  40 82 00 5C */	bne lbl_803B8804
/* 803B87AC 003AE52C  81 98 18 90 */	lwz r12, 0x1890(r24)
/* 803B87B0 003AE530  2C 0C 00 00 */	cmpwi r12, 0
/* 803B87B4 003AE534  41 82 00 50 */	beq lbl_803B8804
/* 803B87B8 003AE538  80 78 18 70 */	lwz r3, 0x1870(r24)
/* 803B87BC 003AE53C  7D 89 03 A6 */	mtctr r12
/* 803B87C0 003AE540  4E 80 04 21 */	bctrl 
/* 803B87C4 003AE544  2C 03 00 00 */	cmpwi r3, 0
/* 803B87C8 003AE548  40 82 00 0C */	bne lbl_803B87D4
/* 803B87CC 003AE54C  3B C0 00 00 */	li r30, 0
/* 803B87D0 003AE550  4B FF FF D4 */	b lbl_803B87A4
lbl_803B87D4:
/* 803B87D4 003AE554  2C 03 00 01 */	cmpwi r3, 1
/* 803B87D8 003AE558  40 82 01 AC */	bne lbl_803B8984
/* 803B87DC 003AE55C  88 18 00 22 */	lbz r0, 0x22(r24)
/* 803B87E0 003AE560  28 00 00 02 */	cmplwi r0, 2
/* 803B87E4 003AE564  41 80 01 A0 */	blt lbl_803B8984
/* 803B87E8 003AE568  7C 1C 00 40 */	cmplw r28, r0
/* 803B87EC 003AE56C  40 80 01 98 */	bge lbl_803B8984
/* 803B87F0 003AE570  80 18 00 0C */	lwz r0, 0xc(r24)
/* 803B87F4 003AE574  3B C0 00 00 */	li r30, 0
/* 803B87F8 003AE578  3B 9C 00 01 */	addi r28, r28, 1
/* 803B87FC 003AE57C  7F BD 02 14 */	add r29, r29, r0
/* 803B8800 003AE580  4B FF FF A4 */	b lbl_803B87A4
lbl_803B8804:
/* 803B8804 003AE584  80 9B 00 00 */	lwz r4, 0(r27)
/* 803B8808 003AE588  80 C4 00 18 */	lwz r6, 0x18(r4)
/* 803B880C 003AE58C  7C 06 E8 40 */	cmplw r6, r29
/* 803B8810 003AE590  41 81 00 14 */	bgt lbl_803B8824
/* 803B8814 003AE594  80 18 16 00 */	lwz r0, 0x1600(r24)
/* 803B8818 003AE598  7C 06 02 14 */	add r0, r6, r0
/* 803B881C 003AE59C  7C 00 E8 40 */	cmplw r0, r29
/* 803B8820 003AE5A0  41 81 00 44 */	bgt lbl_803B8864
lbl_803B8824:
/* 803B8824 003AE5A4  A0 04 00 02 */	lhz r0, 2(r4)
/* 803B8828 003AE5A8  28 00 00 01 */	cmplwi r0, 1
/* 803B882C 003AE5AC  40 82 00 18 */	bne lbl_803B8844
/* 803B8830 003AE5B0  7F 03 C3 78 */	mr r3, r24
/* 803B8834 003AE5B4  4B FF E7 4D */	bl VFiPFFAT_UpdateFATEntry
/* 803B8838 003AE5B8  2C 03 00 00 */	cmpwi r3, 0
/* 803B883C 003AE5BC  41 82 00 08 */	beq lbl_803B8844
/* 803B8840 003AE5C0  48 00 01 84 */	b lbl_803B89C4
lbl_803B8844:
/* 803B8844 003AE5C4  7F 03 C3 78 */	mr r3, r24
/* 803B8848 003AE5C8  7F A4 EB 78 */	mr r4, r29
/* 803B884C 003AE5CC  7F 65 DB 78 */	mr r5, r27
/* 803B8850 003AE5D0  4B FF 76 8D */	bl VFiPFCACHE_ReadFATPage
/* 803B8854 003AE5D4  2C 03 00 00 */	cmpwi r3, 0
/* 803B8858 003AE5D8  7C 7E 1B 78 */	mr r30, r3
/* 803B885C 003AE5DC  40 82 FF 48 */	bne lbl_803B87A4
/* 803B8860 003AE5E0  48 00 00 30 */	b lbl_803B8890
lbl_803B8864:
/* 803B8864 003AE5E4  80 64 00 04 */	lwz r3, 4(r4)
/* 803B8868 003AE5E8  80 A4 00 08 */	lwz r5, 8(r4)
/* 803B886C 003AE5EC  88 18 00 20 */	lbz r0, 0x20(r24)
/* 803B8870 003AE5F0  7C 63 28 50 */	subf r3, r3, r5
/* 803B8874 003AE5F4  7C 60 06 30 */	sraw r0, r3, r0
/* 803B8878 003AE5F8  7C 06 02 14 */	add r0, r6, r0
/* 803B887C 003AE5FC  7C 1D 00 40 */	cmplw r29, r0
/* 803B8880 003AE600  41 82 00 10 */	beq lbl_803B8890
/* 803B8884 003AE604  A0 18 00 00 */	lhz r0, 0(r24)
/* 803B8888 003AE608  7C 05 02 14 */	add r0, r5, r0
/* 803B888C 003AE60C  90 04 00 08 */	stw r0, 8(r4)
lbl_803B8890:
/* 803B8890 003AE610  A0 78 00 00 */	lhz r3, 0(r24)
/* 803B8894 003AE614  38 03 FF FF */	addi r0, r3, -1
/* 803B8898 003AE618  7F E5 00 38 */	and r5, r31, r0
/* 803B889C 003AE61C  7C 05 00 40 */	cmplw r5, r0
/* 803B88A0 003AE620  40 82 00 C4 */	bne lbl_803B8964
/* 803B88A4 003AE624  80 7B 00 00 */	lwz r3, 0(r27)
/* 803B88A8 003AE628  38 DD 00 01 */	addi r6, r29, 1
/* 803B88AC 003AE62C  80 63 00 08 */	lwz r3, 8(r3)
/* 803B88B0 003AE630  7C 03 28 AE */	lbzx r0, r3, r5
/* 803B88B4 003AE634  90 1A 00 00 */	stw r0, 0(r26)
/* 803B88B8 003AE638  80 9B 00 00 */	lwz r4, 0(r27)
/* 803B88BC 003AE63C  80 E4 00 18 */	lwz r7, 0x18(r4)
/* 803B88C0 003AE640  7C 07 30 40 */	cmplw r7, r6
/* 803B88C4 003AE644  41 81 00 14 */	bgt lbl_803B88D8
/* 803B88C8 003AE648  80 18 16 00 */	lwz r0, 0x1600(r24)
/* 803B88CC 003AE64C  7C 07 02 14 */	add r0, r7, r0
/* 803B88D0 003AE650  7C 00 30 40 */	cmplw r0, r6
/* 803B88D4 003AE654  41 81 00 44 */	bgt lbl_803B8918
lbl_803B88D8:
/* 803B88D8 003AE658  A0 04 00 02 */	lhz r0, 2(r4)
/* 803B88DC 003AE65C  28 00 00 01 */	cmplwi r0, 1
/* 803B88E0 003AE660  40 82 00 18 */	bne lbl_803B88F8
/* 803B88E4 003AE664  7F 03 C3 78 */	mr r3, r24
/* 803B88E8 003AE668  4B FF E6 99 */	bl VFiPFFAT_UpdateFATEntry
/* 803B88EC 003AE66C  2C 03 00 00 */	cmpwi r3, 0
/* 803B88F0 003AE670  41 82 00 08 */	beq lbl_803B88F8
/* 803B88F4 003AE674  48 00 00 D0 */	b lbl_803B89C4
lbl_803B88F8:
/* 803B88F8 003AE678  7F 03 C3 78 */	mr r3, r24
/* 803B88FC 003AE67C  7F 65 DB 78 */	mr r5, r27
/* 803B8900 003AE680  38 9D 00 01 */	addi r4, r29, 1
/* 803B8904 003AE684  4B FF 75 D9 */	bl VFiPFCACHE_ReadFATPage
/* 803B8908 003AE688  2C 03 00 00 */	cmpwi r3, 0
/* 803B890C 003AE68C  7C 7E 1B 78 */	mr r30, r3
/* 803B8910 003AE690  41 82 00 34 */	beq lbl_803B8944
/* 803B8914 003AE694  48 00 00 B0 */	b lbl_803B89C4
lbl_803B8918:
/* 803B8918 003AE698  80 64 00 04 */	lwz r3, 4(r4)
/* 803B891C 003AE69C  80 A4 00 08 */	lwz r5, 8(r4)
/* 803B8920 003AE6A0  88 18 00 20 */	lbz r0, 0x20(r24)
/* 803B8924 003AE6A4  7C 63 28 50 */	subf r3, r3, r5
/* 803B8928 003AE6A8  7C 60 06 30 */	sraw r0, r3, r0
/* 803B892C 003AE6AC  7C 07 02 14 */	add r0, r7, r0
/* 803B8930 003AE6B0  7C 06 00 40 */	cmplw r6, r0
/* 803B8934 003AE6B4  41 82 00 10 */	beq lbl_803B8944
/* 803B8938 003AE6B8  A0 18 00 00 */	lhz r0, 0(r24)
/* 803B893C 003AE6BC  7C 05 02 14 */	add r0, r5, r0
/* 803B8940 003AE6C0  90 04 00 08 */	stw r0, 8(r4)
lbl_803B8944:
/* 803B8944 003AE6C4  80 7B 00 00 */	lwz r3, 0(r27)
/* 803B8948 003AE6C8  80 9A 00 00 */	lwz r4, 0(r26)
/* 803B894C 003AE6CC  80 63 00 08 */	lwz r3, 8(r3)
/* 803B8950 003AE6D0  88 03 00 00 */	lbz r0, 0(r3)
/* 803B8954 003AE6D4  54 00 40 2E */	slwi r0, r0, 8
/* 803B8958 003AE6D8  7C 04 02 14 */	add r0, r4, r0
/* 803B895C 003AE6DC  90 1A 00 00 */	stw r0, 0(r26)
/* 803B8960 003AE6E0  48 00 00 24 */	b lbl_803B8984
lbl_803B8964:
/* 803B8964 003AE6E4  80 7B 00 00 */	lwz r3, 0(r27)
/* 803B8968 003AE6E8  80 83 00 08 */	lwz r4, 8(r3)
/* 803B896C 003AE6EC  7C 64 2A 14 */	add r3, r4, r5
/* 803B8970 003AE6F0  7C 04 28 AE */	lbzx r0, r4, r5
/* 803B8974 003AE6F4  88 63 00 01 */	lbz r3, 1(r3)
/* 803B8978 003AE6F8  54 63 40 2E */	slwi r3, r3, 8
/* 803B897C 003AE6FC  7C 03 02 14 */	add r0, r3, r0
/* 803B8980 003AE700  90 1A 00 00 */	stw r0, 0(r26)
lbl_803B8984:
/* 803B8984 003AE704  2C 1E 00 00 */	cmpwi r30, 0
/* 803B8988 003AE708  41 82 00 14 */	beq lbl_803B899C
/* 803B898C 003AE70C  38 00 FF FF */	li r0, -1
/* 803B8990 003AE710  7F C3 F3 78 */	mr r3, r30
/* 803B8994 003AE714  90 1A 00 00 */	stw r0, 0(r26)
/* 803B8998 003AE718  48 00 00 2C */	b lbl_803B89C4
lbl_803B899C:
/* 803B899C 003AE71C  57 20 07 FF */	clrlwi. r0, r25, 0x1f
/* 803B89A0 003AE720  41 82 00 14 */	beq lbl_803B89B4
/* 803B89A4 003AE724  80 1A 00 00 */	lwz r0, 0(r26)
/* 803B89A8 003AE728  54 00 E1 3E */	srwi r0, r0, 4
/* 803B89AC 003AE72C  90 1A 00 00 */	stw r0, 0(r26)
/* 803B89B0 003AE730  48 00 00 10 */	b lbl_803B89C0
lbl_803B89B4:
/* 803B89B4 003AE734  80 1A 00 00 */	lwz r0, 0(r26)
/* 803B89B8 003AE738  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 803B89BC 003AE73C  90 1A 00 00 */	stw r0, 0(r26)
lbl_803B89C0:
/* 803B89C0 003AE740  38 60 00 00 */	li r3, 0
lbl_803B89C4:
/* 803B89C4 003AE744  39 61 00 30 */	addi r11, r1, 0x30
/* 803B89C8 003AE748  48 03 89 99 */	bl _restgpr_24
/* 803B89CC 003AE74C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B89D0 003AE750  7C 08 03 A6 */	mtlr r0
/* 803B89D4 003AE754  38 21 00 30 */	addi r1, r1, 0x30
/* 803B89D8 003AE758  4E 80 00 20 */	blr 

.global VFiPFFAT12_WriteFATEntry
VFiPFFAT12_WriteFATEntry:
/* 803B89DC 003AE75C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B89E0 003AE760  7C 08 02 A6 */	mflr r0
/* 803B89E4 003AE764  2C 03 00 00 */	cmpwi r3, 0
/* 803B89E8 003AE768  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B89EC 003AE76C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B89F0 003AE770  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B89F4 003AE774  7C BE 2B 78 */	mr r30, r5
/* 803B89F8 003AE778  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803B89FC 003AE77C  7C 7D 1B 78 */	mr r29, r3
/* 803B8A00 003AE780  93 81 00 10 */	stw r28, 0x10(r1)
/* 803B8A04 003AE784  40 82 00 0C */	bne lbl_803B8A10
/* 803B8A08 003AE788  38 60 00 0A */	li r3, 0xa
/* 803B8A0C 003AE78C  48 00 01 54 */	b lbl_803B8B60
lbl_803B8A10:
/* 803B8A10 003AE790  28 04 00 02 */	cmplwi r4, 2
/* 803B8A14 003AE794  41 80 00 14 */	blt lbl_803B8A28
/* 803B8A18 003AE798  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 803B8A1C 003AE79C  38 05 00 02 */	addi r0, r5, 2
/* 803B8A20 003AE7A0  7C 04 00 40 */	cmplw r4, r0
/* 803B8A24 003AE7A4  41 80 00 1C */	blt lbl_803B8A40
lbl_803B8A28:
/* 803B8A28 003AE7A8  2C 04 00 00 */	cmpwi r4, 0
/* 803B8A2C 003AE7AC  41 82 00 14 */	beq lbl_803B8A40
/* 803B8A30 003AE7B0  28 04 00 01 */	cmplwi r4, 1
/* 803B8A34 003AE7B4  41 82 00 0C */	beq lbl_803B8A40
/* 803B8A38 003AE7B8  38 60 00 0E */	li r3, 0xe
/* 803B8A3C 003AE7BC  48 00 01 24 */	b lbl_803B8B60
lbl_803B8A40:
/* 803B8A40 003AE7C0  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 803B8A44 003AE7C4  7C 85 0E 70 */	srawi r5, r4, 1
/* 803B8A48 003AE7C8  7C 04 2A 14 */	add r0, r4, r5
/* 803B8A4C 003AE7CC  A0 83 00 00 */	lhz r4, 0(r3)
/* 803B8A50 003AE7D0  88 A3 00 20 */	lbz r5, 0x20(r3)
/* 803B8A54 003AE7D4  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 803B8A58 003AE7D8  81 03 00 28 */	lwz r8, 0x28(r3)
/* 803B8A5C 003AE7DC  7C E0 2E 30 */	sraw r0, r7, r5
/* 803B8A60 003AE7E0  38 C4 FF FF */	addi r6, r4, -1
/* 803B8A64 003AE7E4  7C 08 02 14 */	add r0, r8, r0
/* 803B8A68 003AE7E8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 803B8A6C 003AE7EC  7C FC 30 38 */	and r28, r7, r6
/* 803B8A70 003AE7F0  41 82 00 40 */	beq lbl_803B8AB0
/* 803B8A74 003AE7F4  7F A3 EB 78 */	mr r3, r29
/* 803B8A78 003AE7F8  7F E5 FB 78 */	mr r5, r31
/* 803B8A7C 003AE7FC  38 81 00 08 */	addi r4, r1, 8
/* 803B8A80 003AE800  57 86 04 3E */	clrlwi r6, r28, 0x10
/* 803B8A84 003AE804  38 E0 00 01 */	li r7, 1
/* 803B8A88 003AE808  48 00 75 41 */	bl VFiPFSEC_ReadFAT
/* 803B8A8C 003AE80C  2C 03 00 00 */	cmpwi r3, 0
/* 803B8A90 003AE810  41 82 00 08 */	beq lbl_803B8A98
/* 803B8A94 003AE814  48 00 00 CC */	b lbl_803B8B60
lbl_803B8A98:
/* 803B8A98 003AE818  88 01 00 08 */	lbz r0, 8(r1)
/* 803B8A9C 003AE81C  57 C3 23 36 */	rlwinm r3, r30, 4, 0xc, 0x1b
/* 803B8AA0 003AE820  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 803B8AA4 003AE824  7C 03 02 14 */	add r0, r3, r0
/* 803B8AA8 003AE828  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803B8AAC 003AE82C  48 00 00 4C */	b lbl_803B8AF8
lbl_803B8AB0:
/* 803B8AB0 003AE830  38 E7 00 01 */	addi r7, r7, 1
/* 803B8AB4 003AE834  7F A3 EB 78 */	mr r3, r29
/* 803B8AB8 003AE838  7C E0 2E 30 */	sraw r0, r7, r5
/* 803B8ABC 003AE83C  38 81 00 08 */	addi r4, r1, 8
/* 803B8AC0 003AE840  7C A8 02 14 */	add r5, r8, r0
/* 803B8AC4 003AE844  7C E0 30 38 */	and r0, r7, r6
/* 803B8AC8 003AE848  38 E0 00 01 */	li r7, 1
/* 803B8ACC 003AE84C  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 803B8AD0 003AE850  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 803B8AD4 003AE854  48 00 74 F5 */	bl VFiPFSEC_ReadFAT
/* 803B8AD8 003AE858  2C 03 00 00 */	cmpwi r3, 0
/* 803B8ADC 003AE85C  41 82 00 08 */	beq lbl_803B8AE4
/* 803B8AE0 003AE860  48 00 00 80 */	b lbl_803B8B60
lbl_803B8AE4:
/* 803B8AE4 003AE864  88 61 00 08 */	lbz r3, 8(r1)
/* 803B8AE8 003AE868  57 C0 05 3E */	clrlwi r0, r30, 0x14
/* 803B8AEC 003AE86C  54 63 44 26 */	rlwinm r3, r3, 8, 0x10, 0x13
/* 803B8AF0 003AE870  7C 03 02 14 */	add r0, r3, r0
/* 803B8AF4 003AE874  54 03 04 3E */	clrlwi r3, r0, 0x10
lbl_803B8AF8:
/* 803B8AF8 003AE878  38 01 00 08 */	addi r0, r1, 8
/* 803B8AFC 003AE87C  57 86 04 3E */	clrlwi r6, r28, 0x10
/* 803B8B00 003AE880  7C 60 07 2C */	sthbrx r3, 0, r0
/* 803B8B04 003AE884  A0 7D 00 00 */	lhz r3, 0(r29)
/* 803B8B08 003AE888  38 03 FF FF */	addi r0, r3, -1
/* 803B8B0C 003AE88C  7C 06 00 00 */	cmpw r6, r0
/* 803B8B10 003AE890  40 80 00 1C */	bge lbl_803B8B2C
/* 803B8B14 003AE894  7F A3 EB 78 */	mr r3, r29
/* 803B8B18 003AE898  7F E5 FB 78 */	mr r5, r31
/* 803B8B1C 003AE89C  38 81 00 08 */	addi r4, r1, 8
/* 803B8B20 003AE8A0  38 E0 00 02 */	li r7, 2
/* 803B8B24 003AE8A4  48 00 78 3D */	bl VFiPFSEC_WriteFAT
/* 803B8B28 003AE8A8  48 00 00 38 */	b lbl_803B8B60
lbl_803B8B2C:
/* 803B8B2C 003AE8AC  7F A3 EB 78 */	mr r3, r29
/* 803B8B30 003AE8B0  7F E5 FB 78 */	mr r5, r31
/* 803B8B34 003AE8B4  38 81 00 08 */	addi r4, r1, 8
/* 803B8B38 003AE8B8  38 E0 00 01 */	li r7, 1
/* 803B8B3C 003AE8BC  48 00 78 25 */	bl VFiPFSEC_WriteFAT
/* 803B8B40 003AE8C0  2C 03 00 00 */	cmpwi r3, 0
/* 803B8B44 003AE8C4  40 82 00 1C */	bne lbl_803B8B60
/* 803B8B48 003AE8C8  7F A3 EB 78 */	mr r3, r29
/* 803B8B4C 003AE8CC  38 81 00 09 */	addi r4, r1, 9
/* 803B8B50 003AE8D0  38 BF 00 01 */	addi r5, r31, 1
/* 803B8B54 003AE8D4  38 C0 00 00 */	li r6, 0
/* 803B8B58 003AE8D8  38 E0 00 01 */	li r7, 1
/* 803B8B5C 003AE8DC  48 00 78 05 */	bl VFiPFSEC_WriteFAT
lbl_803B8B60:
/* 803B8B60 003AE8E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B8B64 003AE8E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B8B68 003AE8E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B8B6C 003AE8EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803B8B70 003AE8F0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803B8B74 003AE8F4  7C 08 03 A6 */	mtlr r0
/* 803B8B78 003AE8F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803B8B7C 003AE8FC  4E 80 00 20 */	blr 

.global VFiPFFAT12_WriteFATEntryPage
VFiPFFAT12_WriteFATEntryPage:
/* 803B8B80 003AE900  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B8B84 003AE904  7C 08 02 A6 */	mflr r0
/* 803B8B88 003AE908  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B8B8C 003AE90C  39 61 00 30 */	addi r11, r1, 0x30
/* 803B8B90 003AE910  48 03 87 85 */	bl _savegpr_24
/* 803B8B94 003AE914  2C 03 00 00 */	cmpwi r3, 0
/* 803B8B98 003AE918  7C 79 1B 78 */	mr r25, r3
/* 803B8B9C 003AE91C  7C 9A 23 78 */	mr r26, r4
/* 803B8BA0 003AE920  7C BB 2B 78 */	mr r27, r5
/* 803B8BA4 003AE924  7C DC 33 78 */	mr r28, r6
/* 803B8BA8 003AE928  3B C0 00 00 */	li r30, 0
/* 803B8BAC 003AE92C  40 82 00 0C */	bne lbl_803B8BB8
/* 803B8BB0 003AE930  38 60 00 0A */	li r3, 0xa
/* 803B8BB4 003AE934  48 00 04 40 */	b lbl_803B8FF4
lbl_803B8BB8:
/* 803B8BB8 003AE938  28 04 00 02 */	cmplwi r4, 2
/* 803B8BBC 003AE93C  41 80 00 14 */	blt lbl_803B8BD0
/* 803B8BC0 003AE940  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 803B8BC4 003AE944  38 05 00 02 */	addi r0, r5, 2
/* 803B8BC8 003AE948  7C 04 00 40 */	cmplw r4, r0
/* 803B8BCC 003AE94C  41 80 00 1C */	blt lbl_803B8BE8
lbl_803B8BD0:
/* 803B8BD0 003AE950  2C 04 00 00 */	cmpwi r4, 0
/* 803B8BD4 003AE954  41 82 00 14 */	beq lbl_803B8BE8
/* 803B8BD8 003AE958  28 04 00 01 */	cmplwi r4, 1
/* 803B8BDC 003AE95C  41 82 00 0C */	beq lbl_803B8BE8
/* 803B8BE0 003AE960  38 60 00 0E */	li r3, 0xe
/* 803B8BE4 003AE964  48 00 04 10 */	b lbl_803B8FF4
lbl_803B8BE8:
/* 803B8BE8 003AE968  54 80 FC 7E */	rlwinm r0, r4, 0x1f, 0x11, 0x1f
/* 803B8BEC 003AE96C  88 E3 00 20 */	lbz r7, 0x20(r3)
/* 803B8BF0 003AE970  7C 04 02 14 */	add r0, r4, r0
/* 803B8BF4 003AE974  80 A6 00 00 */	lwz r5, 0(r6)
/* 803B8BF8 003AE978  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 803B8BFC 003AE97C  80 83 00 28 */	lwz r4, 0x28(r3)
/* 803B8C00 003AE980  7C C0 3C 30 */	srw r0, r6, r7
/* 803B8C04 003AE984  A1 03 00 00 */	lhz r8, 0(r3)
/* 803B8C08 003AE988  7C 04 02 14 */	add r0, r4, r0
/* 803B8C0C 003AE98C  80 85 00 18 */	lwz r4, 0x18(r5)
/* 803B8C10 003AE990  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803B8C14 003AE994  7C 04 E8 40 */	cmplw r4, r29
/* 803B8C18 003AE998  38 08 FF FF */	addi r0, r8, -1
/* 803B8C1C 003AE99C  7C DF 00 38 */	and r31, r6, r0
/* 803B8C20 003AE9A0  41 81 00 14 */	bgt lbl_803B8C34
/* 803B8C24 003AE9A4  80 03 16 00 */	lwz r0, 0x1600(r3)
/* 803B8C28 003AE9A8  7C 04 02 14 */	add r0, r4, r0
/* 803B8C2C 003AE9AC  7C 00 E8 40 */	cmplw r0, r29
/* 803B8C30 003AE9B0  41 81 00 B4 */	bgt lbl_803B8CE4
lbl_803B8C34:
/* 803B8C34 003AE9B4  7F 23 CB 78 */	mr r3, r25
/* 803B8C38 003AE9B8  7C A4 2B 78 */	mr r4, r5
/* 803B8C3C 003AE9BC  4B FF E3 45 */	bl VFiPFFAT_UpdateFATEntry
/* 803B8C40 003AE9C0  2C 03 00 00 */	cmpwi r3, 0
/* 803B8C44 003AE9C4  41 82 00 08 */	beq lbl_803B8C4C
/* 803B8C48 003AE9C8  48 00 03 AC */	b lbl_803B8FF4
lbl_803B8C4C:
/* 803B8C4C 003AE9CC  A0 79 00 18 */	lhz r3, 0x18(r25)
/* 803B8C50 003AE9D0  3B 00 00 01 */	li r24, 1
/* 803B8C54 003AE9D4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 803B8C58 003AE9D8  41 82 00 08 */	beq lbl_803B8C60
/* 803B8C5C 003AE9DC  54 78 07 7E */	clrlwi r24, r3, 0x1d
lbl_803B8C60:
/* 803B8C60 003AE9E0  7F 23 CB 78 */	mr r3, r25
/* 803B8C64 003AE9E4  7F A4 EB 78 */	mr r4, r29
/* 803B8C68 003AE9E8  7F 85 E3 78 */	mr r5, r28
/* 803B8C6C 003AE9EC  4B FF 72 71 */	bl VFiPFCACHE_ReadFATPage
/* 803B8C70 003AE9F0  2C 03 10 00 */	cmpwi r3, 0x1000
/* 803B8C74 003AE9F4  7C 7E 1B 78 */	mr r30, r3
/* 803B8C78 003AE9F8  40 82 00 50 */	bne lbl_803B8CC8
/* 803B8C7C 003AE9FC  81 99 18 90 */	lwz r12, 0x1890(r25)
/* 803B8C80 003AEA00  2C 0C 00 00 */	cmpwi r12, 0
/* 803B8C84 003AEA04  41 82 00 44 */	beq lbl_803B8CC8
/* 803B8C88 003AEA08  80 79 18 70 */	lwz r3, 0x1870(r25)
/* 803B8C8C 003AEA0C  7D 89 03 A6 */	mtctr r12
/* 803B8C90 003AEA10  4E 80 04 21 */	bctrl 
/* 803B8C94 003AEA14  2C 03 00 00 */	cmpwi r3, 0
/* 803B8C98 003AEA18  41 82 00 40 */	beq lbl_803B8CD8
/* 803B8C9C 003AEA1C  2C 03 00 01 */	cmpwi r3, 1
/* 803B8CA0 003AEA20  40 82 00 28 */	bne lbl_803B8CC8
/* 803B8CA4 003AEA24  88 19 00 22 */	lbz r0, 0x22(r25)
/* 803B8CA8 003AEA28  28 00 00 02 */	cmplwi r0, 2
/* 803B8CAC 003AEA2C  41 80 00 1C */	blt lbl_803B8CC8
/* 803B8CB0 003AEA30  7C 18 00 40 */	cmplw r24, r0
/* 803B8CB4 003AEA34  40 80 00 14 */	bge lbl_803B8CC8
/* 803B8CB8 003AEA38  80 19 00 0C */	lwz r0, 0xc(r25)
/* 803B8CBC 003AEA3C  3B 18 00 01 */	addi r24, r24, 1
/* 803B8CC0 003AEA40  7F BD 02 14 */	add r29, r29, r0
/* 803B8CC4 003AEA44  48 00 00 14 */	b lbl_803B8CD8
lbl_803B8CC8:
/* 803B8CC8 003AEA48  2C 1E 00 00 */	cmpwi r30, 0
/* 803B8CCC 003AEA4C  41 82 00 0C */	beq lbl_803B8CD8
/* 803B8CD0 003AEA50  7F C3 F3 78 */	mr r3, r30
/* 803B8CD4 003AEA54  48 00 03 20 */	b lbl_803B8FF4
lbl_803B8CD8:
/* 803B8CD8 003AEA58  2C 1E 00 00 */	cmpwi r30, 0
/* 803B8CDC 003AEA5C  40 82 FF 84 */	bne lbl_803B8C60
/* 803B8CE0 003AEA60  48 00 00 28 */	b lbl_803B8D08
lbl_803B8CE4:
/* 803B8CE4 003AEA64  80 05 00 04 */	lwz r0, 4(r5)
/* 803B8CE8 003AEA68  80 65 00 08 */	lwz r3, 8(r5)
/* 803B8CEC 003AEA6C  7C 00 18 50 */	subf r0, r0, r3
/* 803B8CF0 003AEA70  7C 00 3E 30 */	sraw r0, r0, r7
/* 803B8CF4 003AEA74  7C 04 02 14 */	add r0, r4, r0
/* 803B8CF8 003AEA78  7C 1D 00 40 */	cmplw r29, r0
/* 803B8CFC 003AEA7C  41 82 00 0C */	beq lbl_803B8D08
/* 803B8D00 003AEA80  7C 03 42 14 */	add r0, r3, r8
/* 803B8D04 003AEA84  90 05 00 08 */	stw r0, 8(r5)
lbl_803B8D08:
/* 803B8D08 003AEA88  57 40 07 FF */	clrlwi. r0, r26, 0x1f
/* 803B8D0C 003AEA8C  41 82 01 70 */	beq lbl_803B8E7C
/* 803B8D10 003AEA90  80 9C 00 00 */	lwz r4, 0(r28)
/* 803B8D14 003AEA94  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803B8D18 003AEA98  80 84 00 08 */	lwz r4, 8(r4)
/* 803B8D1C 003AEA9C  7C 04 18 AE */	lbzx r0, r4, r3
/* 803B8D20 003AEAA0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 803B8D24 003AEAA4  53 60 26 36 */	rlwimi r0, r27, 4, 0x18, 0x1b
/* 803B8D28 003AEAA8  7C 04 19 AE */	stbx r0, r4, r3
/* 803B8D2C 003AEAAC  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8D30 003AEAB0  4B FF 6F 51 */	bl VFiPFCACHE_UpdateModifiedSector
/* 803B8D34 003AEAB4  A1 19 00 00 */	lhz r8, 0(r25)
/* 803B8D38 003AEAB8  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 803B8D3C 003AEABC  38 08 FF FF */	addi r0, r8, -1
/* 803B8D40 003AEAC0  7C 05 00 40 */	cmplw r5, r0
/* 803B8D44 003AEAC4  40 82 01 20 */	bne lbl_803B8E64
/* 803B8D48 003AEAC8  80 9C 00 00 */	lwz r4, 0(r28)
/* 803B8D4C 003AEACC  38 DD 00 01 */	addi r6, r29, 1
/* 803B8D50 003AEAD0  80 E4 00 18 */	lwz r7, 0x18(r4)
/* 803B8D54 003AEAD4  7C 07 30 40 */	cmplw r7, r6
/* 803B8D58 003AEAD8  41 81 00 14 */	bgt lbl_803B8D6C
/* 803B8D5C 003AEADC  80 19 16 00 */	lwz r0, 0x1600(r25)
/* 803B8D60 003AEAE0  7C 07 02 14 */	add r0, r7, r0
/* 803B8D64 003AEAE4  7C 00 30 40 */	cmplw r0, r6
/* 803B8D68 003AEAE8  41 81 00 B8 */	bgt lbl_803B8E20
lbl_803B8D6C:
/* 803B8D6C 003AEAEC  7F 23 CB 78 */	mr r3, r25
/* 803B8D70 003AEAF0  4B FF E2 11 */	bl VFiPFFAT_UpdateFATEntry
/* 803B8D74 003AEAF4  2C 03 00 00 */	cmpwi r3, 0
/* 803B8D78 003AEAF8  41 82 00 08 */	beq lbl_803B8D80
/* 803B8D7C 003AEAFC  48 00 02 78 */	b lbl_803B8FF4
lbl_803B8D80:
/* 803B8D80 003AEB00  A0 79 00 18 */	lhz r3, 0x18(r25)
/* 803B8D84 003AEB04  3B 40 00 01 */	li r26, 1
/* 803B8D88 003AEB08  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 803B8D8C 003AEB0C  41 82 00 08 */	beq lbl_803B8D94
/* 803B8D90 003AEB10  54 7A 07 7E */	clrlwi r26, r3, 0x1d
lbl_803B8D94:
/* 803B8D94 003AEB14  7F 23 CB 78 */	mr r3, r25
/* 803B8D98 003AEB18  7F 85 E3 78 */	mr r5, r28
/* 803B8D9C 003AEB1C  38 9D 00 01 */	addi r4, r29, 1
/* 803B8DA0 003AEB20  4B FF 71 3D */	bl VFiPFCACHE_ReadFATPage
/* 803B8DA4 003AEB24  2C 03 10 00 */	cmpwi r3, 0x1000
/* 803B8DA8 003AEB28  7C 7E 1B 78 */	mr r30, r3
/* 803B8DAC 003AEB2C  40 82 00 50 */	bne lbl_803B8DFC
/* 803B8DB0 003AEB30  81 99 18 90 */	lwz r12, 0x1890(r25)
/* 803B8DB4 003AEB34  2C 0C 00 00 */	cmpwi r12, 0
/* 803B8DB8 003AEB38  41 82 00 44 */	beq lbl_803B8DFC
/* 803B8DBC 003AEB3C  80 79 18 70 */	lwz r3, 0x1870(r25)
/* 803B8DC0 003AEB40  7D 89 03 A6 */	mtctr r12
/* 803B8DC4 003AEB44  4E 80 04 21 */	bctrl 
/* 803B8DC8 003AEB48  2C 03 00 00 */	cmpwi r3, 0
/* 803B8DCC 003AEB4C  41 82 00 40 */	beq lbl_803B8E0C
/* 803B8DD0 003AEB50  2C 03 00 01 */	cmpwi r3, 1
/* 803B8DD4 003AEB54  40 82 00 28 */	bne lbl_803B8DFC
/* 803B8DD8 003AEB58  88 19 00 22 */	lbz r0, 0x22(r25)
/* 803B8DDC 003AEB5C  28 00 00 02 */	cmplwi r0, 2
/* 803B8DE0 003AEB60  41 80 00 1C */	blt lbl_803B8DFC
/* 803B8DE4 003AEB64  7C 1A 00 40 */	cmplw r26, r0
/* 803B8DE8 003AEB68  40 80 00 14 */	bge lbl_803B8DFC
/* 803B8DEC 003AEB6C  80 19 00 0C */	lwz r0, 0xc(r25)
/* 803B8DF0 003AEB70  3B 5A 00 01 */	addi r26, r26, 1
/* 803B8DF4 003AEB74  7F BD 02 14 */	add r29, r29, r0
/* 803B8DF8 003AEB78  48 00 00 14 */	b lbl_803B8E0C
lbl_803B8DFC:
/* 803B8DFC 003AEB7C  2C 1E 00 00 */	cmpwi r30, 0
/* 803B8E00 003AEB80  41 82 00 0C */	beq lbl_803B8E0C
/* 803B8E04 003AEB84  7F C3 F3 78 */	mr r3, r30
/* 803B8E08 003AEB88  48 00 01 EC */	b lbl_803B8FF4
lbl_803B8E0C:
/* 803B8E0C 003AEB8C  2C 1E 00 00 */	cmpwi r30, 0
/* 803B8E10 003AEB90  40 82 FF 84 */	bne lbl_803B8D94
/* 803B8E14 003AEB94  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8E18 003AEB98  4B FF 6E 69 */	bl VFiPFCACHE_UpdateModifiedSector
/* 803B8E1C 003AEB9C  48 00 00 34 */	b lbl_803B8E50
lbl_803B8E20:
/* 803B8E20 003AEBA0  80 64 00 04 */	lwz r3, 4(r4)
/* 803B8E24 003AEBA4  80 A4 00 08 */	lwz r5, 8(r4)
/* 803B8E28 003AEBA8  88 19 00 20 */	lbz r0, 0x20(r25)
/* 803B8E2C 003AEBAC  7C 63 28 50 */	subf r3, r3, r5
/* 803B8E30 003AEBB0  7C 60 06 30 */	sraw r0, r3, r0
/* 803B8E34 003AEBB4  7C 07 02 14 */	add r0, r7, r0
/* 803B8E38 003AEBB8  7C 06 00 40 */	cmplw r6, r0
/* 803B8E3C 003AEBBC  41 82 00 14 */	beq lbl_803B8E50
/* 803B8E40 003AEBC0  7C 05 42 14 */	add r0, r5, r8
/* 803B8E44 003AEBC4  90 04 00 08 */	stw r0, 8(r4)
/* 803B8E48 003AEBC8  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8E4C 003AEBCC  4B FF 6E 35 */	bl VFiPFCACHE_UpdateModifiedSector
lbl_803B8E50:
/* 803B8E50 003AEBD0  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8E54 003AEBD4  57 60 E6 3E */	rlwinm r0, r27, 0x1c, 0x18, 0x1f
/* 803B8E58 003AEBD8  80 63 00 08 */	lwz r3, 8(r3)
/* 803B8E5C 003AEBDC  98 03 00 00 */	stb r0, 0(r3)
/* 803B8E60 003AEBE0  48 00 01 90 */	b lbl_803B8FF0
lbl_803B8E64:
/* 803B8E64 003AEBE4  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8E68 003AEBE8  57 64 E6 3E */	rlwinm r4, r27, 0x1c, 0x18, 0x1f
/* 803B8E6C 003AEBEC  80 03 00 08 */	lwz r0, 8(r3)
/* 803B8E70 003AEBF0  7C 65 02 14 */	add r3, r5, r0
/* 803B8E74 003AEBF4  98 83 00 01 */	stb r4, 1(r3)
/* 803B8E78 003AEBF8  48 00 01 78 */	b lbl_803B8FF0
lbl_803B8E7C:
/* 803B8E7C 003AEBFC  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8E80 003AEC00  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 803B8E84 003AEC04  80 63 00 08 */	lwz r3, 8(r3)
/* 803B8E88 003AEC08  7F 63 01 AE */	stbx r27, r3, r0
/* 803B8E8C 003AEC0C  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8E90 003AEC10  4B FF 6D F1 */	bl VFiPFCACHE_UpdateModifiedSector
/* 803B8E94 003AEC14  A1 19 00 00 */	lhz r8, 0(r25)
/* 803B8E98 003AEC18  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 803B8E9C 003AEC1C  38 08 FF FF */	addi r0, r8, -1
/* 803B8EA0 003AEC20  7C 05 00 40 */	cmplw r5, r0
/* 803B8EA4 003AEC24  40 82 01 2C */	bne lbl_803B8FD0
/* 803B8EA8 003AEC28  80 9C 00 00 */	lwz r4, 0(r28)
/* 803B8EAC 003AEC2C  38 DD 00 01 */	addi r6, r29, 1
/* 803B8EB0 003AEC30  80 E4 00 18 */	lwz r7, 0x18(r4)
/* 803B8EB4 003AEC34  7C 07 30 40 */	cmplw r7, r6
/* 803B8EB8 003AEC38  41 81 00 14 */	bgt lbl_803B8ECC
/* 803B8EBC 003AEC3C  80 19 16 00 */	lwz r0, 0x1600(r25)
/* 803B8EC0 003AEC40  7C 07 02 14 */	add r0, r7, r0
/* 803B8EC4 003AEC44  7C 00 30 40 */	cmplw r0, r6
/* 803B8EC8 003AEC48  41 81 00 B8 */	bgt lbl_803B8F80
lbl_803B8ECC:
/* 803B8ECC 003AEC4C  7F 23 CB 78 */	mr r3, r25
/* 803B8ED0 003AEC50  4B FF E0 B1 */	bl VFiPFFAT_UpdateFATEntry
/* 803B8ED4 003AEC54  2C 03 00 00 */	cmpwi r3, 0
/* 803B8ED8 003AEC58  41 82 00 08 */	beq lbl_803B8EE0
/* 803B8EDC 003AEC5C  48 00 01 18 */	b lbl_803B8FF4
lbl_803B8EE0:
/* 803B8EE0 003AEC60  A0 79 00 18 */	lhz r3, 0x18(r25)
/* 803B8EE4 003AEC64  3B 40 00 01 */	li r26, 1
/* 803B8EE8 003AEC68  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 803B8EEC 003AEC6C  41 82 00 08 */	beq lbl_803B8EF4
/* 803B8EF0 003AEC70  54 7A 07 7E */	clrlwi r26, r3, 0x1d
lbl_803B8EF4:
/* 803B8EF4 003AEC74  7F 23 CB 78 */	mr r3, r25
/* 803B8EF8 003AEC78  7F 85 E3 78 */	mr r5, r28
/* 803B8EFC 003AEC7C  38 9D 00 01 */	addi r4, r29, 1
/* 803B8F00 003AEC80  4B FF 6F DD */	bl VFiPFCACHE_ReadFATPage
/* 803B8F04 003AEC84  2C 03 10 00 */	cmpwi r3, 0x1000
/* 803B8F08 003AEC88  7C 7E 1B 78 */	mr r30, r3
/* 803B8F0C 003AEC8C  40 82 00 50 */	bne lbl_803B8F5C
/* 803B8F10 003AEC90  81 99 18 90 */	lwz r12, 0x1890(r25)
/* 803B8F14 003AEC94  2C 0C 00 00 */	cmpwi r12, 0
/* 803B8F18 003AEC98  41 82 00 44 */	beq lbl_803B8F5C
/* 803B8F1C 003AEC9C  80 79 18 70 */	lwz r3, 0x1870(r25)
/* 803B8F20 003AECA0  7D 89 03 A6 */	mtctr r12
/* 803B8F24 003AECA4  4E 80 04 21 */	bctrl 
/* 803B8F28 003AECA8  2C 03 00 00 */	cmpwi r3, 0
/* 803B8F2C 003AECAC  41 82 00 40 */	beq lbl_803B8F6C
/* 803B8F30 003AECB0  2C 03 00 01 */	cmpwi r3, 1
/* 803B8F34 003AECB4  40 82 00 28 */	bne lbl_803B8F5C
/* 803B8F38 003AECB8  88 19 00 22 */	lbz r0, 0x22(r25)
/* 803B8F3C 003AECBC  28 00 00 02 */	cmplwi r0, 2
/* 803B8F40 003AECC0  41 80 00 1C */	blt lbl_803B8F5C
/* 803B8F44 003AECC4  7C 1A 00 40 */	cmplw r26, r0
/* 803B8F48 003AECC8  40 80 00 14 */	bge lbl_803B8F5C
/* 803B8F4C 003AECCC  80 19 00 0C */	lwz r0, 0xc(r25)
/* 803B8F50 003AECD0  3B 5A 00 01 */	addi r26, r26, 1
/* 803B8F54 003AECD4  7F BD 02 14 */	add r29, r29, r0
/* 803B8F58 003AECD8  48 00 00 14 */	b lbl_803B8F6C
lbl_803B8F5C:
/* 803B8F5C 003AECDC  2C 1E 00 00 */	cmpwi r30, 0
/* 803B8F60 003AECE0  41 82 00 0C */	beq lbl_803B8F6C
/* 803B8F64 003AECE4  7F C3 F3 78 */	mr r3, r30
/* 803B8F68 003AECE8  48 00 00 8C */	b lbl_803B8FF4
lbl_803B8F6C:
/* 803B8F6C 003AECEC  2C 1E 00 00 */	cmpwi r30, 0
/* 803B8F70 003AECF0  40 82 FF 84 */	bne lbl_803B8EF4
/* 803B8F74 003AECF4  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8F78 003AECF8  4B FF 6D 09 */	bl VFiPFCACHE_UpdateModifiedSector
/* 803B8F7C 003AECFC  48 00 00 34 */	b lbl_803B8FB0
lbl_803B8F80:
/* 803B8F80 003AED00  80 64 00 04 */	lwz r3, 4(r4)
/* 803B8F84 003AED04  80 A4 00 08 */	lwz r5, 8(r4)
/* 803B8F88 003AED08  88 19 00 20 */	lbz r0, 0x20(r25)
/* 803B8F8C 003AED0C  7C 63 28 50 */	subf r3, r3, r5
/* 803B8F90 003AED10  7C 60 06 30 */	sraw r0, r3, r0
/* 803B8F94 003AED14  7C 07 02 14 */	add r0, r7, r0
/* 803B8F98 003AED18  7C 06 00 40 */	cmplw r6, r0
/* 803B8F9C 003AED1C  41 82 00 14 */	beq lbl_803B8FB0
/* 803B8FA0 003AED20  7C 05 42 14 */	add r0, r5, r8
/* 803B8FA4 003AED24  90 04 00 08 */	stw r0, 8(r4)
/* 803B8FA8 003AED28  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8FAC 003AED2C  4B FF 6C D5 */	bl VFiPFCACHE_UpdateModifiedSector
lbl_803B8FB0:
/* 803B8FB0 003AED30  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B8FB4 003AED34  57 60 C6 3E */	rlwinm r0, r27, 0x18, 0x18, 0x1f
/* 803B8FB8 003AED38  80 83 00 08 */	lwz r4, 8(r3)
/* 803B8FBC 003AED3C  88 64 00 00 */	lbz r3, 0(r4)
/* 803B8FC0 003AED40  54 63 06 36 */	rlwinm r3, r3, 0, 0x18, 0x1b
/* 803B8FC4 003AED44  7C 60 03 78 */	or r0, r3, r0
/* 803B8FC8 003AED48  98 04 00 00 */	stb r0, 0(r4)
/* 803B8FCC 003AED4C  48 00 00 24 */	b lbl_803B8FF0
lbl_803B8FD0:
/* 803B8FD0 003AED50  80 9C 00 00 */	lwz r4, 0(r28)
/* 803B8FD4 003AED54  57 63 C6 3E */	rlwinm r3, r27, 0x18, 0x18, 0x1f
/* 803B8FD8 003AED58  80 04 00 08 */	lwz r0, 8(r4)
/* 803B8FDC 003AED5C  7C 85 02 14 */	add r4, r5, r0
/* 803B8FE0 003AED60  88 04 00 01 */	lbz r0, 1(r4)
/* 803B8FE4 003AED64  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 803B8FE8 003AED68  7C 60 03 78 */	or r0, r3, r0
/* 803B8FEC 003AED6C  98 04 00 01 */	stb r0, 1(r4)
lbl_803B8FF0:
/* 803B8FF0 003AED70  7F C3 F3 78 */	mr r3, r30
lbl_803B8FF4:
/* 803B8FF4 003AED74  39 61 00 30 */	addi r11, r1, 0x30
/* 803B8FF8 003AED78  48 03 83 69 */	bl _restgpr_24
/* 803B8FFC 003AED7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B9000 003AED80  7C 08 03 A6 */	mtlr r0
/* 803B9004 003AED84  38 21 00 30 */	addi r1, r1, 0x30
/* 803B9008 003AED88  4E 80 00 20 */	blr 

