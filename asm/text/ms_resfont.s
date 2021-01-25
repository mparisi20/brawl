.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FontData$7loadEndingFont
FontData$7loadEndingFont:
/* 8006C5A0 00062320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C5A4 00062324  7C 08 02 A6 */	mflr r0
/* 8006C5A8 00062328  3C A0 80 49 */	lis r5, lbl_80497DCC@ha
/* 8006C5AC 0006232C  7C 64 1B 78 */	mr r4, r3
/* 8006C5B0 00062330  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C5B4 00062334  38 65 7D CC */	addi r3, r5, lbl_80497DCC@l
/* 8006C5B8 00062338  48 0F 20 C9 */	bl nw4r2ut7ResFontFPv$7SetResource
/* 8006C5BC 0006233C  38 80 00 01 */	li r4, 1
/* 8006C5C0 00062340  38 00 00 00 */	li r0, 0
/* 8006C5C4 00062344  98 8D BD 70 */	stb r4, lbl_805A0190-_SDA_BASE_(r13)
/* 8006C5C8 00062348  90 0D BD 5C */	stw r0, lbl_805A017C-_SDA_BASE_(r13)
/* 8006C5CC 0006234C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C5D0 00062350  7C 08 03 A6 */	mtlr r0
/* 8006C5D4 00062354  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C5D8 00062358  4E 80 00 20 */	blr 

.global FontData$7removeEndingFont
FontData$7removeEndingFont:
/* 8006C5DC 0006235C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C5E0 00062360  7C 08 02 A6 */	mflr r0
/* 8006C5E4 00062364  3C 60 80 49 */	lis r3, lbl_80497DCC@ha
/* 8006C5E8 00062368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C5EC 0006236C  38 63 7D CC */	addi r3, r3, lbl_80497DCC@l
/* 8006C5F0 00062370  48 0F 21 D5 */	bl nw4r2ut7ResFontFv$7RemoveResource
/* 8006C5F4 00062374  80 6D BD 5C */	lwz r3, lbl_805A017C-_SDA_BASE_(r13)
/* 8006C5F8 00062378  2C 03 00 00 */	cmpwi r3, 0
/* 8006C5FC 0006237C  41 82 00 10 */	beq lbl_8006C60C
/* 8006C600 00062380  4B FB 84 4D */	bl gfHeapManager$7free
/* 8006C604 00062384  38 00 00 00 */	li r0, 0
/* 8006C608 00062388  90 0D BD 5C */	stw r0, lbl_805A017C-_SDA_BASE_(r13)
lbl_8006C60C:
/* 8006C60C 0006238C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C610 00062390  38 60 00 01 */	li r3, 1
/* 8006C614 00062394  7C 08 03 A6 */	mtlr r0
/* 8006C618 00062398  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C61C 0006239C  4E 80 00 20 */	blr 

.global FontData$7loadResetsanFont
FontData$7loadResetsanFont:
/* 8006C620 000623A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C624 000623A4  7C 08 02 A6 */	mflr r0
/* 8006C628 000623A8  3C A0 80 49 */	lis r5, lbl_80497DF4@ha
/* 8006C62C 000623AC  7C 64 1B 78 */	mr r4, r3
/* 8006C630 000623B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C634 000623B4  38 65 7D F4 */	addi r3, r5, lbl_80497DF4@l
/* 8006C638 000623B8  48 0F 20 49 */	bl nw4r2ut7ResFontFPv$7SetResource
/* 8006C63C 000623BC  38 80 00 01 */	li r4, 1
/* 8006C640 000623C0  38 00 00 00 */	li r0, 0
/* 8006C644 000623C4  98 8D BD 71 */	stb r4, lbl_805A0191-_SDA_BASE_(r13)
/* 8006C648 000623C8  90 0D BD 60 */	stw r0, lbl_805A0180-_SDA_BASE_(r13)
/* 8006C64C 000623CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C650 000623D0  7C 08 03 A6 */	mtlr r0
/* 8006C654 000623D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C658 000623D8  4E 80 00 20 */	blr 

.global FontData$7removeResetsanFont
FontData$7removeResetsanFont:
/* 8006C65C 000623DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C660 000623E0  7C 08 02 A6 */	mflr r0
/* 8006C664 000623E4  3C 60 80 49 */	lis r3, lbl_80497DF4@ha
/* 8006C668 000623E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C66C 000623EC  38 63 7D F4 */	addi r3, r3, lbl_80497DF4@l
/* 8006C670 000623F0  48 0F 21 55 */	bl nw4r2ut7ResFontFv$7RemoveResource
/* 8006C674 000623F4  80 6D BD 60 */	lwz r3, lbl_805A0180-_SDA_BASE_(r13)
/* 8006C678 000623F8  2C 03 00 00 */	cmpwi r3, 0
/* 8006C67C 000623FC  41 82 00 10 */	beq lbl_8006C68C
/* 8006C680 00062400  4B FB 83 CD */	bl gfHeapManager$7free
/* 8006C684 00062404  38 00 00 00 */	li r0, 0
/* 8006C688 00062408  90 0D BD 60 */	stw r0, lbl_805A0180-_SDA_BASE_(r13)
lbl_8006C68C:
/* 8006C68C 0006240C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C690 00062410  38 60 00 01 */	li r3, 1
/* 8006C694 00062414  7C 08 03 A6 */	mtlr r0
/* 8006C698 00062418  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C69C 0006241C  4E 80 00 20 */	blr 

