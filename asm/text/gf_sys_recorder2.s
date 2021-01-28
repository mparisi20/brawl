.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfSysRecorder2$7createInstance
gfSysRecorder2$7createInstance:
/* 80030548 000262C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003054C 000262CC  7C 08 02 A6 */	mflr r0
/* 80030550 000262D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030554 000262D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030558 000262D8  7C 7F 1B 78 */	mr r31, r3
/* 8003055C 000262DC  80 0D BC 58 */	lwz r0, lbl_805A0078-_SDA_BASE_(r13)
/* 80030560 000262E0  2C 00 00 00 */	cmpwi r0, 0
/* 80030564 000262E4  41 82 00 0C */	beq lbl_80030570
/* 80030568 000262E8  38 60 00 00 */	li r3, 0
/* 8003056C 000262EC  48 00 00 30 */	b lbl_8003059C
lbl_80030570:
/* 80030570 000262F0  7F E4 FB 78 */	mr r4, r31
/* 80030574 000262F4  38 60 01 18 */	li r3, 0x118
/* 80030578 000262F8  4B FD C3 41 */	bl srHeapType$7__nw
/* 8003057C 000262FC  2C 03 00 00 */	cmpwi r3, 0
/* 80030580 00026300  41 82 00 08 */	beq lbl_80030588
/* 80030584 00026304  48 00 00 D1 */	bl gfSysRecorder2$7__ct
lbl_80030588:
/* 80030588 00026308  2C 03 00 00 */	cmpwi r3, 0
/* 8003058C 0002630C  90 6D BC 58 */	stw r3, lbl_805A0078-_SDA_BASE_(r13)
/* 80030590 00026310  41 82 00 08 */	beq lbl_80030598
/* 80030594 00026314  93 E3 01 14 */	stw r31, 0x114(r3)
lbl_80030598:
/* 80030598 00026318  80 6D BC 58 */	lwz r3, lbl_805A0078-_SDA_BASE_(r13)
lbl_8003059C:
/* 8003059C 0002631C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800305A0 00026320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800305A4 00026324  7C 08 03 A6 */	mtlr r0
/* 800305A8 00026328  38 21 00 10 */	addi r1, r1, 0x10
/* 800305AC 0002632C  4E 80 00 20 */	blr 

.global gfSysRecorder2$7isEnable
gfSysRecorder2$7isEnable:
/* 800305B0 00026330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800305B4 00026334  7C 08 02 A6 */	mflr r0
/* 800305B8 00026338  90 01 00 14 */	stw r0, 0x14(r1)
/* 800305BC 0002633C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800305C0 00026340  7C 7F 1B 78 */	mr r31, r3
/* 800305C4 00026344  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 800305C8 00026348  48 01 E5 0D */	bl GameGlobal$7setEnableSaveLoad
/* 800305CC 0002634C  38 00 00 01 */	li r0, 1
/* 800305D0 00026350  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800305D4 00026354  7C 00 F8 30 */	slw r0, r0, r31
/* 800305D8 00026358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800305DC 0002635C  7C 63 00 38 */	and r3, r3, r0
/* 800305E0 00026360  7C 03 00 D0 */	neg r0, r3
/* 800305E4 00026364  7C 00 1B 78 */	or r0, r0, r3
/* 800305E8 00026368  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800305EC 0002636C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800305F0 00026370  7C 08 03 A6 */	mtlr r0
/* 800305F4 00026374  38 21 00 10 */	addi r1, r1, 0x10
/* 800305F8 00026378  4E 80 00 20 */	blr 

