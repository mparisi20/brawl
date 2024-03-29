.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global AXFXDelayGetMemSize
AXFXDelayGetMemSize:
/* 80203640 001F93C0  80 A3 00 40 */	lwz r5, 0x40(r3)
/* 80203644 001F93C4  80 83 00 44 */	lwz r4, 0x44(r3)
/* 80203648 001F93C8  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8020364C 001F93CC  7C 65 22 14 */	add r3, r5, r4
/* 80203650 001F93D0  7C 63 02 14 */	add r3, r3, r0
/* 80203654 001F93D4  54 63 38 30 */	slwi r3, r3, 7
/* 80203658 001F93D8  4E 80 00 20 */	blr 

.global AXFXDelayInit
AXFXDelayInit:
/* 8020365C 001F93DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80203660 001F93E0  7C 08 02 A6 */	mflr r0
/* 80203664 001F93E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80203668 001F93E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8020366C 001F93EC  48 1E DC B5 */	bl _savegpr_27
/* 80203670 001F93F0  7C 7E 1B 78 */	mr r30, r3
/* 80203674 001F93F4  4B FD 98 9D */	bl OSDisableInterrupts
/* 80203678 001F93F8  38 80 00 01 */	li r4, 1
/* 8020367C 001F93FC  38 00 00 03 */	li r0, 3
/* 80203680 001F9400  7C 7F 1B 78 */	mr r31, r3
/* 80203684 001F9404  7F C3 F3 78 */	mr r3, r30
/* 80203688 001F9408  90 9E 00 3C */	stw r4, 0x3c(r30)
/* 8020368C 001F940C  7C 09 03 A6 */	mtctr r0
lbl_80203690:
/* 80203690 001F9410  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80203694 001F9414  2C 00 00 00 */	cmpwi r0, 0
/* 80203698 001F9418  40 82 00 64 */	bne lbl_802036FC
/* 8020369C 001F941C  4B FD 98 75 */	bl OSDisableInterrupts
/* 802036A0 001F9420  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802036A4 001F9424  7C 7B 1B 78 */	mr r27, r3
/* 802036A8 001F9428  3B 80 00 00 */	li r28, 0
/* 802036AC 001F942C  3B A0 00 00 */	li r29, 0
/* 802036B0 001F9430  60 00 00 01 */	ori r0, r0, 1
/* 802036B4 001F9434  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_802036B8:
/* 802036B8 001F9438  80 7E 00 00 */	lwz r3, 0(r30)
/* 802036BC 001F943C  2C 03 00 00 */	cmpwi r3, 0
/* 802036C0 001F9440  41 82 00 14 */	beq lbl_802036D4
/* 802036C4 001F9444  81 8D A7 04 */	lwz r12, lbl_8059EB24-_SDA_BASE_(r13)
/* 802036C8 001F9448  7D 89 03 A6 */	mtctr r12
/* 802036CC 001F944C  4E 80 04 21 */	bctrl 
/* 802036D0 001F9450  93 BE 00 00 */	stw r29, 0(r30)
lbl_802036D4:
/* 802036D4 001F9454  3B 9C 00 01 */	addi r28, r28, 1
/* 802036D8 001F9458  3B DE 00 04 */	addi r30, r30, 4
/* 802036DC 001F945C  28 1C 00 03 */	cmplwi r28, 3
/* 802036E0 001F9460  41 80 FF D8 */	blt lbl_802036B8
/* 802036E4 001F9464  7F 63 DB 78 */	mr r3, r27
/* 802036E8 001F9468  4B FD 98 51 */	bl OSRestoreInterrupts
/* 802036EC 001F946C  7F E3 FB 78 */	mr r3, r31
/* 802036F0 001F9470  4B FD 98 49 */	bl OSRestoreInterrupts
/* 802036F4 001F9474  38 60 00 00 */	li r3, 0
/* 802036F8 001F9478  48 00 01 4C */	b lbl_80203844
lbl_802036FC:
/* 802036FC 001F947C  54 00 28 34 */	slwi r0, r0, 5
/* 80203700 001F9480  90 03 00 18 */	stw r0, 0x18(r3)
/* 80203704 001F9484  38 63 00 04 */	addi r3, r3, 4
/* 80203708 001F9488  42 00 FF 88 */	bdnz lbl_80203690
/* 8020370C 001F948C  7F DC F3 78 */	mr r28, r30
/* 80203710 001F9490  3B 60 00 00 */	li r27, 0
lbl_80203714:
/* 80203714 001F9494  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80203718 001F9498  81 8D A7 00 */	lwz r12, lbl_8059EB20-_SDA_BASE_(r13)
/* 8020371C 001F949C  54 03 10 3A */	slwi r3, r0, 2
/* 80203720 001F94A0  7D 89 03 A6 */	mtctr r12
/* 80203724 001F94A4  4E 80 04 21 */	bctrl 
/* 80203728 001F94A8  2C 03 00 00 */	cmpwi r3, 0
/* 8020372C 001F94AC  90 7C 00 00 */	stw r3, 0(r28)
/* 80203730 001F94B0  40 82 00 0C */	bne lbl_8020373C
/* 80203734 001F94B4  38 00 00 00 */	li r0, 0
/* 80203738 001F94B8  48 00 00 18 */	b lbl_80203750
lbl_8020373C:
/* 8020373C 001F94BC  3B 7B 00 01 */	addi r27, r27, 1
/* 80203740 001F94C0  3B 9C 00 04 */	addi r28, r28, 4
/* 80203744 001F94C4  28 1B 00 03 */	cmplwi r27, 3
/* 80203748 001F94C8  41 80 FF CC */	blt lbl_80203714
/* 8020374C 001F94CC  38 00 00 01 */	li r0, 1
lbl_80203750:
/* 80203750 001F94D0  2C 00 00 00 */	cmpwi r0, 0
/* 80203754 001F94D4  40 82 00 64 */	bne lbl_802037B8
/* 80203758 001F94D8  4B FD 97 B9 */	bl OSDisableInterrupts
/* 8020375C 001F94DC  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80203760 001F94E0  7C 7C 1B 78 */	mr r28, r3
/* 80203764 001F94E4  3B 60 00 00 */	li r27, 0
/* 80203768 001F94E8  3B A0 00 00 */	li r29, 0
/* 8020376C 001F94EC  60 00 00 01 */	ori r0, r0, 1
/* 80203770 001F94F0  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_80203774:
/* 80203774 001F94F4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80203778 001F94F8  2C 03 00 00 */	cmpwi r3, 0
/* 8020377C 001F94FC  41 82 00 14 */	beq lbl_80203790
/* 80203780 001F9500  81 8D A7 04 */	lwz r12, lbl_8059EB24-_SDA_BASE_(r13)
/* 80203784 001F9504  7D 89 03 A6 */	mtctr r12
/* 80203788 001F9508  4E 80 04 21 */	bctrl 
/* 8020378C 001F950C  93 BE 00 00 */	stw r29, 0(r30)
lbl_80203790:
/* 80203790 001F9510  3B 7B 00 01 */	addi r27, r27, 1
/* 80203794 001F9514  3B DE 00 04 */	addi r30, r30, 4
/* 80203798 001F9518  28 1B 00 03 */	cmplwi r27, 3
/* 8020379C 001F951C  41 80 FF D8 */	blt lbl_80203774
/* 802037A0 001F9520  7F 83 E3 78 */	mr r3, r28
/* 802037A4 001F9524  4B FD 97 95 */	bl OSRestoreInterrupts
/* 802037A8 001F9528  7F E3 FB 78 */	mr r3, r31
/* 802037AC 001F952C  4B FD 97 8D */	bl OSRestoreInterrupts
/* 802037B0 001F9530  38 60 00 00 */	li r3, 0
/* 802037B4 001F9534  48 00 00 90 */	b lbl_80203844
lbl_802037B8:
/* 802037B8 001F9538  7F C3 F3 78 */	mr r3, r30
/* 802037BC 001F953C  48 00 03 D5 */	bl __InitParams_7466
/* 802037C0 001F9540  2C 03 00 00 */	cmpwi r3, 0
/* 802037C4 001F9544  40 82 00 64 */	bne lbl_80203828
/* 802037C8 001F9548  4B FD 97 49 */	bl OSDisableInterrupts
/* 802037CC 001F954C  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802037D0 001F9550  7C 7C 1B 78 */	mr r28, r3
/* 802037D4 001F9554  3B 60 00 00 */	li r27, 0
/* 802037D8 001F9558  3B A0 00 00 */	li r29, 0
/* 802037DC 001F955C  60 00 00 01 */	ori r0, r0, 1
/* 802037E0 001F9560  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_802037E4:
/* 802037E4 001F9564  80 7E 00 00 */	lwz r3, 0(r30)
/* 802037E8 001F9568  2C 03 00 00 */	cmpwi r3, 0
/* 802037EC 001F956C  41 82 00 14 */	beq lbl_80203800
/* 802037F0 001F9570  81 8D A7 04 */	lwz r12, lbl_8059EB24-_SDA_BASE_(r13)
/* 802037F4 001F9574  7D 89 03 A6 */	mtctr r12
/* 802037F8 001F9578  4E 80 04 21 */	bctrl 
/* 802037FC 001F957C  93 BE 00 00 */	stw r29, 0(r30)
lbl_80203800:
/* 80203800 001F9580  3B 7B 00 01 */	addi r27, r27, 1
/* 80203804 001F9584  3B DE 00 04 */	addi r30, r30, 4
/* 80203808 001F9588  28 1B 00 03 */	cmplwi r27, 3
/* 8020380C 001F958C  41 80 FF D8 */	blt lbl_802037E4
/* 80203810 001F9590  7F 83 E3 78 */	mr r3, r28
/* 80203814 001F9594  4B FD 97 25 */	bl OSRestoreInterrupts
/* 80203818 001F9598  7F E3 FB 78 */	mr r3, r31
/* 8020381C 001F959C  4B FD 97 1D */	bl OSRestoreInterrupts
/* 80203820 001F95A0  38 60 00 00 */	li r3, 0
/* 80203824 001F95A4  48 00 00 20 */	b lbl_80203844
lbl_80203828:
/* 80203828 001F95A8  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 8020382C 001F95AC  7F E3 FB 78 */	mr r3, r31
/* 80203830 001F95B0  60 00 00 02 */	ori r0, r0, 2
/* 80203834 001F95B4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80203838 001F95B8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8020383C 001F95BC  4B FD 96 FD */	bl OSRestoreInterrupts
/* 80203840 001F95C0  38 60 00 01 */	li r3, 1
lbl_80203844:
/* 80203844 001F95C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80203848 001F95C8  48 1E DB 25 */	bl _restgpr_27
/* 8020384C 001F95CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80203850 001F95D0  7C 08 03 A6 */	mtlr r0
/* 80203854 001F95D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80203858 001F95D8  4E 80 00 20 */	blr 