.global FontData$7loadFoxFont
FontData$7loadFoxFont:
/* 8006C6A0 00062420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C6A4 00062424  7C 08 02 A6 */	mflr r0
/* 8006C6A8 00062428  3C A0 80 49 */	lis r5, lbl_80497E1C@ha
/* 8006C6AC 0006242C  7C 64 1B 78 */	mr r4, r3
/* 8006C6B0 00062430  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C6B4 00062434  38 65 7E 1C */	addi r3, r5, lbl_80497E1C@l
/* 8006C6B8 00062438  48 0F 1F C9 */	bl nw4r2ut7ResFontFPv$7SetResource
/* 8006C6BC 0006243C  38 80 00 01 */	li r4, 1
/* 8006C6C0 00062440  38 00 00 00 */	li r0, 0
/* 8006C6C4 00062444  98 8D BD 72 */	stb r4, lbl_805A0192-_SDA_BASE_(r13)
/* 8006C6C8 00062448  90 0D BD 64 */	stw r0, lbl_805A0184-_SDA_BASE_(r13)
/* 8006C6CC 0006244C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C6D0 00062450  7C 08 03 A6 */	mtlr r0
/* 8006C6D4 00062454  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C6D8 00062458  4E 80 00 20 */	blr 

.global FontData$7removeFoxFont
FontData$7removeFoxFont:
/* 8006C6DC 0006245C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C6E0 00062460  7C 08 02 A6 */	mflr r0
/* 8006C6E4 00062464  3C 60 80 49 */	lis r3, lbl_80497E1C@ha
/* 8006C6E8 00062468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C6EC 0006246C  38 63 7E 1C */	addi r3, r3, lbl_80497E1C@l
/* 8006C6F0 00062470  48 0F 20 D5 */	bl nw4r2ut7ResFontFv$7RemoveResource
/* 8006C6F4 00062474  80 6D BD 64 */	lwz r3, lbl_805A0184-_SDA_BASE_(r13)
/* 8006C6F8 00062478  2C 03 00 00 */	cmpwi r3, 0
/* 8006C6FC 0006247C  41 82 00 10 */	beq lbl_8006C70C
/* 8006C700 00062480  4B FB 83 4D */	bl gfHeapManager$7free
/* 8006C704 00062484  38 00 00 00 */	li r0, 0
/* 8006C708 00062488  90 0D BD 64 */	stw r0, lbl_805A0184-_SDA_BASE_(r13)
lbl_8006C70C:
/* 8006C70C 0006248C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C710 00062490  38 60 00 01 */	li r3, 1
/* 8006C714 00062494  7C 08 03 A6 */	mtlr r0
/* 8006C718 00062498  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C71C 0006249C  4E 80 00 20 */	blr 

.global FontData$7loadAlertFont
FontData$7loadAlertFont:
/* 8006C720 000624A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C724 000624A4  7C 08 02 A6 */	mflr r0
/* 8006C728 000624A8  3C A0 80 49 */	lis r5, lbl_80497E6C@ha
/* 8006C72C 000624AC  7C 64 1B 78 */	mr r4, r3
/* 8006C730 000624B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C734 000624B4  38 65 7E 6C */	addi r3, r5, lbl_80497E6C@l
/* 8006C738 000624B8  48 0F 1F 49 */	bl nw4r2ut7ResFontFPv$7SetResource
/* 8006C73C 000624BC  38 80 00 01 */	li r4, 1
/* 8006C740 000624C0  38 00 00 00 */	li r0, 0
/* 8006C744 000624C4  98 8D BD 73 */	stb r4, lbl_805A0193-_SDA_BASE_(r13)
/* 8006C748 000624C8  90 0D BD 6C */	stw r0, lbl_805A018C-_SDA_BASE_(r13)
/* 8006C74C 000624CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C750 000624D0  7C 08 03 A6 */	mtlr r0
/* 8006C754 000624D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C758 000624D8  4E 80 00 20 */	blr 

.global FontData$7loadMeleeFont
FontData$7loadMeleeFont:
/* 8006C75C 000624DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C760 000624E0  7C 08 02 A6 */	mflr r0
/* 8006C764 000624E4  3C A0 80 49 */	lis r5, lbl_80497E44@ha
/* 8006C768 000624E8  7C 64 1B 78 */	mr r4, r3
/* 8006C76C 000624EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C770 000624F0  38 65 7E 44 */	addi r3, r5, lbl_80497E44@l
/* 8006C774 000624F4  48 0F 1F 0D */	bl nw4r2ut7ResFontFPv$7SetResource
/* 8006C778 000624F8  38 00 00 00 */	li r0, 0
/* 8006C77C 000624FC  90 0D BD 68 */	stw r0, lbl_805A0188-_SDA_BASE_(r13)
/* 8006C780 00062500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C784 00062504  7C 08 03 A6 */	mtlr r0
/* 8006C788 00062508  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C78C 0006250C  4E 80 00 20 */	blr 

.global FontData$7removeMeleeFont
FontData$7removeMeleeFont:
/* 8006C790 00062510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C794 00062514  7C 08 02 A6 */	mflr r0
/* 8006C798 00062518  3C 60 80 49 */	lis r3, lbl_80497E44@ha
/* 8006C79C 0006251C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C7A0 00062520  38 63 7E 44 */	addi r3, r3, lbl_80497E44@l
/* 8006C7A4 00062524  48 0F 20 21 */	bl nw4r2ut7ResFontFv$7RemoveResource
/* 8006C7A8 00062528  80 6D BD 68 */	lwz r3, lbl_805A0188-_SDA_BASE_(r13)
/* 8006C7AC 0006252C  2C 03 00 00 */	cmpwi r3, 0
/* 8006C7B0 00062530  41 82 00 10 */	beq lbl_8006C7C0
/* 8006C7B4 00062534  4B FB 82 99 */	bl gfHeapManager$7free
/* 8006C7B8 00062538  38 00 00 00 */	li r0, 0
/* 8006C7BC 0006253C  90 0D BD 68 */	stw r0, lbl_805A0188-_SDA_BASE_(r13)
lbl_8006C7C0:
/* 8006C7C0 00062540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C7C4 00062544  38 60 00 01 */	li r3, 1
/* 8006C7C8 00062548  7C 08 03 A6 */	mtlr r0
/* 8006C7CC 0006254C  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C7D0 00062550  4E 80 00 20 */	blr 