.global gfSysRecorder2$7getCollectionVFName
gfSysRecorder2$7getCollectionVFName:
/* 800305FC 0002637C  3C C0 80 42 */	lis r6, lbl_80422F70@ha
/* 80030600 00026380  38 00 00 05 */	li r0, 5
/* 80030604 00026384  38 A0 00 00 */	li r5, 0
/* 80030608 00026388  38 80 00 00 */	li r4, 0
/* 8003060C 0002638C  38 C6 2F 70 */	addi r6, r6, lbl_80422F70@l
/* 80030610 00026390  7C 09 03 A6 */	mtctr r0
lbl_80030614:
/* 80030614 00026394  80 06 00 00 */	lwz r0, 0(r6)
/* 80030618 00026398  2C 00 00 03 */	cmpwi r0, 3
/* 8003061C 0002639C  40 82 00 18 */	bne lbl_80030634
/* 80030620 000263A0  1C 04 00 14 */	mulli r0, r4, 0x14
/* 80030624 000263A4  3C 80 80 42 */	lis r4, lbl_80422F70@ha
/* 80030628 000263A8  38 84 2F 70 */	addi r4, r4, lbl_80422F70@l
/* 8003062C 000263AC  7C A4 02 14 */	add r5, r4, r0
/* 80030630 000263B0  48 00 00 10 */	b lbl_80030640
lbl_80030634:
/* 80030634 000263B4  38 C6 00 14 */	addi r6, r6, 0x14
/* 80030638 000263B8  38 84 00 01 */	addi r4, r4, 1
/* 8003063C 000263BC  42 00 FF D8 */	bdnz lbl_80030614
lbl_80030640:
/* 80030640 000263C0  3C 80 80 42 */	lis r4, lbl_80422FE0@ha
/* 80030644 000263C4  38 A5 00 04 */	addi r5, r5, 4
/* 80030648 000263C8  38 84 2F E0 */	addi r4, r4, lbl_80422FE0@l
/* 8003064C 000263CC  4C C6 31 82 */	crclr 6
/* 80030650 000263D0  48 3C 83 AC */	b sprintf

.global gfSysRecorder2$7__ct
gfSysRecorder2$7__ct:
/* 80030654 000263D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030658 000263D8  7C 08 02 A6 */	mflr r0
/* 8003065C 000263DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030660 000263E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030664 000263E4  3B E0 00 00 */	li r31, 0
/* 80030668 000263E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8003066C 000263EC  7C 7E 1B 78 */	mr r30, r3
/* 80030670 000263F0  93 E3 00 08 */	stw r31, 8(r3)
/* 80030674 000263F4  38 63 00 0C */	addi r3, r3, 0xc
/* 80030678 000263F8  4B FE 30 95 */	bl gfArchive$7__ct
/* 8003067C 000263FC  38 00 00 06 */	li r0, 6
/* 80030680 00026400  93 FE 00 F0 */	stw r31, 0xf0(r30)
/* 80030684 00026404  7F C3 F3 78 */	mr r3, r30
/* 80030688 00026408  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 8003068C 0002640C  93 FE 00 AC */	stw r31, 0xac(r30)
/* 80030690 00026410  93 FE 00 B0 */	stw r31, 0xb0(r30)
/* 80030694 00026414  93 FE 00 00 */	stw r31, 0(r30)
/* 80030698 00026418  93 FE 00 04 */	stw r31, 4(r30)
/* 8003069C 0002641C  93 FE 00 A0 */	stw r31, 0xa0(r30)
/* 800306A0 00026420  93 FE 00 A4 */	stw r31, 0xa4(r30)
/* 800306A4 00026424  93 FE 00 8C */	stw r31, 0x8c(r30)
/* 800306A8 00026428  93 FE 00 90 */	stw r31, 0x90(r30)
/* 800306AC 0002642C  93 FE 00 94 */	stw r31, 0x94(r30)
/* 800306B0 00026430  93 FE 00 9C */	stw r31, 0x9c(r30)
/* 800306B4 00026434  9B FE 00 98 */	stb r31, 0x98(r30)
/* 800306B8 00026438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800306BC 0002643C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800306C0 00026440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800306C4 00026444  7C 08 03 A6 */	mtlr r0
/* 800306C8 00026448  38 21 00 10 */	addi r1, r1, 0x10
/* 800306CC 0002644C  4E 80 00 20 */	blr 

