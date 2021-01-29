.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfModuleHeader$7getTextSectionAdr
gfModuleHeader$7getTextSectionAdr:
/* 80026478 0001C1F8  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8002647C 0001C1FC  38 A0 00 00 */	li r5, 0
/* 80026480 0001C200  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80026484 0001C204  38 E0 00 00 */	li r7, 0
/* 80026488 0001C208  7C 03 30 40 */	cmplw r3, r6
/* 8002648C 0001C20C  40 80 00 0C */	bge lbl_80026498
/* 80026490 0001C210  38 E0 00 01 */	li r7, 1
/* 80026494 0001C214  48 00 00 08 */	b lbl_8002649C
lbl_80026498:
/* 80026498 0001C218  7C C3 32 14 */	add r6, r3, r6
lbl_8002649C:
/* 8002649C 0001C21C  7C 09 03 A6 */	mtctr r0
/* 800264A0 0001C220  28 00 00 00 */	cmplwi r0, 0
/* 800264A4 0001C224  40 81 00 2C */	ble lbl_800264D0
lbl_800264A8:
/* 800264A8 0001C228  80 86 00 00 */	lwz r4, 0(r6)
/* 800264AC 0001C22C  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800264B0 0001C230  41 82 00 18 */	beq lbl_800264C8
/* 800264B4 0001C234  2C 07 00 00 */	cmpwi r7, 0
/* 800264B8 0001C238  54 85 00 3C */	rlwinm r5, r4, 0, 0, 0x1e
/* 800264BC 0001C23C  40 82 00 14 */	bne lbl_800264D0
/* 800264C0 0001C240  7C A5 1A 14 */	add r5, r5, r3
/* 800264C4 0001C244  48 00 00 0C */	b lbl_800264D0
lbl_800264C8:
/* 800264C8 0001C248  38 C6 00 08 */	addi r6, r6, 8
/* 800264CC 0001C24C  42 00 FF DC */	bdnz lbl_800264A8
lbl_800264D0:
/* 800264D0 0001C250  7C A3 2B 78 */	mr r3, r5
/* 800264D4 0001C254  4E 80 00 20 */	blr 

