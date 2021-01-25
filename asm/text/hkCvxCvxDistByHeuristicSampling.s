.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkConvexShape$7hkCvxCvxDistByHeuristicSamplingPerformSample
hkConvexShape$7hkCvxCvxDistByHeuristicSamplingPerformSample:
/* 8031F458 003151D8  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 8031F45C 003151DC  7C 2C 0B 78 */	mr r12, r1
/* 8031F460 003151E0  21 6B FF A0 */	subfic r11, r11, -96
/* 8031F464 003151E4  7C 21 59 6E */	stwux r1, r1, r11
/* 8031F468 003151E8  7C 08 02 A6 */	mflr r0
/* 8031F46C 003151EC  C0 06 00 00 */	lfs f0, 0(r6)
/* 8031F470 003151F0  90 0C 00 04 */	stw r0, 4(r12)
/* 8031F474 003151F4  C0 C6 00 04 */	lfs f6, 4(r6)
/* 8031F478 003151F8  FC 60 00 50 */	fneg f3, f0
/* 8031F47C 003151FC  93 EC FF FC */	stw r31, -4(r12)
/* 8031F480 00315200  7C FF 3B 78 */	mr r31, r7
/* 8031F484 00315204  C0 A6 00 08 */	lfs f5, 8(r6)
/* 8031F488 00315208  FC 40 30 50 */	fneg f2, f6
/* 8031F48C 0031520C  93 CC FF F8 */	stw r30, -8(r12)
/* 8031F490 00315210  C0 86 00 0C */	lfs f4, 0xc(r6)
/* 8031F494 00315214  FC 20 28 50 */	fneg f1, f5
/* 8031F498 00315218  93 AC FF F4 */	stw r29, -0xc(r12)
/* 8031F49C 0031521C  7C BD 2B 78 */	mr r29, r5
/* 8031F4A0 00315220  7C DE 33 78 */	mr r30, r6
/* 8031F4A4 00315224  7F E5 FB 78 */	mr r5, r31
/* 8031F4A8 00315228  93 8C FF F0 */	stw r28, -0x10(r12)
/* 8031F4AC 0031522C  7C 9C 23 78 */	mr r28, r4
/* 8031F4B0 00315230  38 81 00 40 */	addi r4, r1, 0x40
/* 8031F4B4 00315234  D0 07 00 20 */	stfs f0, 0x20(r7)
/* 8031F4B8 00315238  FC 00 20 50 */	fneg f0, f4
/* 8031F4BC 0031523C  D0 C7 00 24 */	stfs f6, 0x24(r7)
/* 8031F4C0 00315240  D0 A7 00 28 */	stfs f5, 0x28(r7)
/* 8031F4C4 00315244  D0 87 00 2C */	stfs f4, 0x2c(r7)
/* 8031F4C8 00315248  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8031F4CC 0031524C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8031F4D0 00315250  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8031F4D4 00315254  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8031F4D8 00315258  81 83 00 00 */	lwz r12, 0(r3)
/* 8031F4DC 0031525C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8031F4E0 00315260  7D 89 03 A6 */	mtctr r12
/* 8031F4E4 00315264  4E 80 04 21 */	bctrl 
/* 8031F4E8 00315268  C0 DE 00 04 */	lfs f6, 4(r30)
/* 8031F4EC 0031526C  38 81 00 30 */	addi r4, r1, 0x30
/* 8031F4F0 00315270  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8031F4F4 00315274  7F 83 E3 78 */	mr r3, r28
/* 8031F4F8 00315278  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8031F4FC 0031527C  38 BF 00 10 */	addi r5, r31, 0x10
/* 8031F500 00315280  EC A6 00 B2 */	fmuls f5, f6, f2
/* 8031F504 00315284  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8031F508 00315288  EC 66 00 72 */	fmuls f3, f6, f1
/* 8031F50C 0031528C  C1 1E 00 00 */	lfs f8, 0(r30)
/* 8031F510 00315290  EC 26 00 32 */	fmuls f1, f6, f0
/* 8031F514 00315294  C0 9D 00 00 */	lfs f4, 0(r29)
/* 8031F518 00315298  EC C8 29 3A */	fmadds f6, f8, f4, f5
/* 8031F51C 0031529C  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 8031F520 003152A0  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8031F524 003152A4  EC 88 18 BA */	fmadds f4, f8, f2, f3
/* 8031F528 003152A8  C0 FE 00 08 */	lfs f7, 8(r30)
/* 8031F52C 003152AC  EC 48 08 3A */	fmadds f2, f8, f0, f1
/* 8031F530 003152B0  C0 BD 00 08 */	lfs f5, 8(r29)
/* 8031F534 003152B4  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 8031F538 003152B8  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8031F53C 003152BC  EC A7 31 7A */	fmadds f5, f7, f5, f6
/* 8031F540 003152C0  EC 67 20 FA */	fmadds f3, f7, f3, f4
/* 8031F544 003152C4  C0 02 B4 08 */	lfs f0, lbl_805A4728-_SDA2_BASE_(r2)
/* 8031F548 003152C8  EC 27 10 7A */	fmadds f1, f7, f1, f2
/* 8031F54C 003152CC  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8031F550 003152D0  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8031F554 003152D4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8031F558 003152D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8031F55C 003152DC  81 9C 00 00 */	lwz r12, 0(r28)
/* 8031F560 003152E0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8031F564 003152E4  7D 89 03 A6 */	mtctr r12
/* 8031F568 003152E8  4E 80 04 21 */	bctrl 
/* 8031F56C 003152EC  C1 1F 00 14 */	lfs f8, 0x14(r31)
/* 8031F570 003152F0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8031F574 003152F4  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 8031F578 003152F8  EC 48 00 32 */	fmuls f2, f8, f0
/* 8031F57C 003152FC  C1 3F 00 10 */	lfs f9, 0x10(r31)
/* 8031F580 00315300  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8031F584 00315304  EC A8 00 F2 */	fmuls f5, f8, f3
/* 8031F588 00315308  C0 9D 00 00 */	lfs f4, 0(r29)
/* 8031F58C 0031530C  EC 69 10 7A */	fmadds f3, f9, f1, f2
/* 8031F590 00315310  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8031F594 00315314  EC C9 29 3A */	fmadds f6, f9, f4, f5
/* 8031F598 00315318  C0 FF 00 18 */	lfs f7, 0x18(r31)
/* 8031F59C 0031531C  C0 5D 00 24 */	lfs f2, 0x24(r29)
/* 8031F5A0 00315320  EC 28 00 32 */	fmuls f1, f8, f0
/* 8031F5A4 00315324  C0 BD 00 20 */	lfs f5, 0x20(r29)
/* 8031F5A8 00315328  EC 87 18 BA */	fmadds f4, f7, f2, f3
/* 8031F5AC 0031532C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8031F5B0 00315330  C0 5D 00 34 */	lfs f2, 0x34(r29)
/* 8031F5B4 00315334  EC C7 31 7A */	fmadds f6, f7, f5, f6
/* 8031F5B8 00315338  EC 69 08 3A */	fmadds f3, f9, f0, f1
/* 8031F5BC 0031533C  C0 BD 00 30 */	lfs f5, 0x30(r29)
/* 8031F5C0 00315340  ED 02 20 2A */	fadds f8, f2, f4
/* 8031F5C4 00315344  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 8031F5C8 00315348  ED 25 30 2A */	fadds f9, f5, f6
/* 8031F5CC 0031534C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8031F5D0 00315350  EC 67 18 BA */	fmadds f3, f7, f2, f3
/* 8031F5D4 00315354  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8031F5D8 00315358  EC 80 40 28 */	fsubs f4, f0, f8
/* 8031F5DC 0031535C  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8031F5E0 00315360  EC A1 48 28 */	fsubs f5, f1, f9
/* 8031F5E4 00315364  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8031F5E8 00315368  EC E2 18 2A */	fadds f7, f2, f3
/* 8031F5EC 0031536C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8031F5F0 00315370  EC 24 00 32 */	fmuls f1, f4, f0
/* 8031F5F4 00315374  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8031F5F8 00315378  EC 62 38 28 */	fsubs f3, f2, f7
/* 8031F5FC 0031537C  C0 C2 B4 08 */	lfs f6, lbl_805A4728-_SDA2_BASE_(r2)
/* 8031F600 00315380  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8031F604 00315384  EC 25 08 3A */	fmadds f1, f5, f0, f1
/* 8031F608 00315388  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8031F60C 0031538C  EC 42 30 28 */	fsubs f2, f2, f6
/* 8031F610 00315390  D1 21 00 20 */	stfs f9, 0x20(r1)
/* 8031F614 00315394  EC 03 08 3A */	fmadds f0, f3, f0, f1
/* 8031F618 00315398  D1 01 00 24 */	stfs f8, 0x24(r1)
/* 8031F61C 0031539C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8031F620 003153A0  D0 E1 00 28 */	stfs f7, 0x28(r1)
/* 8031F624 003153A4  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 8031F628 003153A8  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8031F62C 003153AC  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8031F630 003153B0  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8031F634 003153B4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8031F638 003153B8  81 41 00 00 */	lwz r10, 0(r1)
/* 8031F63C 003153BC  83 EA FF FC */	lwz r31, -4(r10)
/* 8031F640 003153C0  83 CA FF F8 */	lwz r30, -8(r10)
/* 8031F644 003153C4  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 8031F648 003153C8  83 8A FF F0 */	lwz r28, -0x10(r10)
/* 8031F64C 003153CC  80 0A 00 04 */	lwz r0, 4(r10)
/* 8031F650 003153D0  7C 08 03 A6 */	mtlr r0
/* 8031F654 003153D4  7D 41 53 78 */	mr r1, r10
/* 8031F658 003153D8  4E 80 00 20 */	blr 

