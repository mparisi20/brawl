.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ef16DrawFreeStrategyFv$7__ct
nw4r2ef16DrawFreeStrategyFv$7__ct:
/* 8017A4A4 00170224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017A4A8 00170228  7C 08 02 A6 */	mflr r0
/* 8017A4AC 0017022C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017A4B0 00170230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017A4B4 00170234  7C 7F 1B 78 */	mr r31, r3
/* 8017A4B8 00170238  4B FF A3 21 */	bl nw4r2ef16DrawStrategyImplFv$7__ct
/* 8017A4BC 0017023C  3C 80 80 46 */	lis r4, lbl_80465500@ha
/* 8017A4C0 00170240  7F E3 FB 78 */	mr r3, r31
/* 8017A4C4 00170244  38 84 55 00 */	addi r4, r4, lbl_80465500@l
/* 8017A4C8 00170248  90 9F 00 00 */	stw r4, 0(r31)
/* 8017A4CC 0017024C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8017A4D0 00170250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017A4D4 00170254  7C 08 03 A6 */	mtlr r0
/* 8017A4D8 00170258  38 21 00 10 */	addi r1, r1, 0x10
/* 8017A4DC 0017025C  4E 80 00 20 */	blr 

.global nw4r2efFRCQ34nw4r4math5M$7DrawQuad_4843
nw4r2efFRCQ34nw4r4math5M$7DrawQuad_4843:
/* 8017A4E0 00170260  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8017A4E4 00170264  7C 08 02 A6 */	mflr r0
/* 8017A4E8 00170268  90 01 00 54 */	stw r0, 0x54(r1)
/* 8017A4EC 0017026C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8017A4F0 00170270  7C BF 2B 78 */	mr r31, r5
/* 8017A4F4 00170274  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8017A4F8 00170278  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8017A4FC 0017027C  7C 9E 23 78 */	mr r30, r4
/* 8017A500 00170280  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8017A504 00170284  7C 7D 1B 78 */	mr r29, r3
/* 8017A508 00170288  48 07 28 69 */	bl PSMTXMultVec
/* 8017A50C 0017028C  7F A3 EB 78 */	mr r3, r29
/* 8017A510 00170290  38 9E 00 0C */	addi r4, r30, 0xc
/* 8017A514 00170294  38 A1 00 20 */	addi r5, r1, 0x20
/* 8017A518 00170298  48 07 28 59 */	bl PSMTXMultVec
/* 8017A51C 0017029C  7F A3 EB 78 */	mr r3, r29
/* 8017A520 001702A0  38 9E 00 18 */	addi r4, r30, 0x18
/* 8017A524 001702A4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8017A528 001702A8  48 07 28 49 */	bl PSMTXMultVec
/* 8017A52C 001702AC  7F A3 EB 78 */	mr r3, r29
/* 8017A530 001702B0  38 9E 00 24 */	addi r4, r30, 0x24
/* 8017A534 001702B4  38 A1 00 08 */	addi r5, r1, 8
/* 8017A538 001702B8  48 07 28 39 */	bl PSMTXMultVec
/* 8017A53C 001702BC  38 60 00 80 */	li r3, 0x80
/* 8017A540 001702C0  38 80 00 00 */	li r4, 0
/* 8017A544 001702C4  38 A0 00 04 */	li r5, 4
/* 8017A548 001702C8  48 07 6B 41 */	bl GXBegin
/* 8017A54C 001702CC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8017A550 001702D0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8017A554 001702D4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8017A558 001702D8  2C 1F 00 00 */	cmpwi r31, 0
/* 8017A55C 001702DC  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8017A560 001702E0  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8017A564 001702E4  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8017A568 001702E8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8017A56C 001702EC  41 82 00 0C */	beq lbl_8017A578
/* 8017A570 001702F0  38 00 00 00 */	li r0, 0
/* 8017A574 001702F4  98 03 80 00 */	stb r0, -0x8000(r3)
lbl_8017A578:
/* 8017A578 001702F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8017A57C 001702FC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8017A580 00170300  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8017A584 00170304  2C 1F 00 00 */	cmpwi r31, 0
/* 8017A588 00170308  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8017A58C 0017030C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8017A590 00170310  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8017A594 00170314  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8017A598 00170318  41 82 00 0C */	beq lbl_8017A5A4
/* 8017A59C 0017031C  38 00 00 01 */	li r0, 1
/* 8017A5A0 00170320  98 03 80 00 */	stb r0, -0x8000(r3)
lbl_8017A5A4:
/* 8017A5A4 00170324  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8017A5A8 00170328  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8017A5AC 0017032C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8017A5B0 00170330  2C 1F 00 00 */	cmpwi r31, 0
/* 8017A5B4 00170334  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8017A5B8 00170338  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8017A5BC 0017033C  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8017A5C0 00170340  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8017A5C4 00170344  41 82 00 0C */	beq lbl_8017A5D0
/* 8017A5C8 00170348  38 00 00 02 */	li r0, 2
/* 8017A5CC 0017034C  98 03 80 00 */	stb r0, -0x8000(r3)
lbl_8017A5D0:
/* 8017A5D0 00170350  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8017A5D4 00170354  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8017A5D8 00170358  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8017A5DC 0017035C  2C 1F 00 00 */	cmpwi r31, 0
/* 8017A5E0 00170360  C0 41 00 08 */	lfs f2, 8(r1)
/* 8017A5E4 00170364  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8017A5E8 00170368  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8017A5EC 0017036C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8017A5F0 00170370  41 82 00 0C */	beq lbl_8017A5FC
/* 8017A5F4 00170374  38 00 00 03 */	li r0, 3
/* 8017A5F8 00170378  98 03 80 00 */	stb r0, -0x8000(r3)
lbl_8017A5FC:
/* 8017A5FC 0017037C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8017A600 00170380  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8017A604 00170384  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8017A608 00170388  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8017A60C 0017038C  7C 08 03 A6 */	mtlr r0
/* 8017A610 00170390  38 21 00 50 */	addi r1, r1, 0x50
/* 8017A614 00170394  4E 80 00 20 */	blr 

