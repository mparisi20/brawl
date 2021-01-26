.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global clRhombus2D$7__ct
clRhombus2D$7__ct:
/* 800434D0 00039250  D0 A3 00 00 */	stfs f5, 0(r3)
/* 800434D4 00039254  D0 C3 00 04 */	stfs f6, 4(r3)
/* 800434D8 00039258  D0 A3 00 08 */	stfs f5, 8(r3)
/* 800434DC 0003925C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 800434E0 00039260  D0 A3 00 10 */	stfs f5, 0x10(r3)
/* 800434E4 00039264  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 800434E8 00039268  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 800434EC 0003926C  D0 C3 00 1C */	stfs f6, 0x1c(r3)
/* 800434F0 00039270  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 800434F4 00039274  D0 C3 00 24 */	stfs f6, 0x24(r3)
/* 800434F8 00039278  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 800434FC 0003927C  D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 80043500 00039280  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80043504 00039284  D0 83 00 34 */	stfs f4, 0x34(r3)
/* 80043508 00039288  4E 80 00 20 */	blr 

.global clRhombus2D$7move
clRhombus2D$7move:
/* 8004350C 0003928C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80043510 00039290  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80043514 00039294  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80043518 00039298  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8004351C 0003929C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 80043520 000392A0  C0 43 00 00 */	lfs f2, 0(r3)
/* 80043524 000392A4  C3 C4 00 00 */	lfs f30, 0(r4)
/* 80043528 000392A8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8004352C 000392AC  EF E2 F0 2A */	fadds f31, f2, f30
/* 80043530 000392B0  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 80043534 000392B4  ED 20 F0 2A */	fadds f9, f0, f30
/* 80043538 000392B8  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 8004353C 000392BC  C0 23 00 08 */	lfs f1, 8(r3)
/* 80043540 000392C0  EC E3 F0 2A */	fadds f7, f3, f30
/* 80043544 000392C4  EC A2 F0 2A */	fadds f5, f2, f30
/* 80043548 000392C8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8004354C 000392CC  ED 61 F0 2A */	fadds f11, f1, f30
/* 80043550 000392D0  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80043554 000392D4  EC 60 F0 2A */	fadds f3, f0, f30
/* 80043558 000392D8  C0 83 00 04 */	lfs f4, 4(r3)
/* 8004355C 000392DC  C1 A4 00 04 */	lfs f13, 4(r4)
/* 80043560 000392E0  EC 21 F0 2A */	fadds f1, f1, f30
/* 80043564 000392E4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80043568 000392E8  ED 84 68 2A */	fadds f12, f4, f13
/* 8004356C 000392EC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80043570 000392F0  ED 42 68 2A */	fadds f10, f2, f13
/* 80043574 000392F4  C0 C3 00 1C */	lfs f6, 0x1c(r3)
/* 80043578 000392F8  ED 00 68 2A */	fadds f8, f0, f13
/* 8004357C 000392FC  C0 83 00 24 */	lfs f4, 0x24(r3)
/* 80043580 00039300  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80043584 00039304  EC C6 68 2A */	fadds f6, f6, f13
/* 80043588 00039308  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8004358C 0003930C  EC 84 68 2A */	fadds f4, f4, f13
/* 80043590 00039310  EC 42 68 2A */	fadds f2, f2, f13
/* 80043594 00039314  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80043598 00039318  EC 00 68 2A */	fadds f0, f0, f13
/* 8004359C 0003931C  D1 83 00 04 */	stfs f12, 4(r3)
/* 800435A0 00039320  D1 63 00 08 */	stfs f11, 8(r3)
/* 800435A4 00039324  D1 43 00 0C */	stfs f10, 0xc(r3)
/* 800435A8 00039328  D1 23 00 10 */	stfs f9, 0x10(r3)
/* 800435AC 0003932C  D1 03 00 14 */	stfs f8, 0x14(r3)
/* 800435B0 00039330  D0 E3 00 18 */	stfs f7, 0x18(r3)
/* 800435B4 00039334  D0 C3 00 1C */	stfs f6, 0x1c(r3)
/* 800435B8 00039338  D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 800435BC 0003933C  D0 83 00 24 */	stfs f4, 0x24(r3)
/* 800435C0 00039340  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 800435C4 00039344  D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 800435C8 00039348  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 800435CC 0003934C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 800435D0 00039350  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 800435D4 00039354  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800435D8 00039358  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 800435DC 0003935C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 800435E0 00039360  38 21 00 30 */	addi r1, r1, 0x30
/* 800435E4 00039364  4E 80 00 20 */	blr 