.global FontData$7loadNormalFont
FontData$7loadNormalFont:
/* 8006C7D4 00062554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C7D8 00062558  7C 08 02 A6 */	mflr r0
/* 8006C7DC 0006255C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C7E0 00062560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006C7E4 00062564  93 C1 00 08 */	stw r30, 8(r1)
/* 8006C7E8 00062568  7C 7E 1B 78 */	mr r30, r3
/* 8006C7EC 0006256C  80 0D BD 54 */	lwz r0, lbl_805A0174-_SDA_BASE_(r13)
/* 8006C7F0 00062570  2C 00 00 00 */	cmpwi r0, 0
/* 8006C7F4 00062574  41 82 00 0C */	beq lbl_8006C800
/* 8006C7F8 00062578  38 60 00 01 */	li r3, 1
/* 8006C7FC 0006257C  48 00 00 5C */	b lbl_8006C858
lbl_8006C800:
/* 8006C800 00062580  3F E0 80 45 */	lis r31, lbl_80454178@ha
/* 8006C804 00062584  3B FF 41 78 */	addi r31, r31, lbl_80454178@l
/* 8006C808 00062588  4B FB 82 2D */	bl gfHeapManager$7getMaxFreeSize
/* 8006C80C 0006258C  38 83 FF 80 */	addi r4, r3, -128
/* 8006C810 00062590  7F C3 F3 78 */	mr r3, r30
/* 8006C814 00062594  90 8D BD 8C */	stw r4, lbl_805A01AC-_SDA_BASE_(r13)
/* 8006C818 00062598  4B FB 81 CD */	bl gfHeapManager$7alloc
/* 8006C81C 0006259C  90 6D BD 84 */	stw r3, lbl_805A01A4-_SDA_BASE_(r13)
/* 8006C820 000625A0  90 6D BD 54 */	stw r3, lbl_805A0174-_SDA_BASE_(r13)
/* 8006C824 000625A4  7F E3 FB 78 */	mr r3, r31
/* 8006C828 000625A8  4B FB 37 B5 */	bl gfFileIO$7getFileSize
/* 8006C82C 000625AC  80 AD BD 84 */	lwz r5, lbl_805A01A4-_SDA_BASE_(r13)
/* 8006C830 000625B0  7F E4 FB 78 */	mr r4, r31
/* 8006C834 000625B4  80 0D BD 8C */	lwz r0, lbl_805A01AC-_SDA_BASE_(r13)
/* 8006C838 000625B8  38 C0 00 00 */	li r6, 0
/* 8006C83C 000625BC  38 E0 00 00 */	li r7, 0
/* 8006C840 000625C0  7C 05 02 14 */	add r0, r5, r0
/* 8006C844 000625C4  7C A3 00 50 */	subf r5, r3, r0
/* 8006C848 000625C8  38 6D BD 74 */	addi r3, r13, lbl_805A0194-_SDA_BASE_
/* 8006C84C 000625CC  90 AD BD 88 */	stw r5, lbl_805A01A8-_SDA_BASE_(r13)
/* 8006C850 000625D0  4B FB 4F 99 */	bl gfFileIOHandle$7readRequestCached_315
/* 8006C854 000625D4  38 60 00 01 */	li r3, 1
lbl_8006C858:
/* 8006C858 000625D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C85C 000625DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006C860 000625E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006C864 000625E4  7C 08 03 A6 */	mtlr r0
/* 8006C868 000625E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C86C 000625EC  4E 80 00 20 */	blr 

.global FontData$7loadNormalFontWatch
FontData$7loadNormalFontWatch:
/* 8006C870 000625F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C874 000625F4  7C 08 02 A6 */	mflr r0
/* 8006C878 000625F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C87C 000625FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006C880 00062600  93 C1 00 08 */	stw r30, 8(r1)
/* 8006C884 00062604  7C 7E 1B 78 */	mr r30, r3
/* 8006C888 00062608  80 0D BD 54 */	lwz r0, lbl_805A0174-_SDA_BASE_(r13)
/* 8006C88C 0006260C  2C 00 00 00 */	cmpwi r0, 0
/* 8006C890 00062610  41 82 00 0C */	beq lbl_8006C89C
/* 8006C894 00062614  38 60 00 01 */	li r3, 1
/* 8006C898 00062618  48 00 00 5C */	b lbl_8006C8F4
lbl_8006C89C:
/* 8006C89C 0006261C  3F E0 80 45 */	lis r31, lbl_80454198@ha
/* 8006C8A0 00062620  3B FF 41 98 */	addi r31, r31, lbl_80454198@l
/* 8006C8A4 00062624  4B FB 81 91 */	bl gfHeapManager$7getMaxFreeSize
/* 8006C8A8 00062628  38 83 FF 80 */	addi r4, r3, -128
/* 8006C8AC 0006262C  7F C3 F3 78 */	mr r3, r30
/* 8006C8B0 00062630  90 8D BD 8C */	stw r4, lbl_805A01AC-_SDA_BASE_(r13)
/* 8006C8B4 00062634  4B FB 81 31 */	bl gfHeapManager$7alloc
/* 8006C8B8 00062638  90 6D BD 84 */	stw r3, lbl_805A01A4-_SDA_BASE_(r13)
/* 8006C8BC 0006263C  90 6D BD 54 */	stw r3, lbl_805A0174-_SDA_BASE_(r13)
/* 8006C8C0 00062640  7F E3 FB 78 */	mr r3, r31
/* 8006C8C4 00062644  4B FB 37 19 */	bl gfFileIO$7getFileSize
/* 8006C8C8 00062648  80 AD BD 84 */	lwz r5, lbl_805A01A4-_SDA_BASE_(r13)
/* 8006C8CC 0006264C  7F E4 FB 78 */	mr r4, r31
/* 8006C8D0 00062650  80 0D BD 8C */	lwz r0, lbl_805A01AC-_SDA_BASE_(r13)
/* 8006C8D4 00062654  38 C0 00 00 */	li r6, 0
/* 8006C8D8 00062658  38 E0 00 00 */	li r7, 0
/* 8006C8DC 0006265C  7C 05 02 14 */	add r0, r5, r0
/* 8006C8E0 00062660  7C A3 00 50 */	subf r5, r3, r0
/* 8006C8E4 00062664  38 6D BD 74 */	addi r3, r13, lbl_805A0194-_SDA_BASE_
/* 8006C8E8 00062668  90 AD BD 88 */	stw r5, lbl_805A01A8-_SDA_BASE_(r13)
/* 8006C8EC 0006266C  4B FB 4E FD */	bl gfFileIOHandle$7readRequestCached_315
/* 8006C8F0 00062670  38 60 00 01 */	li r3, 1
lbl_8006C8F4:
/* 8006C8F4 00062674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C8F8 00062678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006C8FC 0006267C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006C900 00062680  7C 08 03 A6 */	mtlr r0
/* 8006C904 00062684  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C908 00062688  4E 80 00 20 */	blr 