.global gfModule$7create
gfModule$7create:
/* 800264D8 0001C258  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800264DC 0001C25C  7C 08 02 A6 */	mflr r0
/* 800264E0 0001C260  90 01 00 34 */	stw r0, 0x34(r1)
/* 800264E4 0001C264  39 61 00 30 */	addi r11, r1, 0x30
/* 800264E8 0001C268  48 3C AE 31 */	bl _savegpr_25
/* 800264EC 0001C26C  80 C4 00 20 */	lwz r6, 0x20(r4)
/* 800264F0 0001C270  7C BA 2B 78 */	mr r26, r5
/* 800264F4 0001C274  80 04 00 48 */	lwz r0, 0x48(r4)
/* 800264F8 0001C278  7C 7B 1B 78 */	mr r27, r3
/* 800264FC 0001C27C  7C 99 23 78 */	mr r25, r4
/* 80026500 0001C280  38 A0 00 20 */	li r5, 0x20
/* 80026504 0001C284  7F E6 02 14 */	add r31, r6, r0
/* 80026508 0001C288  38 9F 00 CC */	addi r4, r31, 0xcc
/* 8002650C 0001C28C  3B FF 00 40 */	addi r31, r31, 0x40
/* 80026510 0001C290  4B FF F7 49 */	bl gfMemoryPool$7alloc
/* 80026514 0001C294  2C 03 00 00 */	cmpwi r3, 0
/* 80026518 0001C298  7C 7E 1B 78 */	mr r30, r3
/* 8002651C 0001C29C  40 82 00 2C */	bne lbl_80026548
/* 80026520 0001C2A0  7F 63 DB 78 */	mr r3, r27
/* 80026524 0001C2A4  4B FF FB 91 */	bl gfMemoryPool$7dump
/* 80026528 0001C2A8  3C 60 80 42 */	lis r3, lbl_80422C68@ha
/* 8002652C 0001C2AC  7F E5 FB 78 */	mr r5, r31
/* 80026530 0001C2B0  7F 46 D3 78 */	mr r6, r26
/* 80026534 0001C2B4  38 9F 00 8C */	addi r4, r31, 0x8c
/* 80026538 0001C2B8  38 63 2C 68 */	addi r3, r3, lbl_80422C68@l
/* 8002653C 0001C2BC  4C C6 31 82 */	crclr 6
/* 80026540 0001C2C0  48 1B 20 C1 */	bl OSReport
/* 80026544 0001C2C4  48 1A EB 65 */	bl PPCHalt
lbl_80026548:
/* 80026548 0001C2C8  38 1E 00 2B */	addi r0, r30, 0x2b
/* 8002654C 0001C2CC  80 B9 00 48 */	lwz r5, 0x48(r25)
/* 80026550 0001C2D0  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
/* 80026554 0001C2D4  83 99 00 2C */	lwz r28, 0x2c(r25)
/* 80026558 0001C2D8  7C 7A 2A 14 */	add r3, r26, r5
/* 8002655C 0001C2DC  83 79 00 28 */	lwz r27, 0x28(r25)
/* 80026560 0001C2E0  38 03 00 1F */	addi r0, r3, 0x1f
/* 80026564 0001C2E4  7F 24 CB 78 */	mr r4, r25
/* 80026568 0001C2E8  7F 43 D3 78 */	mr r3, r26
/* 8002656C 0001C2EC  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 80026570 0001C2F0  4B FD DD C9 */	bl func_80004338
/* 80026574 0001C2F4  80 79 00 24 */	lwz r3, 0x24(r25)
/* 80026578 0001C2F8  7C 1A C8 50 */	subf r0, r26, r25
/* 8002657C 0001C2FC  7C 60 1A 14 */	add r3, r0, r3
/* 80026580 0001C300  90 7A 00 24 */	stw r3, 0x24(r26)
/* 80026584 0001C304  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80026588 0001C308  7C 60 1A 14 */	add r3, r0, r3
/* 8002658C 0001C30C  90 7A 00 28 */	stw r3, 0x28(r26)
/* 80026590 0001C310  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80026594 0001C314  7C 79 1A 14 */	add r3, r25, r3
/* 80026598 0001C318  7C 83 E2 14 */	add r4, r3, r28
/* 8002659C 0001C31C  7C 83 20 40 */	cmplw cr1, r3, r4
/* 800265A0 0001C320  40 84 01 00 */	bge cr1, lbl_800266A0
/* 800265A4 0001C324  7C E3 20 50 */	subf r7, r3, r4
/* 800265A8 0001C328  39 04 FF C0 */	addi r8, r4, -64
/* 800265AC 0001C32C  38 C7 00 07 */	addi r6, r7, 7
/* 800265B0 0001C330  7C C5 1E 70 */	srawi r5, r6, 3
/* 800265B4 0001C334  7C A5 01 94 */	addze r5, r5
/* 800265B8 0001C338  2C 05 00 08 */	cmpwi r5, 8
/* 800265BC 0001C33C  40 81 00 B8 */	ble lbl_80026674
/* 800265C0 0001C340  39 20 00 00 */	li r9, 0
/* 800265C4 0001C344  41 85 00 28 */	bgt cr1, lbl_800265EC
/* 800265C8 0001C348  54 E5 00 01 */	rlwinm. r5, r7, 0, 0, 0
/* 800265CC 0001C34C  38 E0 00 01 */	li r7, 1
/* 800265D0 0001C350  40 82 00 10 */	bne lbl_800265E0
/* 800265D4 0001C354  54 C5 00 01 */	rlwinm. r5, r6, 0, 0, 0
/* 800265D8 0001C358  41 82 00 08 */	beq lbl_800265E0
/* 800265DC 0001C35C  38 E0 00 00 */	li r7, 0
lbl_800265E0:
/* 800265E0 0001C360  2C 07 00 00 */	cmpwi r7, 0
/* 800265E4 0001C364  41 82 00 08 */	beq lbl_800265EC
/* 800265E8 0001C368  39 20 00 01 */	li r9, 1
lbl_800265EC:
/* 800265EC 0001C36C  2C 09 00 00 */	cmpwi r9, 0
/* 800265F0 0001C370  41 82 00 84 */	beq lbl_80026674
/* 800265F4 0001C374  38 A8 00 3F */	addi r5, r8, 0x3f
/* 800265F8 0001C378  7C A3 28 50 */	subf r5, r3, r5
/* 800265FC 0001C37C  54 A5 D1 BE */	srwi r5, r5, 6
/* 80026600 0001C380  7C A9 03 A6 */	mtctr r5
/* 80026604 0001C384  7C 03 40 40 */	cmplw r3, r8
/* 80026608 0001C388  40 80 00 6C */	bge lbl_80026674
lbl_8002660C:
/* 8002660C 0001C38C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80026610 0001C390  7C A5 02 14 */	add r5, r5, r0
/* 80026614 0001C394  90 A3 00 04 */	stw r5, 4(r3)
/* 80026618 0001C398  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8002661C 0001C39C  7C A5 02 14 */	add r5, r5, r0
/* 80026620 0001C3A0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80026624 0001C3A4  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 80026628 0001C3A8  7C A5 02 14 */	add r5, r5, r0
/* 8002662C 0001C3AC  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80026630 0001C3B0  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 80026634 0001C3B4  7C A5 02 14 */	add r5, r5, r0
/* 80026638 0001C3B8  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8002663C 0001C3BC  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 80026640 0001C3C0  7C A5 02 14 */	add r5, r5, r0
/* 80026644 0001C3C4  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80026648 0001C3C8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 8002664C 0001C3CC  7C A5 02 14 */	add r5, r5, r0
/* 80026650 0001C3D0  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 80026654 0001C3D4  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 80026658 0001C3D8  7C A5 02 14 */	add r5, r5, r0
/* 8002665C 0001C3DC  90 A3 00 34 */	stw r5, 0x34(r3)
/* 80026660 0001C3E0  80 A3 00 3C */	lwz r5, 0x3c(r3)
/* 80026664 0001C3E4  7C A5 02 14 */	add r5, r5, r0
/* 80026668 0001C3E8  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 8002666C 0001C3EC  38 63 00 40 */	addi r3, r3, 0x40
/* 80026670 0001C3F0  42 00 FF 9C */	bdnz lbl_8002660C
lbl_80026674:
/* 80026674 0001C3F4  38 A4 00 07 */	addi r5, r4, 7
/* 80026678 0001C3F8  7C A3 28 50 */	subf r5, r3, r5
/* 8002667C 0001C3FC  54 A5 E8 FE */	srwi r5, r5, 3
/* 80026680 0001C400  7C A9 03 A6 */	mtctr r5
/* 80026684 0001C404  7C 03 20 40 */	cmplw r3, r4
/* 80026688 0001C408  40 80 00 18 */	bge lbl_800266A0
lbl_8002668C:
/* 8002668C 0001C40C  80 83 00 04 */	lwz r4, 4(r3)
/* 80026690 0001C410  7C 84 02 14 */	add r4, r4, r0
/* 80026694 0001C414  90 83 00 04 */	stw r4, 4(r3)
/* 80026698 0001C418  38 63 00 08 */	addi r3, r3, 8
/* 8002669C 0001C41C  42 00 FF F0 */	bdnz lbl_8002668C
lbl_800266A0:
/* 800266A0 0001C420  7F 43 D3 78 */	mr r3, r26
/* 800266A4 0001C424  4B FF FD D5 */	bl gfModuleHeader$7getTextSectionAdr
/* 800266A8 0001C428  3C E0 80 42 */	lis r7, lbl_80422CAC@ha
/* 800266AC 0001C42C  7C 66 1B 78 */	mr r6, r3
/* 800266B0 0001C430  7F 44 D3 78 */	mr r4, r26
/* 800266B4 0001C434  38 BF 00 8C */	addi r5, r31, 0x8c
/* 800266B8 0001C438  38 67 2C AC */	addi r3, r7, lbl_80422CAC@l
/* 800266BC 0001C43C  4C C6 31 82 */	crclr 6
/* 800266C0 0001C440  48 1B 1F 41 */	bl OSReport
/* 800266C4 0001C444  2C 1E 00 00 */	cmpwi r30, 0
/* 800266C8 0001C448  41 82 00 24 */	beq lbl_800266EC
/* 800266CC 0001C44C  88 1E 00 08 */	lbz r0, 8(r30)
/* 800266D0 0001C450  7F 43 D3 78 */	mr r3, r26
/* 800266D4 0001C454  7F A4 EB 78 */	mr r4, r29
/* 800266D8 0001C458  54 00 06 AE */	rlwinm r0, r0, 0, 0x1a, 0x17
/* 800266DC 0001C45C  98 1E 00 08 */	stb r0, 8(r30)
/* 800266E0 0001C460  93 5E 00 00 */	stw r26, 0(r30)
/* 800266E4 0001C464  93 BE 00 04 */	stw r29, 4(r30)
/* 800266E8 0001C468  48 1B 75 65 */	bl OSLinkFixed
lbl_800266EC:
/* 800266EC 0001C46C  7C 7A DA 14 */	add r3, r26, r27
/* 800266F0 0001C470  7C 83 E2 14 */	add r4, r3, r28
/* 800266F4 0001C474  90 7A 00 28 */	stw r3, 0x28(r26)
/* 800266F8 0001C478  7C 03 20 40 */	cmplw r3, r4
/* 800266FC 0001C47C  40 80 01 10 */	bge lbl_8002680C
/* 80026700 0001C480  7C A3 20 50 */	subf r5, r3, r4
/* 80026704 0001C484  38 C4 FF C0 */	addi r6, r4, -64
/* 80026708 0001C488  38 05 00 07 */	addi r0, r5, 7
/* 8002670C 0001C48C  7C 00 1E 70 */	srawi r0, r0, 3
/* 80026710 0001C490  7C 00 01 94 */	addze r0, r0
/* 80026714 0001C494  2C 00 00 08 */	cmpwi r0, 8
/* 80026718 0001C498  40 81 00 C8 */	ble lbl_800267E0
/* 8002671C 0001C49C  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 80026720 0001C4A0  38 A0 00 00 */	li r5, 0
/* 80026724 0001C4A4  7C 00 20 40 */	cmplw r0, r4
/* 80026728 0001C4A8  41 81 00 30 */	bgt lbl_80026758
/* 8002672C 0001C4AC  7D 00 20 50 */	subf r8, r0, r4
/* 80026730 0001C4B0  38 E0 00 01 */	li r7, 1
/* 80026734 0001C4B4  55 00 00 01 */	rlwinm. r0, r8, 0, 0, 0
/* 80026738 0001C4B8  40 82 00 14 */	bne lbl_8002674C
/* 8002673C 0001C4BC  38 08 00 07 */	addi r0, r8, 7
/* 80026740 0001C4C0  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80026744 0001C4C4  41 82 00 08 */	beq lbl_8002674C
/* 80026748 0001C4C8  38 E0 00 00 */	li r7, 0
lbl_8002674C:
/* 8002674C 0001C4CC  2C 07 00 00 */	cmpwi r7, 0
/* 80026750 0001C4D0  41 82 00 08 */	beq lbl_80026758
/* 80026754 0001C4D4  38 A0 00 01 */	li r5, 1
lbl_80026758:
/* 80026758 0001C4D8  2C 05 00 00 */	cmpwi r5, 0
/* 8002675C 0001C4DC  41 82 00 84 */	beq lbl_800267E0
/* 80026760 0001C4E0  38 06 00 3F */	addi r0, r6, 0x3f
/* 80026764 0001C4E4  7C 03 00 50 */	subf r0, r3, r0
/* 80026768 0001C4E8  54 00 D1 BE */	srwi r0, r0, 6
/* 8002676C 0001C4EC  7C 09 03 A6 */	mtctr r0
/* 80026770 0001C4F0  7C 03 30 40 */	cmplw r3, r6
/* 80026774 0001C4F4  40 80 00 6C */	bge lbl_800267E0
lbl_80026778:
/* 80026778 0001C4F8  80 03 00 04 */	lwz r0, 4(r3)
/* 8002677C 0001C4FC  7C 00 D2 14 */	add r0, r0, r26
/* 80026780 0001C500  90 03 00 04 */	stw r0, 4(r3)
/* 80026784 0001C504  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80026788 0001C508  7C 00 D2 14 */	add r0, r0, r26
/* 8002678C 0001C50C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80026790 0001C510  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80026794 0001C514  7C 00 D2 14 */	add r0, r0, r26
/* 80026798 0001C518  90 03 00 14 */	stw r0, 0x14(r3)
/* 8002679C 0001C51C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800267A0 0001C520  7C 00 D2 14 */	add r0, r0, r26
/* 800267A4 0001C524  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800267A8 0001C528  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800267AC 0001C52C  7C 00 D2 14 */	add r0, r0, r26
/* 800267B0 0001C530  90 03 00 24 */	stw r0, 0x24(r3)
/* 800267B4 0001C534  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800267B8 0001C538  7C 00 D2 14 */	add r0, r0, r26
/* 800267BC 0001C53C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 800267C0 0001C540  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800267C4 0001C544  7C 00 D2 14 */	add r0, r0, r26
/* 800267C8 0001C548  90 03 00 34 */	stw r0, 0x34(r3)
/* 800267CC 0001C54C  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800267D0 0001C550  7C 00 D2 14 */	add r0, r0, r26
/* 800267D4 0001C554  90 03 00 3C */	stw r0, 0x3c(r3)
/* 800267D8 0001C558  38 63 00 40 */	addi r3, r3, 0x40
/* 800267DC 0001C55C  42 00 FF 9C */	bdnz lbl_80026778
lbl_800267E0:
/* 800267E0 0001C560  38 04 00 07 */	addi r0, r4, 7
/* 800267E4 0001C564  7C 03 00 50 */	subf r0, r3, r0
/* 800267E8 0001C568  54 00 E8 FE */	srwi r0, r0, 3
/* 800267EC 0001C56C  7C 09 03 A6 */	mtctr r0
/* 800267F0 0001C570  7C 03 20 40 */	cmplw r3, r4
/* 800267F4 0001C574  40 80 00 18 */	bge lbl_8002680C
lbl_800267F8:
/* 800267F8 0001C578  80 03 00 04 */	lwz r0, 4(r3)
/* 800267FC 0001C57C  7C 00 D2 14 */	add r0, r0, r26
/* 80026800 0001C580  90 03 00 04 */	stw r0, 4(r3)
/* 80026804 0001C584  38 63 00 08 */	addi r3, r3, 8
/* 80026808 0001C588  42 00 FF F0 */	bdnz lbl_800267F8
lbl_8002680C:
/* 8002680C 0001C58C  39 61 00 30 */	addi r11, r1, 0x30
/* 80026810 0001C590  7F C3 F3 78 */	mr r3, r30
/* 80026814 0001C594  48 3C AB 51 */	bl _restgpr_25
/* 80026818 0001C598  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8002681C 0001C59C  7C 08 03 A6 */	mtlr r0
/* 80026820 0001C5A0  38 21 00 30 */	addi r1, r1, 0x30
/* 80026824 0001C5A4  4E 80 00 20 */	blr 

