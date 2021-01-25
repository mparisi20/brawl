.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkBuiltinTypeRegistry$7addType
hkBuiltinTypeRegistry$7addType:
/* 80332600 00328380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80332604 00328384  7C 08 02 A6 */	mflr r0
/* 80332608 00328388  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033260C 0032838C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80332610 00328390  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80332614 00328394  7C BE 2B 78 */	mr r30, r5
/* 80332618 00328398  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033261C 0032839C  7C 9D 23 78 */	mr r29, r4
/* 80332620 003283A0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80332624 003283A4  7C 7C 1B 78 */	mr r28, r3
/* 80332628 003283A8  7F C3 F3 78 */	mr r3, r30
/* 8033262C 003283AC  4B F4 A2 11 */	bl hkClass$7getName
/* 80332630 003283B0  81 9C 00 00 */	lwz r12, 0(r28)
/* 80332634 003283B4  7C 7F 1B 78 */	mr r31, r3
/* 80332638 003283B8  7F 83 E3 78 */	mr r3, r28
/* 8033263C 003283BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80332640 003283C0  7D 89 03 A6 */	mtctr r12
/* 80332644 003283C4  4E 80 04 21 */	bctrl 
/* 80332648 003283C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8033264C 003283CC  7F C4 F3 78 */	mr r4, r30
/* 80332650 003283D0  7F E5 FB 78 */	mr r5, r31
/* 80332654 003283D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80332658 003283D8  7D 89 03 A6 */	mtctr r12
/* 8033265C 003283DC  4E 80 04 21 */	bctrl 
/* 80332660 003283E0  81 9C 00 00 */	lwz r12, 0(r28)
/* 80332664 003283E4  7F 83 E3 78 */	mr r3, r28
/* 80332668 003283E8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8033266C 003283EC  7D 89 03 A6 */	mtctr r12
/* 80332670 003283F0  4E 80 04 21 */	bctrl 
/* 80332674 003283F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80332678 003283F8  7F A4 EB 78 */	mr r4, r29
/* 8033267C 003283FC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80332680 00328400  7D 89 03 A6 */	mtctr r12
/* 80332684 00328404  4E 80 04 21 */	bctrl 
/* 80332688 00328408  81 9C 00 00 */	lwz r12, 0(r28)
/* 8033268C 0032840C  7F 83 E3 78 */	mr r3, r28
/* 80332690 00328410  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80332694 00328414  7D 89 03 A6 */	mtctr r12
/* 80332698 00328418  4E 80 04 21 */	bctrl 
/* 8033269C 0032841C  81 83 00 00 */	lwz r12, 0(r3)
/* 803326A0 00328420  7F C5 F3 78 */	mr r5, r30
/* 803326A4 00328424  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 803326A8 00328428  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 803326AC 0032842C  7D 89 03 A6 */	mtctr r12
/* 803326B0 00328430  4E 80 04 21 */	bctrl 
/* 803326B4 00328434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803326B8 00328438  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803326BC 0032843C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803326C0 00328440  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803326C4 00328444  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803326C8 00328448  7C 08 03 A6 */	mtlr r0
/* 803326CC 0032844C  38 21 00 20 */	addi r1, r1, 0x20
/* 803326D0 00328450  4E 80 00 20 */	blr 

.global hkFinishLoadedObjectRegistry$7registerTypeInfo
hkFinishLoadedObjectRegistry$7registerTypeInfo:
/* 803326D4 00328454  7C 85 23 78 */	mr r5, r4
/* 803326D8 00328458  80 84 00 00 */	lwz r4, 0(r4)
/* 803326DC 0032845C  38 63 00 08 */	addi r3, r3, 8
/* 803326E0 00328460  4B F4 B7 1C */	b hkStringMapBase$7insert

.global hkVtableClassRegistry$7registerVtable
hkVtableClassRegistry$7registerVtable:
/* 803326E4 00328464  38 63 00 08 */	addi r3, r3, 8
/* 803326E8 00328468  4B F4 A9 D0 */	b hkPointerMapBase$0Ul$1$7insert