.global FontData$7removeNormalFont
FontData$7removeNormalFont:
/* 8006C90C 0006268C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C910 00062690  7C 08 02 A6 */	mflr r0
/* 8006C914 00062694  3C 60 80 49 */	lis r3, lbl_80497D54@ha
/* 8006C918 00062698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C91C 0006269C  38 63 7D 54 */	addi r3, r3, lbl_80497D54@l
/* 8006C920 000626A0  48 0F 1E A5 */	bl nw4r2ut7ResFontFv$7RemoveResource
/* 8006C924 000626A4  80 6D BD 54 */	lwz r3, lbl_805A0174-_SDA_BASE_(r13)
/* 8006C928 000626A8  2C 03 00 00 */	cmpwi r3, 0
/* 8006C92C 000626AC  41 82 00 10 */	beq lbl_8006C93C
/* 8006C930 000626B0  4B FB 81 1D */	bl gfHeapManager$7free
/* 8006C934 000626B4  38 00 00 00 */	li r0, 0
/* 8006C938 000626B8  90 0D BD 54 */	stw r0, lbl_805A0174-_SDA_BASE_(r13)
lbl_8006C93C:
/* 8006C93C 000626BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C940 000626C0  38 60 00 01 */	li r3, 1
/* 8006C944 000626C4  7C 08 03 A6 */	mtlr r0
/* 8006C948 000626C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C94C 000626CC  4E 80 00 20 */	blr 

.global FontData$7loadNormal12Font
FontData$7loadNormal12Font:
/* 8006C950 000626D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C954 000626D4  7C 08 02 A6 */	mflr r0
/* 8006C958 000626D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C95C 000626DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006C960 000626E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8006C964 000626E4  7C 7E 1B 78 */	mr r30, r3
/* 8006C968 000626E8  80 0D BD 58 */	lwz r0, lbl_805A0178-_SDA_BASE_(r13)
/* 8006C96C 000626EC  2C 00 00 00 */	cmpwi r0, 0
/* 8006C970 000626F0  41 82 00 0C */	beq lbl_8006C97C
/* 8006C974 000626F4  38 60 00 01 */	li r3, 1
/* 8006C978 000626F8  48 00 00 5C */	b lbl_8006C9D4
lbl_8006C97C:
/* 8006C97C 000626FC  3F E0 80 45 */	lis r31, lbl_804541B4@ha
/* 8006C980 00062700  3B FF 41 B4 */	addi r31, r31, lbl_804541B4@l
/* 8006C984 00062704  4B FB 80 B1 */	bl gfHeapManager$7getMaxFreeSize
/* 8006C988 00062708  38 83 FF 80 */	addi r4, r3, -128
/* 8006C98C 0006270C  7F C3 F3 78 */	mr r3, r30
/* 8006C990 00062710  90 8D BD 98 */	stw r4, lbl_805A01B8-_SDA_BASE_(r13)
/* 8006C994 00062714  4B FB 80 51 */	bl gfHeapManager$7alloc
/* 8006C998 00062718  90 6D BD 90 */	stw r3, lbl_805A01B0-_SDA_BASE_(r13)
/* 8006C99C 0006271C  90 6D BD 58 */	stw r3, lbl_805A0178-_SDA_BASE_(r13)
/* 8006C9A0 00062720  7F E3 FB 78 */	mr r3, r31
/* 8006C9A4 00062724  4B FB 36 39 */	bl gfFileIO$7getFileSize
/* 8006C9A8 00062728  80 AD BD 90 */	lwz r5, lbl_805A01B0-_SDA_BASE_(r13)
/* 8006C9AC 0006272C  7F E4 FB 78 */	mr r4, r31
/* 8006C9B0 00062730  80 0D BD 98 */	lwz r0, lbl_805A01B8-_SDA_BASE_(r13)
/* 8006C9B4 00062734  38 C0 00 00 */	li r6, 0
/* 8006C9B8 00062738  38 E0 00 00 */	li r7, 0
/* 8006C9BC 0006273C  7C 05 02 14 */	add r0, r5, r0
/* 8006C9C0 00062740  7C A3 00 50 */	subf r5, r3, r0
/* 8006C9C4 00062744  38 6D BD 78 */	addi r3, r13, lbl_805A0198-_SDA_BASE_
/* 8006C9C8 00062748  90 AD BD 94 */	stw r5, lbl_805A01B4-_SDA_BASE_(r13)
/* 8006C9CC 0006274C  4B FB 4E 1D */	bl gfFileIOHandle$7readRequestCached_315
/* 8006C9D0 00062750  38 60 00 01 */	li r3, 1
lbl_8006C9D4:
/* 8006C9D4 00062754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C9D8 00062758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006C9DC 0006275C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006C9E0 00062760  7C 08 03 A6 */	mtlr r0
/* 8006C9E4 00062764  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C9E8 00062768  4E 80 00 20 */	blr 