.global AXFXDelaySettings
AXFXDelaySettings:
/* 8020385C 001F95DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80203860 001F95E0  7C 08 02 A6 */	mflr r0
/* 80203864 001F95E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80203868 001F95E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8020386C 001F95EC  48 1E DA B1 */	bl _savegpr_26
/* 80203870 001F95F0  7C 7F 1B 78 */	mr r31, r3
/* 80203874 001F95F4  4B FD 96 9D */	bl OSDisableInterrupts
/* 80203878 001F95F8  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8020387C 001F95FC  7C 7A 1B 78 */	mr r26, r3
/* 80203880 001F9600  60 00 00 01 */	ori r0, r0, 1
/* 80203884 001F9604  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80203888 001F9608  4B FD 96 89 */	bl OSDisableInterrupts
/* 8020388C 001F960C  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80203890 001F9610  7C 7C 1B 78 */	mr r28, r3
/* 80203894 001F9614  7F FB FB 78 */	mr r27, r31
/* 80203898 001F9618  3B A0 00 00 */	li r29, 0
/* 8020389C 001F961C  60 00 00 01 */	ori r0, r0, 1
/* 802038A0 001F9620  3B C0 00 00 */	li r30, 0
/* 802038A4 001F9624  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_802038A8:
/* 802038A8 001F9628  80 7B 00 00 */	lwz r3, 0(r27)
/* 802038AC 001F962C  2C 03 00 00 */	cmpwi r3, 0
/* 802038B0 001F9630  41 82 00 14 */	beq lbl_802038C4
/* 802038B4 001F9634  81 8D A7 04 */	lwz r12, lbl_8059EB24-_SDA_BASE_(r13)
/* 802038B8 001F9638  7D 89 03 A6 */	mtctr r12
/* 802038BC 001F963C  4E 80 04 21 */	bctrl 
/* 802038C0 001F9640  93 DB 00 00 */	stw r30, 0(r27)
lbl_802038C4:
/* 802038C4 001F9644  3B BD 00 01 */	addi r29, r29, 1
/* 802038C8 001F9648  3B 7B 00 04 */	addi r27, r27, 4
/* 802038CC 001F964C  28 1D 00 03 */	cmplwi r29, 3
/* 802038D0 001F9650  41 80 FF D8 */	blt lbl_802038A8
/* 802038D4 001F9654  7F 83 E3 78 */	mr r3, r28
/* 802038D8 001F9658  4B FD 96 61 */	bl OSRestoreInterrupts
/* 802038DC 001F965C  7F E3 FB 78 */	mr r3, r31
/* 802038E0 001F9660  4B FF FD 7D */	bl AXFXDelayInit
/* 802038E4 001F9664  2C 03 00 00 */	cmpwi r3, 0
/* 802038E8 001F9668  40 82 00 64 */	bne lbl_8020394C
/* 802038EC 001F966C  4B FD 96 25 */	bl OSDisableInterrupts
/* 802038F0 001F9670  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 802038F4 001F9674  7C 7D 1B 78 */	mr r29, r3
/* 802038F8 001F9678  3B 80 00 00 */	li r28, 0
/* 802038FC 001F967C  3B C0 00 00 */	li r30, 0
/* 80203900 001F9680  60 00 00 01 */	ori r0, r0, 1
/* 80203904 001F9684  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_80203908:
/* 80203908 001F9688  80 7F 00 00 */	lwz r3, 0(r31)
/* 8020390C 001F968C  2C 03 00 00 */	cmpwi r3, 0
/* 80203910 001F9690  41 82 00 14 */	beq lbl_80203924
/* 80203914 001F9694  81 8D A7 04 */	lwz r12, lbl_8059EB24-_SDA_BASE_(r13)
/* 80203918 001F9698  7D 89 03 A6 */	mtctr r12
/* 8020391C 001F969C  4E 80 04 21 */	bctrl 
/* 80203920 001F96A0  93 DF 00 00 */	stw r30, 0(r31)
lbl_80203924:
/* 80203924 001F96A4  3B 9C 00 01 */	addi r28, r28, 1
/* 80203928 001F96A8  3B FF 00 04 */	addi r31, r31, 4
/* 8020392C 001F96AC  28 1C 00 03 */	cmplwi r28, 3
/* 80203930 001F96B0  41 80 FF D8 */	blt lbl_80203908
/* 80203934 001F96B4  7F A3 EB 78 */	mr r3, r29
/* 80203938 001F96B8  4B FD 96 01 */	bl OSRestoreInterrupts
/* 8020393C 001F96BC  7F 43 D3 78 */	mr r3, r26
/* 80203940 001F96C0  4B FD 95 F9 */	bl OSRestoreInterrupts
/* 80203944 001F96C4  38 60 00 00 */	li r3, 0
/* 80203948 001F96C8  48 00 00 20 */	b lbl_80203968
lbl_8020394C:
/* 8020394C 001F96CC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80203950 001F96D0  7F 43 D3 78 */	mr r3, r26
/* 80203954 001F96D4  60 00 00 02 */	ori r0, r0, 2
/* 80203958 001F96D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8020395C 001F96DC  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80203960 001F96E0  4B FD 95 D9 */	bl OSRestoreInterrupts
/* 80203964 001F96E4  38 60 00 01 */	li r3, 1
lbl_80203968:
/* 80203968 001F96E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8020396C 001F96EC  48 1E D9 FD */	bl _restgpr_26
/* 80203970 001F96F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80203974 001F96F4  7C 08 03 A6 */	mtlr r0
/* 80203978 001F96F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8020397C 001F96FC  4E 80 00 20 */	blr 

