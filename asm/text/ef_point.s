.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ef16EmitterFormPointFPQ34nw4r$7Emission
nw4r2ef16EmitterFormPointFPQ34nw4r$7Emission:
/* 80170594 00166314  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80170598 00166318  7C 08 02 A6 */	mflr r0
/* 8017059C 0016631C  90 01 01 54 */	stw r0, 0x154(r1)
/* 801705A0 00166320  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 801705A4 00166324  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 801705A8 00166328  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 801705AC 0016632C  F3 C1 01 38 */	psq_st f30, 312(r1), 0, qr0
/* 801705B0 00166330  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 801705B4 00166334  F3 A1 01 28 */	psq_st f29, 296(r1), 0, qr0
/* 801705B8 00166338  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 801705BC 0016633C  F3 81 01 18 */	psq_st f28, 280(r1), 0, qr0
/* 801705C0 00166340  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 801705C4 00166344  F3 61 01 08 */	psq_st f27, 264(r1), 0, qr0
/* 801705C8 00166348  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 801705CC 0016634C  F3 41 00 F8 */	psq_st f26, 248(r1), 0, qr0
/* 801705D0 00166350  DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 801705D4 00166354  F3 21 00 E8 */	psq_st f25, 232(r1), 0, qr0
/* 801705D8 00166358  DB 01 00 D0 */	stfd f24, 0xd0(r1)
/* 801705DC 0016635C  F3 01 00 D8 */	psq_st f24, 216(r1), 0, qr0
/* 801705E0 00166360  DA E1 00 C0 */	stfd f23, 0xc0(r1)
/* 801705E4 00166364  F2 E1 00 C8 */	psq_st f23, 200(r1), 0, qr0
/* 801705E8 00166368  DA C1 00 B0 */	stfd f22, 0xb0(r1)
/* 801705EC 0016636C  F2 C1 00 B8 */	psq_st f22, 184(r1), 0, qr0
/* 801705F0 00166370  DA A1 00 A0 */	stfd f21, 0xa0(r1)
/* 801705F4 00166374  F2 A1 00 A8 */	psq_st f21, 168(r1), 0, qr0
/* 801705F8 00166378  DA 81 00 90 */	stfd f20, 0x90(r1)
/* 801705FC 0016637C  F2 81 00 98 */	psq_st f20, 152(r1), 0, qr0
/* 80170600 00166380  DA 61 00 80 */	stfd f19, 0x80(r1)
/* 80170604 00166384  F2 61 00 88 */	psq_st f19, 136(r1), 0, qr0
/* 80170608 00166388  39 61 00 80 */	addi r11, r1, 0x80
/* 8017060C 0016638C  48 28 0D 09 */	bl _savegpr_24
/* 80170610 00166390  3C 00 43 30 */	lis r0, 0x4330
/* 80170614 00166394  FE E0 08 90 */	fmr f23, f1
/* 80170618 00166398  2C 06 00 01 */	cmpwi r6, 1
/* 8017061C 0016639C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80170620 001663A0  7C 78 1B 78 */	mr r24, r3
/* 80170624 001663A4  7C 99 23 78 */	mr r25, r4
/* 80170628 001663A8  90 01 00 58 */	stw r0, 0x58(r1)
/* 8017062C 001663AC  7C BA 2B 78 */	mr r26, r5
/* 80170630 001663B0  7C DB 33 78 */	mr r27, r6
/* 80170634 001663B4  7D 3C 4B 78 */	mr r28, r9
/* 80170638 001663B8  7D 5D 53 78 */	mr r29, r10
/* 8017063C 001663BC  41 80 02 2C */	blt lbl_80170868
/* 80170640 001663C0  3C 60 00 03 */	lis r3, 0x000343FD@ha
/* 80170644 001663C4  C3 02 9A 90 */	lfs f24, lbl_805A2DB0-_SDA2_BASE_(r2)
/* 80170648 001663C8  CB 22 9A B0 */	lfd f25, lbl_805A2DD0-_SDA2_BASE_(r2)
/* 8017064C 001663CC  3B E3 43 FD */	addi r31, r3, 0x000343FD@l
/* 80170650 001663D0  C3 42 9A 94 */	lfs f26, lbl_805A2DB4-_SDA2_BASE_(r2)
/* 80170654 001663D4  3B C0 00 00 */	li r30, 0
/* 80170658 001663D8  C3 62 9A 98 */	lfs f27, lbl_805A2DB8-_SDA2_BASE_(r2)
/* 8017065C 001663DC  C3 82 9A 9C */	lfs f28, lbl_805A2DBC-_SDA2_BASE_(r2)
/* 80170660 001663E0  C3 A2 9A A4 */	lfs f29, lbl_805A2DC4-_SDA2_BASE_(r2)
/* 80170664 001663E4  C3 C2 9A A0 */	lfs f30, lbl_805A2DC0-_SDA2_BASE_(r2)
/* 80170668 001663E8  C3 E2 9A A8 */	lfs f31, lbl_805A2DC8-_SDA2_BASE_(r2)
/* 8017066C 001663EC  CA A2 9A B8 */	lfd f21, lbl_805A2DD8-_SDA2_BASE_(r2)
/* 80170670 001663F0  C2 C2 9A AC */	lfs f22, lbl_805A2DCC-_SDA2_BASE_(r2)
/* 80170674 001663F4  48 00 01 EC */	b lbl_80170860
lbl_80170678:
/* 80170678 001663F8  D3 01 00 44 */	stfs f24, 0x44(r1)
/* 8017067C 001663FC  D3 01 00 48 */	stfs f24, 0x48(r1)
/* 80170680 00166400  D3 01 00 4C */	stfs f24, 0x4c(r1)
/* 80170684 00166404  80 19 00 EC */	lwz r0, 0xec(r25)
/* 80170688 00166408  7C 60 F9 D6 */	mullw r3, r0, r31
/* 8017068C 0016640C  3C 63 00 27 */	addis r3, r3, 0x27
/* 80170690 00166410  38 63 9E C3 */	addi r3, r3, -24893
/* 80170694 00166414  54 60 84 3E */	srwi r0, r3, 0x10
/* 80170698 00166418  90 79 00 EC */	stw r3, 0xec(r25)
/* 8017069C 0016641C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801706A0 00166420  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801706A4 00166424  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801706A8 00166428  EC 00 D0 24 */	fdivs f0, f0, f26
/* 801706AC 0016642C  EC 1B 00 32 */	fmuls f0, f27, f0
/* 801706B0 00166430  EC 20 E0 28 */	fsubs f1, f0, f28
/* 801706B4 00166434  FC 01 C0 40 */	fcmpo cr0, f1, f24
/* 801706B8 00166438  4C 41 13 82 */	cror 2, 1, 2
/* 801706BC 0016643C  40 82 00 14 */	bne lbl_801706D0
/* 801706C0 00166440  EC 1D 00 72 */	fmuls f0, f29, f1
/* 801706C4 00166444  EC 1E 00 2A */	fadds f0, f30, f0
/* 801706C8 00166448  EC 20 00 72 */	fmuls f1, f0, f1
/* 801706CC 0016644C  48 00 00 10 */	b lbl_801706DC
lbl_801706D0:
/* 801706D0 00166450  EC 1D 00 72 */	fmuls f0, f29, f1
/* 801706D4 00166454  EC 1E 00 28 */	fsubs f0, f30, f0
/* 801706D8 00166458  EC 20 00 72 */	fmuls f1, f0, f1
lbl_801706DC:
/* 801706DC 0016645C  FC 00 08 18 */	frsp f0, f1
/* 801706E0 00166460  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801706E4 00166464  EC 00 00 32 */	fmuls f0, f0, f0
/* 801706E8 00166468  EC 3C 00 28 */	fsubs f1, f28, f0
/* 801706EC 0016646C  48 29 06 A9 */	bl sqrt
/* 801706F0 00166470  80 19 00 EC */	lwz r0, 0xec(r25)
/* 801706F4 00166474  FE 80 08 18 */	frsp f20, f1
/* 801706F8 00166478  7C 60 F9 D6 */	mullw r3, r0, r31
/* 801706FC 0016647C  3C 63 00 27 */	addis r3, r3, 0x27
/* 80170700 00166480  38 63 9E C3 */	addi r3, r3, -24893
/* 80170704 00166484  54 60 84 3E */	srwi r0, r3, 0x10
/* 80170708 00166488  90 79 00 EC */	stw r3, 0xec(r25)
/* 8017070C 0016648C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80170710 00166490  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80170714 00166494  EC 00 C8 28 */	fsubs f0, f0, f25
/* 80170718 00166498  EC 00 D0 24 */	fdivs f0, f0, f26
/* 8017071C 0016649C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80170720 001664A0  EE 7B 00 32 */	fmuls f19, f27, f0
/* 80170724 001664A4  FC 20 98 90 */	fmr f1, f19
/* 80170728 001664A8  48 28 FD B1 */	bl cos
/* 8017072C 001664AC  FC 00 08 18 */	frsp f0, f1
/* 80170730 001664B0  FC 20 98 90 */	fmr f1, f19
/* 80170734 001664B4  EC 14 00 32 */	fmuls f0, f20, f0
/* 80170738 001664B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8017073C 001664BC  48 29 02 A5 */	bl sin
/* 80170740 001664C0  FC 00 08 18 */	frsp f0, f1
/* 80170744 001664C4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80170748 001664C8  D3 01 00 30 */	stfs f24, 0x30(r1)
/* 8017074C 001664CC  FC 18 08 00 */	fcmpu cr0, f24, f1
/* 80170750 001664D0  EC 14 00 32 */	fmuls f0, f20, f0
/* 80170754 001664D4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80170758 001664D8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8017075C 001664DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80170760 001664E0  40 82 00 0C */	bne lbl_8017076C
/* 80170764 001664E4  FC 18 00 00 */	fcmpu cr0, f24, f0
/* 80170768 001664E8  41 82 00 10 */	beq lbl_80170778
lbl_8017076C:
/* 8017076C 001664EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80170770 001664F0  7C 64 1B 78 */	mr r4, r3
/* 80170774 001664F4  48 07 C8 95 */	bl PSVECNormalize
lbl_80170778:
/* 80170778 001664F8  38 E1 00 38 */	addi r7, r1, 0x38
/* 8017077C 001664FC  7F 03 C3 78 */	mr r3, r24
/* 80170780 00166500  7F 25 CB 78 */	mr r5, r25
/* 80170784 00166504  38 81 00 20 */	addi r4, r1, 0x20
/* 80170788 00166508  7C E8 3B 78 */	mr r8, r7
/* 8017078C 0016650C  38 C1 00 44 */	addi r6, r1, 0x44
/* 80170790 00166510  39 21 00 2C */	addi r9, r1, 0x2c
/* 80170794 00166514  4B FF F4 A1 */	bl nw4r2ef11EmitterFormCFPQ34nw4r4mat$7CalcVelocity
/* 80170798 00166518  80 19 00 EC */	lwz r0, 0xec(r25)
/* 8017079C 0016651C  FC 20 B8 90 */	fmr f1, f23
/* 801707A0 00166520  7F 03 C3 78 */	mr r3, r24
/* 801707A4 00166524  7F 84 E3 78 */	mr r4, r28
/* 801707A8 00166528  7C C0 F9 D6 */	mullw r6, r0, r31
/* 801707AC 0016652C  7F 25 CB 78 */	mr r5, r25
/* 801707B0 00166530  3C C6 00 27 */	addis r6, r6, 0x27
/* 801707B4 00166534  38 C6 9E C3 */	addi r6, r6, -24893
/* 801707B8 00166538  54 C0 84 3E */	srwi r0, r6, 0x10
/* 801707BC 0016653C  90 D9 00 EC */	stw r6, 0xec(r25)
/* 801707C0 00166540  90 01 00 54 */	stw r0, 0x54(r1)
/* 801707C4 00166544  81 41 00 20 */	lwz r10, 0x20(r1)
/* 801707C8 00166548  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801707CC 0016654C  81 21 00 24 */	lwz r9, 0x24(r1)
/* 801707D0 00166550  EC 00 C8 28 */	fsubs f0, f0, f25
/* 801707D4 00166554  81 01 00 28 */	lwz r8, 0x28(r1)
/* 801707D8 00166558  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 801707DC 0016655C  80 C1 00 48 */	lwz r6, 0x48(r1)
/* 801707E0 00166560  EE 80 D0 24 */	fdivs f20, f0, f26
/* 801707E4 00166564  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801707E8 00166568  91 41 00 08 */	stw r10, 8(r1)
/* 801707EC 0016656C  91 21 00 0C */	stw r9, 0xc(r1)
/* 801707F0 00166570  91 01 00 10 */	stw r8, 0x10(r1)
/* 801707F4 00166574  90 E1 00 14 */	stw r7, 0x14(r1)
/* 801707F8 00166578  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801707FC 0016657C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80170800 00166580  4B FF F9 51 */	bl nw4r2ef11EmitterFormFUsfPQ34nw4r2e$7CalcLife
/* 80170804 00166584  88 19 00 67 */	lbz r0, 0x67(r25)
/* 80170808 00166588  7C 64 1B 78 */	mr r4, r3
/* 8017080C 0016658C  81 9A 00 1C */	lwz r12, 0x1c(r26)
/* 80170810 00166590  7F 43 D3 78 */	mr r3, r26
/* 80170814 00166594  7C 00 07 74 */	extsb r0, r0
/* 80170818 00166598  7F A7 EB 78 */	mr r7, r29
/* 8017081C 0016659C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80170820 001665A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80170824 001665A4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80170828 001665A8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8017082C 001665AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80170830 001665B0  38 C1 00 08 */	addi r6, r1, 8
/* 80170834 001665B4  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80170838 001665B8  39 19 00 FC */	addi r8, r25, 0xfc
/* 8017083C 001665BC  81 39 00 F8 */	lwz r9, 0xf8(r25)
/* 80170840 001665C0  EC 00 A8 28 */	fsubs f0, f0, f21
/* 80170844 001665C4  A1 59 00 E8 */	lhz r10, 0xe8(r25)
/* 80170848 001665C8  EC 16 00 32 */	fmuls f0, f22, f0
/* 8017084C 001665CC  EC 00 05 32 */	fmuls f0, f0, f20
/* 80170850 001665D0  EC 3C 00 2A */	fadds f1, f28, f0
/* 80170854 001665D4  7D 89 03 A6 */	mtctr r12
/* 80170858 001665D8  4E 80 04 21 */	bctrl 
/* 8017085C 001665DC  3B DE 00 01 */	addi r30, r30, 1
lbl_80170860:
/* 80170860 001665E0  7C 1E D8 00 */	cmpw r30, r27
/* 80170864 001665E4  41 80 FE 14 */	blt lbl_80170678
lbl_80170868:
/* 80170868 001665E8  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 8017086C 001665EC  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80170870 001665F0  E3 C1 01 38 */	psq_l f30, 312(r1), 0, qr0
/* 80170874 001665F4  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 80170878 001665F8  E3 A1 01 28 */	psq_l f29, 296(r1), 0, qr0
/* 8017087C 001665FC  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 80170880 00166600  E3 81 01 18 */	psq_l f28, 280(r1), 0, qr0
/* 80170884 00166604  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 80170888 00166608  E3 61 01 08 */	psq_l f27, 264(r1), 0, qr0
/* 8017088C 0016660C  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 80170890 00166610  E3 41 00 F8 */	psq_l f26, 248(r1), 0, qr0
/* 80170894 00166614  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 80170898 00166618  E3 21 00 E8 */	psq_l f25, 232(r1), 0, qr0
/* 8017089C 0016661C  CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 801708A0 00166620  E3 01 00 D8 */	psq_l f24, 216(r1), 0, qr0
/* 801708A4 00166624  CB 01 00 D0 */	lfd f24, 0xd0(r1)
/* 801708A8 00166628  E2 E1 00 C8 */	psq_l f23, 200(r1), 0, qr0
/* 801708AC 0016662C  CA E1 00 C0 */	lfd f23, 0xc0(r1)
/* 801708B0 00166630  E2 C1 00 B8 */	psq_l f22, 184(r1), 0, qr0
/* 801708B4 00166634  CA C1 00 B0 */	lfd f22, 0xb0(r1)
/* 801708B8 00166638  E2 A1 00 A8 */	psq_l f21, 168(r1), 0, qr0
/* 801708BC 0016663C  CA A1 00 A0 */	lfd f21, 0xa0(r1)
/* 801708C0 00166640  E2 81 00 98 */	psq_l f20, 152(r1), 0, qr0
/* 801708C4 00166644  CA 81 00 90 */	lfd f20, 0x90(r1)
/* 801708C8 00166648  E2 61 00 88 */	psq_l f19, 136(r1), 0, qr0
/* 801708CC 0016664C  39 61 00 80 */	addi r11, r1, 0x80
/* 801708D0 00166650  CA 61 00 80 */	lfd f19, 0x80(r1)
/* 801708D4 00166654  48 28 0A 8D */	bl _restgpr_24
/* 801708D8 00166658  80 01 01 54 */	lwz r0, 0x154(r1)
/* 801708DC 0016665C  7C 08 03 A6 */	mtlr r0
/* 801708E0 00166660  38 21 01 50 */	addi r1, r1, 0x150
/* 801708E4 00166664  4E 80 00 20 */	blr 