.global FontData$7removeNormal12Font
FontData$7removeNormal12Font:
/* 8006C9EC 0006276C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C9F0 00062770  7C 08 02 A6 */	mflr r0
/* 8006C9F4 00062774  3C 60 80 49 */	lis r3, lbl_80497D7C@ha
/* 8006C9F8 00062778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C9FC 0006277C  38 63 7D 7C */	addi r3, r3, lbl_80497D7C@l
/* 8006CA00 00062780  48 0F 1D C5 */	bl nw4r2ut7ResFontFv$7RemoveResource
/* 8006CA04 00062784  80 6D BD 58 */	lwz r3, lbl_805A0178-_SDA_BASE_(r13)
/* 8006CA08 00062788  2C 03 00 00 */	cmpwi r3, 0
/* 8006CA0C 0006278C  41 82 00 10 */	beq lbl_8006CA1C
/* 8006CA10 00062790  4B FB 80 3D */	bl gfHeapManager$7free
/* 8006CA14 00062794  38 00 00 00 */	li r0, 0
/* 8006CA18 00062798  90 0D BD 58 */	stw r0, lbl_805A0178-_SDA_BASE_(r13)
lbl_8006CA1C:
/* 8006CA1C 0006279C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006CA20 000627A0  38 60 00 01 */	li r3, 1
/* 8006CA24 000627A4  7C 08 03 A6 */	mtlr r0
/* 8006CA28 000627A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8006CA2C 000627AC  4E 80 00 20 */	blr 

.global FontData$7loadHiraganaFont
FontData$7loadHiraganaFont:
/* 8006CA30 000627B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006CA34 000627B4  7C 08 02 A6 */	mflr r0
/* 8006CA38 000627B8  3C A0 80 49 */	lis r5, lbl_80497DA4@ha
/* 8006CA3C 000627BC  7C 64 1B 78 */	mr r4, r3
/* 8006CA40 000627C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006CA44 000627C4  38 65 7D A4 */	addi r3, r5, lbl_80497DA4@l
/* 8006CA48 000627C8  48 0F 1C 39 */	bl nw4r2ut7ResFontFPv$7SetResource
/* 8006CA4C 000627CC  38 00 00 00 */	li r0, 0
/* 8006CA50 000627D0  90 0D BD 50 */	stw r0, lbl_805A0170-_SDA_BASE_(r13)
/* 8006CA54 000627D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006CA58 000627D8  7C 08 03 A6 */	mtlr r0
/* 8006CA5C 000627DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8006CA60 000627E0  4E 80 00 20 */	blr 

.global FontData$7removeHiraganaFont
FontData$7removeHiraganaFont:
/* 8006CA64 000627E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006CA68 000627E8  7C 08 02 A6 */	mflr r0
/* 8006CA6C 000627EC  3C 60 80 49 */	lis r3, lbl_80497DA4@ha
/* 8006CA70 000627F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006CA74 000627F4  38 63 7D A4 */	addi r3, r3, lbl_80497DA4@l
/* 8006CA78 000627F8  48 0F 1D 4D */	bl nw4r2ut7ResFontFv$7RemoveResource
/* 8006CA7C 000627FC  80 6D BD 50 */	lwz r3, lbl_805A0170-_SDA_BASE_(r13)
/* 8006CA80 00062800  2C 03 00 00 */	cmpwi r3, 0
/* 8006CA84 00062804  41 82 00 10 */	beq lbl_8006CA94
/* 8006CA88 00062808  4B FB 7F C5 */	bl gfHeapManager$7free
/* 8006CA8C 0006280C  38 00 00 00 */	li r0, 0
/* 8006CA90 00062810  90 0D BD 50 */	stw r0, lbl_805A0170-_SDA_BASE_(r13)
lbl_8006CA94:
/* 8006CA94 00062814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006CA98 00062818  38 60 00 01 */	li r3, 1
/* 8006CA9C 0006281C  7C 08 03 A6 */	mtlr r0
/* 8006CAA0 00062820  38 21 00 10 */	addi r1, r1, 0x10
/* 8006CAA4 00062824  4E 80 00 20 */	blr 