.global hkBuiltinTypeRegistrycreate
hkBuiltinTypeRegistrycreate:
/* 803326EC 0032846C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803326F0 00328470  7C 08 02 A6 */	mflr r0
/* 803326F4 00328474  38 80 00 14 */	li r4, 0x14
/* 803326F8 00328478  38 A0 00 16 */	li r5, 0x16
/* 803326FC 0032847C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80332700 00328480  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80332704 00328484  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80332708 00328488  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033270C 0032848C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80332710 00328490  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80332714 00328494  81 83 00 00 */	lwz r12, 0(r3)
/* 80332718 00328498  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8033271C 0032849C  7D 89 03 A6 */	mtctr r12
/* 80332720 003284A0  4E 80 04 21 */	bctrl 
/* 80332724 003284A4  3B C0 00 14 */	li r30, 0x14
/* 80332728 003284A8  2C 03 00 00 */	cmpwi r3, 0
/* 8033272C 003284AC  B3 C3 00 04 */	sth r30, 4(r3)
/* 80332730 003284B0  7C 7D 1B 78 */	mr r29, r3
/* 80332734 003284B4  41 82 01 64 */	beq lbl_80332898
/* 80332738 003284B8  3B E0 00 01 */	li r31, 1
/* 8033273C 003284BC  3C A0 80 49 */	lis r5, lbl_80488F50@ha
/* 80332740 003284C0  B3 E3 00 06 */	sth r31, 6(r3)
/* 80332744 003284C4  38 A5 8F 50 */	addi r5, r5, lbl_80488F50@l
/* 80332748 003284C8  38 80 00 14 */	li r4, 0x14
/* 8033274C 003284CC  90 A3 00 00 */	stw r5, 0(r3)
/* 80332750 003284D0  38 A0 00 13 */	li r5, 0x13
/* 80332754 003284D4  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80332758 003284D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8033275C 003284DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80332760 003284E0  7D 89 03 A6 */	mtctr r12
/* 80332764 003284E4  4E 80 04 21 */	bctrl 
/* 80332768 003284E8  2C 03 00 00 */	cmpwi r3, 0
/* 8033276C 003284EC  B3 C3 00 04 */	sth r30, 4(r3)
/* 80332770 003284F0  7C 7C 1B 78 */	mr r28, r3
/* 80332774 003284F4  41 82 00 1C */	beq lbl_80332790
/* 80332778 003284F8  3C 80 80 49 */	lis r4, lbl_80488EB8@ha
/* 8033277C 003284FC  B3 E3 00 06 */	sth r31, 6(r3)
/* 80332780 00328500  38 84 8E B8 */	addi r4, r4, lbl_80488EB8@l
/* 80332784 00328504  90 83 00 00 */	stw r4, 0(r3)
/* 80332788 00328508  38 63 00 08 */	addi r3, r3, 8
/* 8033278C 0032850C  4B F4 B4 8D */	bl hkStringMapBase$7__ct
lbl_80332790:
/* 80332790 00328510  93 9D 00 08 */	stw r28, 8(r29)
/* 80332794 00328514  3C 80 80 40 */	lis r4, lbl_80406850@ha
/* 80332798 00328518  7F 83 E3 78 */	mr r3, r28
/* 8033279C 0032851C  81 9C 00 00 */	lwz r12, 0(r28)
/* 803327A0 00328520  38 84 68 50 */	addi r4, r4, lbl_80406850@l
/* 803327A4 00328524  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 803327A8 00328528  7D 89 03 A6 */	mtctr r12
/* 803327AC 0032852C  4E 80 04 21 */	bctrl 
/* 803327B0 00328530  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 803327B4 00328534  38 80 00 14 */	li r4, 0x14
/* 803327B8 00328538  38 A0 00 13 */	li r5, 0x13
/* 803327BC 0032853C  81 83 00 00 */	lwz r12, 0(r3)
/* 803327C0 00328540  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 803327C4 00328544  7D 89 03 A6 */	mtctr r12
/* 803327C8 00328548  4E 80 04 21 */	bctrl 
/* 803327CC 0032854C  38 00 00 14 */	li r0, 0x14
/* 803327D0 00328550  2C 03 00 00 */	cmpwi r3, 0
/* 803327D4 00328554  B0 03 00 04 */	sth r0, 4(r3)
/* 803327D8 00328558  7C 7F 1B 78 */	mr r31, r3
/* 803327DC 0032855C  41 82 00 20 */	beq lbl_803327FC
/* 803327E0 00328560  38 00 00 01 */	li r0, 1
/* 803327E4 00328564  3C 80 80 49 */	lis r4, lbl_80488F88@ha
/* 803327E8 00328568  B0 03 00 06 */	sth r0, 6(r3)
/* 803327EC 0032856C  38 84 8F 88 */	addi r4, r4, lbl_80488F88@l
/* 803327F0 00328570  90 83 00 00 */	stw r4, 0(r3)
/* 803327F4 00328574  38 63 00 08 */	addi r3, r3, 8
/* 803327F8 00328578  4B F4 B4 21 */	bl hkStringMapBase$7__ct
lbl_803327FC:
/* 803327FC 0032857C  3F C0 80 40 */	lis r30, lbl_80406800@ha
/* 80332800 00328580  93 FD 00 0C */	stw r31, 0xc(r29)
/* 80332804 00328584  3B DE 68 00 */	addi r30, r30, lbl_80406800@l
/* 80332808 00328588  48 00 00 1C */	b lbl_80332824
lbl_8033280C:
/* 8033280C 0032858C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80332810 00328590  7F E3 FB 78 */	mr r3, r31
/* 80332814 00328594  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80332818 00328598  7D 89 03 A6 */	mtctr r12
/* 8033281C 0032859C  4E 80 04 21 */	bctrl 
/* 80332820 003285A0  3B DE 00 04 */	addi r30, r30, 4
lbl_80332824:
/* 80332824 003285A4  80 9E 00 00 */	lwz r4, 0(r30)
/* 80332828 003285A8  2C 04 00 00 */	cmpwi r4, 0
/* 8033282C 003285AC  40 82 FF E0 */	bne lbl_8033280C
/* 80332830 003285B0  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80332834 003285B4  38 80 00 14 */	li r4, 0x14
/* 80332838 003285B8  38 A0 00 13 */	li r5, 0x13
/* 8033283C 003285BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80332840 003285C0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80332844 003285C4  7D 89 03 A6 */	mtctr r12
/* 80332848 003285C8  4E 80 04 21 */	bctrl 
/* 8033284C 003285CC  38 00 00 14 */	li r0, 0x14
/* 80332850 003285D0  2C 03 00 00 */	cmpwi r3, 0
/* 80332854 003285D4  B0 03 00 04 */	sth r0, 4(r3)
/* 80332858 003285D8  7C 7E 1B 78 */	mr r30, r3
/* 8033285C 003285DC  41 82 00 20 */	beq lbl_8033287C
/* 80332860 003285E0  38 00 00 01 */	li r0, 1
/* 80332864 003285E4  3C 80 80 49 */	lis r4, lbl_80488F70@ha
/* 80332868 003285E8  B0 03 00 06 */	sth r0, 6(r3)
/* 8033286C 003285EC  38 84 8F 70 */	addi r4, r4, lbl_80488F70@l
/* 80332870 003285F0  90 83 00 00 */	stw r4, 0(r3)
/* 80332874 003285F4  38 63 00 08 */	addi r3, r3, 8
/* 80332878 003285F8  4B F4 A7 41 */	bl hkPointerMapBase$0Ul$1$7__ct
lbl_8033287C:
/* 8033287C 003285FC  3C 80 80 40 */	lis r4, lbl_80406800@ha
/* 80332880 00328600  3C A0 80 40 */	lis r5, lbl_80406850@ha
/* 80332884 00328604  93 DD 00 10 */	stw r30, 0x10(r29)
/* 80332888 00328608  7F C3 F3 78 */	mr r3, r30
/* 8033288C 0032860C  38 84 68 00 */	addi r4, r4, lbl_80406800@l
/* 80332890 00328610  38 A5 68 50 */	addi r5, r5, lbl_80406850@l
/* 80332894 00328614  48 00 18 25 */	bl hkVtableClassRegistry$7registerList
lbl_80332898:
/* 80332898 00328618  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033289C 0032861C  7F A3 EB 78 */	mr r3, r29
/* 803328A0 00328620  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803328A4 00328624  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803328A8 00328628  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803328AC 0032862C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803328B0 00328630  7C 08 03 A6 */	mtlr r0
/* 803328B4 00328634  38 21 00 20 */	addi r1, r1, 0x20
/* 803328B8 00328638  4E 80 00 20 */	blr 