.global clRhombus2D$7interpolate
clRhombus2D$7interpolate:
/* 800435E8 00039368  C0 02 84 90 */	lfs f0, lbl_805A17B0-_SDA2_BASE_(r2)
/* 800435EC 0003936C  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 800435F0 00039370  EC 60 08 28 */	fsubs f3, f0, f1
/* 800435F4 00039374  E0 83 00 08 */	psq_l f4, 8(r3), 0, qr0
/* 800435F8 00039378  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 800435FC 0003937C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80043600 00039380  10 02 00 D8 */	ps_muls0 f0, f2, f3
/* 80043604 00039384  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 80043608 00039388  10 84 00 D8 */	ps_muls0 f4, f4, f3
/* 8004360C 0003938C  E0 A4 00 08 */	psq_l f5, 8(r4), 0, qr0
/* 80043610 00039390  10 C6 00 D8 */	ps_muls0 f6, f6, f3
/* 80043614 00039394  E1 03 00 18 */	psq_l f8, 24(r3), 0, qr0
/* 80043618 00039398  10 02 00 5C */	ps_madds0 f0, f2, f1, f0
/* 8004361C 0003939C  E0 44 00 10 */	psq_l f2, 16(r4), 0, qr0
/* 80043620 000393A0  10 85 20 5C */	ps_madds0 f4, f5, f1, f4
/* 80043624 000393A4  E1 43 00 20 */	psq_l f10, 32(r3), 0, qr0
/* 80043628 000393A8  10 A2 30 5C */	ps_madds0 f5, f2, f1, f6
/* 8004362C 000393AC  E0 E4 00 18 */	psq_l f7, 24(r4), 0, qr0
/* 80043630 000393B0  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 80043634 000393B4  10 C8 00 D8 */	ps_muls0 f6, f8, f3
/* 80043638 000393B8  11 0A 00 D8 */	ps_muls0 f8, f10, f3
/* 8004363C 000393BC  E1 24 00 20 */	psq_l f9, 32(r4), 0, qr0
/* 80043640 000393C0  C0 45 00 00 */	lfs f2, 0(r5)
/* 80043644 000393C4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80043648 000393C8  10 67 30 5C */	ps_madds0 f3, f7, f1, f6
/* 8004364C 000393CC  D0 41 00 08 */	stfs f2, 8(r1)
/* 80043650 000393D0  10 29 40 5C */	ps_madds0 f1, f9, f1, f8
/* 80043654 000393D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80043658 000393D8  E0 E1 00 08 */	psq_l f7, 8(r1), 0, qr0
/* 8004365C 000393DC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80043660 000393E0  10 C4 38 28 */	ps_sub f6, f4, f7
/* 80043664 000393E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80043668 000393E8  E0 41 00 10 */	psq_l f2, 16(r1), 0, qr0
/* 8004366C 000393EC  10 C6 39 2E */	ps_sel f6, f6, f4, f7
/* 80043670 000393F0  F0 85 00 08 */	psq_st f4, 8(r5), 0, qr0
/* 80043674 000393F4  10 04 10 28 */	ps_sub f0, f4, f2
/* 80043678 000393F8  10 E5 30 28 */	ps_sub f7, f5, f6
/* 8004367C 000393FC  F0 A5 00 10 */	psq_st f5, 16(r5), 0, qr0
/* 80043680 00039400  10 00 20 AE */	ps_sel f0, f0, f2, f4
/* 80043684 00039404  F0 65 00 18 */	psq_st f3, 24(r5), 0, qr0
/* 80043688 00039408  10 87 31 6E */	ps_sel f4, f7, f5, f6
/* 8004368C 0003940C  F0 25 00 20 */	psq_st f1, 32(r5), 0, qr0
/* 80043690 00039410  10 45 00 28 */	ps_sub f2, f5, f0
/* 80043694 00039414  10 C3 20 28 */	ps_sub f6, f3, f4
/* 80043698 00039418  10 02 28 2E */	ps_sel f0, f2, f0, f5
/* 8004369C 0003941C  10 86 20 EE */	ps_sel f4, f6, f3, f4
/* 800436A0 00039420  10 43 00 28 */	ps_sub f2, f3, f0
/* 800436A4 00039424  10 A1 20 28 */	ps_sub f5, f1, f4
/* 800436A8 00039428  10 02 18 2E */	ps_sel f0, f2, f0, f3
/* 800436AC 0003942C  10 65 20 6E */	ps_sel f3, f5, f1, f4
/* 800436B0 00039430  10 41 00 28 */	ps_sub f2, f1, f0
/* 800436B4 00039434  F0 61 00 08 */	psq_st f3, 8(r1), 0, qr0
/* 800436B8 00039438  10 42 08 2E */	ps_sel f2, f2, f0, f1
/* 800436BC 0003943C  C0 21 00 08 */	lfs f1, 8(r1)
/* 800436C0 00039440  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800436C4 00039444  D0 25 00 30 */	stfs f1, 0x30(r5)
/* 800436C8 00039448  F0 41 00 10 */	psq_st f2, 16(r1), 0, qr0
/* 800436CC 0003944C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 800436D0 00039450  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800436D4 00039454  D0 45 00 28 */	stfs f2, 0x28(r5)
/* 800436D8 00039458  D0 25 00 2C */	stfs f1, 0x2c(r5)
/* 800436DC 0003945C  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 800436E0 00039460  38 21 00 20 */	addi r1, r1, 0x20
/* 800436E4 00039464  4E 80 00 20 */	blr 

