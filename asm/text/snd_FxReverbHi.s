.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd10FxReverbHiFv$7__ct
nw4r3snd10FxReverbHiFv$7__ct:
/* 801C03DC 001B615C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C03E0 001B6160  7C 08 02 A6 */	mflr r0
/* 801C03E4 001B6164  3C A0 80 46 */	lis r5, lbl_804666F8@ha
/* 801C03E8 001B6168  3D 40 80 41 */	lis r10, lbl_80410004@ha
/* 801C03EC 001B616C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C03F0 001B6170  38 00 00 00 */	li r0, 0
/* 801C03F4 001B6174  38 A5 66 F8 */	addi r5, r5, lbl_804666F8@l
/* 801C03F8 001B6178  38 81 00 08 */	addi r4, r1, 8
/* 801C03FC 001B617C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C0400 001B6180  7C 7F 1B 78 */	mr r31, r3
/* 801C0404 001B6184  90 03 00 04 */	stw r0, 4(r3)
/* 801C0408 001B6188  90 03 00 08 */	stw r0, 8(r3)
/* 801C040C 001B618C  90 A3 00 00 */	stw r5, 0(r3)
/* 801C0410 001B6190  98 03 00 0C */	stb r0, 0xc(r3)
/* 801C0414 001B6194  90 03 00 10 */	stw r0, 0x10(r3)
/* 801C0418 001B6198  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C041C 001B619C  85 2A AF 40 */	lwzu r9, -0x50c0(r10)
/* 801C0420 001B61A0  81 0A 00 04 */	lwz r8, lbl_80410004@l(r10)
/* 801C0424 001B61A4  80 EA 00 08 */	lwz r7, 8(r10)
/* 801C0428 001B61A8  80 CA 00 0C */	lwz r6, 0xc(r10)
/* 801C042C 001B61AC  80 AA 00 10 */	lwz r5, 0x10(r10)
/* 801C0430 001B61B0  80 0A 00 14 */	lwz r0, 0x14(r10)
/* 801C0434 001B61B4  91 21 00 08 */	stw r9, 8(r1)
/* 801C0438 001B61B8  91 01 00 0C */	stw r8, 0xc(r1)
/* 801C043C 001B61BC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 801C0440 001B61C0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801C0444 001B61C4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 801C0448 001B61C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C044C 001B61CC  48 00 01 75 */	bl nw4r3snd10FxReverbHiFRCQ44nw4r3snd$7SetParam
/* 801C0450 001B61D0  7F E3 FB 78 */	mr r3, r31
/* 801C0454 001B61D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C0458 001B61D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C045C 001B61DC  7C 08 03 A6 */	mtlr r0
/* 801C0460 001B61E0  38 21 00 30 */	addi r1, r1, 0x30
/* 801C0464 001B61E4  4E 80 00 20 */	blr 

.global nw4r3snd10FxReverbHiFv$7GetRequiredMemSize
nw4r3snd10FxReverbHiFv$7GetRequiredMemSize:
/* 801C0468 001B61E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C046C 001B61EC  7C 08 02 A6 */	mflr r0
/* 801C0470 001B61F0  38 63 00 30 */	addi r3, r3, 0x30
/* 801C0474 001B61F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0478 001B61F8  48 04 21 9D */	bl AXFXReverbHiGetMemSize
/* 801C047C 001B61FC  38 03 00 87 */	addi r0, r3, 0x87
/* 801C0480 001B6200  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 801C0484 001B6204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0488 001B6208  7C 08 03 A6 */	mtlr r0
/* 801C048C 001B620C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0490 001B6210  4E 80 00 20 */	blr 

.global nw4r3snd10FxReverbHiFPvUl$7AssignWorkBuffer
nw4r3snd10FxReverbHiFPvUl$7AssignWorkBuffer:
/* 801C0494 001B6214  38 63 00 0C */	addi r3, r3, 0xc
/* 801C0498 001B6218  4B FF B7 28 */	b nw4r3snd6detail8AxfxImplFPvUl$7CreateHeap

.global nw4r3snd10FxReverbHiFv$7ReleaseWorkBuffer
nw4r3snd10FxReverbHiFv$7ReleaseWorkBuffer:
/* 801C049C 001B621C  38 63 00 0C */	addi r3, r3, 0xc
/* 801C04A0 001B6220  4B FF B7 68 */	b nw4r3snd6detail8AxfxImplFv$7DestroyHeap