.global hkDefaultBuiltinTypeRegistry$7getVtableClassRegistry
hkDefaultBuiltinTypeRegistry$7getVtableClassRegistry:
/* 803328BC 0032863C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 803328C0 00328640  4E 80 00 20 */	blr 

.global hkDefaultBuiltinTypeRegistry$7getClassNameRegistry
hkDefaultBuiltinTypeRegistry$7getClassNameRegistry:
/* 803328C4 00328644  80 63 00 08 */	lwz r3, 8(r3)
/* 803328C8 00328648  4E 80 00 20 */	blr 

.global hkDefaultBuiltinTypeRegistry$7getFinishLoadedObjectRegistry
hkDefaultBuiltinTypeRegistry$7getFinishLoadedObjectRegistry:
/* 803328CC 0032864C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803328D0 00328650  4E 80 00 20 */	blr 

.global hkDefaultBuiltinTypeRegistry$7__dt
hkDefaultBuiltinTypeRegistry$7__dt:
/* 803328D4 00328654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803328D8 00328658  7C 08 02 A6 */	mflr r0
/* 803328DC 0032865C  2C 03 00 00 */	cmpwi r3, 0
/* 803328E0 00328660  90 01 00 14 */	stw r0, 0x14(r1)
/* 803328E4 00328664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803328E8 00328668  7C 9F 23 78 */	mr r31, r4
/* 803328EC 0032866C  93 C1 00 08 */	stw r30, 8(r1)
/* 803328F0 00328670  7C 7E 1B 78 */	mr r30, r3
/* 803328F4 00328674  41 82 00 FC */	beq lbl_803329F0
/* 803328F8 00328678  3C 80 80 49 */	lis r4, lbl_80488F50@ha
/* 803328FC 0032867C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80332900 00328680  38 84 8F 50 */	addi r4, r4, lbl_80488F50@l
/* 80332904 00328684  90 83 00 00 */	stw r4, 0(r3)
/* 80332908 00328688  A0 05 00 04 */	lhz r0, 4(r5)
/* 8033290C 0032868C  2C 00 00 00 */	cmpwi r0, 0
/* 80332910 00328690  41 82 00 38 */	beq lbl_80332948
/* 80332914 00328694  A8 65 00 06 */	lha r3, 6(r5)
/* 80332918 00328698  38 63 FF FF */	addi r3, r3, -1
/* 8033291C 0032869C  7C 60 07 35 */	extsh. r0, r3
/* 80332920 003286A0  B0 65 00 06 */	sth r3, 6(r5)
/* 80332924 003286A4  40 82 00 24 */	bne lbl_80332948
/* 80332928 003286A8  2C 05 00 00 */	cmpwi r5, 0
/* 8033292C 003286AC  41 82 00 1C */	beq lbl_80332948
/* 80332930 003286B0  81 85 00 00 */	lwz r12, 0(r5)
/* 80332934 003286B4  7C A3 2B 78 */	mr r3, r5
/* 80332938 003286B8  38 80 00 01 */	li r4, 1
/* 8033293C 003286BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80332940 003286C0  7D 89 03 A6 */	mtctr r12
/* 80332944 003286C4  4E 80 04 21 */	bctrl 
lbl_80332948:
/* 80332948 003286C8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8033294C 003286CC  A0 03 00 04 */	lhz r0, 4(r3)
/* 80332950 003286D0  2C 00 00 00 */	cmpwi r0, 0
/* 80332954 003286D4  41 82 00 34 */	beq lbl_80332988
/* 80332958 003286D8  A8 83 00 06 */	lha r4, 6(r3)
/* 8033295C 003286DC  38 84 FF FF */	addi r4, r4, -1
/* 80332960 003286E0  7C 80 07 35 */	extsh. r0, r4
/* 80332964 003286E4  B0 83 00 06 */	sth r4, 6(r3)
/* 80332968 003286E8  40 82 00 20 */	bne lbl_80332988
/* 8033296C 003286EC  2C 03 00 00 */	cmpwi r3, 0
/* 80332970 003286F0  41 82 00 18 */	beq lbl_80332988
/* 80332974 003286F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80332978 003286F8  38 80 00 01 */	li r4, 1
/* 8033297C 003286FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80332980 00328700  7D 89 03 A6 */	mtctr r12
/* 80332984 00328704  4E 80 04 21 */	bctrl 
lbl_80332988:
/* 80332988 00328708  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8033298C 0032870C  A0 03 00 04 */	lhz r0, 4(r3)
/* 80332990 00328710  2C 00 00 00 */	cmpwi r0, 0
/* 80332994 00328714  41 82 00 34 */	beq lbl_803329C8
/* 80332998 00328718  A8 83 00 06 */	lha r4, 6(r3)
/* 8033299C 0032871C  38 84 FF FF */	addi r4, r4, -1
/* 803329A0 00328720  7C 80 07 35 */	extsh. r0, r4
/* 803329A4 00328724  B0 83 00 06 */	sth r4, 6(r3)
/* 803329A8 00328728  40 82 00 20 */	bne lbl_803329C8
/* 803329AC 0032872C  2C 03 00 00 */	cmpwi r3, 0
/* 803329B0 00328730  41 82 00 18 */	beq lbl_803329C8
/* 803329B4 00328734  81 83 00 00 */	lwz r12, 0(r3)
/* 803329B8 00328738  38 80 00 01 */	li r4, 1
/* 803329BC 0032873C  81 8C 00 08 */	lwz r12, 8(r12)
/* 803329C0 00328740  7D 89 03 A6 */	mtctr r12
/* 803329C4 00328744  4E 80 04 21 */	bctrl 
lbl_803329C8:
/* 803329C8 00328748  2C 1F 00 00 */	cmpwi r31, 0
/* 803329CC 0032874C  40 81 00 24 */	ble lbl_803329F0
/* 803329D0 00328750  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 803329D4 00328754  7F C4 F3 78 */	mr r4, r30
/* 803329D8 00328758  A0 BE 00 04 */	lhz r5, 4(r30)
/* 803329DC 0032875C  38 C0 00 16 */	li r6, 0x16
/* 803329E0 00328760  81 83 00 00 */	lwz r12, 0(r3)
/* 803329E4 00328764  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 803329E8 00328768  7D 89 03 A6 */	mtctr r12
/* 803329EC 0032876C  4E 80 04 21 */	bctrl 
lbl_803329F0:
/* 803329F0 00328770  7F C3 F3 78 */	mr r3, r30
/* 803329F4 00328774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803329F8 00328778  83 C1 00 08 */	lwz r30, 8(r1)
/* 803329FC 0032877C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332A00 00328780  7C 08 03 A6 */	mtlr r0
/* 80332A04 00328784  38 21 00 10 */	addi r1, r1, 0x10
/* 80332A08 00328788  4E 80 00 20 */	blr 