.global AXFXDelayShutdown
AXFXDelayShutdown:
/* 80203980 001F9700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80203984 001F9704  7C 08 02 A6 */	mflr r0
/* 80203988 001F9708  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020398C 001F970C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80203990 001F9710  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80203994 001F9714  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80203998 001F9718  93 81 00 10 */	stw r28, 0x10(r1)
/* 8020399C 001F971C  7C 7C 1B 78 */	mr r28, r3
/* 802039A0 001F9720  4B FD 95 71 */	bl OSDisableInterrupts
/* 802039A4 001F9724  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 802039A8 001F9728  7C 7D 1B 78 */	mr r29, r3
/* 802039AC 001F972C  3B C0 00 00 */	li r30, 0
/* 802039B0 001F9730  3B E0 00 00 */	li r31, 0
/* 802039B4 001F9734  60 00 00 01 */	ori r0, r0, 1
/* 802039B8 001F9738  90 1C 00 3C */	stw r0, 0x3c(r28)
lbl_802039BC:
/* 802039BC 001F973C  80 7C 00 00 */	lwz r3, 0(r28)
/* 802039C0 001F9740  2C 03 00 00 */	cmpwi r3, 0
/* 802039C4 001F9744  41 82 00 14 */	beq lbl_802039D8
/* 802039C8 001F9748  81 8D A7 04 */	lwz r12, lbl_8059EB24-_SDA_BASE_(r13)
/* 802039CC 001F974C  7D 89 03 A6 */	mtctr r12
/* 802039D0 001F9750  4E 80 04 21 */	bctrl 
/* 802039D4 001F9754  93 FC 00 00 */	stw r31, 0(r28)
lbl_802039D8:
/* 802039D8 001F9758  3B DE 00 01 */	addi r30, r30, 1
/* 802039DC 001F975C  3B 9C 00 04 */	addi r28, r28, 4
/* 802039E0 001F9760  28 1E 00 03 */	cmplwi r30, 3
/* 802039E4 001F9764  41 80 FF D8 */	blt lbl_802039BC
/* 802039E8 001F9768  7F A3 EB 78 */	mr r3, r29
/* 802039EC 001F976C  4B FD 95 4D */	bl OSRestoreInterrupts
/* 802039F0 001F9770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802039F4 001F9774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802039F8 001F9778  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802039FC 001F977C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80203A00 001F9780  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80203A04 001F9784  7C 08 03 A6 */	mtlr r0
/* 80203A08 001F9788  38 21 00 20 */	addi r1, r1, 0x20
/* 80203A0C 001F978C  4E 80 00 20 */	blr 