.global nw4r3snd10FxReverbHiFv$7StartUp
nw4r3snd10FxReverbHiFv$7StartUp:
/* 801C04A4 001B6224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C04A8 001B6228  7C 08 02 A6 */	mflr r0
/* 801C04AC 001B622C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C04B0 001B6230  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C04B4 001B6234  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C04B8 001B6238  7C 7E 1B 78 */	mr r30, r3
/* 801C04BC 001B623C  38 63 00 30 */	addi r3, r3, 0x30
/* 801C04C0 001B6240  48 04 21 55 */	bl AXFXReverbHiGetMemSize
/* 801C04C4 001B6244  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 801C04C8 001B6248  38 03 00 87 */	addi r0, r3, 0x87
/* 801C04CC 001B624C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 801C04D0 001B6250  2C 04 00 00 */	cmpwi r4, 0
/* 801C04D4 001B6254  40 82 00 0C */	bne lbl_801C04E0
/* 801C04D8 001B6258  38 00 00 00 */	li r0, 0
/* 801C04DC 001B625C  48 00 00 0C */	b lbl_801C04E8
lbl_801C04E0:
/* 801C04E0 001B6260  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801C04E4 001B6264  7C 04 00 50 */	subf r0, r4, r0
lbl_801C04E8:
/* 801C04E8 001B6268  7C 03 00 40 */	cmplw r3, r0
/* 801C04EC 001B626C  40 81 00 0C */	ble lbl_801C04F8
/* 801C04F0 001B6270  38 60 00 00 */	li r3, 0
/* 801C04F4 001B6274  48 00 00 54 */	b lbl_801C0548
lbl_801C04F8:
/* 801C04F8 001B6278  38 7E 00 0C */	addi r3, r30, 0xc
/* 801C04FC 001B627C  38 81 00 0C */	addi r4, r1, 0xc
/* 801C0500 001B6280  38 A1 00 08 */	addi r5, r1, 8
/* 801C0504 001B6284  4B FF B7 19 */	bl nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v$7HookAlloc
/* 801C0508 001B6288  38 00 00 00 */	li r0, 0
/* 801C050C 001B628C  38 7E 00 30 */	addi r3, r30, 0x30
/* 801C0510 001B6290  90 0D C1 54 */	stw r0, lbl_805A0574-_SDA_BASE_(r13)
/* 801C0514 001B6294  48 04 21 0D */	bl AXFXReverbHiInit
/* 801C0518 001B6298  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801C051C 001B629C  7C 7F 1B 78 */	mr r31, r3
/* 801C0520 001B62A0  80 A1 00 08 */	lwz r5, 8(r1)
/* 801C0524 001B62A4  38 7E 00 0C */	addi r3, r30, 0xc
/* 801C0528 001B62A8  4B FF B7 41 */	bl nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v$7RestoreAlloc
/* 801C052C 001B62AC  38 7E 00 30 */	addi r3, r30, 0x30
/* 801C0530 001B62B0  48 04 20 E5 */	bl AXFXReverbHiGetMemSize
/* 801C0534 001B62B4  7C 1F 00 D0 */	neg r0, r31
/* 801C0538 001B62B8  38 60 00 01 */	li r3, 1
/* 801C053C 001B62BC  7C 00 FB 78 */	or r0, r0, r31
/* 801C0540 001B62C0  98 7E 00 0C */	stb r3, 0xc(r30)
/* 801C0544 001B62C4  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801C0548:
/* 801C0548 001B62C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C054C 001B62CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C0550 001B62D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C0554 001B62D4  7C 08 03 A6 */	mtlr r0
/* 801C0558 001B62D8  38 21 00 20 */	addi r1, r1, 0x20
/* 801C055C 001B62DC  4E 80 00 20 */	blr 