.global hkFinishLoadedObjectRegistry$7merge
hkFinishLoadedObjectRegistry$7merge:
/* 80332A0C 0032878C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80332A10 00328790  7C 08 02 A6 */	mflr r0
/* 80332A14 00328794  90 01 00 24 */	stw r0, 0x24(r1)
/* 80332A18 00328798  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80332A1C 0032879C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80332A20 003287A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80332A24 003287A4  7C 9D 23 78 */	mr r29, r4
/* 80332A28 003287A8  93 81 00 10 */	stw r28, 0x10(r1)
/* 80332A2C 003287AC  7C 7C 1B 78 */	mr r28, r3
/* 80332A30 003287B0  38 64 00 08 */	addi r3, r4, 8
/* 80332A34 003287B4  4B F4 B2 E5 */	bl hkStringMapBase$7getIterator
/* 80332A38 003287B8  7C 7E 1B 78 */	mr r30, r3
/* 80332A3C 003287BC  48 00 00 40 */	b lbl_80332A7C
lbl_80332A40:
/* 80332A40 003287C0  7F C4 F3 78 */	mr r4, r30
/* 80332A44 003287C4  38 7D 00 08 */	addi r3, r29, 8
/* 80332A48 003287C8  4B F4 B3 31 */	bl hkStringMapBase$7getValue
/* 80332A4C 003287CC  7C 7F 1B 78 */	mr r31, r3
/* 80332A50 003287D0  7F C4 F3 78 */	mr r4, r30
/* 80332A54 003287D4  38 7D 00 08 */	addi r3, r29, 8
/* 80332A58 003287D8  4B F4 B3 05 */	bl hkStringMapBase$7getKey
/* 80332A5C 003287DC  7C 64 1B 78 */	mr r4, r3
/* 80332A60 003287E0  7F E5 FB 78 */	mr r5, r31
/* 80332A64 003287E4  38 7C 00 08 */	addi r3, r28, 8
/* 80332A68 003287E8  4B F4 B3 95 */	bl hkStringMapBase$7insert
/* 80332A6C 003287EC  7F C4 F3 78 */	mr r4, r30
/* 80332A70 003287F0  38 7D 00 08 */	addi r3, r29, 8
/* 80332A74 003287F4  4B F4 B3 25 */	bl hkStringMapBase$7getNext
/* 80332A78 003287F8  7C 7E 1B 78 */	mr r30, r3
lbl_80332A7C:
/* 80332A7C 003287FC  7F C4 F3 78 */	mr r4, r30
/* 80332A80 00328800  38 7D 00 08 */	addi r3, r29, 8
/* 80332A84 00328804  4B F4 B3 5D */	bl hkStringMapBase$7isValid
/* 80332A88 00328808  54 60 46 3E */	srwi r0, r3, 0x18
/* 80332A8C 0032880C  7C 00 07 75 */	extsb. r0, r0
/* 80332A90 00328810  40 82 FF B0 */	bne lbl_80332A40
/* 80332A94 00328814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80332A98 00328818  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80332A9C 0032881C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80332AA0 00328820  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80332AA4 00328824  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80332AA8 00328828  7C 08 03 A6 */	mtlr r0
/* 80332AAC 0032882C  38 21 00 20 */	addi r1, r1, 0x20
/* 80332AB0 00328830  4E 80 00 20 */	blr 