.global gfModule$7create_427
gfModule$7create_427:
/* 80026828 0001C5A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002682C 0001C5AC  7C 08 02 A6 */	mflr r0
/* 80026830 0001C5B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026834 0001C5B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80026838 0001C5B8  48 3C AA E5 */	bl _savegpr_26
/* 8002683C 0001C5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80026840 0001C5C0  7C 7B 1B 78 */	mr r27, r3
/* 80026844 0001C5C4  7C 9A 23 78 */	mr r26, r4
/* 80026848 0001C5C8  40 82 00 08 */	bne lbl_80026850
/* 8002684C 0001C5CC  48 1A E8 5D */	bl PPCHalt
lbl_80026850:
/* 80026850 0001C5D0  38 1B 00 2B */	addi r0, r27, 0x2b
/* 80026854 0001C5D4  80 BA 00 48 */	lwz r5, 0x48(r26)
/* 80026858 0001C5D8  54 1C 00 34 */	rlwinm r28, r0, 0, 0, 0x1a
/* 8002685C 0001C5DC  83 DA 00 2C */	lwz r30, 0x2c(r26)
/* 80026860 0001C5E0  7C 7C 2A 14 */	add r3, r28, r5
/* 80026864 0001C5E4  83 BA 00 28 */	lwz r29, 0x28(r26)
/* 80026868 0001C5E8  38 03 00 1F */	addi r0, r3, 0x1f
/* 8002686C 0001C5EC  7F 44 D3 78 */	mr r4, r26
/* 80026870 0001C5F0  7F 83 E3 78 */	mr r3, r28
/* 80026874 0001C5F4  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80026878 0001C5F8  4B FD DA C1 */	bl func_80004338
/* 8002687C 0001C5FC  80 7A 00 24 */	lwz r3, 0x24(r26)
/* 80026880 0001C600  7C 1C D0 50 */	subf r0, r28, r26
/* 80026884 0001C604  7C 60 1A 14 */	add r3, r0, r3
/* 80026888 0001C608  90 7C 00 24 */	stw r3, 0x24(r28)
/* 8002688C 0001C60C  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 80026890 0001C610  7C 60 1A 14 */	add r3, r0, r3
/* 80026894 0001C614  90 7C 00 28 */	stw r3, 0x28(r28)
/* 80026898 0001C618  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 8002689C 0001C61C  7C 7A 1A 14 */	add r3, r26, r3
/* 800268A0 0001C620  7C 83 F2 14 */	add r4, r3, r30
/* 800268A4 0001C624  7C 83 20 40 */	cmplw cr1, r3, r4
/* 800268A8 0001C628  40 84 01 00 */	bge cr1, lbl_800269A8
/* 800268AC 0001C62C  7C E3 20 50 */	subf r7, r3, r4
/* 800268B0 0001C630  39 04 FF C0 */	addi r8, r4, -64
/* 800268B4 0001C634  38 C7 00 07 */	addi r6, r7, 7
/* 800268B8 0001C638  7C C5 1E 70 */	srawi r5, r6, 3
/* 800268BC 0001C63C  7C A5 01 94 */	addze r5, r5
/* 800268C0 0001C640  2C 05 00 08 */	cmpwi r5, 8
/* 800268C4 0001C644  40 81 00 B8 */	ble lbl_8002697C
/* 800268C8 0001C648  39 20 00 00 */	li r9, 0
/* 800268CC 0001C64C  41 85 00 28 */	bgt cr1, lbl_800268F4
/* 800268D0 0001C650  54 E5 00 01 */	rlwinm. r5, r7, 0, 0, 0
/* 800268D4 0001C654  38 E0 00 01 */	li r7, 1
/* 800268D8 0001C658  40 82 00 10 */	bne lbl_800268E8
/* 800268DC 0001C65C  54 C5 00 01 */	rlwinm. r5, r6, 0, 0, 0
/* 800268E0 0001C660  41 82 00 08 */	beq lbl_800268E8
/* 800268E4 0001C664  38 E0 00 00 */	li r7, 0
lbl_800268E8:
/* 800268E8 0001C668  2C 07 00 00 */	cmpwi r7, 0
/* 800268EC 0001C66C  41 82 00 08 */	beq lbl_800268F4
/* 800268F0 0001C670  39 20 00 01 */	li r9, 1
lbl_800268F4:
/* 800268F4 0001C674  2C 09 00 00 */	cmpwi r9, 0
/* 800268F8 0001C678  41 82 00 84 */	beq lbl_8002697C
/* 800268FC 0001C67C  38 A8 00 3F */	addi r5, r8, 0x3f
/* 80026900 0001C680  7C A3 28 50 */	subf r5, r3, r5
/* 80026904 0001C684  54 A5 D1 BE */	srwi r5, r5, 6
/* 80026908 0001C688  7C A9 03 A6 */	mtctr r5
/* 8002690C 0001C68C  7C 03 40 40 */	cmplw r3, r8
/* 80026910 0001C690  40 80 00 6C */	bge lbl_8002697C
lbl_80026914:
/* 80026914 0001C694  80 A3 00 04 */	lwz r5, 4(r3)
/* 80026918 0001C698  7C A5 02 14 */	add r5, r5, r0
/* 8002691C 0001C69C  90 A3 00 04 */	stw r5, 4(r3)
/* 80026920 0001C6A0  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80026924 0001C6A4  7C A5 02 14 */	add r5, r5, r0
/* 80026928 0001C6A8  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8002692C 0001C6AC  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 80026930 0001C6B0  7C A5 02 14 */	add r5, r5, r0
/* 80026934 0001C6B4  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80026938 0001C6B8  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8002693C 0001C6BC  7C A5 02 14 */	add r5, r5, r0
/* 80026940 0001C6C0  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80026944 0001C6C4  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 80026948 0001C6C8  7C A5 02 14 */	add r5, r5, r0
/* 8002694C 0001C6CC  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80026950 0001C6D0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80026954 0001C6D4  7C A5 02 14 */	add r5, r5, r0
/* 80026958 0001C6D8  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 8002695C 0001C6DC  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 80026960 0001C6E0  7C A5 02 14 */	add r5, r5, r0
/* 80026964 0001C6E4  90 A3 00 34 */	stw r5, 0x34(r3)
/* 80026968 0001C6E8  80 A3 00 3C */	lwz r5, 0x3c(r3)
/* 8002696C 0001C6EC  7C A5 02 14 */	add r5, r5, r0
/* 80026970 0001C6F0  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80026974 0001C6F4  38 63 00 40 */	addi r3, r3, 0x40
/* 80026978 0001C6F8  42 00 FF 9C */	bdnz lbl_80026914
lbl_8002697C:
/* 8002697C 0001C6FC  38 A4 00 07 */	addi r5, r4, 7
/* 80026980 0001C700  7C A3 28 50 */	subf r5, r3, r5
/* 80026984 0001C704  54 A5 E8 FE */	srwi r5, r5, 3
/* 80026988 0001C708  7C A9 03 A6 */	mtctr r5
/* 8002698C 0001C70C  7C 03 20 40 */	cmplw r3, r4
/* 80026990 0001C710  40 80 00 18 */	bge lbl_800269A8
lbl_80026994:
/* 80026994 0001C714  80 83 00 04 */	lwz r4, 4(r3)
/* 80026998 0001C718  7C 84 02 14 */	add r4, r4, r0
/* 8002699C 0001C71C  90 83 00 04 */	stw r4, 4(r3)
/* 800269A0 0001C720  38 63 00 08 */	addi r3, r3, 8
/* 800269A4 0001C724  42 00 FF F0 */	bdnz lbl_80026994
lbl_800269A8:
/* 800269A8 0001C728  7F 83 E3 78 */	mr r3, r28
/* 800269AC 0001C72C  4B FF FA CD */	bl gfModuleHeader$7getTextSectionAdr
/* 800269B0 0001C730  2C 1B 00 00 */	cmpwi r27, 0
/* 800269B4 0001C734  41 82 00 24 */	beq lbl_800269D8
/* 800269B8 0001C738  88 1B 00 08 */	lbz r0, 8(r27)
/* 800269BC 0001C73C  7F 83 E3 78 */	mr r3, r28
/* 800269C0 0001C740  93 9B 00 00 */	stw r28, 0(r27)
/* 800269C4 0001C744  7F E4 FB 78 */	mr r4, r31
/* 800269C8 0001C748  54 00 06 AE */	rlwinm r0, r0, 0, 0x1a, 0x17
/* 800269CC 0001C74C  98 1B 00 08 */	stb r0, 8(r27)
/* 800269D0 0001C750  93 FB 00 04 */	stw r31, 4(r27)
/* 800269D4 0001C754  48 1B 72 79 */	bl OSLinkFixed
lbl_800269D8:
/* 800269D8 0001C758  7C 7C EA 14 */	add r3, r28, r29
/* 800269DC 0001C75C  7C 83 F2 14 */	add r4, r3, r30
/* 800269E0 0001C760  90 7C 00 28 */	stw r3, 0x28(r28)
/* 800269E4 0001C764  7C 03 20 40 */	cmplw r3, r4
/* 800269E8 0001C768  40 80 01 10 */	bge lbl_80026AF8
/* 800269EC 0001C76C  7C A3 20 50 */	subf r5, r3, r4
/* 800269F0 0001C770  38 C4 FF C0 */	addi r6, r4, -64
/* 800269F4 0001C774  38 05 00 07 */	addi r0, r5, 7
/* 800269F8 0001C778  7C 00 1E 70 */	srawi r0, r0, 3
/* 800269FC 0001C77C  7C 00 01 94 */	addze r0, r0
/* 80026A00 0001C780  2C 00 00 08 */	cmpwi r0, 8
/* 80026A04 0001C784  40 81 00 C8 */	ble lbl_80026ACC
/* 80026A08 0001C788  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 80026A0C 0001C78C  38 A0 00 00 */	li r5, 0
/* 80026A10 0001C790  7C 00 20 40 */	cmplw r0, r4
/* 80026A14 0001C794  41 81 00 30 */	bgt lbl_80026A44
/* 80026A18 0001C798  7D 00 20 50 */	subf r8, r0, r4
/* 80026A1C 0001C79C  38 E0 00 01 */	li r7, 1
/* 80026A20 0001C7A0  55 00 00 01 */	rlwinm. r0, r8, 0, 0, 0
/* 80026A24 0001C7A4  40 82 00 14 */	bne lbl_80026A38
/* 80026A28 0001C7A8  38 08 00 07 */	addi r0, r8, 7
/* 80026A2C 0001C7AC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80026A30 0001C7B0  41 82 00 08 */	beq lbl_80026A38
/* 80026A34 0001C7B4  38 E0 00 00 */	li r7, 0
lbl_80026A38:
/* 80026A38 0001C7B8  2C 07 00 00 */	cmpwi r7, 0
/* 80026A3C 0001C7BC  41 82 00 08 */	beq lbl_80026A44
/* 80026A40 0001C7C0  38 A0 00 01 */	li r5, 1
lbl_80026A44:
/* 80026A44 0001C7C4  2C 05 00 00 */	cmpwi r5, 0
/* 80026A48 0001C7C8  41 82 00 84 */	beq lbl_80026ACC
/* 80026A4C 0001C7CC  38 06 00 3F */	addi r0, r6, 0x3f
/* 80026A50 0001C7D0  7C 03 00 50 */	subf r0, r3, r0
/* 80026A54 0001C7D4  54 00 D1 BE */	srwi r0, r0, 6
/* 80026A58 0001C7D8  7C 09 03 A6 */	mtctr r0
/* 80026A5C 0001C7DC  7C 03 30 40 */	cmplw r3, r6
/* 80026A60 0001C7E0  40 80 00 6C */	bge lbl_80026ACC
lbl_80026A64:
/* 80026A64 0001C7E4  80 03 00 04 */	lwz r0, 4(r3)
/* 80026A68 0001C7E8  7C 00 E2 14 */	add r0, r0, r28
/* 80026A6C 0001C7EC  90 03 00 04 */	stw r0, 4(r3)
/* 80026A70 0001C7F0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80026A74 0001C7F4  7C 00 E2 14 */	add r0, r0, r28
/* 80026A78 0001C7F8  90 03 00 0C */	stw r0, 0xc(r3)
/* 80026A7C 0001C7FC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80026A80 0001C800  7C 00 E2 14 */	add r0, r0, r28
/* 80026A84 0001C804  90 03 00 14 */	stw r0, 0x14(r3)
/* 80026A88 0001C808  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80026A8C 0001C80C  7C 00 E2 14 */	add r0, r0, r28
/* 80026A90 0001C810  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80026A94 0001C814  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80026A98 0001C818  7C 00 E2 14 */	add r0, r0, r28
/* 80026A9C 0001C81C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80026AA0 0001C820  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80026AA4 0001C824  7C 00 E2 14 */	add r0, r0, r28
/* 80026AA8 0001C828  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80026AAC 0001C82C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80026AB0 0001C830  7C 00 E2 14 */	add r0, r0, r28
/* 80026AB4 0001C834  90 03 00 34 */	stw r0, 0x34(r3)
/* 80026AB8 0001C838  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80026ABC 0001C83C  7C 00 E2 14 */	add r0, r0, r28
/* 80026AC0 0001C840  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80026AC4 0001C844  38 63 00 40 */	addi r3, r3, 0x40
/* 80026AC8 0001C848  42 00 FF 9C */	bdnz lbl_80026A64
lbl_80026ACC:
/* 80026ACC 0001C84C  38 04 00 07 */	addi r0, r4, 7
/* 80026AD0 0001C850  7C 03 00 50 */	subf r0, r3, r0
/* 80026AD4 0001C854  54 00 E8 FE */	srwi r0, r0, 3
/* 80026AD8 0001C858  7C 09 03 A6 */	mtctr r0
/* 80026ADC 0001C85C  7C 03 20 40 */	cmplw r3, r4
/* 80026AE0 0001C860  40 80 00 18 */	bge lbl_80026AF8
lbl_80026AE4:
/* 80026AE4 0001C864  80 03 00 04 */	lwz r0, 4(r3)
/* 80026AE8 0001C868  7C 00 E2 14 */	add r0, r0, r28
/* 80026AEC 0001C86C  90 03 00 04 */	stw r0, 4(r3)
/* 80026AF0 0001C870  38 63 00 08 */	addi r3, r3, 8
/* 80026AF4 0001C874  42 00 FF F0 */	bdnz lbl_80026AE4
lbl_80026AF8:
/* 80026AF8 0001C878  39 61 00 20 */	addi r11, r1, 0x20
/* 80026AFC 0001C87C  7F 63 DB 78 */	mr r3, r27
/* 80026B00 0001C880  48 3C A8 69 */	bl _restgpr_26
/* 80026B04 0001C884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80026B08 0001C888  7C 08 03 A6 */	mtlr r0
/* 80026B0C 0001C88C  38 21 00 20 */	addi r1, r1, 0x20
/* 80026B10 0001C890  4E 80 00 20 */	blr 