.global gfSysRecorder2$7__dt
gfSysRecorder2$7__dt:
/* 800306D0 00026450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800306D4 00026454  7C 08 02 A6 */	mflr r0
/* 800306D8 00026458  2C 03 00 00 */	cmpwi r3, 0
/* 800306DC 0002645C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800306E0 00026460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800306E4 00026464  7C 9F 23 78 */	mr r31, r4
/* 800306E8 00026468  93 C1 00 08 */	stw r30, 8(r1)
/* 800306EC 0002646C  7C 7E 1B 78 */	mr r30, r3
/* 800306F0 00026470  41 82 00 A8 */	beq lbl_80030798
/* 800306F4 00026474  80 63 00 00 */	lwz r3, 0(r3)
/* 800306F8 00026478  2C 03 00 00 */	cmpwi r3, 0
/* 800306FC 0002647C  41 82 00 10 */	beq lbl_8003070C
/* 80030700 00026480  4B FF 43 4D */	bl gfHeapManager$7free
/* 80030704 00026484  38 00 00 00 */	li r0, 0
/* 80030708 00026488  90 1E 00 00 */	stw r0, 0(r30)
lbl_8003070C:
/* 8003070C 0002648C  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 80030710 00026490  2C 03 00 00 */	cmpwi r3, 0
/* 80030714 00026494  41 82 00 10 */	beq lbl_80030724
/* 80030718 00026498  4B FF 43 35 */	bl gfHeapManager$7free
/* 8003071C 0002649C  38 00 00 00 */	li r0, 0
/* 80030720 000264A0  90 1E 00 8C */	stw r0, 0x8c(r30)
lbl_80030724:
/* 80030724 000264A4  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 80030728 000264A8  2C 03 00 00 */	cmpwi r3, 0
/* 8003072C 000264AC  41 82 00 10 */	beq lbl_8003073C
/* 80030730 000264B0  4B FF 43 1D */	bl gfHeapManager$7free
/* 80030734 000264B4  38 00 00 00 */	li r0, 0
/* 80030738 000264B8  90 1E 00 90 */	stw r0, 0x90(r30)
lbl_8003073C:
/* 8003073C 000264BC  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 80030740 000264C0  2C 03 00 00 */	cmpwi r3, 0
/* 80030744 000264C4  41 82 00 10 */	beq lbl_80030754
/* 80030748 000264C8  4B FF 43 05 */	bl gfHeapManager$7free
/* 8003074C 000264CC  38 00 00 00 */	li r0, 0
/* 80030750 000264D0  90 1E 00 94 */	stw r0, 0x94(r30)
lbl_80030754:
/* 80030754 000264D4  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 80030758 000264D8  2C 03 00 00 */	cmpwi r3, 0
/* 8003075C 000264DC  41 82 00 14 */	beq lbl_80030770
/* 80030760 000264E0  38 80 00 01 */	li r4, 1
/* 80030764 000264E4  48 11 DD BD */	bl nteExchange$7__dt
/* 80030768 000264E8  38 00 00 00 */	li r0, 0
/* 8003076C 000264EC  90 1E 00 9C */	stw r0, 0x9c(r30)
lbl_80030770:
/* 80030770 000264F0  38 7E 00 0C */	addi r3, r30, 0xc
/* 80030774 000264F4  38 80 FF FF */	li r4, -1
/* 80030778 000264F8  4B FE 33 A5 */	bl gfArchive$7__dt
/* 8003077C 000264FC  38 7E 00 08 */	addi r3, r30, 8
/* 80030780 00026500  38 80 FF FF */	li r4, -1
/* 80030784 00026504  4B FF 03 B5 */	bl gfFileIOHandle$7__dt
/* 80030788 00026508  2C 1F 00 00 */	cmpwi r31, 0
/* 8003078C 0002650C  40 81 00 0C */	ble lbl_80030798
/* 80030790 00026510  7F C3 F3 78 */	mr r3, r30
/* 80030794 00026514  4B FD C1 35 */	bl __dl__FPv
lbl_80030798:
/* 80030798 00026518  7F C3 F3 78 */	mr r3, r30
/* 8003079C 0002651C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800307A0 00026520  83 C1 00 08 */	lwz r30, 8(r1)
/* 800307A4 00026524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800307A8 00026528  7C 08 03 A6 */	mtlr r0
/* 800307AC 0002652C  38 21 00 10 */	addi r1, r1, 0x10
/* 800307B0 00026530  4E 80 00 20 */	blr 