.global FontData$7isNormalFontLoadedEx
FontData$7isNormalFontLoadedEx:
/* 8006CAA8 00062828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006CAAC 0006282C  7C 08 02 A6 */	mflr r0
/* 8006CAB0 00062830  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006CAB4 00062834  80 0D BD 88 */	lwz r0, lbl_805A01A8-_SDA_BASE_(r13)
/* 8006CAB8 00062838  2C 00 00 00 */	cmpwi r0, 0
/* 8006CABC 0006283C  40 82 00 0C */	bne lbl_8006CAC8
/* 8006CAC0 00062840  38 60 00 01 */	li r3, 1
/* 8006CAC4 00062844  48 00 00 50 */	b lbl_8006CB14
lbl_8006CAC8:
/* 8006CAC8 00062848  38 6D BD 74 */	addi r3, r13, lbl_805A0194-_SDA_BASE_
/* 8006CACC 0006284C  4B FB 54 6D */	bl gfFileIOHandle$7isReady
/* 8006CAD0 00062850  2C 03 00 00 */	cmpwi r3, 0
/* 8006CAD4 00062854  40 82 00 0C */	bne lbl_8006CAE0
/* 8006CAD8 00062858  38 60 00 00 */	li r3, 0
/* 8006CADC 0006285C  48 00 00 38 */	b lbl_8006CB14
lbl_8006CAE0:
/* 8006CAE0 00062860  80 6D BD 88 */	lwz r3, lbl_805A01A8-_SDA_BASE_(r13)
/* 8006CAE4 00062864  80 8D BD 84 */	lwz r4, lbl_805A01A4-_SDA_BASE_(r13)
/* 8006CAE8 00062868  48 19 95 31 */	bl CXUncompressLZ
/* 8006CAEC 0006286C  80 6D BD 84 */	lwz r3, lbl_805A01A4-_SDA_BASE_(r13)
/* 8006CAF0 00062870  80 8D BD 8C */	lwz r4, lbl_805A01AC-_SDA_BASE_(r13)
/* 8006CAF4 00062874  48 16 AB F5 */	bl DCFlushRange
/* 8006CAF8 00062878  3C 60 80 49 */	lis r3, lbl_80497D54@ha
/* 8006CAFC 0006287C  80 8D BD 84 */	lwz r4, lbl_805A01A4-_SDA_BASE_(r13)
/* 8006CB00 00062880  38 63 7D 54 */	addi r3, r3, lbl_80497D54@l
/* 8006CB04 00062884  48 0F 1B 7D */	bl nw4r2ut7ResFontFPv$7SetResource
/* 8006CB08 00062888  38 00 00 00 */	li r0, 0
/* 8006CB0C 0006288C  38 60 00 01 */	li r3, 1
/* 8006CB10 00062890  90 0D BD 88 */	stw r0, lbl_805A01A8-_SDA_BASE_(r13)
lbl_8006CB14:
/* 8006CB14 00062894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006CB18 00062898  7C 08 03 A6 */	mtlr r0
/* 8006CB1C 0006289C  38 21 00 10 */	addi r1, r1, 0x10
/* 8006CB20 000628A0  4E 80 00 20 */	blr 

.global FontData$7isNormal2FontLoadedEx
FontData$7isNormal2FontLoadedEx:
/* 8006CB24 000628A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006CB28 000628A8  7C 08 02 A6 */	mflr r0
/* 8006CB2C 000628AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006CB30 000628B0  80 0D BD 94 */	lwz r0, lbl_805A01B4-_SDA_BASE_(r13)
/* 8006CB34 000628B4  2C 00 00 00 */	cmpwi r0, 0
/* 8006CB38 000628B8  40 82 00 0C */	bne lbl_8006CB44
/* 8006CB3C 000628BC  38 60 00 01 */	li r3, 1
/* 8006CB40 000628C0  48 00 00 50 */	b lbl_8006CB90
lbl_8006CB44:
/* 8006CB44 000628C4  38 6D BD 78 */	addi r3, r13, lbl_805A0198-_SDA_BASE_
/* 8006CB48 000628C8  4B FB 53 F1 */	bl gfFileIOHandle$7isReady
/* 8006CB4C 000628CC  2C 03 00 00 */	cmpwi r3, 0
/* 8006CB50 000628D0  40 82 00 0C */	bne lbl_8006CB5C
/* 8006CB54 000628D4  38 60 00 00 */	li r3, 0
/* 8006CB58 000628D8  48 00 00 38 */	b lbl_8006CB90
lbl_8006CB5C:
/* 8006CB5C 000628DC  80 6D BD 94 */	lwz r3, lbl_805A01B4-_SDA_BASE_(r13)
/* 8006CB60 000628E0  80 8D BD 90 */	lwz r4, lbl_805A01B0-_SDA_BASE_(r13)
/* 8006CB64 000628E4  48 19 94 B5 */	bl CXUncompressLZ
/* 8006CB68 000628E8  80 6D BD 90 */	lwz r3, lbl_805A01B0-_SDA_BASE_(r13)
/* 8006CB6C 000628EC  80 8D BD 98 */	lwz r4, lbl_805A01B8-_SDA_BASE_(r13)
/* 8006CB70 000628F0  48 16 AB 79 */	bl DCFlushRange
/* 8006CB74 000628F4  3C 60 80 49 */	lis r3, lbl_80497D7C@ha
/* 8006CB78 000628F8  80 8D BD 90 */	lwz r4, lbl_805A01B0-_SDA_BASE_(r13)
/* 8006CB7C 000628FC  38 63 7D 7C */	addi r3, r3, lbl_80497D7C@l
/* 8006CB80 00062900  48 0F 1B 01 */	bl nw4r2ut7ResFontFPv$7SetResource
/* 8006CB84 00062904  38 00 00 00 */	li r0, 0
/* 8006CB88 00062908  38 60 00 01 */	li r3, 1
/* 8006CB8C 0006290C  90 0D BD 94 */	stw r0, lbl_805A01B4-_SDA_BASE_(r13)
lbl_8006CB90:
/* 8006CB90 00062910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006CB94 00062914  7C 08 03 A6 */	mtlr r0
/* 8006CB98 00062918  38 21 00 10 */	addi r1, r1, 0x10
/* 8006CB9C 0006291C  4E 80 00 20 */	blr 