.global nw4r2ef16DrawFreeStrategyFRCQ34nw4$7Draw
nw4r2ef16DrawFreeStrategyFRCQ34nw4$7Draw:
/* 8017A618 00170398  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 8017A61C 0017039C  7C 08 02 A6 */	mflr r0
/* 8017A620 001703A0  90 01 02 14 */	stw r0, 0x214(r1)
/* 8017A624 001703A4  DB E1 02 00 */	stfd f31, 0x200(r1)
/* 8017A628 001703A8  F3 E1 02 08 */	psq_st f31, 520(r1), 0, qr0
/* 8017A62C 001703AC  DB C1 01 F0 */	stfd f30, 0x1f0(r1)
/* 8017A630 001703B0  F3 C1 01 F8 */	psq_st f30, 504(r1), 0, qr0
/* 8017A634 001703B4  DB A1 01 E0 */	stfd f29, 0x1e0(r1)
/* 8017A638 001703B8  F3 A1 01 E8 */	psq_st f29, 488(r1), 0, qr0
/* 8017A63C 001703BC  DB 81 01 D0 */	stfd f28, 0x1d0(r1)
/* 8017A640 001703C0  F3 81 01 D8 */	psq_st f28, 472(r1), 0, qr0
/* 8017A644 001703C4  DB 61 01 C0 */	stfd f27, 0x1c0(r1)
/* 8017A648 001703C8  F3 61 01 C8 */	psq_st f27, 456(r1), 0, qr0
/* 8017A64C 001703CC  DB 41 01 B0 */	stfd f26, 0x1b0(r1)
/* 8017A650 001703D0  F3 41 01 B8 */	psq_st f26, 440(r1), 0, qr0
/* 8017A654 001703D4  DB 21 01 A0 */	stfd f25, 0x1a0(r1)
/* 8017A658 001703D8  F3 21 01 A8 */	psq_st f25, 424(r1), 0, qr0
/* 8017A65C 001703DC  DB 01 01 90 */	stfd f24, 0x190(r1)
/* 8017A660 001703E0  F3 01 01 98 */	psq_st f24, 408(r1), 0, qr0
/* 8017A664 001703E4  DA E1 01 80 */	stfd f23, 0x180(r1)
/* 8017A668 001703E8  F2 E1 01 88 */	psq_st f23, 392(r1), 0, qr0
/* 8017A66C 001703EC  DA C1 01 70 */	stfd f22, 0x170(r1)
/* 8017A670 001703F0  F2 C1 01 78 */	psq_st f22, 376(r1), 0, qr0
/* 8017A674 001703F4  DA A1 01 60 */	stfd f21, 0x160(r1)
/* 8017A678 001703F8  F2 A1 01 68 */	psq_st f21, 360(r1), 0, qr0
/* 8017A67C 001703FC  DA 81 01 50 */	stfd f20, 0x150(r1)
/* 8017A680 00170400  F2 81 01 58 */	psq_st f20, 344(r1), 0, qr0
/* 8017A684 00170404  DA 61 01 40 */	stfd f19, 0x140(r1)
/* 8017A688 00170408  F2 61 01 48 */	psq_st f19, 328(r1), 0, qr0
/* 8017A68C 0017040C  DA 41 01 30 */	stfd f18, 0x130(r1)
/* 8017A690 00170410  F2 41 01 38 */	psq_st f18, 312(r1), 0, qr0
/* 8017A694 00170414  39 61 01 30 */	addi r11, r1, 0x130
/* 8017A698 00170418  48 27 6C 79 */	bl _savegpr_23
/* 8017A69C 0017041C  80 C5 00 24 */	lwz r6, 0x24(r5)
/* 8017A6A0 00170420  3C 00 43 30 */	lis r0, 0x4330
/* 8017A6A4 00170424  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8017A6A8 00170428  7C 79 1B 78 */	mr r25, r3
/* 8017A6AC 0017042C  3A E6 00 9C */	addi r23, r6, 0x9c
/* 8017A6B0 00170430  7C 9A 23 78 */	mr r26, r4
/* 8017A6B4 00170434  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 8017A6B8 00170438  7C BB 2B 78 */	mr r27, r5
/* 8017A6BC 0017043C  7E E4 BB 78 */	mr r4, r23
/* 8017A6C0 00170440  4B FF A4 29 */	bl nw4r2ef16DrawStrategyImplFRCQ34nw4$7InitTexture
/* 8017A6C4 00170444  7F 23 CB 78 */	mr r3, r25
/* 8017A6C8 00170448  7E E4 BB 78 */	mr r4, r23
/* 8017A6CC 0017044C  7F 45 D3 78 */	mr r5, r26
/* 8017A6D0 00170450  4B FF A4 89 */	bl nw4r2ef16DrawStrategyImplFRCQ34nw4$7InitTev
/* 8017A6D4 00170454  7F 23 CB 78 */	mr r3, r25
/* 8017A6D8 00170458  7F 64 DB 78 */	mr r4, r27
/* 8017A6DC 0017045C  7E E5 BB 78 */	mr r5, r23
/* 8017A6E0 00170460  7F 46 D3 78 */	mr r6, r26
/* 8017A6E4 00170464  4B FF A7 55 */	bl nw4r2ef16DrawStrategyImplFPQ34nw4r$7InitColor
/* 8017A6E8 00170468  38 60 00 00 */	li r3, 0
/* 8017A6EC 0017046C  38 80 00 01 */	li r4, 1
/* 8017A6F0 00170470  38 A0 00 01 */	li r5, 1
/* 8017A6F4 00170474  48 07 6C 3D */	bl GXEnableTexOffsets
/* 8017A6F8 00170478  38 60 00 0D */	li r3, 0xd
/* 8017A6FC 0017047C  38 8D A4 A0 */	addi r4, r13, lbl_8059E8C0-_SDA_BASE_
/* 8017A700 00170480  38 A0 00 02 */	li r5, 2
/* 8017A704 00170484  48 07 5B 05 */	bl GXSetArray
/* 8017A708 00170488  48 07 54 09 */	bl GXClearVtxDesc
/* 8017A70C 0017048C  38 60 00 09 */	li r3, 9
/* 8017A710 00170490  38 80 00 01 */	li r4, 1
/* 8017A714 00170494  48 07 4B 6D */	bl GXSetVtxDesc
/* 8017A718 00170498  88 19 00 AE */	lbz r0, 0xae(r25)
/* 8017A71C 0017049C  2C 00 00 00 */	cmpwi r0, 0
/* 8017A720 001704A0  41 82 00 10 */	beq lbl_8017A730
/* 8017A724 001704A4  38 60 00 0D */	li r3, 0xd
/* 8017A728 001704A8  38 80 00 02 */	li r4, 2
/* 8017A72C 001704AC  48 07 4B 55 */	bl GXSetVtxDesc
lbl_8017A730:
/* 8017A730 001704B0  38 60 00 00 */	li r3, 0
/* 8017A734 001704B4  38 80 00 09 */	li r4, 9
/* 8017A738 001704B8  38 A0 00 01 */	li r5, 1
/* 8017A73C 001704BC  38 C0 00 04 */	li r6, 4
/* 8017A740 001704C0  38 E0 00 00 */	li r7, 0
/* 8017A744 001704C4  48 07 54 01 */	bl GXSetVtxAttrFmt
/* 8017A748 001704C8  38 60 00 00 */	li r3, 0
/* 8017A74C 001704CC  38 80 00 0D */	li r4, 0xd
/* 8017A750 001704D0  38 A0 00 01 */	li r5, 1
/* 8017A754 001704D4  38 C0 00 00 */	li r6, 0
/* 8017A758 001704D8  38 E0 00 00 */	li r7, 0
/* 8017A75C 001704DC  48 07 53 E9 */	bl GXSetVtxAttrFmt
/* 8017A760 001704E0  38 60 00 00 */	li r3, 0
/* 8017A764 001704E4  48 07 AB 81 */	bl GXSetCurrentMtx
/* 8017A768 001704E8  80 BB 00 24 */	lwz r5, 0x24(r27)
/* 8017A76C 001704EC  7F 63 DB 78 */	mr r3, r27
/* 8017A770 001704F0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8017A774 001704F4  3B E5 00 9C */	addi r31, r5, 0x9c
/* 8017A778 001704F8  4B FF 36 D1 */	bl nw4r2ef15ParticleManagerFPQ34nw4r4$7CalcGlobalMtx
/* 8017A77C 001704FC  7F 43 D3 78 */	mr r3, r26
/* 8017A780 00170500  38 A1 00 90 */	addi r5, r1, 0x90
/* 8017A784 00170504  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8017A788 00170508  48 07 1A 31 */	bl PSMTXConcat
/* 8017A78C 0017050C  38 61 00 90 */	addi r3, r1, 0x90
/* 8017A790 00170510  38 80 00 00 */	li r4, 0
/* 8017A794 00170514  48 07 AA 49 */	bl GXLoadPosMtxImm
/* 8017A798 00170518  88 9F 00 9D */	lbz r4, 0x9d(r31)
/* 8017A79C 0017051C  7F 23 CB 78 */	mr r3, r25
/* 8017A7A0 00170520  88 1F 00 9E */	lbz r0, 0x9e(r31)
/* 8017A7A4 00170524  7C 85 07 74 */	extsb r5, r4
/* 8017A7A8 00170528  81 99 00 00 */	lwz r12, 0(r25)
/* 8017A7AC 0017052C  7C 04 07 74 */	extsb r4, r0
/* 8017A7B0 00170530  C8 62 9C E8 */	lfd f3, lbl_805A3008-_SDA2_BASE_(r2)
/* 8017A7B4 00170534  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 8017A7B8 00170538  C0 22 9C D0 */	lfs f1, lbl_805A2FF0-_SDA2_BASE_(r2)
/* 8017A7BC 0017053C  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8017A7C0 00170540  90 C1 00 F4 */	stw r6, 0xf4(r1)
/* 8017A7C4 00170544  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8017A7C8 00170548  90 A1 00 FC */	stw r5, 0xfc(r1)
/* 8017A7CC 0017054C  C8 41 00 F0 */	lfd f2, 0xf0(r1)
/* 8017A7D0 00170550  54 04 05 28 */	rlwinm r4, r0, 0, 0x14, 0x14
/* 8017A7D4 00170554  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 8017A7D8 00170558  EC 42 18 28 */	fsubs f2, f2, f3
/* 8017A7DC 0017055C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8017A7E0 00170560  EC 00 18 28 */	fsubs f0, f0, f3
/* 8017A7E4 00170564  EF 02 08 24 */	fdivs f24, f2, f1
/* 8017A7E8 00170568  EE E0 08 24 */	fdivs f23, f0, f1
/* 8017A7EC 0017056C  7D 89 03 A6 */	mtctr r12
/* 8017A7F0 00170570  4E 80 04 21 */	bctrl 
/* 8017A7F4 00170574  81 99 00 00 */	lwz r12, 0(r25)
/* 8017A7F8 00170578  7C 77 1B 78 */	mr r23, r3
/* 8017A7FC 0017057C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8017A800 00170580  7F 23 CB 78 */	mr r3, r25
/* 8017A804 00170584  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8017A808 00170588  54 04 05 28 */	rlwinm r4, r0, 0, 0x14, 0x14
/* 8017A80C 0017058C  7D 89 03 A6 */	mtctr r12
/* 8017A810 00170590  4E 80 04 21 */	bctrl 
/* 8017A814 00170594  7E EC BB 78 */	mr r12, r23
/* 8017A818 00170598  7C 7E 1B 78 */	mr r30, r3
/* 8017A81C 0017059C  7F 63 DB 78 */	mr r3, r27
/* 8017A820 001705A0  3B A0 00 01 */	li r29, 1
/* 8017A824 001705A4  7D 89 03 A6 */	mtctr r12
/* 8017A828 001705A8  4E 80 04 21 */	bctrl 
/* 8017A82C 001705AC  CB 82 9C F0 */	lfd f28, lbl_805A3010-_SDA2_BASE_(r2)
/* 8017A830 001705B0  7C 7C 1B 78 */	mr r28, r3
/* 8017A834 001705B4  C3 A2 9C D8 */	lfs f29, lbl_805A2FF8-_SDA2_BASE_(r2)
/* 8017A838 001705B8  3E E0 80 41 */	lis r23, 0x8041
/* 8017A83C 001705BC  C3 C2 9C DC */	lfs f30, lbl_805A2FFC-_SDA2_BASE_(r2)
/* 8017A840 001705C0  3F 00 80 41 */	lis r24, 0x8041
/* 8017A844 001705C4  C3 E2 9C E0 */	lfs f31, lbl_805A3000-_SDA2_BASE_(r2)
/* 8017A848 001705C8  C3 62 9C D4 */	lfs f27, lbl_805A2FF4-_SDA2_BASE_(r2)
/* 8017A84C 001705CC  48 00 03 54 */	b lbl_8017ABA0
lbl_8017A850:
/* 8017A850 001705D0  C0 5C 00 30 */	lfs f2, 0x30(r28)
/* 8017A854 001705D4  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8017A858 001705D8  80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 8017A85C 001705DC  EC 62 00 72 */	fmuls f3, f2, f1
/* 8017A860 001705E0  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8017A864 001705E4  EF 43 00 32 */	fmuls f26, f3, f0
/* 8017A868 001705E8  FC 1A D8 40 */	fcmpo cr0, f26, f27
/* 8017A86C 001705EC  41 80 03 1C */	blt lbl_8017AB88
/* 8017A870 001705F0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8017A874 001705F4  A0 03 00 9C */	lhz r0, 0x9c(r3)
/* 8017A878 001705F8  54 00 04 64 */	rlwinm r0, r0, 0, 0x11, 0x12
/* 8017A87C 001705FC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8017A880 00170600  41 82 00 20 */	beq lbl_8017A8A0
/* 8017A884 00170604  40 80 00 10 */	bge lbl_8017A894
/* 8017A888 00170608  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8017A88C 0017060C  41 82 00 20 */	beq lbl_8017A8AC
/* 8017A890 00170610  48 00 00 2C */	b lbl_8017A8BC
lbl_8017A894:
/* 8017A894 00170614  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8017A898 00170618  41 82 00 30 */	beq lbl_8017A8C8
/* 8017A89C 0017061C  48 00 00 20 */	b lbl_8017A8BC
lbl_8017A8A0:
/* 8017A8A0 00170620  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8017A8A4 00170624  EC 60 00 72 */	fmuls f3, f0, f1
/* 8017A8A8 00170628  48 00 00 20 */	b lbl_8017A8C8
lbl_8017A8AC:
/* 8017A8AC 0017062C  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 8017A8B0 00170630  EC 62 00 32 */	fmuls f3, f2, f0
/* 8017A8B4 00170634  48 00 00 14 */	b lbl_8017A8C8
/* 8017A8B8 00170638  48 00 00 10 */	b lbl_8017A8C8
lbl_8017A8BC:
/* 8017A8BC 0017063C  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 8017A8C0 00170640  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 8017A8C4 00170644  EC 61 00 32 */	fmuls f3, f1, f0
lbl_8017A8C8:
/* 8017A8C8 00170648  80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 8017A8CC 0017064C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 8017A8D0 00170650  EF 23 00 32 */	fmuls f25, f3, f0
/* 8017A8D4 00170654  FC 19 D8 40 */	fcmpo cr0, f25, f27
/* 8017A8D8 00170658  41 80 02 B0 */	blt lbl_8017AB88
/* 8017A8DC 0017065C  7F 23 CB 78 */	mr r3, r25
/* 8017A8E0 00170660  7F 84 E3 78 */	mr r4, r28
/* 8017A8E4 00170664  7F E5 FB 78 */	mr r5, r31
/* 8017A8E8 00170668  7F 46 D3 78 */	mr r6, r26
/* 8017A8EC 0017066C  7F A7 EB 78 */	mr r7, r29
/* 8017A8F0 00170670  39 00 00 00 */	li r8, 0
/* 8017A8F4 00170674  4B FF A7 F5 */	bl nw4r2ef16DrawStrategyImplFPQ34nw4r$7SetupGP
/* 8017A8F8 00170678  88 1C 00 9A */	lbz r0, 0x9a(r28)
/* 8017A8FC 0017067C  3B A0 00 00 */	li r29, 0
/* 8017A900 00170680  C0 5C 00 40 */	lfs f2, 0x40(r28)
/* 8017A904 00170684  C0 3C 00 44 */	lfs f1, 0x44(r28)
/* 8017A908 00170688  2C 00 00 00 */	cmpwi r0, 0
/* 8017A90C 0017068C  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 8017A910 00170690  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8017A914 00170694  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8017A918 00170698  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8017A91C 0017069C  41 82 00 1C */	beq lbl_8017A938
/* 8017A920 001706A0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8017A924 001706A4  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 8017A928 001706A8  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8017A92C 001706AC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8017A930 001706B0  EC 02 00 2A */	fadds f0, f2, f0
/* 8017A934 001706B4  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8017A938:
/* 8017A938 001706B8  88 1C 00 9B */	lbz r0, 0x9b(r28)
/* 8017A93C 001706BC  2C 00 00 00 */	cmpwi r0, 0
/* 8017A940 001706C0  41 82 00 20 */	beq lbl_8017A960
/* 8017A944 001706C4  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8017A948 001706C8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8017A94C 001706CC  C8 21 00 F8 */	lfd f1, 0xf8(r1)
/* 8017A950 001706D0  EC 21 E0 28 */	fsubs f1, f1, f28
/* 8017A954 001706D4  EC 3D 00 72 */	fmuls f1, f29, f1
/* 8017A958 001706D8  EC 00 08 2A */	fadds f0, f0, f1
/* 8017A95C 001706DC  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_8017A960:
/* 8017A960 001706E0  88 1C 00 9C */	lbz r0, 0x9c(r28)
/* 8017A964 001706E4  2C 00 00 00 */	cmpwi r0, 0
/* 8017A968 001706E8  41 82 00 20 */	beq lbl_8017A988
/* 8017A96C 001706EC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8017A970 001706F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8017A974 001706F4  C8 21 00 F0 */	lfd f1, 0xf0(r1)
/* 8017A978 001706F8  EC 21 E0 28 */	fsubs f1, f1, f28
/* 8017A97C 001706FC  EC 3D 00 72 */	fmuls f1, f29, f1
/* 8017A980 00170700  EC 00 08 2A */	fadds f0, f0, f1
/* 8017A984 00170704  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8017A988:
/* 8017A988 00170708  80 BC 00 C8 */	lwz r5, 0xc8(r28)
/* 8017A98C 0017070C  38 61 00 08 */	addi r3, r1, 8
/* 8017A990 00170710  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8017A994 00170714  38 81 00 0C */	addi r4, r1, 0xc
/* 8017A998 00170718  C0 05 00 60 */	lfs f0, 0x60(r5)
/* 8017A99C 0017071C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8017A9A0 00170720  EC 81 00 2A */	fadds f4, f1, f0
/* 8017A9A4 00170724  C0 25 00 64 */	lfs f1, 0x64(r5)
/* 8017A9A8 00170728  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8017A9AC 0017072C  EC 63 08 2A */	fadds f3, f3, f1
/* 8017A9B0 00170730  C0 05 00 68 */	lfs f0, 0x68(r5)
/* 8017A9B4 00170734  EC 3E 01 32 */	fmuls f1, f30, f4
/* 8017A9B8 00170738  EC 02 00 2A */	fadds f0, f2, f0
/* 8017A9BC 0017073C  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8017A9C0 00170740  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8017A9C4 00170744  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8017A9C8 00170748  4B FE 79 BD */	bl nw4r4mathFPfPff$7SinCosFIdx
/* 8017A9CC 0017074C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8017A9D0 00170750  38 61 00 10 */	addi r3, r1, 0x10
/* 8017A9D4 00170754  38 81 00 14 */	addi r4, r1, 0x14
/* 8017A9D8 00170758  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8017A9DC 0017075C  4B FE 79 A9 */	bl nw4r4mathFPfPff$7SinCosFIdx
/* 8017A9E0 00170760  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8017A9E4 00170764  38 61 00 18 */	addi r3, r1, 0x18
/* 8017A9E8 00170768  38 81 00 1C */	addi r4, r1, 0x1c
/* 8017A9EC 0017076C  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8017A9F0 00170770  4B FE 79 95 */	bl nw4r4mathFPfPff$7SinCosFIdx
/* 8017A9F4 00170774  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8017A9F8 00170778  EC 9A 06 32 */	fmuls f4, f26, f24
/* 8017A9FC 0017077C  C2 C1 00 0C */	lfs f22, 0xc(r1)
/* 8017AA00 00170780  EC 79 05 F2 */	fmuls f3, f25, f23
/* 8017AA04 00170784  FC A0 00 50 */	fneg f5, f0
/* 8017AA08 00170788  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8017AA0C 0017078C  C2 A1 00 08 */	lfs f21, 8(r1)
/* 8017AA10 00170790  ED 36 00 B2 */	fmuls f9, f22, f2
/* 8017AA14 00170794  C1 A1 00 18 */	lfs f13, 0x18(r1)
/* 8017AA18 00170798  FC E0 28 18 */	frsp f7, f5
/* 8017AA1C 0017079C  C1 81 00 1C */	lfs f12, 0x1c(r1)
/* 8017AA20 001707A0  ED 42 03 72 */	fmuls f10, f2, f13
/* 8017AA24 001707A4  EE 69 06 B2 */	fmuls f19, f9, f26
/* 8017AA28 001707A8  ED 62 03 32 */	fmuls f11, f2, f12
/* 8017AA2C 001707AC  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 8017AA30 001707B0  FD 00 38 50 */	fneg f8, f7
/* 8017AA34 001707B4  38 61 00 30 */	addi r3, r1, 0x30
/* 8017AA38 001707B8  EC E7 06 B2 */	fmuls f7, f7, f26
/* 8017AA3C 001707BC  EE 4A 06 B2 */	fmuls f18, f10, f26
/* 8017AA40 001707C0  D2 61 00 58 */	stfs f19, 0x58(r1)
/* 8017AA44 001707C4  EE 6B 06 B2 */	fmuls f19, f11, f26
/* 8017AA48 001707C8  EE 95 00 32 */	fmuls f20, f21, f0
/* 8017AA4C 001707CC  38 97 A8 38 */	addi r4, r23, -22472
/* 8017AA50 001707D0  EC 36 00 32 */	fmuls f1, f22, f0
/* 8017AA54 001707D4  EC 02 05 72 */	fmuls f0, f2, f21
/* 8017AA58 001707D8  D1 21 00 88 */	stfs f9, 0x88(r1)
/* 8017AA5C 001707DC  FC C0 50 50 */	fneg f6, f10
/* 8017AA60 001707E0  D1 41 00 70 */	stfs f10, 0x70(r1)
/* 8017AA64 001707E4  FC A0 58 50 */	fneg f5, f11
/* 8017AA68 001707E8  EC 40 06 72 */	fmuls f2, f0, f25
/* 8017AA6C 001707EC  D1 61 00 60 */	stfs f11, 0x60(r1)
/* 8017AA70 001707F0  ED 74 03 72 */	fmuls f11, f20, f13
/* 8017AA74 001707F4  ED 56 03 32 */	fmuls f10, f22, f12
/* 8017AA78 001707F8  D0 E1 00 50 */	stfs f7, 0x50(r1)
/* 8017AA7C 001707FC  ED 34 03 32 */	fmuls f9, f20, f12
/* 8017AA80 00170800  EC F6 03 72 */	fmuls f7, f22, f13
/* 8017AA84 00170804  ED 6B 50 2A */	fadds f11, f11, f10
/* 8017AA88 00170808  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8017AA8C 0017080C  ED 41 03 72 */	fmuls f10, f1, f13
/* 8017AA90 00170810  EE C9 38 28 */	fsubs f22, f9, f7
/* 8017AA94 00170814  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8017AA98 00170818  EC 55 03 32 */	fmuls f2, f21, f12
/* 8017AA9C 0017081C  D2 61 00 30 */	stfs f19, 0x30(r1)
/* 8017AAA0 00170820  EE 6B 06 72 */	fmuls f19, f11, f25
/* 8017AAA4 00170824  EC F6 06 72 */	fmuls f7, f22, f25
/* 8017AAA8 00170828  ED 2A 10 28 */	fsubs f9, f10, f2
/* 8017AAAC 0017082C  D2 41 00 40 */	stfs f18, 0x40(r1)
/* 8017AAB0 00170830  EC 41 03 32 */	fmuls f2, f1, f12
/* 8017AAB4 00170834  EC 35 03 72 */	fmuls f1, f21, f13
/* 8017AAB8 00170838  D0 E1 00 34 */	stfs f7, 0x34(r1)
/* 8017AABC 0017083C  EC E6 01 32 */	fmuls f7, f6, f4
/* 8017AAC0 00170840  ED 89 06 B2 */	fmuls f12, f9, f26
/* 8017AAC4 00170844  D2 61 00 44 */	stfs f19, 0x44(r1)
/* 8017AAC8 00170848  ED 42 08 2A */	fadds f10, f2, f1
/* 8017AACC 0017084C  EC CB 00 F2 */	fmuls f6, f11, f3
/* 8017AAD0 00170850  D3 E1 00 6C */	stfs f31, 0x6c(r1)
/* 8017AAD4 00170854  EC 45 01 32 */	fmuls f2, f5, f4
/* 8017AAD8 00170858  EC 36 00 F2 */	fmuls f1, f22, f3
/* 8017AADC 0017085C  D1 81 00 48 */	stfs f12, 0x48(r1)
/* 8017AAE0 00170860  EC A7 30 28 */	fsubs f5, f7, f6
/* 8017AAE4 00170864  EC CA 06 B2 */	fmuls f6, f10, f26
/* 8017AAE8 00170868  D3 E1 00 7C */	stfs f31, 0x7c(r1)
/* 8017AAEC 0017086C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8017AAF0 00170870  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8017AAF4 00170874  D1 61 00 74 */	stfs f11, 0x74(r1)
/* 8017AAF8 00170878  EC B7 28 2A */	fadds f5, f23, f5
/* 8017AAFC 0017087C  EC 78 08 2A */	fadds f3, f24, f1
/* 8017AB00 00170880  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 8017AB04 00170884  EC 48 01 32 */	fmuls f2, f8, f4
/* 8017AB08 00170888  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 8017AB0C 0017088C  EC 22 00 28 */	fsubs f1, f2, f0
/* 8017AB10 00170890  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8017AB14 00170894  D2 C1 00 64 */	stfs f22, 0x64(r1)
/* 8017AB18 00170898  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8017AB1C 0017089C  C0 1C 00 AC */	lfs f0, 0xac(r28)
/* 8017AB20 001708A0  D1 41 00 68 */	stfs f10, 0x68(r1)
/* 8017AB24 001708A4  EC 03 00 2A */	fadds f0, f3, f0
/* 8017AB28 001708A8  D1 21 00 78 */	stfs f9, 0x78(r1)
/* 8017AB2C 001708AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8017AB30 001708B0  C0 1C 00 B0 */	lfs f0, 0xb0(r28)
/* 8017AB34 001708B4  D3 E1 00 8C */	stfs f31, 0x8c(r1)
/* 8017AB38 001708B8  EC 05 00 2A */	fadds f0, f5, f0
/* 8017AB3C 001708BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8017AB40 001708C0  C0 1C 00 B4 */	lfs f0, 0xb4(r28)
/* 8017AB44 001708C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8017AB48 001708C8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8017AB4C 001708CC  88 B9 00 AE */	lbz r5, 0xae(r25)
/* 8017AB50 001708D0  7C 05 00 D0 */	neg r0, r5
/* 8017AB54 001708D4  7C 00 2B 78 */	or r0, r0, r5
/* 8017AB58 001708D8  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8017AB5C 001708DC  4B FF F9 85 */	bl nw4r2efFRCQ34nw4r4math5M$7DrawQuad_4843
/* 8017AB60 001708E0  88 1F 00 A1 */	lbz r0, 0xa1(r31)
/* 8017AB64 001708E4  28 00 00 01 */	cmplwi r0, 1
/* 8017AB68 001708E8  40 82 00 20 */	bne lbl_8017AB88
/* 8017AB6C 001708EC  88 B9 00 AE */	lbz r5, 0xae(r25)
/* 8017AB70 001708F0  38 61 00 30 */	addi r3, r1, 0x30
/* 8017AB74 001708F4  38 98 A8 68 */	addi r4, r24, -22424
/* 8017AB78 001708F8  7C 05 00 D0 */	neg r0, r5
/* 8017AB7C 001708FC  7C 00 2B 78 */	or r0, r0, r5
/* 8017AB80 00170900  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8017AB84 00170904  4B FF F9 5D */	bl nw4r2efFRCQ34nw4r4math5M$7DrawQuad_4843
lbl_8017AB88:
/* 8017AB88 00170908  7F CC F3 78 */	mr r12, r30
/* 8017AB8C 0017090C  7F 63 DB 78 */	mr r3, r27
/* 8017AB90 00170910  7F 84 E3 78 */	mr r4, r28
/* 8017AB94 00170914  7D 89 03 A6 */	mtctr r12
/* 8017AB98 00170918  4E 80 04 21 */	bctrl 
/* 8017AB9C 0017091C  7C 7C 1B 78 */	mr r28, r3
lbl_8017ABA0:
/* 8017ABA0 00170920  2C 1C 00 00 */	cmpwi r28, 0
/* 8017ABA4 00170924  40 82 FC AC */	bne lbl_8017A850
/* 8017ABA8 00170928  E3 E1 02 08 */	psq_l f31, 520(r1), 0, qr0
/* 8017ABAC 0017092C  CB E1 02 00 */	lfd f31, 0x200(r1)
/* 8017ABB0 00170930  E3 C1 01 F8 */	psq_l f30, 504(r1), 0, qr0
/* 8017ABB4 00170934  CB C1 01 F0 */	lfd f30, 0x1f0(r1)
/* 8017ABB8 00170938  E3 A1 01 E8 */	psq_l f29, 488(r1), 0, qr0
/* 8017ABBC 0017093C  CB A1 01 E0 */	lfd f29, 0x1e0(r1)
/* 8017ABC0 00170940  E3 81 01 D8 */	psq_l f28, 472(r1), 0, qr0
/* 8017ABC4 00170944  CB 81 01 D0 */	lfd f28, 0x1d0(r1)
/* 8017ABC8 00170948  E3 61 01 C8 */	psq_l f27, 456(r1), 0, qr0
/* 8017ABCC 0017094C  CB 61 01 C0 */	lfd f27, 0x1c0(r1)
/* 8017ABD0 00170950  E3 41 01 B8 */	psq_l f26, 440(r1), 0, qr0
/* 8017ABD4 00170954  CB 41 01 B0 */	lfd f26, 0x1b0(r1)
/* 8017ABD8 00170958  E3 21 01 A8 */	psq_l f25, 424(r1), 0, qr0
/* 8017ABDC 0017095C  CB 21 01 A0 */	lfd f25, 0x1a0(r1)
/* 8017ABE0 00170960  E3 01 01 98 */	psq_l f24, 408(r1), 0, qr0
/* 8017ABE4 00170964  CB 01 01 90 */	lfd f24, 0x190(r1)
/* 8017ABE8 00170968  E2 E1 01 88 */	psq_l f23, 392(r1), 0, qr0
/* 8017ABEC 0017096C  CA E1 01 80 */	lfd f23, 0x180(r1)
/* 8017ABF0 00170970  E2 C1 01 78 */	psq_l f22, 376(r1), 0, qr0
/* 8017ABF4 00170974  CA C1 01 70 */	lfd f22, 0x170(r1)
/* 8017ABF8 00170978  E2 A1 01 68 */	psq_l f21, 360(r1), 0, qr0
/* 8017ABFC 0017097C  CA A1 01 60 */	lfd f21, 0x160(r1)
/* 8017AC00 00170980  E2 81 01 58 */	psq_l f20, 344(r1), 0, qr0
/* 8017AC04 00170984  CA 81 01 50 */	lfd f20, 0x150(r1)
/* 8017AC08 00170988  E2 61 01 48 */	psq_l f19, 328(r1), 0, qr0
/* 8017AC0C 0017098C  CA 61 01 40 */	lfd f19, 0x140(r1)
/* 8017AC10 00170990  E2 41 01 38 */	psq_l f18, 312(r1), 0, qr0
/* 8017AC14 00170994  39 61 01 30 */	addi r11, r1, 0x130
/* 8017AC18 00170998  CA 41 01 30 */	lfd f18, 0x130(r1)
/* 8017AC1C 0017099C  48 27 67 41 */	bl _restgpr_23
/* 8017AC20 001709A0  80 01 02 14 */	lwz r0, 0x214(r1)
/* 8017AC24 001709A4  7C 08 03 A6 */	mtlr r0
/* 8017AC28 001709A8  38 21 02 10 */	addi r1, r1, 0x210
/* 8017AC2C 001709AC  4E 80 00 20 */	blr 

