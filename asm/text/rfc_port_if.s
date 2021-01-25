.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global RFCOMM_StartRsp
RFCOMM_StartRsp:
/* 80254568 0024A2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025456C 0024A2EC  7C 08 02 A6 */	mflr r0
/* 80254570 0024A2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80254574 0024A2F4  38 A1 00 08 */	addi r5, r1, 8
/* 80254578 0024A2F8  B0 81 00 08 */	sth r4, 8(r1)
/* 8025457C 0024A2FC  38 80 00 07 */	li r4, 7
/* 80254580 0024A300  4B FF E2 05 */	bl rfc_mx_sm_execute
/* 80254584 0024A304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80254588 0024A308  7C 08 03 A6 */	mtlr r0
/* 8025458C 0024A30C  38 21 00 10 */	addi r1, r1, 0x10
/* 80254590 0024A310  4E 80 00 20 */	blr 

.global RFCOMM_DlcEstablishReq
RFCOMM_DlcEstablishReq:
/* 80254594 0024A314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80254598 0024A318  7C 08 02 A6 */	mflr r0
/* 8025459C 0024A31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802545A0 0024A320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802545A4 0024A324  7C 9F 23 78 */	mr r31, r4
/* 802545A8 0024A328  93 C1 00 08 */	stw r30, 8(r1)
/* 802545AC 0024A32C  7C 7E 1B 78 */	mr r30, r3
/* 802545B0 0024A330  4B FF D5 21 */	bl port_find_mcb_dlci_port
/* 802545B4 0024A334  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 802545B8 0024A338  28 00 00 05 */	cmplwi r0, 5
/* 802545BC 0024A33C  41 82 00 1C */	beq lbl_802545D8
/* 802545C0 0024A340  7F C3 F3 78 */	mr r3, r30
/* 802545C4 0024A344  7F E4 FB 78 */	mr r4, r31
/* 802545C8 0024A348  38 A0 00 00 */	li r5, 0
/* 802545CC 0024A34C  38 C0 00 01 */	li r6, 1
/* 802545D0 0024A350  4B FF C4 9D */	bl PORT_DlcEstablishCnf
/* 802545D4 0024A354  48 00 00 10 */	b lbl_802545E4
lbl_802545D8:
/* 802545D8 0024A358  38 80 00 09 */	li r4, 9
/* 802545DC 0024A35C  38 A0 00 00 */	li r5, 0
/* 802545E0 0024A360  4B FF ED E9 */	bl rfc_port_sm_execute
lbl_802545E4:
/* 802545E4 0024A364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802545E8 0024A368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802545EC 0024A36C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802545F0 0024A370  7C 08 03 A6 */	mtlr r0
/* 802545F4 0024A374  38 21 00 10 */	addi r1, r1, 0x10
/* 802545F8 0024A378  4E 80 00 20 */	blr 

.global RFCOMM_DlcEstablishRsp
RFCOMM_DlcEstablishRsp:
/* 802545FC 0024A37C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80254600 0024A380  7C 08 02 A6 */	mflr r0
/* 80254604 0024A384  90 01 00 24 */	stw r0, 0x24(r1)
/* 80254608 0024A388  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025460C 0024A38C  7C 9F 23 78 */	mr r31, r4
/* 80254610 0024A390  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80254614 0024A394  7C 7E 1B 78 */	mr r30, r3
/* 80254618 0024A398  B0 C1 00 08 */	sth r6, 8(r1)
/* 8025461C 0024A39C  4B FF D4 B5 */	bl port_find_mcb_dlci_port
/* 80254620 0024A3A0  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 80254624 0024A3A4  28 00 00 05 */	cmplwi r0, 5
/* 80254628 0024A3A8  41 82 00 20 */	beq lbl_80254648
/* 8025462C 0024A3AC  A0 01 00 08 */	lhz r0, 8(r1)
/* 80254630 0024A3B0  2C 00 00 00 */	cmpwi r0, 0
/* 80254634 0024A3B4  40 82 00 14 */	bne lbl_80254648
/* 80254638 0024A3B8  7F C3 F3 78 */	mr r3, r30
/* 8025463C 0024A3BC  7F E4 FB 78 */	mr r4, r31
/* 80254640 0024A3C0  4B FF CA DD */	bl PORT_DlcReleaseInd
/* 80254644 0024A3C4  48 00 00 10 */	b lbl_80254654
lbl_80254648:
/* 80254648 0024A3C8  38 A1 00 08 */	addi r5, r1, 8
/* 8025464C 0024A3CC  38 80 00 0B */	li r4, 0xb
/* 80254650 0024A3D0  4B FF ED 79 */	bl rfc_port_sm_execute
lbl_80254654:
/* 80254654 0024A3D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80254658 0024A3D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025465C 0024A3DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80254660 0024A3E0  7C 08 03 A6 */	mtlr r0
/* 80254664 0024A3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80254668 0024A3E8  4E 80 00 20 */	blr 