.global FontData$7getFontResource
FontData$7getFontResource:
/* 8006CBA0 00062920  28 03 00 08 */	cmplwi r3, 8
/* 8006CBA4 00062924  3C A0 80 49 */	lis r5, lbl_80497D20@ha
/* 8006CBA8 00062928  38 A5 7D 20 */	addi r5, r5, lbl_80497D20@l
/* 8006CBAC 0006292C  41 81 00 64 */	bgt lbl_8006CC10
/* 8006CBB0 00062930  3C 80 80 45 */	lis r4, lbl_804541D4@ha
/* 8006CBB4 00062934  54 60 10 3A */	slwi r0, r3, 2
/* 8006CBB8 00062938  38 84 41 D4 */	addi r4, r4, lbl_804541D4@l
/* 8006CBBC 0006293C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8006CBC0 00062940  7C 89 03 A6 */	mtctr r4
/* 8006CBC4 00062944  4E 80 04 20 */	bctr 
/* 8006CBC8 00062948  38 65 00 0C */	addi r3, r5, 0xc
/* 8006CBCC 0006294C  4E 80 00 20 */	blr 
/* 8006CBD0 00062950  38 65 00 34 */	addi r3, r5, 0x34
/* 8006CBD4 00062954  4E 80 00 20 */	blr 
/* 8006CBD8 00062958  38 65 00 84 */	addi r3, r5, 0x84
/* 8006CBDC 0006295C  4E 80 00 20 */	blr 
/* 8006CBE0 00062960  38 65 00 AC */	addi r3, r5, 0xac
/* 8006CBE4 00062964  4E 80 00 20 */	blr 
/* 8006CBE8 00062968  38 65 01 24 */	addi r3, r5, 0x124
/* 8006CBEC 0006296C  4E 80 00 20 */	blr 
/* 8006CBF0 00062970  38 65 00 D4 */	addi r3, r5, 0xd4
/* 8006CBF4 00062974  4E 80 00 20 */	blr 
/* 8006CBF8 00062978  38 65 00 FC */	addi r3, r5, 0xfc
/* 8006CBFC 0006297C  4E 80 00 20 */	blr 
/* 8006CC00 00062980  38 65 01 4C */	addi r3, r5, 0x14c
/* 8006CC04 00062984  4E 80 00 20 */	blr 
/* 8006CC08 00062988  38 65 00 5C */	addi r3, r5, 0x5c
/* 8006CC0C 0006298C  4E 80 00 20 */	blr 
lbl_8006CC10:
/* 8006CC10 00062990  38 65 00 34 */	addi r3, r5, 0x34
/* 8006CC14 00062994  4E 80 00 20 */	blr 