.global clRhombus2D$7getIntersectInfo
clRhombus2D$7getIntersectInfo:
/* 800436E8 00039468  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800436EC 0003946C  7C 08 02 A6 */	mflr r0
/* 800436F0 00039470  81 63 00 08 */	lwz r11, 8(r3)
/* 800436F4 00039474  90 01 00 54 */	stw r0, 0x54(r1)
/* 800436F8 00039478  81 43 00 0C */	lwz r10, 0xc(r3)
/* 800436FC 0003947C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80043700 00039480  3B E0 00 00 */	li r31, 0
/* 80043704 00039484  81 23 00 20 */	lwz r9, 0x20(r3)
/* 80043708 00039488  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8004370C 0003948C  7C 9E 23 78 */	mr r30, r4
/* 80043710 00039490  81 03 00 24 */	lwz r8, 0x24(r3)
/* 80043714 00039494  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 80043718 00039498  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8004371C 0003949C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80043720 000394A0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80043724 000394A4  38 61 00 38 */	addi r3, r1, 0x38
/* 80043728 000394A8  91 61 00 38 */	stw r11, 0x38(r1)
/* 8004372C 000394AC  91 41 00 3C */	stw r10, 0x3c(r1)
/* 80043730 000394B0  91 21 00 40 */	stw r9, 0x40(r1)
/* 80043734 000394B4  91 01 00 44 */	stw r8, 0x44(r1)
/* 80043738 000394B8  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8004373C 000394BC  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80043740 000394C0  91 21 00 30 */	stw r9, 0x30(r1)
/* 80043744 000394C4  91 01 00 34 */	stw r8, 0x34(r1)
/* 80043748 000394C8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8004374C 000394CC  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80043750 000394D0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80043754 000394D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80043758 000394D8  91 61 00 08 */	stw r11, 8(r1)
/* 8004375C 000394DC  91 41 00 0C */	stw r10, 0xc(r1)
/* 80043760 000394E0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80043764 000394E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043768 000394E8  4B FF D2 6D */	bl clSegment2D$7checkIntersect
/* 8004376C 000394EC  2C 03 00 00 */	cmpwi r3, 0
/* 80043770 000394F0  41 82 00 08 */	beq lbl_80043778
/* 80043774 000394F4  63 FF 00 01 */	ori r31, r31, 1
lbl_80043778:
/* 80043778 000394F8  7F C4 F3 78 */	mr r4, r30
/* 8004377C 000394FC  38 61 00 28 */	addi r3, r1, 0x28
/* 80043780 00039500  4B FF D2 55 */	bl clSegment2D$7checkIntersect
/* 80043784 00039504  2C 03 00 00 */	cmpwi r3, 0
/* 80043788 00039508  41 82 00 08 */	beq lbl_80043790
/* 8004378C 0003950C  63 FF 00 02 */	ori r31, r31, 2
lbl_80043790:
/* 80043790 00039510  7F C4 F3 78 */	mr r4, r30
/* 80043794 00039514  38 61 00 18 */	addi r3, r1, 0x18
/* 80043798 00039518  4B FF D2 3D */	bl clSegment2D$7checkIntersect
/* 8004379C 0003951C  2C 03 00 00 */	cmpwi r3, 0
/* 800437A0 00039520  41 82 00 08 */	beq lbl_800437A8
/* 800437A4 00039524  63 FF 00 04 */	ori r31, r31, 4
lbl_800437A8:
/* 800437A8 00039528  7F C4 F3 78 */	mr r4, r30
/* 800437AC 0003952C  38 61 00 08 */	addi r3, r1, 8
/* 800437B0 00039530  4B FF D2 25 */	bl clSegment2D$7checkIntersect
/* 800437B4 00039534  2C 03 00 00 */	cmpwi r3, 0
/* 800437B8 00039538  41 82 00 08 */	beq lbl_800437C0
/* 800437BC 0003953C  63 FF 00 08 */	ori r31, r31, 8
lbl_800437C0:
/* 800437C0 00039540  7F E3 FB 78 */	mr r3, r31
/* 800437C4 00039544  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800437C8 00039548  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800437CC 0003954C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800437D0 00039550  7C 08 03 A6 */	mtlr r0
/* 800437D4 00039554  38 21 00 50 */	addi r1, r1, 0x50
/* 800437D8 00039558  4E 80 00 20 */	blr 