.global gfSysRecorder2$7dropInstance
gfSysRecorder2$7dropInstance:
/* 800307B4 00026534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800307B8 00026538  7C 08 02 A6 */	mflr r0
/* 800307BC 0002653C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800307C0 00026540  80 6D BC 58 */	lwz r3, lbl_805A0078-_SDA_BASE_(r13)
/* 800307C4 00026544  2C 03 00 00 */	cmpwi r3, 0
/* 800307C8 00026548  41 82 00 14 */	beq lbl_800307DC
/* 800307CC 0002654C  38 80 00 01 */	li r4, 1
/* 800307D0 00026550  4B FF FF 01 */	bl gfSysRecorder2$7__dt
/* 800307D4 00026554  38 00 00 00 */	li r0, 0
/* 800307D8 00026558  90 0D BC 58 */	stw r0, lbl_805A0078-_SDA_BASE_(r13)
lbl_800307DC:
/* 800307DC 0002655C  3C 80 80 49 */	lis r4, lbl_804953A0@ha
/* 800307E0 00026560  3C 60 80 49 */	lis r3, lbl_80495390@ha
/* 800307E4 00026564  38 84 53 A0 */	addi r4, r4, lbl_804953A0@l
/* 800307E8 00026568  38 00 00 01 */	li r0, 1
/* 800307EC 0002656C  38 63 53 90 */	addi r3, r3, lbl_80495390@l
/* 800307F0 00026570  98 04 00 08 */	stb r0, 8(r4)
/* 800307F4 00026574  98 03 00 0C */	stb r0, 0xc(r3)
/* 800307F8 00026578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800307FC 0002657C  7C 08 03 A6 */	mtlr r0
/* 80030800 00026580  38 21 00 10 */	addi r1, r1, 0x10
/* 80030804 00026584  4E 80 00 20 */	blr 