.global __sinit_$3ms_resfont_cpp
__sinit_$3ms_resfont_cpp:
/* 8006CC18 00062998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006CC1C 0006299C  7C 08 02 A6 */	mflr r0
/* 8006CC20 000629A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006CC24 000629A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8006CC28 000629A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8006CC2C 000629AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8006CC30 000629B0  3F A0 80 49 */	lis r29, lbl_80497D20@ha
/* 8006CC34 000629B4  3B BD 7D 20 */	addi r29, r29, lbl_80497D20@l
/* 8006CC38 000629B8  38 7D 00 0C */	addi r3, r29, 0xc
/* 8006CC3C 000629BC  48 0F 0D 49 */	bl nw4r2ut7RomFontFv$7__ct
/* 8006CC40 000629C0  3C 80 80 16 */	lis r4, nw4r2ut7RomFontFv$7__dt@ha
/* 8006CC44 000629C4  38 7D 00 0C */	addi r3, r29, 0xc
/* 8006CC48 000629C8  38 84 DA 18 */	addi r4, r4, nw4r2ut7RomFontFv$7__dt@l
/* 8006CC4C 000629CC  38 BD 00 00 */	addi r5, r29, 0
/* 8006CC50 000629D0  48 38 3A D5 */	bl __register_global_object
/* 8006CC54 000629D4  38 7D 00 34 */	addi r3, r29, 0x34
/* 8006CC58 000629D8  48 0F 19 95 */	bl nw4r2ut7ResFontFv$7__ct
/* 8006CC5C 000629DC  3F C0 80 16 */	lis r30, nw4r2ut7ResFontFv$7__dt@ha
/* 8006CC60 000629E0  38 7D 00 34 */	addi r3, r29, 0x34
/* 8006CC64 000629E4  38 9E E6 28 */	addi r4, r30, nw4r2ut7ResFontFv$7__dt@l
/* 8006CC68 000629E8  38 BD 00 28 */	addi r5, r29, 0x28
/* 8006CC6C 000629EC  48 38 3A B9 */	bl __register_global_object
/* 8006CC70 000629F0  38 7D 00 5C */	addi r3, r29, 0x5c
/* 8006CC74 000629F4  48 0F 19 79 */	bl nw4r2ut7ResFontFv$7__ct
/* 8006CC78 000629F8  38 7D 00 5C */	addi r3, r29, 0x5c
/* 8006CC7C 000629FC  38 9E E6 28 */	addi r4, r30, -6616
/* 8006CC80 00062A00  38 BD 00 50 */	addi r5, r29, 0x50
/* 8006CC84 00062A04  48 38 3A A1 */	bl __register_global_object
/* 8006CC88 00062A08  38 7D 00 84 */	addi r3, r29, 0x84
/* 8006CC8C 00062A0C  48 0F 19 61 */	bl nw4r2ut7ResFontFv$7__ct
/* 8006CC90 00062A10  38 7D 00 84 */	addi r3, r29, 0x84
/* 8006CC94 00062A14  38 9E E6 28 */	addi r4, r30, -6616
/* 8006CC98 00062A18  38 BD 00 78 */	addi r5, r29, 0x78
/* 8006CC9C 00062A1C  48 38 3A 89 */	bl __register_global_object
/* 8006CCA0 00062A20  38 7D 00 AC */	addi r3, r29, 0xac
/* 8006CCA4 00062A24  48 0F 19 49 */	bl nw4r2ut7ResFontFv$7__ct
/* 8006CCA8 00062A28  38 7D 00 AC */	addi r3, r29, 0xac
/* 8006CCAC 00062A2C  38 9E E6 28 */	addi r4, r30, -6616
/* 8006CCB0 00062A30  38 BD 00 A0 */	addi r5, r29, 0xa0
/* 8006CCB4 00062A34  48 38 3A 71 */	bl __register_global_object
/* 8006CCB8 00062A38  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 8006CCBC 00062A3C  48 0F 19 31 */	bl nw4r2ut7ResFontFv$7__ct
/* 8006CCC0 00062A40  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 8006CCC4 00062A44  38 9E E6 28 */	addi r4, r30, -6616
/* 8006CCC8 00062A48  38 BD 00 C8 */	addi r5, r29, 0xc8
/* 8006CCCC 00062A4C  48 38 3A 59 */	bl __register_global_object
/* 8006CCD0 00062A50  38 7D 00 FC */	addi r3, r29, 0xfc
/* 8006CCD4 00062A54  48 0F 19 19 */	bl nw4r2ut7ResFontFv$7__ct
/* 8006CCD8 00062A58  38 7D 00 FC */	addi r3, r29, 0xfc
/* 8006CCDC 00062A5C  38 9E E6 28 */	addi r4, r30, -6616
/* 8006CCE0 00062A60  38 BD 00 F0 */	addi r5, r29, 0xf0
/* 8006CCE4 00062A64  48 38 3A 41 */	bl __register_global_object
/* 8006CCE8 00062A68  38 7D 01 24 */	addi r3, r29, 0x124
/* 8006CCEC 00062A6C  48 0F 19 01 */	bl nw4r2ut7ResFontFv$7__ct
/* 8006CCF0 00062A70  38 7D 01 24 */	addi r3, r29, 0x124
/* 8006CCF4 00062A74  38 9E E6 28 */	addi r4, r30, -6616
/* 8006CCF8 00062A78  38 BD 01 18 */	addi r5, r29, 0x118
/* 8006CCFC 00062A7C  48 38 3A 29 */	bl __register_global_object
/* 8006CD00 00062A80  38 7D 01 4C */	addi r3, r29, 0x14c
/* 8006CD04 00062A84  48 0F 18 E9 */	bl nw4r2ut7ResFontFv$7__ct
/* 8006CD08 00062A88  38 7D 01 4C */	addi r3, r29, 0x14c
/* 8006CD0C 00062A8C  38 9E E6 28 */	addi r4, r30, -6616
/* 8006CD10 00062A90  38 BD 01 40 */	addi r5, r29, 0x140
/* 8006CD14 00062A94  48 38 3A 11 */	bl __register_global_object
/* 8006CD18 00062A98  3B C0 00 00 */	li r30, 0
/* 8006CD1C 00062A9C  3F E0 80 02 */	lis r31, gfFileIOHandle$7__dt@ha
/* 8006CD20 00062AA0  93 CD BD 74 */	stw r30, lbl_805A0194-_SDA_BASE_(r13)
/* 8006CD24 00062AA4  38 9F 0B 38 */	addi r4, r31, gfFileIOHandle$7__dt@l
/* 8006CD28 00062AA8  38 BD 01 68 */	addi r5, r29, 0x168
/* 8006CD2C 00062AAC  38 6D BD 74 */	addi r3, r13, lbl_805A0194-_SDA_BASE_
/* 8006CD30 00062AB0  48 38 39 F5 */	bl __register_global_object
/* 8006CD34 00062AB4  93 CD BD 78 */	stw r30, lbl_805A0198-_SDA_BASE_(r13)
/* 8006CD38 00062AB8  38 9F 0B 38 */	addi r4, r31, 0xb38
/* 8006CD3C 00062ABC  38 BD 01 74 */	addi r5, r29, 0x174
/* 8006CD40 00062AC0  38 6D BD 78 */	addi r3, r13, lbl_805A0198-_SDA_BASE_
/* 8006CD44 00062AC4  48 38 39 E1 */	bl __register_global_object
/* 8006CD48 00062AC8  93 CD BD 7C */	stw r30, lbl_805A019C-_SDA_BASE_(r13)
/* 8006CD4C 00062ACC  38 9F 0B 38 */	addi r4, r31, 0xb38
/* 8006CD50 00062AD0  38 BD 01 80 */	addi r5, r29, 0x180
/* 8006CD54 00062AD4  38 6D BD 7C */	addi r3, r13, lbl_805A019C-_SDA_BASE_
/* 8006CD58 00062AD8  48 38 39 CD */	bl __register_global_object
/* 8006CD5C 00062ADC  93 CD BD 80 */	stw r30, lbl_805A01A0-_SDA_BASE_(r13)
/* 8006CD60 00062AE0  38 9F 0B 38 */	addi r4, r31, 0xb38
/* 8006CD64 00062AE4  38 BD 01 8C */	addi r5, r29, 0x18c
/* 8006CD68 00062AE8  38 6D BD 80 */	addi r3, r13, lbl_805A01A0-_SDA_BASE_
/* 8006CD6C 00062AEC  48 38 39 B9 */	bl __register_global_object
/* 8006CD70 00062AF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006CD74 00062AF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8006CD78 00062AF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8006CD7C 00062AFC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8006CD80 00062B00  7C 08 03 A6 */	mtlr r0
/* 8006CD84 00062B04  38 21 00 20 */	addi r1, r1, 0x20
/* 8006CD88 00062B08  4E 80 00 20 */	blr 