.global nw4r3snd10FxReverbHiFv$7Shutdown
nw4r3snd10FxReverbHiFv$7Shutdown:
/* 801C0560 001B62E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C0564 001B62E4  7C 08 02 A6 */	mflr r0
/* 801C0568 001B62E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C056C 001B62EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C0570 001B62F0  7C 7F 1B 78 */	mr r31, r3
/* 801C0574 001B62F4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801C0578 001B62F8  2C 00 00 00 */	cmpwi r0, 0
/* 801C057C 001B62FC  41 82 00 30 */	beq lbl_801C05AC
/* 801C0580 001B6300  38 00 00 00 */	li r0, 0
/* 801C0584 001B6304  38 81 00 0C */	addi r4, r1, 0xc
/* 801C0588 001B6308  9C 03 00 0C */	stbu r0, 0xc(r3)
/* 801C058C 001B630C  38 A1 00 08 */	addi r5, r1, 8
/* 801C0590 001B6310  4B FF B6 8D */	bl nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v$7HookAlloc
/* 801C0594 001B6314  38 7F 00 30 */	addi r3, r31, 0x30
/* 801C0598 001B6318  48 04 20 ED */	bl AXFXReverbHiShutdown
/* 801C059C 001B631C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801C05A0 001B6320  38 7F 00 0C */	addi r3, r31, 0xc
/* 801C05A4 001B6324  80 A1 00 08 */	lwz r5, 8(r1)
/* 801C05A8 001B6328  4B FF B6 C1 */	bl nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v$7RestoreAlloc
lbl_801C05AC:
/* 801C05AC 001B632C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C05B0 001B6330  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C05B4 001B6334  7C 08 03 A6 */	mtlr r0
/* 801C05B8 001B6338  38 21 00 20 */	addi r1, r1, 0x20
/* 801C05BC 001B633C  4E 80 00 20 */	blr 