.global hkCvxCvxDistByHeuristicSampling
hkCvxCvxDistByHeuristicSampling:
/* 8031F65C 003153DC  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 8031F660 003153E0  7C 2C 0B 78 */	mr r12, r1
/* 8031F664 003153E4  21 6B FD F0 */	subfic r11, r11, -528
/* 8031F668 003153E8  7C 21 59 6E */	stwux r1, r1, r11
/* 8031F66C 003153EC  7C 08 02 A6 */	mflr r0
/* 8031F670 003153F0  90 0C 00 04 */	stw r0, 4(r12)
/* 8031F674 003153F4  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8031F678 003153F8  F3 EC 0F F8 */	psq_st f31, -8(r12), 0, qr0
/* 8031F67C 003153FC  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 8031F680 00315400  F3 CC 0F E8 */	psq_st f30, -24(r12), 0, qr0
/* 8031F684 00315404  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 8031F688 00315408  F3 AC 0F D8 */	psq_st f29, -40(r12), 0, qr0
/* 8031F68C 0031540C  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 8031F690 00315410  F3 8C 0F C8 */	psq_st f28, -56(r12), 0, qr0
/* 8031F694 00315414  DB 6C FF B0 */	stfd f27, -0x50(r12)
/* 8031F698 00315418  F3 6C 0F B8 */	psq_st f27, -72(r12), 0, qr0
/* 8031F69C 0031541C  DB 4C FF A0 */	stfd f26, -0x60(r12)
/* 8031F6A0 00315420  F3 4C 0F A8 */	psq_st f26, -88(r12), 0, qr0
/* 8031F6A4 00315424  DB 2C FF 90 */	stfd f25, -0x70(r12)
/* 8031F6A8 00315428  F3 2C 0F 98 */	psq_st f25, -104(r12), 0, qr0
/* 8031F6AC 0031542C  DB 0C FF 80 */	stfd f24, -0x80(r12)
/* 8031F6B0 00315430  F3 0C 0F 88 */	psq_st f24, -120(r12), 0, qr0
/* 8031F6B4 00315434  DA EC FF 70 */	stfd f23, -0x90(r12)
/* 8031F6B8 00315438  F2 EC 0F 78 */	psq_st f23, -136(r12), 0, qr0
/* 8031F6BC 0031543C  DA CC FF 60 */	stfd f22, -0xa0(r12)
/* 8031F6C0 00315440  F2 CC 0F 68 */	psq_st f22, -152(r12), 0, qr0
/* 8031F6C4 00315444  DA AC FF 50 */	stfd f21, -0xb0(r12)
/* 8031F6C8 00315448  F2 AC 0F 58 */	psq_st f21, -168(r12), 0, qr0
/* 8031F6CC 0031544C  DA 8C FF 40 */	stfd f20, -0xc0(r12)
/* 8031F6D0 00315450  F2 8C 0F 48 */	psq_st f20, -184(r12), 0, qr0
/* 8031F6D4 00315454  39 6C FF 40 */	addi r11, r12, -192
/* 8031F6D8 00315458  48 0D 1C 39 */	bl _savegpr_23
/* 8031F6DC 0031545C  C0 02 B4 0C */	lfs f0, lbl_805A472C-_SDA2_BASE_(r2)
/* 8031F6E0 00315460  3F 00 80 48 */	lis r24, lbl_804864F0@ha
/* 8031F6E4 00315464  7C 7A 1B 78 */	mr r26, r3
/* 8031F6E8 00315468  7C 9B 23 78 */	mr r27, r4
/* 8031F6EC 0031546C  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8031F6F0 00315470  7C BC 2B 78 */	mr r28, r5
/* 8031F6F4 00315474  7C DD 33 78 */	mr r29, r6
/* 8031F6F8 00315478  7C FE 3B 78 */	mr r30, r7
/* 8031F6FC 0031547C  7D 1F 43 78 */	mr r31, r8
/* 8031F700 00315480  3B 18 64 F0 */	addi r24, r24, lbl_804864F0@l
/* 8031F704 00315484  3A E0 00 00 */	li r23, 0
/* 8031F708 00315488  3B 20 00 00 */	li r25, 0
lbl_8031F70C:
/* 8031F70C 0031548C  7C F8 CA 14 */	add r7, r24, r25
/* 8031F710 00315490  7C 78 CC 2E */	lfsx f3, r24, r25
/* 8031F714 00315494  C0 47 00 04 */	lfs f2, 4(r7)
/* 8031F718 00315498  7F 43 D3 78 */	mr r3, r26
/* 8031F71C 0031549C  C0 27 00 08 */	lfs f1, 8(r7)
/* 8031F720 003154A0  7F 64 DB 78 */	mr r4, r27
/* 8031F724 003154A4  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 8031F728 003154A8  7F 85 E3 78 */	mr r5, r28
/* 8031F72C 003154AC  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8031F730 003154B0  38 C1 00 80 */	addi r6, r1, 0x80
/* 8031F734 003154B4  38 E1 00 C0 */	addi r7, r1, 0xc0
/* 8031F738 003154B8  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8031F73C 003154BC  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8031F740 003154C0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8031F744 003154C4  4B FF FD 15 */	bl hkConvexShape$7hkCvxCvxDistByHeuristicSamplingPerformSample
/* 8031F748 003154C8  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 8031F74C 003154CC  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8031F750 003154D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031F754 003154D4  40 81 00 64 */	ble lbl_8031F7B8
/* 8031F758 003154D8  C1 61 00 C0 */	lfs f11, 0xc0(r1)
/* 8031F75C 003154DC  C1 41 00 C4 */	lfs f10, 0xc4(r1)
/* 8031F760 003154E0  C1 21 00 C8 */	lfs f9, 0xc8(r1)
/* 8031F764 003154E4  C1 01 00 CC */	lfs f8, 0xcc(r1)
/* 8031F768 003154E8  C0 E1 00 D0 */	lfs f7, 0xd0(r1)
/* 8031F76C 003154EC  C0 C1 00 D4 */	lfs f6, 0xd4(r1)
/* 8031F770 003154F0  C0 A1 00 D8 */	lfs f5, 0xd8(r1)
/* 8031F774 003154F4  C0 81 00 DC */	lfs f4, 0xdc(r1)
/* 8031F778 003154F8  C0 61 00 E0 */	lfs f3, 0xe0(r1)
/* 8031F77C 003154FC  C0 41 00 E4 */	lfs f2, 0xe4(r1)
/* 8031F780 00315500  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 8031F784 00315504  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8031F788 00315508  D1 61 00 F0 */	stfs f11, 0xf0(r1)
/* 8031F78C 0031550C  D1 41 00 F4 */	stfs f10, 0xf4(r1)
/* 8031F790 00315510  D1 21 00 F8 */	stfs f9, 0xf8(r1)
/* 8031F794 00315514  D1 01 00 FC */	stfs f8, 0xfc(r1)
/* 8031F798 00315518  D0 E1 01 00 */	stfs f7, 0x100(r1)
/* 8031F79C 0031551C  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 8031F7A0 00315520  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 8031F7A4 00315524  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 8031F7A8 00315528  D0 61 01 10 */	stfs f3, 0x110(r1)
/* 8031F7AC 0031552C  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 8031F7B0 00315530  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 8031F7B4 00315534  D0 01 01 1C */	stfs f0, 0x11c(r1)
lbl_8031F7B8:
/* 8031F7B8 00315538  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8031F7BC 0031553C  7F 43 D3 78 */	mr r3, r26
/* 8031F7C0 00315540  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 8031F7C4 00315544  7F 64 DB 78 */	mr r4, r27
/* 8031F7C8 00315548  FC 60 00 50 */	fneg f3, f0
/* 8031F7CC 0031554C  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 8031F7D0 00315550  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8031F7D4 00315554  FC 40 10 50 */	fneg f2, f2
/* 8031F7D8 00315558  FC 20 08 50 */	fneg f1, f1
/* 8031F7DC 0031555C  7F 85 E3 78 */	mr r5, r28
/* 8031F7E0 00315560  FC 00 00 50 */	fneg f0, f0
/* 8031F7E4 00315564  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8031F7E8 00315568  38 C1 00 80 */	addi r6, r1, 0x80
/* 8031F7EC 0031556C  38 E1 00 C0 */	addi r7, r1, 0xc0
/* 8031F7F0 00315570  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8031F7F4 00315574  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8031F7F8 00315578  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8031F7FC 0031557C  4B FF FC 5D */	bl hkConvexShape$7hkCvxCvxDistByHeuristicSamplingPerformSample
/* 8031F800 00315580  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 8031F804 00315584  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8031F808 00315588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031F80C 0031558C  40 81 00 64 */	ble lbl_8031F870
/* 8031F810 00315590  C1 61 00 C0 */	lfs f11, 0xc0(r1)
/* 8031F814 00315594  C1 41 00 C4 */	lfs f10, 0xc4(r1)
/* 8031F818 00315598  C1 21 00 C8 */	lfs f9, 0xc8(r1)
/* 8031F81C 0031559C  C1 01 00 CC */	lfs f8, 0xcc(r1)
/* 8031F820 003155A0  C0 E1 00 D0 */	lfs f7, 0xd0(r1)
/* 8031F824 003155A4  C0 C1 00 D4 */	lfs f6, 0xd4(r1)
/* 8031F828 003155A8  C0 A1 00 D8 */	lfs f5, 0xd8(r1)
/* 8031F82C 003155AC  C0 81 00 DC */	lfs f4, 0xdc(r1)
/* 8031F830 003155B0  C0 61 00 E0 */	lfs f3, 0xe0(r1)
/* 8031F834 003155B4  C0 41 00 E4 */	lfs f2, 0xe4(r1)
/* 8031F838 003155B8  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 8031F83C 003155BC  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8031F840 003155C0  D1 61 00 F0 */	stfs f11, 0xf0(r1)
/* 8031F844 003155C4  D1 41 00 F4 */	stfs f10, 0xf4(r1)
/* 8031F848 003155C8  D1 21 00 F8 */	stfs f9, 0xf8(r1)
/* 8031F84C 003155CC  D1 01 00 FC */	stfs f8, 0xfc(r1)
/* 8031F850 003155D0  D0 E1 01 00 */	stfs f7, 0x100(r1)
/* 8031F854 003155D4  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 8031F858 003155D8  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 8031F85C 003155DC  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 8031F860 003155E0  D0 61 01 10 */	stfs f3, 0x110(r1)
/* 8031F864 003155E4  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 8031F868 003155E8  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 8031F86C 003155EC  D0 01 01 1C */	stfs f0, 0x11c(r1)
lbl_8031F870:
/* 8031F870 003155F0  3A F7 00 01 */	addi r23, r23, 1
/* 8031F874 003155F4  3B 39 00 10 */	addi r25, r25, 0x10
/* 8031F878 003155F8  2C 17 00 03 */	cmpwi r23, 3
/* 8031F87C 003155FC  41 80 FE 90 */	blt lbl_8031F70C
/* 8031F880 00315600  C3 A2 B4 08 */	lfs f29, lbl_805A4728-_SDA2_BASE_(r2)
/* 8031F884 00315604  3B 01 00 70 */	addi r24, r1, 0x70
/* 8031F888 00315608  C3 62 B4 10 */	lfs f27, lbl_805A4730-_SDA2_BASE_(r2)
/* 8031F88C 0031560C  3A E1 01 10 */	addi r23, r1, 0x110
/* 8031F890 00315610  C3 C2 B4 18 */	lfs f30, lbl_805A4738-_SDA2_BASE_(r2)
/* 8031F894 00315614  3F 20 7F 80 */	lis r25, 0x7f80
/* 8031F898 00315618  C3 E2 B4 1C */	lfs f31, lbl_805A473C-_SDA2_BASE_(r2)
/* 8031F89C 0031561C  C3 82 B4 14 */	lfs f28, lbl_805A4734-_SDA2_BASE_(r2)
/* 8031F8A0 00315620  C3 42 B4 20 */	lfs f26, lbl_805A4740-_SDA2_BASE_(r2)
/* 8031F8A4 00315624  48 00 05 24 */	b lbl_8031FDC8
lbl_8031F8A8:
/* 8031F8A8 00315628  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 8031F8AC 0031562C  EF 7B 07 32 */	fmuls f27, f27, f28
/* 8031F8B0 00315630  C0 21 01 14 */	lfs f1, 0x114(r1)
/* 8031F8B4 00315634  38 60 00 00 */	li r3, 0
/* 8031F8B8 00315638  FC 40 02 10 */	fabs f2, f0
/* 8031F8BC 0031563C  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 8031F8C0 00315640  FC 20 0A 10 */	fabs f1, f1
/* 8031F8C4 00315644  FC 00 02 10 */	fabs f0, f0
/* 8031F8C8 00315648  38 00 00 01 */	li r0, 1
/* 8031F8CC 0031564C  FC 40 10 18 */	frsp f2, f2
/* 8031F8D0 00315650  FC 20 08 18 */	frsp f1, f1
/* 8031F8D4 00315654  38 80 00 02 */	li r4, 2
/* 8031F8D8 00315658  FC 00 00 18 */	frsp f0, f0
/* 8031F8DC 0031565C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8031F8E0 00315660  40 80 00 10 */	bge lbl_8031F8F0
/* 8031F8E4 00315664  FC 40 08 90 */	fmr f2, f1
/* 8031F8E8 00315668  38 00 00 00 */	li r0, 0
/* 8031F8EC 0031566C  38 60 00 01 */	li r3, 1
lbl_8031F8F0:
/* 8031F8F0 00315670  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8031F8F4 00315674  40 80 00 0C */	bge lbl_8031F900
/* 8031F8F8 00315678  7C 64 1B 78 */	mr r4, r3
/* 8031F8FC 0031567C  38 60 00 02 */	li r3, 2
lbl_8031F900:
/* 8031F900 00315680  54 63 10 3A */	slwi r3, r3, 2
/* 8031F904 00315684  54 00 10 3A */	slwi r0, r0, 2
/* 8031F908 00315688  7F B8 1D 2E */	stfsx f29, r24, r3
/* 8031F90C 0031568C  54 83 10 3A */	slwi r3, r4, 2
/* 8031F910 00315690  7C 17 04 2E */	lfsx f0, r23, r0
/* 8031F914 00315694  D3 A1 00 7C */	stfs f29, 0x7c(r1)
/* 8031F918 00315698  7C 37 1C 2E */	lfsx f1, r23, r3
/* 8031F91C 0031569C  FC 00 00 50 */	fneg f0, f0
/* 8031F920 003156A0  7C 38 05 2E */	stfsx f1, r24, r0
/* 8031F924 003156A4  7C 18 1D 2E */	stfsx f0, r24, r3
/* 8031F928 003156A8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8031F92C 003156AC  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8031F930 003156B0  EC 40 00 32 */	fmuls f2, f0, f0
/* 8031F934 003156B4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8031F938 003156B8  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 8031F93C 003156BC  EC 00 08 3A */	fmadds f0, f0, f0, f1
/* 8031F940 003156C0  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 8031F944 003156C4  41 82 00 38 */	beq lbl_8031F97C
/* 8031F948 003156C8  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8031F94C 003156CC  4C 40 13 82 */	cror 2, 0, 2
/* 8031F950 003156D0  40 82 00 10 */	bne lbl_8031F960
/* 8031F954 003156D4  93 21 00 14 */	stw r25, 0x14(r1)
/* 8031F958 003156D8  C2 81 00 14 */	lfs f20, 0x14(r1)
/* 8031F95C 003156DC  48 00 00 24 */	b lbl_8031F980
lbl_8031F960:
/* 8031F960 003156E0  FC 20 00 34 */	frsqrte f1, f0
/* 8031F964 003156E4  FC 40 08 18 */	frsp f2, f1
/* 8031F968 003156E8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8031F96C 003156EC  EC 3E 00 B2 */	fmuls f1, f30, f2
/* 8031F970 003156F0  EC 02 F8 3C */	fnmsubs f0, f2, f0, f31
/* 8031F974 003156F4  EE 81 00 32 */	fmuls f20, f1, f0
/* 8031F978 003156F8  48 00 00 08 */	b lbl_8031F980
lbl_8031F97C:
/* 8031F97C 003156FC  FE 80 E8 90 */	fmr f20, f29
lbl_8031F980:
/* 8031F980 00315700  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8031F984 00315704  EC 7D 06 F2 */	fmuls f3, f29, f27
/* 8031F988 00315708  C0 E1 01 1C */	lfs f7, 0x11c(r1)
/* 8031F98C 0031570C  EE C0 05 32 */	fmuls f22, f0, f20
/* 8031F990 00315710  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8031F994 00315714  C0 C1 00 78 */	lfs f6, 0x78(r1)
/* 8031F998 00315718  EC A7 18 2A */	fadds f5, f7, f3
/* 8031F99C 0031571C  EE A0 05 32 */	fmuls f21, f0, f20
/* 8031F9A0 00315720  C0 21 01 14 */	lfs f1, 0x114(r1)
/* 8031F9A4 00315724  ED 76 06 F2 */	fmuls f11, f22, f27
/* 8031F9A8 00315728  C0 41 01 18 */	lfs f2, 0x118(r1)
/* 8031F9AC 0031572C  EF 06 05 32 */	fmuls f24, f6, f20
/* 8031F9B0 00315730  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 8031F9B4 00315734  EF 35 06 F2 */	fmuls f25, f21, f27
/* 8031F9B8 00315738  C2 E1 00 7C */	lfs f23, 0x7c(r1)
/* 8031F9BC 0031573C  EC C1 58 2A */	fadds f6, f1, f11
/* 8031F9C0 00315740  D1 61 00 74 */	stfs f11, 0x74(r1)
/* 8031F9C4 00315744  ED A2 05 B2 */	fmuls f13, f2, f22
/* 8031F9C8 00315748  EC 87 18 28 */	fsubs f4, f7, f3
/* 8031F9CC 0031574C  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 8031F9D0 00315750  ED 58 06 F2 */	fmuls f10, f24, f27
/* 8031F9D4 00315754  ED 20 C8 2A */	fadds f9, f0, f25
/* 8031F9D8 00315758  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 8031F9DC 0031575C  EC 66 01 B2 */	fmuls f3, f6, f6
/* 8031F9E0 00315760  ED 80 06 32 */	fmuls f12, f0, f24
/* 8031F9E4 00315764  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8031F9E8 00315768  ED 01 05 72 */	fmuls f8, f1, f21
/* 8031F9EC 0031576C  ED 61 58 28 */	fsubs f11, f1, f11
/* 8031F9F0 00315770  D1 41 00 78 */	stfs f10, 0x78(r1)
/* 8031F9F4 00315774  EE F7 05 32 */	fmuls f23, f23, f20
/* 8031F9F8 00315778  ED A1 6E 38 */	fmsubs f13, f1, f24, f13
/* 8031F9FC 0031577C  D1 21 00 50 */	stfs f9, 0x50(r1)
/* 8031FA00 00315780  EC A0 45 B8 */	fmsubs f5, f0, f22, f8
/* 8031FA04 00315784  EF 17 06 F2 */	fmuls f24, f23, f27
/* 8031FA08 00315788  D3 21 00 70 */	stfs f25, 0x70(r1)
/* 8031FA0C 0031578C  ED 02 50 2A */	fadds f8, f2, f10
/* 8031FA10 00315790  EC 69 1A 7A */	fmadds f3, f9, f9, f3
/* 8031FA14 00315794  D1 61 00 44 */	stfs f11, 0x44(r1)
/* 8031FA18 00315798  EC C2 65 78 */	fmsubs f6, f2, f21, f12
/* 8031FA1C 0031579C  EE ED 06 F2 */	fmuls f23, f13, f27
/* 8031FA20 003157A0  D1 01 00 58 */	stfs f8, 0x58(r1)
/* 8031FA24 003157A4  ED 85 06 F2 */	fmuls f12, f5, f27
/* 8031FA28 003157A8  ED A6 06 F2 */	fmuls f13, f6, f27
/* 8031FA2C 003157AC  D3 01 00 7C */	stfs f24, 0x7c(r1)
/* 8031FA30 003157B0  EC 68 1A 3A */	fmadds f3, f8, f8, f3
/* 8031FA34 003157B4  EC C7 C0 2A */	fadds f6, f7, f24
/* 8031FA38 003157B8  D2 E1 00 60 */	stfs f23, 0x60(r1)
/* 8031FA3C 003157BC  ED 27 C0 28 */	fsubs f9, f7, f24
/* 8031FA40 003157C0  EC E1 68 2A */	fadds f7, f1, f13
/* 8031FA44 003157C4  D1 A1 00 64 */	stfs f13, 0x64(r1)
/* 8031FA48 003157C8  EC A0 C8 28 */	fsubs f5, f0, f25
/* 8031FA4C 003157CC  ED 42 50 28 */	fsubs f10, f2, f10
/* 8031FA50 003157D0  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 8031FA54 003157D4  ED 00 B8 2A */	fadds f8, f0, f23
/* 8031FA58 003157D8  EC C2 60 2A */	fadds f6, f2, f12
/* 8031FA5C 003157DC  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 8031FA60 003157E0  EC A0 B8 28 */	fsubs f5, f0, f23
/* 8031FA64 003157E4  EC 21 68 28 */	fsubs f1, f1, f13
/* 8031FA68 003157E8  D1 81 00 68 */	stfs f12, 0x68(r1)
/* 8031FA6C 003157EC  EC 02 60 28 */	fsubs f0, f2, f12
/* 8031FA70 003157F0  FC 03 E8 00 */	fcmpu cr0, f3, f29
/* 8031FA74 003157F4  D1 41 00 48 */	stfs f10, 0x48(r1)
/* 8031FA78 003157F8  D1 21 00 4C */	stfs f9, 0x4c(r1)
/* 8031FA7C 003157FC  D1 01 00 30 */	stfs f8, 0x30(r1)
/* 8031FA80 00315800  D0 E1 00 34 */	stfs f7, 0x34(r1)
/* 8031FA84 00315804  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 8031FA88 00315808  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8031FA8C 0031580C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8031FA90 00315810  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8031FA94 00315814  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8031FA98 00315818  41 82 00 38 */	beq lbl_8031FAD0
/* 8031FA9C 0031581C  FC 03 E8 40 */	fcmpo cr0, f3, f29
/* 8031FAA0 00315820  4C 40 13 82 */	cror 2, 0, 2
/* 8031FAA4 00315824  40 82 00 10 */	bne lbl_8031FAB4
/* 8031FAA8 00315828  93 21 00 10 */	stw r25, 0x10(r1)
/* 8031FAAC 0031582C  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 8031FAB0 00315830  48 00 00 24 */	b lbl_8031FAD4
lbl_8031FAB4:
/* 8031FAB4 00315834  FC 00 18 34 */	frsqrte f0, f3
/* 8031FAB8 00315838  FC 40 00 18 */	frsp f2, f0
/* 8031FABC 0031583C  EC 03 00 B2 */	fmuls f0, f3, f2
/* 8031FAC0 00315840  EC 3E 00 B2 */	fmuls f1, f30, f2
/* 8031FAC4 00315844  EC 02 F8 3C */	fnmsubs f0, f2, f0, f31
/* 8031FAC8 00315848  EC C1 00 32 */	fmuls f6, f1, f0
/* 8031FACC 0031584C  48 00 00 08 */	b lbl_8031FAD4
lbl_8031FAD0:
/* 8031FAD0 00315850  FC C0 E8 90 */	fmr f6, f29
lbl_8031FAD4:
/* 8031FAD4 00315854  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8031FAD8 00315858  7F 43 D3 78 */	mr r3, r26
/* 8031FADC 0031585C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8031FAE0 00315860  7F 64 DB 78 */	mr r4, r27
/* 8031FAE4 00315864  EC A2 01 B2 */	fmuls f5, f2, f6
/* 8031FAE8 00315868  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8031FAEC 0031586C  EC 81 01 B2 */	fmuls f4, f1, f6
/* 8031FAF0 00315870  C1 41 00 48 */	lfs f10, 0x48(r1)
/* 8031FAF4 00315874  EC 60 01 B2 */	fmuls f3, f0, f6
/* 8031FAF8 00315878  C1 21 00 4C */	lfs f9, 0x4c(r1)
/* 8031FAFC 0031587C  EE EA 01 B2 */	fmuls f23, f10, f6
/* 8031FB00 00315880  C1 01 00 30 */	lfs f8, 0x30(r1)
/* 8031FB04 00315884  EF 09 01 B2 */	fmuls f24, f9, f6
/* 8031FB08 00315888  C0 E1 00 34 */	lfs f7, 0x34(r1)
/* 8031FB0C 0031588C  EF 28 01 B2 */	fmuls f25, f8, f6
/* 8031FB10 00315890  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 8031FB14 00315894  ED A7 01 B2 */	fmuls f13, f7, f6
/* 8031FB18 00315898  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8031FB1C 0031589C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8031FB20 003158A0  EC 42 01 B2 */	fmuls f2, f2, f6
/* 8031FB24 003158A4  C1 81 00 38 */	lfs f12, 0x38(r1)
/* 8031FB28 003158A8  EC 21 01 B2 */	fmuls f1, f1, f6
/* 8031FB2C 003158AC  C1 61 00 3C */	lfs f11, 0x3c(r1)
/* 8031FB30 003158B0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 8031FB34 003158B4  C1 41 00 20 */	lfs f10, 0x20(r1)
/* 8031FB38 003158B8  ED 8C 01 B2 */	fmuls f12, f12, f6
/* 8031FB3C 003158BC  C1 21 00 24 */	lfs f9, 0x24(r1)
/* 8031FB40 003158C0  ED 6B 01 B2 */	fmuls f11, f11, f6
/* 8031FB44 003158C4  ED 4A 01 B2 */	fmuls f10, f10, f6
/* 8031FB48 003158C8  ED 29 01 B2 */	fmuls f9, f9, f6
/* 8031FB4C 003158CC  C1 01 00 28 */	lfs f8, 0x28(r1)
/* 8031FB50 003158D0  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 8031FB54 003158D4  7F 85 E3 78 */	mr r5, r28
/* 8031FB58 003158D8  EC A8 01 B2 */	fmuls f5, f8, f6
/* 8031FB5C 003158DC  C0 E1 00 2C */	lfs f7, 0x2c(r1)
/* 8031FB60 003158E0  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 8031FB64 003158E4  38 C1 00 50 */	addi r6, r1, 0x50
/* 8031FB68 003158E8  EC 87 01 B2 */	fmuls f4, f7, f6
/* 8031FB6C 003158EC  38 E1 00 90 */	addi r7, r1, 0x90
/* 8031FB70 003158F0  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 8031FB74 003158F4  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8031FB78 003158F8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8031FB7C 003158FC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8031FB80 00315900  D2 E1 00 48 */	stfs f23, 0x48(r1)
/* 8031FB84 00315904  D3 01 00 4C */	stfs f24, 0x4c(r1)
/* 8031FB88 00315908  D3 21 00 30 */	stfs f25, 0x30(r1)
/* 8031FB8C 0031590C  D1 A1 00 34 */	stfs f13, 0x34(r1)
/* 8031FB90 00315910  D1 81 00 38 */	stfs f12, 0x38(r1)
/* 8031FB94 00315914  D1 61 00 3C */	stfs f11, 0x3c(r1)
/* 8031FB98 00315918  D1 41 00 20 */	stfs f10, 0x20(r1)
/* 8031FB9C 0031591C  D1 21 00 24 */	stfs f9, 0x24(r1)
/* 8031FBA0 00315920  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8031FBA4 00315924  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8031FBA8 00315928  4B FF F8 B1 */	bl hkConvexShape$7hkCvxCvxDistByHeuristicSamplingPerformSample
/* 8031FBAC 0031592C  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8031FBB0 00315930  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8031FBB4 00315934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031FBB8 00315938  40 81 00 68 */	ble lbl_8031FC20
/* 8031FBBC 0031593C  C1 61 00 90 */	lfs f11, 0x90(r1)
/* 8031FBC0 00315940  C1 41 00 94 */	lfs f10, 0x94(r1)
/* 8031FBC4 00315944  C1 21 00 98 */	lfs f9, 0x98(r1)
/* 8031FBC8 00315948  C1 01 00 9C */	lfs f8, 0x9c(r1)
/* 8031FBCC 0031594C  C0 E1 00 A0 */	lfs f7, 0xa0(r1)
/* 8031FBD0 00315950  C0 C1 00 A4 */	lfs f6, 0xa4(r1)
/* 8031FBD4 00315954  C0 A1 00 A8 */	lfs f5, 0xa8(r1)
/* 8031FBD8 00315958  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 8031FBDC 0031595C  C0 61 00 B0 */	lfs f3, 0xb0(r1)
/* 8031FBE0 00315960  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 8031FBE4 00315964  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 8031FBE8 00315968  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8031FBEC 0031596C  D1 61 00 F0 */	stfs f11, 0xf0(r1)
/* 8031FBF0 00315970  D1 41 00 F4 */	stfs f10, 0xf4(r1)
/* 8031FBF4 00315974  D1 21 00 F8 */	stfs f9, 0xf8(r1)
/* 8031FBF8 00315978  D1 01 00 FC */	stfs f8, 0xfc(r1)
/* 8031FBFC 0031597C  D0 E1 01 00 */	stfs f7, 0x100(r1)
/* 8031FC00 00315980  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 8031FC04 00315984  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 8031FC08 00315988  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 8031FC0C 0031598C  D0 61 01 10 */	stfs f3, 0x110(r1)
/* 8031FC10 00315990  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 8031FC14 00315994  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 8031FC18 00315998  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8031FC1C 0031599C  48 00 01 AC */	b lbl_8031FDC8
lbl_8031FC20:
/* 8031FC20 003159A0  7F 43 D3 78 */	mr r3, r26
/* 8031FC24 003159A4  7F 64 DB 78 */	mr r4, r27
/* 8031FC28 003159A8  7F 85 E3 78 */	mr r5, r28
/* 8031FC2C 003159AC  38 C1 00 40 */	addi r6, r1, 0x40
/* 8031FC30 003159B0  38 E1 00 90 */	addi r7, r1, 0x90
/* 8031FC34 003159B4  4B FF F8 25 */	bl hkConvexShape$7hkCvxCvxDistByHeuristicSamplingPerformSample
/* 8031FC38 003159B8  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8031FC3C 003159BC  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8031FC40 003159C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031FC44 003159C4  40 81 00 68 */	ble lbl_8031FCAC
/* 8031FC48 003159C8  C1 61 00 90 */	lfs f11, 0x90(r1)
/* 8031FC4C 003159CC  C1 41 00 94 */	lfs f10, 0x94(r1)
/* 8031FC50 003159D0  C1 21 00 98 */	lfs f9, 0x98(r1)
/* 8031FC54 003159D4  C1 01 00 9C */	lfs f8, 0x9c(r1)
/* 8031FC58 003159D8  C0 E1 00 A0 */	lfs f7, 0xa0(r1)
/* 8031FC5C 003159DC  C0 C1 00 A4 */	lfs f6, 0xa4(r1)
/* 8031FC60 003159E0  C0 A1 00 A8 */	lfs f5, 0xa8(r1)
/* 8031FC64 003159E4  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 8031FC68 003159E8  C0 61 00 B0 */	lfs f3, 0xb0(r1)
/* 8031FC6C 003159EC  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 8031FC70 003159F0  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 8031FC74 003159F4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8031FC78 003159F8  D1 61 00 F0 */	stfs f11, 0xf0(r1)
/* 8031FC7C 003159FC  D1 41 00 F4 */	stfs f10, 0xf4(r1)
/* 8031FC80 00315A00  D1 21 00 F8 */	stfs f9, 0xf8(r1)
/* 8031FC84 00315A04  D1 01 00 FC */	stfs f8, 0xfc(r1)
/* 8031FC88 00315A08  D0 E1 01 00 */	stfs f7, 0x100(r1)
/* 8031FC8C 00315A0C  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 8031FC90 00315A10  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 8031FC94 00315A14  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 8031FC98 00315A18  D0 61 01 10 */	stfs f3, 0x110(r1)
/* 8031FC9C 00315A1C  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 8031FCA0 00315A20  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 8031FCA4 00315A24  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8031FCA8 00315A28  48 00 01 20 */	b lbl_8031FDC8
lbl_8031FCAC:
/* 8031FCAC 00315A2C  7F 43 D3 78 */	mr r3, r26
/* 8031FCB0 00315A30  7F 64 DB 78 */	mr r4, r27
/* 8031FCB4 00315A34  7F 85 E3 78 */	mr r5, r28
/* 8031FCB8 00315A38  38 C1 00 30 */	addi r6, r1, 0x30
/* 8031FCBC 00315A3C  38 E1 00 90 */	addi r7, r1, 0x90
/* 8031FCC0 00315A40  4B FF F7 99 */	bl hkConvexShape$7hkCvxCvxDistByHeuristicSamplingPerformSample
/* 8031FCC4 00315A44  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8031FCC8 00315A48  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8031FCCC 00315A4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031FCD0 00315A50  40 81 00 68 */	ble lbl_8031FD38
/* 8031FCD4 00315A54  C1 61 00 90 */	lfs f11, 0x90(r1)
/* 8031FCD8 00315A58  C1 41 00 94 */	lfs f10, 0x94(r1)
/* 8031FCDC 00315A5C  C1 21 00 98 */	lfs f9, 0x98(r1)
/* 8031FCE0 00315A60  C1 01 00 9C */	lfs f8, 0x9c(r1)
/* 8031FCE4 00315A64  C0 E1 00 A0 */	lfs f7, 0xa0(r1)
/* 8031FCE8 00315A68  C0 C1 00 A4 */	lfs f6, 0xa4(r1)
/* 8031FCEC 00315A6C  C0 A1 00 A8 */	lfs f5, 0xa8(r1)
/* 8031FCF0 00315A70  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 8031FCF4 00315A74  C0 61 00 B0 */	lfs f3, 0xb0(r1)
/* 8031FCF8 00315A78  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 8031FCFC 00315A7C  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 8031FD00 00315A80  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8031FD04 00315A84  D1 61 00 F0 */	stfs f11, 0xf0(r1)
/* 8031FD08 00315A88  D1 41 00 F4 */	stfs f10, 0xf4(r1)
/* 8031FD0C 00315A8C  D1 21 00 F8 */	stfs f9, 0xf8(r1)
/* 8031FD10 00315A90  D1 01 00 FC */	stfs f8, 0xfc(r1)
/* 8031FD14 00315A94  D0 E1 01 00 */	stfs f7, 0x100(r1)
/* 8031FD18 00315A98  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 8031FD1C 00315A9C  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 8031FD20 00315AA0  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 8031FD24 00315AA4  D0 61 01 10 */	stfs f3, 0x110(r1)
/* 8031FD28 00315AA8  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 8031FD2C 00315AAC  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 8031FD30 00315AB0  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8031FD34 00315AB4  48 00 00 94 */	b lbl_8031FDC8
lbl_8031FD38:
/* 8031FD38 00315AB8  7F 43 D3 78 */	mr r3, r26
/* 8031FD3C 00315ABC  7F 64 DB 78 */	mr r4, r27
/* 8031FD40 00315AC0  7F 85 E3 78 */	mr r5, r28
/* 8031FD44 00315AC4  38 C1 00 20 */	addi r6, r1, 0x20
/* 8031FD48 00315AC8  38 E1 00 90 */	addi r7, r1, 0x90
/* 8031FD4C 00315ACC  4B FF F7 0D */	bl hkConvexShape$7hkCvxCvxDistByHeuristicSamplingPerformSample
/* 8031FD50 00315AD0  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8031FD54 00315AD4  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8031FD58 00315AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031FD5C 00315ADC  40 81 00 68 */	ble lbl_8031FDC4
/* 8031FD60 00315AE0  C1 61 00 90 */	lfs f11, 0x90(r1)
/* 8031FD64 00315AE4  C1 41 00 94 */	lfs f10, 0x94(r1)
/* 8031FD68 00315AE8  C1 21 00 98 */	lfs f9, 0x98(r1)
/* 8031FD6C 00315AEC  C1 01 00 9C */	lfs f8, 0x9c(r1)
/* 8031FD70 00315AF0  C0 E1 00 A0 */	lfs f7, 0xa0(r1)
/* 8031FD74 00315AF4  C0 C1 00 A4 */	lfs f6, 0xa4(r1)
/* 8031FD78 00315AF8  C0 A1 00 A8 */	lfs f5, 0xa8(r1)
/* 8031FD7C 00315AFC  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 8031FD80 00315B00  C0 61 00 B0 */	lfs f3, 0xb0(r1)
/* 8031FD84 00315B04  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 8031FD88 00315B08  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 8031FD8C 00315B0C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8031FD90 00315B10  D1 61 00 F0 */	stfs f11, 0xf0(r1)
/* 8031FD94 00315B14  D1 41 00 F4 */	stfs f10, 0xf4(r1)
/* 8031FD98 00315B18  D1 21 00 F8 */	stfs f9, 0xf8(r1)
/* 8031FD9C 00315B1C  D1 01 00 FC */	stfs f8, 0xfc(r1)
/* 8031FDA0 00315B20  D0 E1 01 00 */	stfs f7, 0x100(r1)
/* 8031FDA4 00315B24  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 8031FDA8 00315B28  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 8031FDAC 00315B2C  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 8031FDB0 00315B30  D0 61 01 10 */	stfs f3, 0x110(r1)
/* 8031FDB4 00315B34  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 8031FDB8 00315B38  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 8031FDBC 00315B3C  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8031FDC0 00315B40  48 00 00 08 */	b lbl_8031FDC8
lbl_8031FDC4:
/* 8031FDC4 00315B44  EF 7B 07 B2 */	fmuls f27, f27, f30
lbl_8031FDC8:
/* 8031FDC8 00315B48  FC 1B D0 40 */	fcmpo cr0, f27, f26
/* 8031FDCC 00315B4C  41 81 FA DC */	bgt lbl_8031F8A8
/* 8031FDD0 00315B50  C1 21 00 F0 */	lfs f9, 0xf0(r1)
/* 8031FDD4 00315B54  C1 01 00 F4 */	lfs f8, 0xf4(r1)
/* 8031FDD8 00315B58  C0 E1 00 F8 */	lfs f7, 0xf8(r1)
/* 8031FDDC 00315B5C  C0 C1 00 FC */	lfs f6, 0xfc(r1)
/* 8031FDE0 00315B60  D1 3D 00 00 */	stfs f9, 0(r29)
/* 8031FDE4 00315B64  C0 61 01 00 */	lfs f3, 0x100(r1)
/* 8031FDE8 00315B68  D1 1D 00 04 */	stfs f8, 4(r29)
/* 8031FDEC 00315B6C  C0 41 01 04 */	lfs f2, 0x104(r1)
/* 8031FDF0 00315B70  D0 FD 00 08 */	stfs f7, 8(r29)
/* 8031FDF4 00315B74  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 8031FDF8 00315B78  D0 DD 00 0C */	stfs f6, 0xc(r29)
/* 8031FDFC 00315B7C  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 8031FE00 00315B80  D0 7E 00 00 */	stfs f3, 0(r30)
/* 8031FE04 00315B84  C0 A1 01 1C */	lfs f5, 0x11c(r1)
/* 8031FE08 00315B88  D0 5E 00 04 */	stfs f2, 4(r30)
/* 8031FE0C 00315B8C  C0 81 01 10 */	lfs f4, 0x110(r1)
/* 8031FE10 00315B90  D0 3E 00 08 */	stfs f1, 8(r30)
/* 8031FE14 00315B94  C0 61 01 14 */	lfs f3, 0x114(r1)
/* 8031FE18 00315B98  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8031FE1C 00315B9C  C0 41 01 18 */	lfs f2, 0x118(r1)
/* 8031FE20 00315BA0  C0 21 01 1C */	lfs f1, 0x11c(r1)
/* 8031FE24 00315BA4  C0 02 B4 18 */	lfs f0, lbl_805A4738-_SDA2_BASE_(r2)
/* 8031FE28 00315BA8  D0 BF 00 20 */	stfs f5, 0x20(r31)
/* 8031FE2C 00315BAC  D0 9F 00 00 */	stfs f4, 0(r31)
/* 8031FE30 00315BB0  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8031FE34 00315BB4  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8031FE38 00315BB8  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8031FE3C 00315BBC  D1 3F 00 10 */	stfs f9, 0x10(r31)
/* 8031FE40 00315BC0  D1 1F 00 14 */	stfs f8, 0x14(r31)
/* 8031FE44 00315BC4  D0 FF 00 18 */	stfs f7, 0x18(r31)
/* 8031FE48 00315BC8  D0 DF 00 1C */	stfs f6, 0x1c(r31)
/* 8031FE4C 00315BCC  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8031FE50 00315BD0  81 41 00 00 */	lwz r10, 0(r1)
/* 8031FE54 00315BD4  38 00 FF F8 */	li r0, -8
/* 8031FE58 00315BD8  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 8031FE5C 00315BDC  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 8031FE60 00315BE0  38 00 FF E8 */	li r0, -24
/* 8031FE64 00315BE4  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 8031FE68 00315BE8  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 8031FE6C 00315BEC  38 00 FF D8 */	li r0, -40
/* 8031FE70 00315BF0  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 8031FE74 00315BF4  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 8031FE78 00315BF8  38 00 FF C8 */	li r0, -56
/* 8031FE7C 00315BFC  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 8031FE80 00315C00  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 8031FE84 00315C04  38 00 FF B8 */	li r0, -72
/* 8031FE88 00315C08  13 6A 00 0C */	psq_lx f27, r10, r0, 0, qr0
/* 8031FE8C 00315C0C  CB 6A FF B0 */	lfd f27, -0x50(r10)
/* 8031FE90 00315C10  38 00 FF A8 */	li r0, -88
/* 8031FE94 00315C14  13 4A 00 0C */	psq_lx f26, r10, r0, 0, qr0
/* 8031FE98 00315C18  CB 4A FF A0 */	lfd f26, -0x60(r10)
/* 8031FE9C 00315C1C  38 00 FF 98 */	li r0, -104
/* 8031FEA0 00315C20  13 2A 00 0C */	psq_lx f25, r10, r0, 0, qr0
/* 8031FEA4 00315C24  CB 2A FF 90 */	lfd f25, -0x70(r10)
/* 8031FEA8 00315C28  38 00 FF 88 */	li r0, -120
/* 8031FEAC 00315C2C  13 0A 00 0C */	psq_lx f24, r10, r0, 0, qr0
/* 8031FEB0 00315C30  CB 0A FF 80 */	lfd f24, -0x80(r10)
/* 8031FEB4 00315C34  38 00 FF 78 */	li r0, -136
/* 8031FEB8 00315C38  12 EA 00 0C */	psq_lx f23, r10, r0, 0, qr0
/* 8031FEBC 00315C3C  CA EA FF 70 */	lfd f23, -0x90(r10)
/* 8031FEC0 00315C40  38 00 FF 68 */	li r0, -152
/* 8031FEC4 00315C44  12 CA 00 0C */	psq_lx f22, r10, r0, 0, qr0
/* 8031FEC8 00315C48  CA CA FF 60 */	lfd f22, -0xa0(r10)
/* 8031FECC 00315C4C  38 00 FF 58 */	li r0, -168
/* 8031FED0 00315C50  12 AA 00 0C */	psq_lx f21, r10, r0, 0, qr0
/* 8031FED4 00315C54  CA AA FF 50 */	lfd f21, -0xb0(r10)
/* 8031FED8 00315C58  38 00 FF 48 */	li r0, -184
/* 8031FEDC 00315C5C  12 8A 00 0C */	psq_lx f20, r10, r0, 0, qr0
/* 8031FEE0 00315C60  CA 8A FF 40 */	lfd f20, -0xc0(r10)
/* 8031FEE4 00315C64  39 6A FF 40 */	addi r11, r10, -192
/* 8031FEE8 00315C68  48 0D 14 75 */	bl _restgpr_23
/* 8031FEEC 00315C6C  80 0A 00 04 */	lwz r0, 4(r10)
/* 8031FEF0 00315C70  7C 08 03 A6 */	mtlr r0
/* 8031FEF4 00315C74  7D 41 53 78 */	mr r1, r10
/* 8031FEF8 00315C78  4E 80 00 20 */	blr 