.global AXFXDelayCallback
AXFXDelayCallback:
/* 80203A10 001F9790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80203A14 001F9794  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80203A18 001F9798  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80203A1C 001F979C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80203A20 001F97A0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80203A24 001F97A4  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80203A28 001F97A8  2C 00 00 00 */	cmpwi r0, 0
/* 80203A2C 001F97AC  41 82 00 10 */	beq lbl_80203A3C
/* 80203A30 001F97B0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80203A34 001F97B4  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80203A38 001F97B8  48 00 01 40 */	b lbl_80203B78
lbl_80203A3C:
/* 80203A3C 001F97BC  38 00 00 60 */	li r0, 0x60
/* 80203A40 001F97C0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80203A44 001F97C4  80 C3 00 04 */	lwz r6, 4(r3)
/* 80203A48 001F97C8  39 60 00 00 */	li r11, 0
/* 80203A4C 001F97CC  80 63 00 08 */	lwz r3, 8(r3)
/* 80203A50 001F97D0  7C 09 03 A6 */	mtctr r0
lbl_80203A54:
/* 80203A54 001F97D4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80203A58 001F97D8  83 84 00 00 */	lwz r28, 0(r4)
/* 80203A5C 001F97DC  54 1D 10 3A */	slwi r29, r0, 2
/* 80203A60 001F97E0  81 04 00 10 */	lwz r8, 0x10(r4)
/* 80203A64 001F97E4  7C 1C E8 2E */	lwzx r0, r28, r29
/* 80203A68 001F97E8  80 E4 00 24 */	lwz r7, 0x24(r4)
/* 80203A6C 001F97EC  55 1E 10 3A */	slwi r30, r8, 2
/* 80203A70 001F97F0  81 24 00 14 */	lwz r9, 0x14(r4)
/* 80203A74 001F97F4  7D 00 39 D6 */	mullw r8, r0, r7
/* 80203A78 001F97F8  80 E4 00 04 */	lwz r7, 4(r4)
/* 80203A7C 001F97FC  55 2C 10 3A */	slwi r12, r9, 2
/* 80203A80 001F9800  83 E4 00 08 */	lwz r31, 8(r4)
/* 80203A84 001F9804  81 45 00 00 */	lwz r10, 0(r5)
/* 80203A88 001F9808  7C E7 F0 2E */	lwzx r7, r7, r30
/* 80203A8C 001F980C  7D 09 3E 70 */	srawi r9, r8, 7
/* 80203A90 001F9810  7D 1F 60 2E */	lwzx r8, r31, r12
/* 80203A94 001F9814  7D 2A 4A 14 */	add r9, r10, r9
/* 80203A98 001F9818  7D 3C E9 2E */	stwx r9, r28, r29
/* 80203A9C 001F981C  81 44 00 28 */	lwz r10, 0x28(r4)
/* 80203AA0 001F9820  81 24 00 10 */	lwz r9, 0x10(r4)
/* 80203AA4 001F9824  7D 87 51 D6 */	mullw r12, r7, r10
/* 80203AA8 001F9828  83 E6 00 00 */	lwz r31, 0(r6)
/* 80203AAC 001F982C  81 44 00 04 */	lwz r10, 4(r4)
/* 80203AB0 001F9830  55 29 10 3A */	slwi r9, r9, 2
/* 80203AB4 001F9834  7D 8C 3E 70 */	srawi r12, r12, 7
/* 80203AB8 001F9838  7D 9F 62 14 */	add r12, r31, r12
/* 80203ABC 001F983C  7D 8A 49 2E */	stwx r12, r10, r9
/* 80203AC0 001F9840  81 44 00 2C */	lwz r10, 0x2c(r4)
/* 80203AC4 001F9844  81 24 00 14 */	lwz r9, 0x14(r4)
/* 80203AC8 001F9848  7D 88 51 D6 */	mullw r12, r8, r10
/* 80203ACC 001F984C  83 E3 00 00 */	lwz r31, 0(r3)
/* 80203AD0 001F9850  81 44 00 08 */	lwz r10, 8(r4)
/* 80203AD4 001F9854  55 29 10 3A */	slwi r9, r9, 2
/* 80203AD8 001F9858  7D 8C 3E 70 */	srawi r12, r12, 7
/* 80203ADC 001F985C  7D 9F 62 14 */	add r12, r31, r12
/* 80203AE0 001F9860  7D 8A 49 2E */	stwx r12, r10, r9
/* 80203AE4 001F9864  81 44 00 0C */	lwz r10, 0xc(r4)
/* 80203AE8 001F9868  81 24 00 18 */	lwz r9, 0x18(r4)
/* 80203AEC 001F986C  39 4A 00 01 */	addi r10, r10, 1
/* 80203AF0 001F9870  7C 0A 48 40 */	cmplw r10, r9
/* 80203AF4 001F9874  91 44 00 0C */	stw r10, 0xc(r4)
/* 80203AF8 001F9878  41 80 00 08 */	blt lbl_80203B00
/* 80203AFC 001F987C  91 64 00 0C */	stw r11, 0xc(r4)
lbl_80203B00:
/* 80203B00 001F9880  81 44 00 10 */	lwz r10, 0x10(r4)
/* 80203B04 001F9884  81 24 00 1C */	lwz r9, 0x1c(r4)
/* 80203B08 001F9888  39 4A 00 01 */	addi r10, r10, 1
/* 80203B0C 001F988C  7C 0A 48 40 */	cmplw r10, r9
/* 80203B10 001F9890  91 44 00 10 */	stw r10, 0x10(r4)
/* 80203B14 001F9894  41 80 00 08 */	blt lbl_80203B1C
/* 80203B18 001F9898  91 64 00 10 */	stw r11, 0x10(r4)
lbl_80203B1C:
/* 80203B1C 001F989C  81 44 00 14 */	lwz r10, 0x14(r4)
/* 80203B20 001F98A0  81 24 00 20 */	lwz r9, 0x20(r4)
/* 80203B24 001F98A4  39 4A 00 01 */	addi r10, r10, 1
/* 80203B28 001F98A8  7C 0A 48 40 */	cmplw r10, r9
/* 80203B2C 001F98AC  91 44 00 14 */	stw r10, 0x14(r4)
/* 80203B30 001F98B0  41 80 00 08 */	blt lbl_80203B38
/* 80203B34 001F98B4  91 64 00 14 */	stw r11, 0x14(r4)
lbl_80203B38:
/* 80203B38 001F98B8  81 24 00 30 */	lwz r9, 0x30(r4)
/* 80203B3C 001F98BC  7C 00 49 D6 */	mullw r0, r0, r9
/* 80203B40 001F98C0  7C 00 3E 70 */	srawi r0, r0, 7
/* 80203B44 001F98C4  90 05 00 00 */	stw r0, 0(r5)
/* 80203B48 001F98C8  38 A5 00 04 */	addi r5, r5, 4
/* 80203B4C 001F98CC  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80203B50 001F98D0  7C 07 01 D6 */	mullw r0, r7, r0
/* 80203B54 001F98D4  7C 00 3E 70 */	srawi r0, r0, 7
/* 80203B58 001F98D8  90 06 00 00 */	stw r0, 0(r6)
/* 80203B5C 001F98DC  38 C6 00 04 */	addi r6, r6, 4
/* 80203B60 001F98E0  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80203B64 001F98E4  7C 08 01 D6 */	mullw r0, r8, r0
/* 80203B68 001F98E8  7C 00 3E 70 */	srawi r0, r0, 7
/* 80203B6C 001F98EC  90 03 00 00 */	stw r0, 0(r3)
/* 80203B70 001F98F0  38 63 00 04 */	addi r3, r3, 4
/* 80203B74 001F98F4  42 00 FE E0 */	bdnz lbl_80203A54
lbl_80203B78:
/* 80203B78 001F98F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80203B7C 001F98FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80203B80 001F9900  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80203B84 001F9904  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80203B88 001F9908  38 21 00 20 */	addi r1, r1, 0x20
/* 80203B8C 001F990C  4E 80 00 20 */	blr 