.global RFCOMM_ParNegReq
RFCOMM_ParNegReq:
/* 8025466C 0024A3EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80254670 0024A3F0  7C 08 02 A6 */	mflr r0
/* 80254674 0024A3F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80254678 0024A3F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025467C 0024A3FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80254680 0024A400  7C BE 2B 78 */	mr r30, r5
/* 80254684 0024A404  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80254688 0024A408  7C 9D 23 78 */	mr r29, r4
/* 8025468C 0024A40C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80254690 0024A410  7C 7C 1B 78 */	mr r28, r3
/* 80254694 0024A414  4B FF D4 3D */	bl port_find_mcb_dlci_port
/* 80254698 0024A418  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 8025469C 0024A41C  7C 7F 1B 78 */	mr r31, r3
/* 802546A0 0024A420  28 00 00 05 */	cmplwi r0, 5
/* 802546A4 0024A424  41 82 00 10 */	beq lbl_802546B4
/* 802546A8 0024A428  38 00 00 0D */	li r0, 0xd
/* 802546AC 0024A42C  98 03 00 0E */	stb r0, 0xe(r3)
/* 802546B0 0024A430  48 00 00 7C */	b lbl_8025472C
lbl_802546B4:
/* 802546B4 0024A434  88 9C 00 72 */	lbz r4, 0x72(r28)
/* 802546B8 0024A438  38 00 00 02 */	li r0, 2
/* 802546BC 0024A43C  2C 04 00 00 */	cmpwi r4, 0
/* 802546C0 0024A440  41 82 00 08 */	beq lbl_802546C8
/* 802546C4 0024A444  7C 80 23 78 */	mr r0, r4
lbl_802546C8:
/* 802546C8 0024A448  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802546CC 0024A44C  28 00 00 02 */	cmplwi r0, 2
/* 802546D0 0024A450  40 82 00 28 */	bne lbl_802546F8
/* 802546D4 0024A454  A0 83 00 9C */	lhz r4, 0x9c(r3)
/* 802546D8 0024A458  38 E0 00 F0 */	li r7, 0xf0
/* 802546DC 0024A45C  38 00 00 07 */	li r0, 7
/* 802546E0 0024A460  28 04 00 07 */	cmplwi r4, 7
/* 802546E4 0024A464  40 80 00 08 */	bge lbl_802546EC
/* 802546E8 0024A468  7C 80 23 78 */	mr r0, r4
lbl_802546EC:
/* 802546EC 0024A46C  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 802546F0 0024A470  B1 03 00 9A */	sth r8, 0x9a(r3)
/* 802546F4 0024A474  48 00 00 0C */	b lbl_80254700
lbl_802546F8:
/* 802546F8 0024A478  38 E0 00 00 */	li r7, 0
/* 802546FC 0024A47C  39 00 00 00 */	li r8, 0
lbl_80254700:
/* 80254700 0024A480  88 03 00 69 */	lbz r0, 0x69(r3)
/* 80254704 0024A484  7F A4 EB 78 */	mr r4, r29
/* 80254708 0024A488  7F C6 F3 78 */	mr r6, r30
/* 8025470C 0024A48C  38 A0 00 01 */	li r5, 1
/* 80254710 0024A490  60 00 00 01 */	ori r0, r0, 1
/* 80254714 0024A494  98 03 00 69 */	stb r0, 0x69(r3)
/* 80254718 0024A498  7F 83 E3 78 */	mr r3, r28
/* 8025471C 0024A49C  48 00 07 E5 */	bl rfc_send_pn
/* 80254720 0024A4A0  7F E3 FB 78 */	mr r3, r31
/* 80254724 0024A4A4  38 80 00 3C */	li r4, 0x3c
/* 80254728 0024A4A8  48 00 1C E5 */	bl rfc_port_timer_start
lbl_8025472C:
/* 8025472C 0024A4AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80254730 0024A4B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80254734 0024A4B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80254738 0024A4B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025473C 0024A4BC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80254740 0024A4C0  7C 08 03 A6 */	mtlr r0
/* 80254744 0024A4C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80254748 0024A4C8  4E 80 00 20 */	blr 