.global nw4r3snd10FxReverbHiFRCQ44nw4r3snd$7SetParam
nw4r3snd10FxReverbHiFRCQ44nw4r3snd$7SetParam:
/* 801C05C0 001B6340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C05C4 001B6344  7C 08 02 A6 */	mflr r0
/* 801C05C8 001B6348  C0 A4 00 00 */	lfs f5, 0(r4)
/* 801C05CC 001B634C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C05D0 001B6350  C0 C2 A2 00 */	lfs f6, lbl_805A3520-_SDA2_BASE_(r2)
/* 801C05D4 001B6354  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C05D8 001B6358  C0 84 00 04 */	lfs f4, 4(r4)
/* 801C05DC 001B635C  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 801C05E0 001B6360  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C05E4 001B6364  7C 7E 1B 78 */	mr r30, r3
/* 801C05E8 001B6368  C0 64 00 08 */	lfs f3, 8(r4)
/* 801C05EC 001B636C  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 801C05F0 001B6370  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 801C05F4 001B6374  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801C05F8 001B6378  D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 801C05FC 001B637C  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 801C0600 001B6380  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 801C0604 001B6384  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 801C0608 001B6388  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 801C060C 001B638C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801C0610 001B6390  40 81 00 08 */	ble lbl_801C0618
/* 801C0614 001B6394  48 00 00 18 */	b lbl_801C062C
lbl_801C0618:
/* 801C0618 001B6398  C0 C2 A2 04 */	lfs f6, lbl_805A3524-_SDA2_BASE_(r2)
/* 801C061C 001B639C  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 801C0620 001B63A0  40 80 00 08 */	bge lbl_801C0628
/* 801C0624 001B63A4  48 00 00 08 */	b lbl_801C062C
lbl_801C0628:
/* 801C0628 001B63A8  FC C0 28 90 */	fmr f6, f5
lbl_801C062C:
/* 801C062C 001B63AC  C0 04 00 04 */	lfs f0, 4(r4)
/* 801C0630 001B63B0  C0 22 A2 08 */	lfs f1, lbl_805A3528-_SDA2_BASE_(r2)
/* 801C0634 001B63B4  D0 C3 01 88 */	stfs f6, 0x188(r3)
/* 801C0638 001B63B8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C063C 001B63BC  40 81 00 08 */	ble lbl_801C0644
/* 801C0640 001B63C0  48 00 00 18 */	b lbl_801C0658
lbl_801C0644:
/* 801C0644 001B63C4  C0 22 A2 04 */	lfs f1, lbl_805A3524-_SDA2_BASE_(r2)
/* 801C0648 001B63C8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C064C 001B63CC  40 80 00 08 */	bge lbl_801C0654
/* 801C0650 001B63D0  48 00 00 08 */	b lbl_801C0658
lbl_801C0654:
/* 801C0654 001B63D4  FC 20 00 90 */	fmr f1, f0
lbl_801C0658:
/* 801C0658 001B63D8  C0 04 00 08 */	lfs f0, 8(r4)
/* 801C065C 001B63DC  C0 42 A2 0C */	lfs f2, lbl_805A352C-_SDA2_BASE_(r2)
/* 801C0660 001B63E0  D0 23 01 80 */	stfs f1, 0x180(r3)
/* 801C0664 001B63E4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801C0668 001B63E8  40 81 00 08 */	ble lbl_801C0670
/* 801C066C 001B63EC  48 00 00 18 */	b lbl_801C0684
lbl_801C0670:
/* 801C0670 001B63F0  C0 42 A2 04 */	lfs f2, lbl_805A3524-_SDA2_BASE_(r2)
/* 801C0674 001B63F4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801C0678 001B63F8  40 80 00 08 */	bge lbl_801C0680
/* 801C067C 001B63FC  48 00 00 08 */	b lbl_801C0684
lbl_801C0680:
/* 801C0680 001B6400  FC 40 00 90 */	fmr f2, f0
lbl_801C0684:
/* 801C0684 001B6404  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801C0688 001B6408  C0 22 A2 0C */	lfs f1, lbl_805A352C-_SDA2_BASE_(r2)
/* 801C068C 001B640C  D0 43 01 78 */	stfs f2, 0x178(r3)
/* 801C0690 001B6410  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C0694 001B6414  40 81 00 08 */	ble lbl_801C069C
/* 801C0698 001B6418  48 00 00 18 */	b lbl_801C06B0
lbl_801C069C:
/* 801C069C 001B641C  C0 22 A2 04 */	lfs f1, lbl_805A3524-_SDA2_BASE_(r2)
/* 801C06A0 001B6420  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C06A4 001B6424  40 80 00 08 */	bge lbl_801C06AC
/* 801C06A8 001B6428  48 00 00 08 */	b lbl_801C06B0
lbl_801C06AC:
/* 801C06AC 001B642C  FC 20 00 90 */	fmr f1, f0
lbl_801C06B0:
/* 801C06B0 001B6430  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801C06B4 001B6434  C0 42 A2 0C */	lfs f2, lbl_805A352C-_SDA2_BASE_(r2)
/* 801C06B8 001B6438  D0 23 01 84 */	stfs f1, 0x184(r3)
/* 801C06BC 001B643C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801C06C0 001B6440  40 81 00 08 */	ble lbl_801C06C8
/* 801C06C4 001B6444  48 00 00 18 */	b lbl_801C06DC
lbl_801C06C8:
/* 801C06C8 001B6448  C0 42 A2 04 */	lfs f2, lbl_805A3524-_SDA2_BASE_(r2)
/* 801C06CC 001B644C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801C06D0 001B6450  40 80 00 08 */	bge lbl_801C06D8
/* 801C06D4 001B6454  48 00 00 08 */	b lbl_801C06DC
lbl_801C06D8:
/* 801C06D8 001B6458  FC 40 00 90 */	fmr f2, f0
lbl_801C06DC:
/* 801C06DC 001B645C  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801C06E0 001B6460  C0 22 A2 0C */	lfs f1, lbl_805A352C-_SDA2_BASE_(r2)
/* 801C06E4 001B6464  D0 43 01 8C */	stfs f2, 0x18c(r3)
/* 801C06E8 001B6468  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C06EC 001B646C  40 81 00 08 */	ble lbl_801C06F4
/* 801C06F0 001B6470  48 00 00 18 */	b lbl_801C0708
lbl_801C06F4:
/* 801C06F4 001B6474  C0 22 A2 04 */	lfs f1, lbl_805A3524-_SDA2_BASE_(r2)
/* 801C06F8 001B6478  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C06FC 001B647C  40 80 00 08 */	bge lbl_801C0704
/* 801C0700 001B6480  48 00 00 08 */	b lbl_801C0708
lbl_801C0704:
/* 801C0704 001B6484  FC 20 00 90 */	fmr f1, f0
lbl_801C0708:
/* 801C0708 001B6488  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801C070C 001B648C  D0 23 01 7C */	stfs f1, 0x17c(r3)
/* 801C0710 001B6490  2C 00 00 00 */	cmpwi r0, 0
/* 801C0714 001B6494  40 82 00 0C */	bne lbl_801C0720
/* 801C0718 001B6498  38 60 00 01 */	li r3, 1
/* 801C071C 001B649C  48 00 00 78 */	b lbl_801C0794
lbl_801C0720:
/* 801C0720 001B64A0  38 63 00 30 */	addi r3, r3, 0x30
/* 801C0724 001B64A4  48 04 1E F1 */	bl AXFXReverbHiGetMemSize
/* 801C0728 001B64A8  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 801C072C 001B64AC  38 03 00 87 */	addi r0, r3, 0x87
/* 801C0730 001B64B0  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 801C0734 001B64B4  2C 04 00 00 */	cmpwi r4, 0
/* 801C0738 001B64B8  40 82 00 0C */	bne lbl_801C0744
/* 801C073C 001B64BC  38 00 00 00 */	li r0, 0
/* 801C0740 001B64C0  48 00 00 0C */	b lbl_801C074C
lbl_801C0744:
/* 801C0744 001B64C4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801C0748 001B64C8  7C 04 00 50 */	subf r0, r4, r0
lbl_801C074C:
/* 801C074C 001B64CC  7C 03 00 40 */	cmplw r3, r0
/* 801C0750 001B64D0  40 81 00 0C */	ble lbl_801C075C
/* 801C0754 001B64D4  38 60 00 00 */	li r3, 0
/* 801C0758 001B64D8  48 00 00 3C */	b lbl_801C0794
lbl_801C075C:
/* 801C075C 001B64DC  38 7E 00 0C */	addi r3, r30, 0xc
/* 801C0760 001B64E0  38 81 00 0C */	addi r4, r1, 0xc
/* 801C0764 001B64E4  38 A1 00 08 */	addi r5, r1, 8
/* 801C0768 001B64E8  4B FF B4 B5 */	bl nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v$7HookAlloc
/* 801C076C 001B64EC  38 7E 00 30 */	addi r3, r30, 0x30
/* 801C0770 001B64F0  48 04 1F 39 */	bl AXFXReverbHiSettings
/* 801C0774 001B64F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801C0778 001B64F8  7C 7F 1B 78 */	mr r31, r3
/* 801C077C 001B64FC  80 A1 00 08 */	lwz r5, 8(r1)
/* 801C0780 001B6500  38 7E 00 0C */	addi r3, r30, 0xc
/* 801C0784 001B6504  4B FF B4 E5 */	bl nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v$7RestoreAlloc
/* 801C0788 001B6508  7C 1F 00 D0 */	neg r0, r31
/* 801C078C 001B650C  7C 00 FB 78 */	or r0, r0, r31
/* 801C0790 001B6510  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801C0794:
/* 801C0794 001B6514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C0798 001B6518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C079C 001B651C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C07A0 001B6520  7C 08 03 A6 */	mtlr r0
/* 801C07A4 001B6524  38 21 00 20 */	addi r1, r1, 0x20
/* 801C07A8 001B6528  4E 80 00 20 */	blr 