.global clRhombus2D$7draw
clRhombus2D$7draw:
/* 800437DC 0003955C  94 21 FC 30 */	stwu r1, -0x3d0(r1)
/* 800437E0 00039560  7C 08 02 A6 */	mflr r0
/* 800437E4 00039564  C0 C2 84 88 */	lfs f6, lbl_805A17A8-_SDA2_BASE_(r2)
/* 800437E8 00039568  C1 03 00 08 */	lfs f8, 8(r3)
/* 800437EC 0003956C  C0 E3 00 0C */	lfs f7, 0xc(r3)
/* 800437F0 00039570  C0 A3 00 18 */	lfs f5, 0x18(r3)
/* 800437F4 00039574  C0 83 00 1C */	lfs f4, 0x1c(r3)
/* 800437F8 00039578  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 800437FC 0003957C  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 80043800 00039580  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80043804 00039584  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80043808 00039588  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 8004380C 0003958C  D1 01 00 38 */	stfs f8, 0x38(r1)
/* 80043810 00039590  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 80043814 00039594  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 80043818 00039598  D1 01 03 8C */	stfs f8, 0x38c(r1)
/* 8004381C 0003959C  D0 E1 00 48 */	stfs f7, 0x48(r1)
/* 80043820 000395A0  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 80043824 000395A4  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80043828 000395A8  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8004382C 000395AC  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 80043830 000395B0  D0 A1 00 C8 */	stfs f5, 0xc8(r1)
/* 80043834 000395B4  D0 81 01 08 */	stfs f4, 0x108(r1)
/* 80043838 000395B8  D0 C1 01 48 */	stfs f6, 0x148(r1)
/* 8004383C 000395BC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80043840 000395C0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80043844 000395C4  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80043848 000395C8  D0 61 01 88 */	stfs f3, 0x188(r1)
/* 8004384C 000395CC  D0 41 01 C8 */	stfs f2, 0x1c8(r1)
/* 80043850 000395D0  D0 C1 02 08 */	stfs f6, 0x208(r1)
/* 80043854 000395D4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80043858 000395D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8004385C 000395DC  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 80043860 000395E0  D0 21 02 48 */	stfs f1, 0x248(r1)
/* 80043864 000395E4  D0 01 02 88 */	stfs f0, 0x288(r1)
/* 80043868 000395E8  D0 C1 02 C8 */	stfs f6, 0x2c8(r1)
/* 8004386C 000395EC  D1 01 00 08 */	stfs f8, 8(r1)
/* 80043870 000395F0  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80043874 000395F4  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80043878 000395F8  D1 01 03 08 */	stfs f8, 0x308(r1)
/* 8004387C 000395FC  D0 E1 03 48 */	stfs f7, 0x348(r1)
/* 80043880 00039600  D0 C1 03 88 */	stfs f6, 0x388(r1)
/* 80043884 00039604  4B FD 67 21 */	bl gfCameraManager$7getManager
/* 80043888 00039608  80 01 03 D4 */	lwz r0, 0x3d4(r1)
/* 8004388C 0003960C  7C 08 03 A6 */	mtlr r0
/* 80043890 00039610  38 21 03 D0 */	addi r1, r1, 0x3d0
/* 80043894 00039614  4E 80 00 20 */	blr 