.global RFCOMM_ParNegRsp
RFCOMM_ParNegRsp:
/* 8025474C 0024A4CC  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 80254750 0024A4D0  7C C9 33 78 */	mr r9, r6
/* 80254754 0024A4D4  7C E8 3B 78 */	mr r8, r7
/* 80254758 0024A4D8  28 00 00 05 */	cmplwi r0, 5
/* 8025475C 0024A4DC  4C 82 00 20 */	bnelr 
/* 80254760 0024A4E0  7C A6 2B 78 */	mr r6, r5
/* 80254764 0024A4E4  7D 27 4B 78 */	mr r7, r9
/* 80254768 0024A4E8  38 A0 00 00 */	li r5, 0
/* 8025476C 0024A4EC  48 00 07 94 */	b rfc_send_pn
/* 80254770 0024A4F0  4E 80 00 20 */	blr 

.global RFCOMM_PortNegReq
RFCOMM_PortNegReq:
/* 80254774 0024A4F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80254778 0024A4F8  7C 08 02 A6 */	mflr r0
/* 8025477C 0024A4FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80254780 0024A500  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80254784 0024A504  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80254788 0024A508  7C BE 2B 78 */	mr r30, r5
/* 8025478C 0024A50C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80254790 0024A510  7C 9D 23 78 */	mr r29, r4
/* 80254794 0024A514  93 81 00 10 */	stw r28, 0x10(r1)
/* 80254798 0024A518  7C 7C 1B 78 */	mr r28, r3
/* 8025479C 0024A51C  4B FF D3 35 */	bl port_find_mcb_dlci_port
/* 802547A0 0024A520  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 802547A4 0024A524  7C 7F 1B 78 */	mr r31, r3
/* 802547A8 0024A528  28 00 00 05 */	cmplwi r0, 5
/* 802547AC 0024A52C  41 82 00 1C */	beq lbl_802547C8
/* 802547B0 0024A530  7F 83 E3 78 */	mr r3, r28
/* 802547B4 0024A534  7F A4 EB 78 */	mr r4, r29
/* 802547B8 0024A538  38 A0 00 00 */	li r5, 0
/* 802547BC 0024A53C  38 C0 00 01 */	li r6, 1
/* 802547C0 0024A540  4B FF C5 41 */	bl PORT_PortNegCnf
/* 802547C4 0024A544  48 00 00 4C */	b lbl_80254810
lbl_802547C8:
/* 802547C8 0024A548  2C 1E 00 00 */	cmpwi r30, 0
/* 802547CC 0024A54C  40 82 00 14 */	bne lbl_802547E0
/* 802547D0 0024A550  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802547D4 0024A554  60 00 00 02 */	ori r0, r0, 2
/* 802547D8 0024A558  98 03 00 69 */	stb r0, 0x69(r3)
/* 802547DC 0024A55C  48 00 00 10 */	b lbl_802547EC
lbl_802547E0:
/* 802547E0 0024A560  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802547E4 0024A564  60 00 00 04 */	ori r0, r0, 4
/* 802547E8 0024A568  98 03 00 69 */	stb r0, 0x69(r3)
lbl_802547EC:
/* 802547EC 0024A56C  7F 83 E3 78 */	mr r3, r28
/* 802547F0 0024A570  7F A4 EB 78 */	mr r4, r29
/* 802547F4 0024A574  7F C6 F3 78 */	mr r6, r30
/* 802547F8 0024A578  38 A0 00 01 */	li r5, 1
/* 802547FC 0024A57C  38 E0 3F 7F */	li r7, 0x3f7f
/* 80254800 0024A580  48 00 0A C1 */	bl rfc_send_rpn
/* 80254804 0024A584  7F E3 FB 78 */	mr r3, r31
/* 80254808 0024A588  38 80 00 3C */	li r4, 0x3c
/* 8025480C 0024A58C  48 00 1C 01 */	bl rfc_port_timer_start
lbl_80254810:
/* 80254810 0024A590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80254814 0024A594  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80254818 0024A598  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025481C 0024A59C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80254820 0024A5A0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80254824 0024A5A4  7C 08 03 A6 */	mtlr r0
/* 80254828 0024A5A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8025482C 0024A5AC  4E 80 00 20 */	blr 