.global nw4r3snd10FxReverbHiCFv$7GetParam
nw4r3snd10FxReverbHiCFv$7GetParam:
/* 801C07AC 001B652C  38 63 00 18 */	addi r3, r3, 0x18
/* 801C07B0 001B6530  4E 80 00 20 */	blr 

.global nw4r3snd10FxReverbHiFiPPvUlQ34nw4r$7UpdateBuffer
nw4r3snd10FxReverbHiFiPPvUlQ34nw4r$7UpdateBuffer:
/* 801C07B4 001B6534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C07B8 001B6538  7C 08 02 A6 */	mflr r0
/* 801C07BC 001B653C  7C 64 1B 78 */	mr r4, r3
/* 801C07C0 001B6540  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C07C4 001B6544  38 61 00 08 */	addi r3, r1, 8
/* 801C07C8 001B6548  38 84 00 30 */	addi r4, r4, 0x30
/* 801C07CC 001B654C  80 05 00 00 */	lwz r0, 0(r5)
/* 801C07D0 001B6550  90 01 00 08 */	stw r0, 8(r1)
/* 801C07D4 001B6554  80 05 00 04 */	lwz r0, 4(r5)
/* 801C07D8 001B6558  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C07DC 001B655C  80 05 00 08 */	lwz r0, 8(r5)
/* 801C07E0 001B6560  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C07E4 001B6564  48 04 1F 29 */	bl AXFXReverbHiCallback
/* 801C07E8 001B6568  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C07EC 001B656C  7C 08 03 A6 */	mtlr r0
/* 801C07F0 001B6570  38 21 00 20 */	addi r1, r1, 0x20
/* 801C07F4 001B6574  4E 80 00 20 */	blr 