.global gfModuleManager$7create
gfModuleManager$7create:
/* 80026B14 0001C894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80026B18 0001C898  7C 08 02 A6 */	mflr r0
/* 80026B1C 0001C89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026B20 0001C8A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80026B24 0001C8A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80026B28 0001C8A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80026B2C 0001C8AC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80026B30 0001C8B0  80 0D BC 18 */	lwz r0, lbl_805A0038-_SDA_BASE_(r13)
/* 80026B34 0001C8B4  2C 00 00 00 */	cmpwi r0, 0
/* 80026B38 0001C8B8  40 82 00 B8 */	bne lbl_80026BF0
/* 80026B3C 0001C8BC  38 60 03 C8 */	li r3, 0x3c8
/* 80026B40 0001C8C0  38 80 00 01 */	li r4, 1
/* 80026B44 0001C8C4  4B FE 5D 75 */	bl __nw__10srHeapTypeFUlUl
/* 80026B48 0001C8C8  2C 03 00 00 */	cmpwi r3, 0
/* 80026B4C 0001C8CC  7C 7E 1B 78 */	mr r30, r3
/* 80026B50 0001C8D0  41 82 00 9C */	beq lbl_80026BEC
/* 80026B54 0001C8D4  3C 80 80 02 */	lis r4, gfModuleInfo$7__ct@ha
/* 80026B58 0001C8D8  3C A0 80 02 */	lis r5, gfModuleInfo$7__dt@ha
/* 80026B5C 0001C8DC  38 84 6C 10 */	addi r4, r4, gfModuleInfo$7__ct@l
/* 80026B60 0001C8E0  38 C0 00 3C */	li r6, 0x3c
/* 80026B64 0001C8E4  38 A5 6C 1C */	addi r5, r5, gfModuleInfo$7__dt@l
/* 80026B68 0001C8E8  38 E0 00 10 */	li r7, 0x10
/* 80026B6C 0001C8EC  38 63 00 08 */	addi r3, r3, 8
/* 80026B70 0001C8F0  48 3C A0 6D */	bl __construct_array
/* 80026B74 0001C8F4  3B E0 00 00 */	li r31, 0
/* 80026B78 0001C8F8  3B A0 00 00 */	li r29, 0
/* 80026B7C 0001C8FC  93 FE 00 04 */	stw r31, 4(r30)
/* 80026B80 0001C900  3B 80 00 00 */	li r28, 0
lbl_80026B84:
/* 80026B84 0001C904  7C BE E2 14 */	add r5, r30, r28
/* 80026B88 0001C908  38 61 00 08 */	addi r3, r1, 8
/* 80026B8C 0001C90C  93 E5 00 08 */	stw r31, 8(r5)
/* 80026B90 0001C910  38 80 FF FF */	li r4, -1
/* 80026B94 0001C914  93 E5 00 18 */	stw r31, 0x18(r5)
/* 80026B98 0001C918  93 E5 00 0C */	stw r31, 0xc(r5)
/* 80026B9C 0001C91C  93 E1 00 08 */	stw r31, 8(r1)
/* 80026BA0 0001C920  93 E5 00 1C */	stw r31, 0x1c(r5)
/* 80026BA4 0001C924  4B FF 9F 95 */	bl gfFileIOHandle$7__dt
/* 80026BA8 0001C928  7C 7E E2 14 */	add r3, r30, r28
/* 80026BAC 0001C92C  3B BD 00 01 */	addi r29, r29, 1
/* 80026BB0 0001C930  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80026BB4 0001C934  28 1D 00 10 */	cmplwi r29, 0x10
/* 80026BB8 0001C938  3B 9C 00 3C */	addi r28, r28, 0x3c
/* 80026BBC 0001C93C  88 03 00 21 */	lbz r0, 0x21(r3)
/* 80026BC0 0001C940  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80026BC4 0001C944  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80026BC8 0001C948  50 00 0E F6 */	rlwimi r0, r0, 1, 0x1b, 0x1b
/* 80026BCC 0001C94C  50 00 0E B4 */	rlwimi r0, r0, 1, 0x1a, 0x1a
/* 80026BD0 0001C950  50 00 16 30 */	rlwimi r0, r0, 2, 0x18, 0x18
/* 80026BD4 0001C954  60 00 00 04 */	ori r0, r0, 4
/* 80026BD8 0001C958  98 03 00 21 */	stb r0, 0x21(r3)
/* 80026BDC 0001C95C  9B E3 00 22 */	stb r31, 0x22(r3)
/* 80026BE0 0001C960  41 80 FF A4 */	blt lbl_80026B84
/* 80026BE4 0001C964  38 00 00 FF */	li r0, 0xff
/* 80026BE8 0001C968  90 1E 00 00 */	stw r0, 0(r30)
lbl_80026BEC:
/* 80026BEC 0001C96C  93 CD BC 18 */	stw r30, lbl_805A0038-_SDA_BASE_(r13)
lbl_80026BF0:
/* 80026BF0 0001C970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80026BF4 0001C974  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80026BF8 0001C978  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80026BFC 0001C97C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80026C00 0001C980  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80026C04 0001C984  7C 08 03 A6 */	mtlr r0
/* 80026C08 0001C988  38 21 00 20 */	addi r1, r1, 0x20
/* 80026C0C 0001C98C  4E 80 00 20 */	blr 

.global gfModuleInfo$7__ct
gfModuleInfo$7__ct:
/* 80026C10 0001C990  38 00 00 00 */	li r0, 0
/* 80026C14 0001C994  90 03 00 14 */	stw r0, 0x14(r3)
/* 80026C18 0001C998  4E 80 00 20 */	blr 

.global gfModuleInfo$7__dt
gfModuleInfo$7__dt:
/* 80026C1C 0001C99C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026C20 0001C9A0  7C 08 02 A6 */	mflr r0
/* 80026C24 0001C9A4  2C 03 00 00 */	cmpwi r3, 0
/* 80026C28 0001C9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80026C2C 0001C9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80026C30 0001C9B0  7C 9F 23 78 */	mr r31, r4
/* 80026C34 0001C9B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80026C38 0001C9B8  7C 7E 1B 78 */	mr r30, r3
/* 80026C3C 0001C9BC  41 82 00 20 */	beq lbl_80026C5C
/* 80026C40 0001C9C0  38 80 FF FF */	li r4, -1
/* 80026C44 0001C9C4  38 63 00 14 */	addi r3, r3, 0x14
/* 80026C48 0001C9C8  4B FF 9E F1 */	bl gfFileIOHandle$7__dt