.global RFCOMM_PortNegRsp
RFCOMM_PortNegRsp:
/* 80254830 0024A5B0  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 80254834 0024A5B4  7C C7 33 78 */	mr r7, r6
/* 80254838 0024A5B8  28 00 00 05 */	cmplwi r0, 5
/* 8025483C 0024A5BC  4C 82 00 20 */	bnelr 
/* 80254840 0024A5C0  7C A6 2B 78 */	mr r6, r5
/* 80254844 0024A5C4  38 A0 00 00 */	li r5, 0
/* 80254848 0024A5C8  48 00 0A 78 */	b rfc_send_rpn
/* 8025484C 0024A5CC  4E 80 00 20 */	blr 

.global RFCOMM_ControlReq
RFCOMM_ControlReq:
/* 80254850 0024A5D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80254854 0024A5D4  7C 08 02 A6 */	mflr r0
/* 80254858 0024A5D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025485C 0024A5DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80254860 0024A5E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80254864 0024A5E4  7C BE 2B 78 */	mr r30, r5
/* 80254868 0024A5E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025486C 0024A5EC  7C 9D 23 78 */	mr r29, r4
/* 80254870 0024A5F0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80254874 0024A5F4  7C 7C 1B 78 */	mr r28, r3
/* 80254878 0024A5F8  4B FF D2 59 */	bl port_find_mcb_dlci_port
/* 8025487C 0024A5FC  88 03 00 02 */	lbz r0, 2(r3)
/* 80254880 0024A600  7C 7F 1B 78 */	mr r31, r3
/* 80254884 0024A604  28 00 00 02 */	cmplwi r0, 2
/* 80254888 0024A608  40 82 00 4C */	bne lbl_802548D4
/* 8025488C 0024A60C  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80254890 0024A610  28 00 00 04 */	cmplwi r0, 4
/* 80254894 0024A614  41 82 00 08 */	beq lbl_8025489C
/* 80254898 0024A618  48 00 00 3C */	b lbl_802548D4
lbl_8025489C:
/* 8025489C 0024A61C  88 03 00 64 */	lbz r0, 0x64(r3)
/* 802548A0 0024A620  7F A4 EB 78 */	mr r4, r29
/* 802548A4 0024A624  7F C6 F3 78 */	mr r6, r30
/* 802548A8 0024A628  38 A0 00 01 */	li r5, 1
/* 802548AC 0024A62C  60 00 00 01 */	ori r0, r0, 1
/* 802548B0 0024A630  98 03 00 64 */	stb r0, 0x64(r3)
/* 802548B4 0024A634  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802548B8 0024A638  60 00 00 08 */	ori r0, r0, 8
/* 802548BC 0024A63C  98 03 00 69 */	stb r0, 0x69(r3)
/* 802548C0 0024A640  7F 83 E3 78 */	mr r3, r28
/* 802548C4 0024A644  48 00 08 2D */	bl rfc_send_msc
/* 802548C8 0024A648  7F E3 FB 78 */	mr r3, r31
/* 802548CC 0024A64C  38 80 00 3C */	li r4, 0x3c
/* 802548D0 0024A650  48 00 1B 3D */	bl rfc_port_timer_start
lbl_802548D4:
/* 802548D4 0024A654  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802548D8 0024A658  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802548DC 0024A65C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802548E0 0024A660  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802548E4 0024A664  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802548E8 0024A668  7C 08 03 A6 */	mtlr r0
/* 802548EC 0024A66C  38 21 00 20 */	addi r1, r1, 0x20
/* 802548F0 0024A670  4E 80 00 20 */	blr 