.global hkFinishLoadedObjectRegistry$7__dt
hkFinishLoadedObjectRegistry$7__dt:
/* 80332AB4 00328834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332AB8 00328838  7C 08 02 A6 */	mflr r0
/* 80332ABC 0032883C  2C 03 00 00 */	cmpwi r3, 0
/* 80332AC0 00328840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332AC4 00328844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332AC8 00328848  7C 9F 23 78 */	mr r31, r4
/* 80332ACC 0032884C  93 C1 00 08 */	stw r30, 8(r1)
/* 80332AD0 00328850  7C 7E 1B 78 */	mr r30, r3
/* 80332AD4 00328854  41 82 00 3C */	beq lbl_80332B10
/* 80332AD8 00328858  34 63 00 08 */	addic. r3, r3, 8
/* 80332ADC 0032885C  41 82 00 0C */	beq lbl_80332AE8
/* 80332AE0 00328860  38 80 FF FF */	li r4, -1
/* 80332AE4 00328864  4B F4 B1 9D */	bl hkStringMapBase$7__dt
lbl_80332AE8:
/* 80332AE8 00328868  2C 1F 00 00 */	cmpwi r31, 0
/* 80332AEC 0032886C  40 81 00 24 */	ble lbl_80332B10
/* 80332AF0 00328870  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80332AF4 00328874  7F C4 F3 78 */	mr r4, r30
/* 80332AF8 00328878  A0 BE 00 04 */	lhz r5, 4(r30)
/* 80332AFC 0032887C  38 C0 00 13 */	li r6, 0x13
/* 80332B00 00328880  81 83 00 00 */	lwz r12, 0(r3)
/* 80332B04 00328884  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80332B08 00328888  7D 89 03 A6 */	mtctr r12
/* 80332B0C 0032888C  4E 80 04 21 */	bctrl 
lbl_80332B10:
/* 80332B10 00328890  7F C3 F3 78 */	mr r3, r30
/* 80332B14 00328894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80332B18 00328898  83 C1 00 08 */	lwz r30, 8(r1)
/* 80332B1C 0032889C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332B20 003288A0  7C 08 03 A6 */	mtlr r0
/* 80332B24 003288A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80332B28 003288A8  4E 80 00 20 */	blr 