.global __InitParams_7466
__InitParams_7466:
/* 80203B90 001F9910  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80203B94 001F9914  7C 08 02 A6 */	mflr r0
/* 80203B98 001F9918  90 01 00 74 */	stw r0, 0x74(r1)
/* 80203B9C 001F991C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80203BA0 001F9920  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80203BA4 001F9924  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80203BA8 001F9928  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80203BAC 001F992C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80203BB0 001F9930  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80203BB4 001F9934  CB A2 A6 40 */	lfd f29, lbl_805A3960-_SDA2_BASE_(r2)
/* 80203BB8 001F9938  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80203BBC 001F993C  3F E0 43 30 */	lis r31, 0x4330
/* 80203BC0 001F9940  C3 C2 A6 38 */	lfs f30, lbl_805A3958-_SDA2_BASE_(r2)
/* 80203BC4 001F9944  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80203BC8 001F9948  3B C0 00 00 */	li r30, 0
/* 80203BCC 001F994C  C3 E2 A6 3C */	lfs f31, lbl_805A395C-_SDA2_BASE_(r2)
/* 80203BD0 001F9950  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80203BD4 001F9954  7C 7D 1B 78 */	mr r29, r3
/* 80203BD8 001F9958  93 81 00 30 */	stw r28, 0x30(r1)
/* 80203BDC 001F995C  3B 80 00 00 */	li r28, 0
lbl_80203BE0:
/* 80203BE0 001F9960  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 80203BE4 001F9964  28 00 00 64 */	cmplwi r0, 0x64
/* 80203BE8 001F9968  41 80 00 0C */	blt lbl_80203BF4
/* 80203BEC 001F996C  38 60 00 00 */	li r3, 0
/* 80203BF0 001F9970  48 00 00 AC */	b lbl_80203C9C
lbl_80203BF4:
/* 80203BF4 001F9974  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 80203BF8 001F9978  28 00 00 64 */	cmplwi r0, 0x64
/* 80203BFC 001F997C  40 81 00 0C */	ble lbl_80203C08
/* 80203C00 001F9980  38 60 00 00 */	li r3, 0
/* 80203C04 001F9984  48 00 00 98 */	b lbl_80203C9C
lbl_80203C08:
/* 80203C08 001F9988  80 7D 00 00 */	lwz r3, 0(r29)
/* 80203C0C 001F998C  2C 03 00 00 */	cmpwi r3, 0
/* 80203C10 001F9990  40 82 00 0C */	bne lbl_80203C1C
/* 80203C14 001F9994  38 60 00 00 */	li r3, 0
/* 80203C18 001F9998  48 00 00 84 */	b lbl_80203C9C
lbl_80203C1C:
/* 80203C1C 001F999C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80203C20 001F99A0  38 80 00 00 */	li r4, 0
/* 80203C24 001F99A4  54 05 10 3A */	slwi r5, r0, 2
/* 80203C28 001F99A8  4B E0 08 15 */	bl memset
/* 80203C2C 001F99AC  93 DD 00 0C */	stw r30, 0xc(r29)
/* 80203C30 001F99B0  3B 9C 00 01 */	addi r28, r28, 1
/* 80203C34 001F99B4  28 1C 00 03 */	cmplwi r28, 3
/* 80203C38 001F99B8  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 80203C3C 001F99BC  93 E1 00 08 */	stw r31, 8(r1)
/* 80203C40 001F99C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80203C44 001F99C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80203C48 001F99C8  93 E1 00 18 */	stw r31, 0x18(r1)
/* 80203C4C 001F99CC  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80203C50 001F99D0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80203C54 001F99D4  EC 00 F8 24 */	fdivs f0, f0, f31
/* 80203C58 001F99D8  FC 00 00 1E */	fctiwz f0, f0
/* 80203C5C 001F99DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80203C60 001F99E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80203C64 001F99E4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80203C68 001F99E8  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 80203C6C 001F99EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80203C70 001F99F0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80203C74 001F99F4  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80203C78 001F99F8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80203C7C 001F99FC  EC 00 F8 24 */	fdivs f0, f0, f31
/* 80203C80 001F9A00  FC 00 00 1E */	fctiwz f0, f0
/* 80203C84 001F9A04  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80203C88 001F9A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80203C8C 001F9A0C  90 1D 00 30 */	stw r0, 0x30(r29)
/* 80203C90 001F9A10  3B BD 00 04 */	addi r29, r29, 4
/* 80203C94 001F9A14  41 80 FF 4C */	blt lbl_80203BE0
/* 80203C98 001F9A18  38 60 00 01 */	li r3, 1
lbl_80203C9C:
/* 80203C9C 001F9A1C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80203CA0 001F9A20  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80203CA4 001F9A24  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80203CA8 001F9A28  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80203CAC 001F9A2C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80203CB0 001F9A30  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80203CB4 001F9A34  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80203CB8 001F9A38  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80203CBC 001F9A3C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80203CC0 001F9A40  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80203CC4 001F9A44  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80203CC8 001F9A48  7C 08 03 A6 */	mtlr r0
/* 80203CCC 001F9A4C  38 21 00 70 */	addi r1, r1, 0x70
/* 80203CD0 001F9A50  4E 80 00 20 */	blr 