.global gfSysRecorder2$7update
gfSysRecorder2$7update:
/* 80030808 00026588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003080C 0002658C  7C 08 02 A6 */	mflr r0
/* 80030810 00026590  3C 80 80 49 */	lis r4, lbl_80495390@ha
/* 80030814 00026594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030818 00026598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003081C 0002659C  7C 7F 1B 78 */	mr r31, r3
/* 80030820 000265A0  88 64 53 90 */	lbz r3, lbl_80495390@l(r4)
/* 80030824 000265A4  38 80 00 00 */	li r4, 0
/* 80030828 000265A8  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8003082C 000265AC  40 82 00 14 */	bne lbl_80030840
/* 80030830 000265B0  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80030834 000265B4  40 82 00 0C */	bne lbl_80030840
/* 80030838 000265B8  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 8003083C 000265BC  41 82 00 08 */	beq lbl_80030844
lbl_80030840:
/* 80030840 000265C0  38 80 00 01 */	li r4, 1
lbl_80030844:
/* 80030844 000265C4  2C 04 00 00 */	cmpwi r4, 0
/* 80030848 000265C8  41 82 00 50 */	beq lbl_80030898
/* 8003084C 000265CC  4B FE A6 BD */	bl gfErrorManager$7getInstance
/* 80030850 000265D0  2C 03 00 00 */	cmpwi r3, 0
/* 80030854 000265D4  41 82 00 44 */	beq lbl_80030898
/* 80030858 000265D8  4B FE A6 B1 */	bl gfErrorManager$7getInstance
/* 8003085C 000265DC  88 03 00 00 */	lbz r0, 0(r3)
/* 80030860 000265E0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80030864 000265E4  41 82 00 34 */	beq lbl_80030898
/* 80030868 000265E8  4B FE A6 A1 */	bl gfErrorManager$7getInstance
/* 8003086C 000265EC  88 03 00 00 */	lbz r0, 0(r3)
/* 80030870 000265F0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80030874 000265F4  40 82 00 24 */	bne lbl_80030898
/* 80030878 000265F8  3C 80 80 49 */	lis r4, lbl_804953A0@ha
/* 8003087C 000265FC  3C 60 80 49 */	lis r3, lbl_80495390@ha
/* 80030880 00026600  38 84 53 A0 */	addi r4, r4, lbl_804953A0@l
/* 80030884 00026604  38 00 00 01 */	li r0, 1
/* 80030888 00026608  38 63 53 90 */	addi r3, r3, lbl_80495390@l
/* 8003088C 0002660C  98 04 00 08 */	stb r0, 8(r4)
/* 80030890 00026610  98 03 00 0C */	stb r0, 0xc(r3)
/* 80030894 00026614  48 00 00 AC */	b lbl_80030940
lbl_80030898:
/* 80030898 00026618  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8003089C 0002661C  2C 00 00 03 */	cmpwi r0, 3
/* 800308A0 00026620  41 82 00 64 */	beq lbl_80030904
/* 800308A4 00026624  40 80 00 14 */	bge lbl_800308B8
/* 800308A8 00026628  2C 00 00 01 */	cmpwi r0, 1
/* 800308AC 0002662C  41 82 00 18 */	beq lbl_800308C4
/* 800308B0 00026630  40 80 00 20 */	bge lbl_800308D0
/* 800308B4 00026634  48 00 00 8C */	b lbl_80030940
lbl_800308B8:
/* 800308B8 00026638  2C 00 00 05 */	cmpwi r0, 5
/* 800308BC 0002663C  40 80 00 84 */	bge lbl_80030940
/* 800308C0 00026640  48 00 00 78 */	b lbl_80030938
lbl_800308C4:
/* 800308C4 00026644  7F E3 FB 78 */	mr r3, r31
/* 800308C8 00026648  48 00 06 DD */	bl gfSysRecorder2$7_processCheck
/* 800308CC 0002664C  48 00 00 74 */	b lbl_80030940
lbl_800308D0:
/* 800308D0 00026650  7F E3 FB 78 */	mr r3, r31
/* 800308D4 00026654  48 00 0F 99 */	bl gfSysRecorder2$7_processRenew
/* 800308D8 00026658  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 800308DC 0002665C  2C 00 00 00 */	cmpwi r0, 0
/* 800308E0 00026660  40 82 00 60 */	bne lbl_80030940
/* 800308E4 00026664  3C 80 80 49 */	lis r4, lbl_804953A0@ha
/* 800308E8 00026668  3C 60 80 49 */	lis r3, lbl_80495390@ha
/* 800308EC 0002666C  38 84 53 A0 */	addi r4, r4, lbl_804953A0@l
/* 800308F0 00026670  38 00 00 01 */	li r0, 1
/* 800308F4 00026674  38 63 53 90 */	addi r3, r3, lbl_80495390@l
/* 800308F8 00026678  98 04 00 08 */	stb r0, 8(r4)
/* 800308FC 0002667C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80030900 00026680  48 00 00 40 */	b lbl_80030940
lbl_80030904:
/* 80030904 00026684  7F E3 FB 78 */	mr r3, r31
/* 80030908 00026688  48 00 20 01 */	bl gfSysRecorder2$7_processSave
/* 8003090C 0002668C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80030910 00026690  2C 00 00 00 */	cmpwi r0, 0
/* 80030914 00026694  40 82 00 2C */	bne lbl_80030940
/* 80030918 00026698  3C 80 80 49 */	lis r4, lbl_804953A0@ha
/* 8003091C 0002669C  3C 60 80 49 */	lis r3, lbl_80495390@ha
/* 80030920 000266A0  38 84 53 A0 */	addi r4, r4, lbl_804953A0@l
/* 80030924 000266A4  38 00 00 01 */	li r0, 1
/* 80030928 000266A8  38 63 53 90 */	addi r3, r3, lbl_80495390@l
/* 8003092C 000266AC  98 04 00 08 */	stb r0, 8(r4)
/* 80030930 000266B0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80030934 000266B4  48 00 00 0C */	b lbl_80030940
lbl_80030938:
/* 80030938 000266B8  7F E3 FB 78 */	mr r3, r31
/* 8003093C 000266BC  48 00 22 29 */	bl gfSysRecorder2$7_processLoad
lbl_80030940:
/* 80030940 000266C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030944 000266C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030948 000266C8  7C 08 03 A6 */	mtlr r0
/* 8003094C 000266CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80030950 000266D0  4E 80 00 20 */	blr 