.global hkVtableClassRegistry$7__dt
hkVtableClassRegistry$7__dt:
/* 80332B2C 003288AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332B30 003288B0  7C 08 02 A6 */	mflr r0
/* 80332B34 003288B4  2C 03 00 00 */	cmpwi r3, 0
/* 80332B38 003288B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332B3C 003288BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332B40 003288C0  7C 9F 23 78 */	mr r31, r4
/* 80332B44 003288C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80332B48 003288C8  7C 7E 1B 78 */	mr r30, r3
/* 80332B4C 003288CC  41 82 00 3C */	beq lbl_80332B88
/* 80332B50 003288D0  34 63 00 08 */	addic. r3, r3, 8
/* 80332B54 003288D4  41 82 00 0C */	beq lbl_80332B60
/* 80332B58 003288D8  38 80 FF FF */	li r4, -1
/* 80332B5C 003288DC  4B F4 A4 C1 */	bl hkPointerMapBase$0Ul$1$7__dt
lbl_80332B60:
/* 80332B60 003288E0  2C 1F 00 00 */	cmpwi r31, 0
/* 80332B64 003288E4  40 81 00 24 */	ble lbl_80332B88
/* 80332B68 003288E8  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80332B6C 003288EC  7F C4 F3 78 */	mr r4, r30
/* 80332B70 003288F0  A0 BE 00 04 */	lhz r5, 4(r30)
/* 80332B74 003288F4  38 C0 00 13 */	li r6, 0x13
/* 80332B78 003288F8  81 83 00 00 */	lwz r12, 0(r3)
/* 80332B7C 003288FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80332B80 00328900  7D 89 03 A6 */	mtctr r12
/* 80332B84 00328904  4E 80 04 21 */	bctrl 
lbl_80332B88:
/* 80332B88 00328908  7F C3 F3 78 */	mr r3, r30
/* 80332B8C 0032890C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80332B90 00328910  83 C1 00 08 */	lwz r30, 8(r1)
/* 80332B94 00328914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332B98 00328918  7C 08 03 A6 */	mtlr r0
/* 80332B9C 0032891C  38 21 00 10 */	addi r1, r1, 0x10
/* 80332BA0 00328920  4E 80 00 20 */	blr 