.global RFCOMM_FlowReq
RFCOMM_FlowReq:
/* 802548F4 0024A674  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802548F8 0024A678  7C 08 02 A6 */	mflr r0
/* 802548FC 0024A67C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80254900 0024A680  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80254904 0024A684  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80254908 0024A688  7C BE 2B 78 */	mr r30, r5
/* 8025490C 0024A68C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80254910 0024A690  7C 9D 23 78 */	mr r29, r4
/* 80254914 0024A694  93 81 00 10 */	stw r28, 0x10(r1)
/* 80254918 0024A698  7C 7C 1B 78 */	mr r28, r3
/* 8025491C 0024A69C  4B FF D1 B5 */	bl port_find_mcb_dlci_port
/* 80254920 0024A6A0  88 03 00 02 */	lbz r0, 2(r3)
/* 80254924 0024A6A4  7C 7F 1B 78 */	mr r31, r3
/* 80254928 0024A6A8  28 00 00 02 */	cmplwi r0, 2
/* 8025492C 0024A6AC  40 82 00 4C */	bne lbl_80254978
/* 80254930 0024A6B0  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80254934 0024A6B4  28 00 00 04 */	cmplwi r0, 4
/* 80254938 0024A6B8  41 82 00 08 */	beq lbl_80254940
/* 8025493C 0024A6BC  48 00 00 3C */	b lbl_80254978
lbl_80254940:
/* 80254940 0024A6C0  7F C0 00 34 */	cntlzw r0, r30
/* 80254944 0024A6C4  7F A4 EB 78 */	mr r4, r29
/* 80254948 0024A6C8  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8025494C 0024A6CC  38 DF 00 5A */	addi r6, r31, 0x5a
/* 80254950 0024A6D0  98 03 00 5E */	stb r0, 0x5e(r3)
/* 80254954 0024A6D4  38 A0 00 01 */	li r5, 1
/* 80254958 0024A6D8  88 03 00 69 */	lbz r0, 0x69(r3)
/* 8025495C 0024A6DC  60 00 00 08 */	ori r0, r0, 8
/* 80254960 0024A6E0  98 03 00 69 */	stb r0, 0x69(r3)
/* 80254964 0024A6E4  7F 83 E3 78 */	mr r3, r28
/* 80254968 0024A6E8  48 00 07 89 */	bl rfc_send_msc
/* 8025496C 0024A6EC  7F E3 FB 78 */	mr r3, r31
/* 80254970 0024A6F0  38 80 00 3C */	li r4, 0x3c
/* 80254974 0024A6F4  48 00 1A 99 */	bl rfc_port_timer_start
lbl_80254978:
/* 80254978 0024A6F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025497C 0024A6FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80254980 0024A700  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80254984 0024A704  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80254988 0024A708  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8025498C 0024A70C  7C 08 03 A6 */	mtlr r0
/* 80254990 0024A710  38 21 00 20 */	addi r1, r1, 0x20
/* 80254994 0024A714  4E 80 00 20 */	blr 