.global gfSysRecorder2$7requestCheck
gfSysRecorder2$7requestCheck:
/* 80030954 000266D4  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 80030958 000266D8  2C 00 00 00 */	cmpwi r0, 0
/* 8003095C 000266DC  41 82 00 0C */	beq lbl_80030968
/* 80030960 000266E0  38 60 00 00 */	li r3, 0
/* 80030964 000266E4  4E 80 00 20 */	blr 
lbl_80030968:
/* 80030968 000266E8  89 03 00 F8 */	lbz r8, 0xf8(r3)
/* 8003096C 000266EC  39 20 00 00 */	li r9, 0
/* 80030970 000266F0  38 C5 FF F8 */	addi r6, r5, -8
/* 80030974 000266F4  38 05 FF F9 */	addi r0, r5, -7
/* 80030978 000266F8  55 08 06 6E */	rlwinm r8, r8, 0, 0x19, 0x17
/* 8003097C 000266FC  39 40 00 01 */	li r10, 1
/* 80030980 00026700  7C C7 00 34 */	cntlzw r7, r6
/* 80030984 00026704  7C 00 00 34 */	cntlzw r0, r0
/* 80030988 00026708  55 06 07 74 */	rlwinm r6, r8, 0, 0x1d, 0x1a
/* 8003098C 0002670C  2C 05 00 08 */	cmpwi r5, 8
/* 80030990 00026710  50 E6 0E 72 */	rlwimi r6, r7, 1, 0x19, 0x19
/* 80030994 00026714  91 43 00 F0 */	stw r10, 0xf0(r3)
/* 80030998 00026718  50 06 06 B4 */	rlwimi r6, r0, 0, 0x1a, 0x1a
/* 8003099C 0002671C  91 23 00 F4 */	stw r9, 0xf4(r3)
/* 800309A0 00026720  99 23 00 F9 */	stb r9, 0xf9(r3)
/* 800309A4 00026724  91 23 01 00 */	stw r9, 0x100(r3)
/* 800309A8 00026728  90 83 01 08 */	stw r4, 0x108(r3)
/* 800309AC 0002672C  98 C3 00 F8 */	stb r6, 0xf8(r3)
/* 800309B0 00026730  41 82 00 0C */	beq lbl_800309BC
/* 800309B4 00026734  2C 05 00 07 */	cmpwi r5, 7
/* 800309B8 00026738  40 82 00 08 */	bne lbl_800309C0
lbl_800309BC:
/* 800309BC 0002673C  39 20 00 01 */	li r9, 1
lbl_800309C0:
/* 800309C0 00026740  2C 09 00 00 */	cmpwi r9, 0
/* 800309C4 00026744  41 82 00 08 */	beq lbl_800309CC
/* 800309C8 00026748  38 A0 00 00 */	li r5, 0
lbl_800309CC:
/* 800309CC 0002674C  38 00 00 00 */	li r0, 0
/* 800309D0 00026750  2C 05 00 00 */	cmpwi r5, 0
/* 800309D4 00026754  90 A3 01 04 */	stw r5, 0x104(r3)
/* 800309D8 00026758  B0 03 00 FC */	sth r0, 0xfc(r3)
/* 800309DC 0002675C  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 800309E0 00026760  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 800309E4 00026764  40 82 00 0C */	bne lbl_800309F0
/* 800309E8 00026768  38 00 00 04 */	li r0, 4
/* 800309EC 0002676C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_800309F0:
/* 800309F0 00026770  38 60 00 01 */	li r3, 1
/* 800309F4 00026774  4E 80 00 20 */	blr 