.global __sinit_$3hkBuiltinTypeRegistry_cpp
__sinit_$3hkBuiltinTypeRegistry_cpp:
/* 80332BA4 00328924  3C C0 80 33 */	lis r6, hkBuiltinTypeRegistrycreate@ha
/* 80332BA8 00328928  3C A0 80 53 */	lis r5, lbl_805336B0@ha
/* 80332BAC 0032892C  38 C6 26 EC */	addi r6, r6, hkBuiltinTypeRegistrycreate@l
/* 80332BB0 00328930  80 0D CA B0 */	lwz r0, lbl_805A0ED0-_SDA_BASE_(r13)
/* 80332BB4 00328934  38 65 36 B0 */	addi r3, r5, lbl_805336B0@l
/* 80332BB8 00328938  38 8D CB 18 */	addi r4, r13, lbl_805A0F38-_SDA_BASE_
/* 80332BBC 0032893C  90 C5 36 B0 */	stw r6, 0x36b0(r5)
/* 80332BC0 00328940  90 83 00 08 */	stw r4, 8(r3)
/* 80332BC4 00328944  90 03 00 04 */	stw r0, 4(r3)
/* 80332BC8 00328948  90 6D CA B0 */	stw r3, lbl_805A0ED0-_SDA_BASE_(r13)
/* 80332BCC 0032894C  4E 80 00 20 */	blr 