.global RFCOMM_LineStatusReq
RFCOMM_LineStatusReq:
/* 80254998 0024A718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025499C 0024A71C  7C 08 02 A6 */	mflr r0
/* 802549A0 0024A720  90 01 00 24 */	stw r0, 0x24(r1)
/* 802549A4 0024A724  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802549A8 0024A728  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802549AC 0024A72C  7C BE 2B 78 */	mr r30, r5
/* 802549B0 0024A730  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802549B4 0024A734  7C 9D 23 78 */	mr r29, r4
/* 802549B8 0024A738  93 81 00 10 */	stw r28, 0x10(r1)
/* 802549BC 0024A73C  7C 7C 1B 78 */	mr r28, r3
/* 802549C0 0024A740  4B FF D1 11 */	bl port_find_mcb_dlci_port
/* 802549C4 0024A744  88 03 00 02 */	lbz r0, 2(r3)
/* 802549C8 0024A748  7C 7F 1B 78 */	mr r31, r3
/* 802549CC 0024A74C  28 00 00 02 */	cmplwi r0, 2
/* 802549D0 0024A750  40 82 00 40 */	bne lbl_80254A10
/* 802549D4 0024A754  88 03 00 68 */	lbz r0, 0x68(r3)
/* 802549D8 0024A758  28 00 00 04 */	cmplwi r0, 4
/* 802549DC 0024A75C  41 82 00 08 */	beq lbl_802549E4
/* 802549E0 0024A760  48 00 00 30 */	b lbl_80254A10
lbl_802549E4:
/* 802549E4 0024A764  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802549E8 0024A768  7F A4 EB 78 */	mr r4, r29
/* 802549EC 0024A76C  7F C6 F3 78 */	mr r6, r30
/* 802549F0 0024A770  38 A0 00 01 */	li r5, 1
/* 802549F4 0024A774  60 00 00 10 */	ori r0, r0, 0x10
/* 802549F8 0024A778  98 03 00 69 */	stb r0, 0x69(r3)
/* 802549FC 0024A77C  7F 83 E3 78 */	mr r3, r28
/* 80254A00 0024A780  48 00 08 11 */	bl rfc_send_rls
/* 80254A04 0024A784  7F E3 FB 78 */	mr r3, r31
/* 80254A08 0024A788  38 80 00 3C */	li r4, 0x3c
/* 80254A0C 0024A78C  48 00 1A 01 */	bl rfc_port_timer_start
lbl_80254A10:
/* 80254A10 0024A790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80254A14 0024A794  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80254A18 0024A798  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80254A1C 0024A79C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80254A20 0024A7A0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80254A24 0024A7A4  7C 08 03 A6 */	mtlr r0
/* 80254A28 0024A7A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80254A2C 0024A7AC  4E 80 00 20 */	blr 

.global RFCOMM_DlcReleaseReq
RFCOMM_DlcReleaseReq:
/* 80254A30 0024A7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80254A34 0024A7B4  7C 08 02 A6 */	mflr r0
/* 80254A38 0024A7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80254A3C 0024A7BC  4B FF D0 95 */	bl port_find_mcb_dlci_port
/* 80254A40 0024A7C0  38 80 00 0C */	li r4, 0xc
/* 80254A44 0024A7C4  38 A0 00 00 */	li r5, 0
/* 80254A48 0024A7C8  4B FF E9 81 */	bl rfc_port_sm_execute
/* 80254A4C 0024A7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80254A50 0024A7D0  7C 08 03 A6 */	mtlr r0
/* 80254A54 0024A7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80254A58 0024A7D8  4E 80 00 20 */	blr 

.global RFCOMM_DataReq
RFCOMM_DataReq:
/* 80254A5C 0024A7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80254A60 0024A7E0  7C 08 02 A6 */	mflr r0
/* 80254A64 0024A7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80254A68 0024A7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80254A6C 0024A7EC  7C BF 2B 78 */	mr r31, r5
/* 80254A70 0024A7F0  4B FF D0 61 */	bl port_find_mcb_dlci_port
/* 80254A74 0024A7F4  7F E5 FB 78 */	mr r5, r31
/* 80254A78 0024A7F8  38 80 00 0E */	li r4, 0xe
/* 80254A7C 0024A7FC  4B FF E9 4D */	bl rfc_port_sm_execute
/* 80254A80 0024A800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80254A84 0024A804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80254A88 0024A808  7C 08 03 A6 */	mtlr r0
/* 80254A8C 0024A80C  38 21 00 10 */	addi r1, r1, 0x10
/* 80254A90 0024A810  4E 80 00 20 */	blr 
