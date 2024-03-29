.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r4mathFPQ34nw4r4math4$7VEC2Maximize
nw4r4mathFPQ34nw4r4math4$7VEC2Maximize:
/* 801626E8 00158468  C0 04 00 00 */	lfs f0, 0(r4)
/* 801626EC 0015846C  C0 25 00 00 */	lfs f1, 0(r5)
/* 801626F0 00158470  EC 40 08 28 */	fsubs f2, f0, f1
/* 801626F4 00158474  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 801626F8 00158478  C0 04 00 04 */	lfs f0, 4(r4)
/* 801626FC 0015847C  C0 25 00 04 */	lfs f1, 4(r5)
/* 80162700 00158480  EC 40 08 28 */	fsubs f2, f0, f1
/* 80162704 00158484  D0 63 00 00 */	stfs f3, 0(r3)
/* 80162708 00158488  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 8016270C 0015848C  D0 63 00 04 */	stfs f3, 4(r3)
/* 80162710 00158490  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math4$7VEC2Minimize
nw4r4mathFPQ34nw4r4math4$7VEC2Minimize:
/* 80162714 00158494  C0 04 00 00 */	lfs f0, 0(r4)
/* 80162718 00158498  C0 25 00 00 */	lfs f1, 0(r5)
/* 8016271C 0015849C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80162720 001584A0  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 80162724 001584A4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80162728 001584A8  C0 25 00 04 */	lfs f1, 4(r5)
/* 8016272C 001584AC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80162730 001584B0  D0 63 00 00 */	stfs f3, 0(r3)
/* 80162734 001584B4  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 80162738 001584B8  D0 63 00 04 */	stfs f3, 4(r3)
/* 8016273C 001584BC  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math4$7VEC2Normalize
nw4r4mathFPQ34nw4r4math4$7VEC2Normalize:
/* 80162740 001584C0  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 80162744 001584C4  C0 02 99 18 */	lfs f0, lbl_805A2C38-_SDA2_BASE_(r2)
/* 80162748 001584C8  10 62 00 B2 */	ps_mul f3, f2, f2
/* 8016274C 001584CC  C0 22 99 1C */	lfs f1, lbl_805A2C3C-_SDA2_BASE_(r2)
/* 80162750 001584D0  10 63 18 D4 */	ps_sum0 f3, f3, f3, f3
/* 80162754 001584D4  FC 80 18 34 */	frsqrte f4, f3
/* 80162758 001584D8  EC A4 01 32 */	fmuls f5, f4, f4
/* 8016275C 001584DC  EC 04 00 32 */	fmuls f0, f4, f0
/* 80162760 001584E0  EC A5 08 FC */	fnmsubs f5, f5, f3, f1
/* 80162764 001584E4  EC 85 00 32 */	fmuls f4, f5, f0
/* 80162768 001584E8  10 42 01 18 */	ps_muls0 f2, f2, f4
/* 8016276C 001584EC  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 80162770 001584F0  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX33Identity
nw4r4mathFPQ34nw4r4math5$7MTX33Identity:
/* 80162774 001584F4  C0 02 99 20 */	lfs f0, lbl_805A2C40-_SDA2_BASE_(r2)
/* 80162778 001584F8  C0 22 99 24 */	lfs f1, lbl_805A2C44-_SDA2_BASE_(r2)
/* 8016277C 001584FC  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 80162780 00158500  10 41 04 20 */	ps_merge00 f2, f1, f0
/* 80162784 00158504  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 80162788 00158508  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 8016278C 0015850C  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 80162790 00158510  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80162794 00158514  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX34ToMTX33
nw4r4mathFPQ34nw4r4math5$7MTX34ToMTX33:
/* 80162798 00158518  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 8016279C 0015851C  E0 24 00 08 */	psq_l f1, 8(r4), 0, qr0
/* 801627A0 00158520  E0 44 00 10 */	psq_l f2, 16(r4), 0, qr0
/* 801627A4 00158524  E0 64 00 18 */	psq_l f3, 24(r4), 0, qr0
/* 801627A8 00158528  E0 84 00 20 */	psq_l f4, 32(r4), 0, qr0
/* 801627AC 0015852C  E0 A4 00 28 */	psq_l f5, 40(r4), 0, qr0
/* 801627B0 00158530  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 801627B4 00158534  F0 23 80 08 */	psq_st f1, 8(r3), 1, qr0
/* 801627B8 00158538  F0 43 00 0C */	psq_st f2, 12(r3), 0, qr0
/* 801627BC 0015853C  F0 63 80 14 */	psq_st f3, 20(r3), 1, qr0
/* 801627C0 00158540  F0 83 00 18 */	psq_st f4, 24(r3), 0, qr0
/* 801627C4 00158544  F0 A3 80 20 */	psq_st f5, 32(r3), 1, qr0
/* 801627C8 00158548  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX34InvTranspose
nw4r4mathFPQ34nw4r4math5$7MTX34InvTranspose:
/* 801627CC 0015854C  E0 04 80 00 */	psq_l f0, 0(r4), 1, qr0
/* 801627D0 00158550  E0 24 00 04 */	psq_l f1, 4(r4), 0, qr0
/* 801627D4 00158554  E0 44 80 10 */	psq_l f2, 16(r4), 1, qr0
/* 801627D8 00158558  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 801627DC 0015855C  E0 64 00 14 */	psq_l f3, 20(r4), 0, qr0
/* 801627E0 00158560  E0 84 80 20 */	psq_l f4, 32(r4), 1, qr0
/* 801627E4 00158564  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 801627E8 00158568  E0 A4 00 24 */	psq_l f5, 36(r4), 0, qr0
/* 801627EC 0015856C  11 63 01 B2 */	ps_mul f11, f3, f6
/* 801627F0 00158570  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 801627F4 00158574  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 801627F8 00158578  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 801627FC 0015857C  11 81 02 32 */	ps_mul f12, f1, f8
/* 80162800 00158580  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 80162804 00158584  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 80162808 00158588  11 43 01 32 */	ps_mul f10, f3, f4
/* 8016280C 0015858C  11 20 01 72 */	ps_mul f9, f0, f5
/* 80162810 00158590  11 01 00 B2 */	ps_mul f8, f1, f2
/* 80162814 00158594  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 80162818 00158598  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 8016281C 0015859C  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 80162820 001585A0  10 E0 03 72 */	ps_mul f7, f0, f13
/* 80162824 001585A4  10 21 08 28 */	ps_sub f1, f1, f1
/* 80162828 001585A8  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 8016282C 001585AC  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 80162830 001585B0  10 07 08 40 */	ps_cmpo0 cr0, f7, f1
/* 80162834 001585B4  40 82 00 0C */	bne lbl_80162840
/* 80162838 001585B8  38 60 00 00 */	li r3, 0
/* 8016283C 001585BC  4E 80 00 20 */	blr 
lbl_80162840:
/* 80162840 001585C0  EC 00 38 30 */	fres f0, f7
/* 80162844 001585C4  10 C0 00 2A */	ps_add f6, f0, f0
/* 80162848 001585C8  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8016284C 001585CC  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 80162850 001585D0  10 C0 00 2A */	ps_add f6, f0, f0
/* 80162854 001585D4  10 A0 00 32 */	ps_mul f5, f0, f0
/* 80162858 001585D8  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8016285C 001585DC  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 80162860 001585E0  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 80162864 001585E4  F1 A3 00 00 */	psq_st f13, 0(r3), 0, qr0
/* 80162868 001585E8  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 8016286C 001585EC  F1 83 00 0C */	psq_st f12, 12(r3), 0, qr0
/* 80162870 001585F0  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 80162874 001585F4  F1 63 00 18 */	psq_st f11, 24(r3), 0, qr0
/* 80162878 001585F8  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 8016287C 001585FC  F1 43 80 08 */	psq_st f10, 8(r3), 1, qr0
/* 80162880 00158600  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 80162884 00158604  F1 23 80 14 */	psq_st f9, 20(r3), 1, qr0
/* 80162888 00158608  F1 03 80 20 */	psq_st f8, 32(r3), 1, qr0
/* 8016288C 0015860C  38 60 00 01 */	li r3, 1
/* 80162890 00158610  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX34Zero
nw4r4mathFPQ34nw4r4math5$7MTX34Zero:
/* 80162894 00158614  C0 02 99 20 */	lfs f0, lbl_805A2C40-_SDA2_BASE_(r2)
/* 80162898 00158618  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 8016289C 0015861C  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 801628A0 00158620  F0 03 00 10 */	psq_st f0, 16(r3), 0, qr0
/* 801628A4 00158624  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 801628A8 00158628  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 801628AC 0015862C  F0 03 00 28 */	psq_st f0, 40(r3), 0, qr0
/* 801628B0 00158630  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX34Scale
nw4r4mathFPQ34nw4r4math5$7MTX34Scale:
/* 801628B4 00158634  E0 05 00 00 */	psq_l f0, 0(r5), 0, qr0
/* 801628B8 00158638  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 801628BC 0015863C  E0 84 00 10 */	psq_l f4, 16(r4), 0, qr0
/* 801628C0 00158640  E0 A4 00 20 */	psq_l f5, 32(r4), 0, qr0
/* 801628C4 00158644  10 42 00 32 */	ps_mul f2, f2, f0
/* 801628C8 00158648  10 84 00 32 */	ps_mul f4, f4, f0
/* 801628CC 0015864C  E0 25 80 08 */	psq_l f1, 8(r5), 1, qr0
/* 801628D0 00158650  10 A5 00 32 */	ps_mul f5, f5, f0
/* 801628D4 00158654  E0 64 00 08 */	psq_l f3, 8(r4), 0, qr0
/* 801628D8 00158658  E0 04 00 18 */	psq_l f0, 24(r4), 0, qr0
/* 801628DC 0015865C  E0 C4 00 28 */	psq_l f6, 40(r4), 0, qr0
/* 801628E0 00158660  10 63 00 72 */	ps_mul f3, f3, f1
/* 801628E4 00158664  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 801628E8 00158668  10 00 00 72 */	ps_mul f0, f0, f1
/* 801628EC 0015866C  10 C6 00 72 */	ps_mul f6, f6, f1
/* 801628F0 00158670  F0 83 00 10 */	psq_st f4, 16(r3), 0, qr0
/* 801628F4 00158674  F0 63 00 08 */	psq_st f3, 8(r3), 0, qr0
/* 801628F8 00158678  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 801628FC 0015867C  F0 A3 00 20 */	psq_st f5, 32(r3), 0, qr0
/* 80162900 00158680  F0 C3 00 28 */	psq_st f6, 40(r3), 0, qr0
/* 80162904 00158684  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX34Trans
nw4r4mathFPQ34nw4r4math5$7MTX34Trans:
/* 80162908 00158688  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 8016290C 0015868C  E0 05 00 00 */	psq_l f0, 0(r5), 0, qr0
/* 80162910 00158690  E0 64 00 08 */	psq_l f3, 8(r4), 0, qr0
/* 80162914 00158694  E0 84 00 10 */	psq_l f4, 16(r4), 0, qr0
/* 80162918 00158698  11 02 00 32 */	ps_mul f8, f2, f0
/* 8016291C 0015869C  E0 25 80 08 */	psq_l f1, 8(r5), 1, qr0
/* 80162920 001586A0  E0 A4 00 18 */	psq_l f5, 24(r4), 0, qr0
/* 80162924 001586A4  11 23 40 7A */	ps_madd f9, f3, f1, f8
/* 80162928 001586A8  E0 C4 00 20 */	psq_l f6, 32(r4), 0, qr0
/* 8016292C 001586AC  11 04 00 32 */	ps_mul f8, f4, f0
/* 80162930 001586B0  E0 E4 00 28 */	psq_l f7, 40(r4), 0, qr0
/* 80162934 001586B4  F0 63 00 08 */	psq_st f3, 8(r3), 0, qr0
/* 80162938 001586B8  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 8016293C 001586BC  11 25 40 7A */	ps_madd f9, f5, f1, f8
/* 80162940 001586C0  F0 A3 00 18 */	psq_st f5, 24(r3), 0, qr0
/* 80162944 001586C4  11 06 00 32 */	ps_mul f8, f6, f0
/* 80162948 001586C8  F1 43 80 0C */	psq_st f10, 12(r3), 1, qr0
/* 8016294C 001586CC  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 80162950 001586D0  11 27 40 7A */	ps_madd f9, f7, f1, f8
/* 80162954 001586D4  F0 E3 00 28 */	psq_st f7, 40(r3), 0, qr0
/* 80162958 001586D8  F1 43 80 1C */	psq_st f10, 28(r3), 1, qr0
/* 8016295C 001586DC  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 80162960 001586E0  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 80162964 001586E4  F0 83 00 10 */	psq_st f4, 16(r3), 0, qr0
/* 80162968 001586E8  F0 C3 00 20 */	psq_st f6, 32(r3), 0, qr0
/* 8016296C 001586EC  F1 43 80 2C */	psq_st f10, 44(r3), 1, qr0
/* 80162970 001586F0  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX34RotAxisFIdx
nw4r4mathFPQ34nw4r4math5$7MTX34RotAxisFIdx:
/* 80162974 001586F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80162978 001586F8  7C 08 02 A6 */	mflr r0
/* 8016297C 001586FC  C0 02 99 28 */	lfs f0, lbl_805A2C48-_SDA2_BASE_(r2)
/* 80162980 00158700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80162984 00158704  EC 20 00 72 */	fmuls f1, f0, f1
/* 80162988 00158708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8016298C 0015870C  7C 7F 1B 78 */	mr r31, r3
/* 80162990 00158710  48 08 9E 29 */	bl PSMTXRotAxisRad
/* 80162994 00158714  7F E3 FB 78 */	mr r3, r31
/* 80162998 00158718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016299C 0015871C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801629A0 00158720  7C 08 03 A6 */	mtlr r0
/* 801629A4 00158724  38 21 00 10 */	addi r1, r1, 0x10
/* 801629A8 00158728  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX34RotXYZFIdx
nw4r4mathFPQ34nw4r4math5$7MTX34RotXYZFIdx:
/* 801629AC 0015872C  3C 80 80 41 */	lis r4, lbl_804097C8@ha
/* 801629B0 00158730  38 02 99 30 */	addi r0, r2, lbl_805A2C50-_SDA2_BASE_
/* 801629B4 00158734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801629B8 00158738  38 84 97 C8 */	addi r4, r4, lbl_804097C8@l
/* 801629BC 0015873C  10 00 00 0C */	psq_lx f0, r0, r0, 0, qr0
/* 801629C0 00158740  10 C1 14 20 */	ps_merge00 f6, f1, f2
/* 801629C4 00158744  10 00 04 20 */	ps_merge00 f0, f0, f0
/* 801629C8 00158748  10 80 32 10 */	ps_abs f4, f6
/* 801629CC 0015874C  10 20 00 50 */	ps_neg f1, f0
/* 801629D0 00158750  10 40 00 28 */	ps_sub f2, f0, f0
/* 801629D4 00158754  10 04 00 00 */	ps_cmpu0 cr0, f4, f0
/* 801629D8 00158758  40 81 00 10 */	ble lbl_801629E8
lbl_801629DC:
/* 801629DC 0015875C  10 84 09 14 */	ps_sum0 f4, f4, f4, f1
/* 801629E0 00158760  10 04 00 00 */	ps_cmpu0 cr0, f4, f0
/* 801629E4 00158764  41 81 FF F8 */	bgt lbl_801629DC
lbl_801629E8:
/* 801629E8 00158768  10 04 00 80 */	ps_cmpu1 cr0, f4, f0
/* 801629EC 0015876C  40 81 00 18 */	ble lbl_80162A04
/* 801629F0 00158770  10 84 24 A0 */	ps_merge10 f4, f4, f4
lbl_801629F4:
/* 801629F4 00158774  10 84 09 14 */	ps_sum0 f4, f4, f4, f1
/* 801629F8 00158778  10 04 00 00 */	ps_cmpu0 cr0, f4, f0
/* 801629FC 0015877C  41 81 FF F8 */	bgt lbl_801629F4
/* 80162A00 00158780  10 84 24 A0 */	ps_merge10 f4, f4, f4
lbl_80162A04:
/* 80162A04 00158784  F0 81 30 08 */	psq_st f4, 8(r1), 0, qr3
/* 80162A08 00158788  E0 E1 30 08 */	psq_l f7, 8(r1), 0, qr3
/* 80162A0C 0015878C  FC A0 1A 10 */	fabs f5, f3
/* 80162A10 00158790  80 01 00 08 */	lwz r0, 8(r1)
/* 80162A14 00158794  FC 05 00 00 */	fcmpu cr0, f5, f0
/* 80162A18 00158798  40 81 00 10 */	ble lbl_80162A28
lbl_80162A1C:
/* 80162A1C 0015879C  EC A5 00 28 */	fsubs f5, f5, f0
/* 80162A20 001587A0  FC 05 00 00 */	fcmpu cr0, f5, f0
/* 80162A24 001587A4  41 81 FF F8 */	bgt lbl_80162A1C
lbl_80162A28:
/* 80162A28 001587A8  F0 A1 B0 08 */	psq_st f5, 8(r1), 1, qr3
/* 80162A2C 001587AC  54 05 A5 36 */	rlwinm r5, r0, 0x14, 0x14, 0x1b
/* 80162A30 001587B0  7C A4 2A 14 */	add r5, r4, r5
/* 80162A34 001587B4  10 E4 38 28 */	ps_sub f7, f4, f7
/* 80162A38 001587B8  E0 85 00 00 */	psq_l f4, 0(r5), 0, qr0
/* 80162A3C 001587BC  54 06 25 36 */	rlwinm r6, r0, 4, 0x14, 0x1b
/* 80162A40 001587C0  E1 05 00 08 */	psq_l f8, 8(r5), 0, qr0
/* 80162A44 001587C4  10 06 10 00 */	ps_cmpu0 cr0, f6, f2
/* 80162A48 001587C8  7C C4 32 14 */	add r6, r4, r6
/* 80162A4C 001587CC  10 08 21 DC */	ps_madds0 f0, f8, f7, f4
/* 80162A50 001587D0  E0 86 00 00 */	psq_l f4, 0(r6), 0, qr0
/* 80162A54 001587D4  E1 06 00 08 */	psq_l f8, 8(r6), 0, qr0
/* 80162A58 001587D8  A0 01 00 08 */	lhz r0, 8(r1)
/* 80162A5C 001587DC  40 80 00 0C */	bge lbl_80162A68
/* 80162A60 001587E0  11 20 00 50 */	ps_neg f9, f0
/* 80162A64 001587E4  10 09 04 60 */	ps_merge01 f0, f9, f0
lbl_80162A68:
/* 80162A68 001587E8  10 28 21 DE */	ps_madds1 f1, f8, f7, f4
/* 80162A6C 001587EC  E0 E1 B0 08 */	psq_l f7, 8(r1), 1, qr3
/* 80162A70 001587F0  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 80162A74 001587F4  10 06 10 80 */	ps_cmpu1 cr0, f6, f2
/* 80162A78 001587F8  7C A4 02 14 */	add r5, r4, r0
/* 80162A7C 001587FC  EC E5 38 28 */	fsubs f7, f5, f7
/* 80162A80 00158800  E0 85 00 00 */	psq_l f4, 0(r5), 0, qr0
/* 80162A84 00158804  E1 05 00 08 */	psq_l f8, 8(r5), 0, qr0
/* 80162A88 00158808  40 80 00 0C */	bge lbl_80162A94
/* 80162A8C 0015880C  11 20 08 50 */	ps_neg f9, f1
/* 80162A90 00158810  10 29 0C 60 */	ps_merge01 f1, f9, f1
lbl_80162A94:
/* 80162A94 00158814  FC 03 10 00 */	fcmpu cr0, f3, f2
/* 80162A98 00158818  10 48 21 DC */	ps_madds0 f2, f8, f7, f4
/* 80162A9C 0015881C  40 80 00 0C */	bge lbl_80162AA8
/* 80162AA0 00158820  11 20 10 50 */	ps_neg f9, f2
/* 80162AA4 00158824  10 49 14 60 */	ps_merge01 f2, f9, f2
lbl_80162AA8:
/* 80162AA8 00158828  10 60 00 50 */	ps_neg f3, f0
/* 80162AAC 0015882C  10 A2 00 5A */	ps_muls1 f5, f2, f1
/* 80162AB0 00158830  10 E0 00 28 */	ps_sub f7, f0, f0
/* 80162AB4 00158834  10 63 04 A0 */	ps_merge10 f3, f3, f0
/* 80162AB8 00158838  10 C5 2C A0 */	ps_merge10 f6, f5, f5
/* 80162ABC 0015883C  10 80 00 98 */	ps_muls0 f4, f0, f2
/* 80162AC0 00158840  F0 E3 80 2C */	psq_st f7, 44(r3), 1, qr0
/* 80162AC4 00158844  11 03 00 98 */	ps_muls0 f8, f3, f2
/* 80162AC8 00158848  F0 C3 80 00 */	psq_st f6, 0(r3), 1, qr0
/* 80162ACC 0015884C  10 C0 00 9A */	ps_muls1 f6, f0, f2
/* 80162AD0 00158850  10 43 00 9A */	ps_muls1 f2, f3, f2
/* 80162AD4 00158854  10 C6 40 5C */	ps_madds0 f6, f6, f1, f8
/* 80162AD8 00158858  10 40 10 50 */	ps_neg f2, f2
/* 80162ADC 0015885C  F0 C3 00 04 */	psq_st f6, 4(r3), 0, qr0
/* 80162AE0 00158860  10 C7 2C 20 */	ps_merge00 f6, f7, f5
/* 80162AE4 00158864  F0 C3 00 0C */	psq_st f6, 12(r3), 0, qr0
/* 80162AE8 00158868  10 C4 10 5C */	ps_madds0 f6, f4, f1, f2
/* 80162AEC 0015886C  F0 C3 00 14 */	psq_st f6, 20(r3), 0, qr0
/* 80162AF0 00158870  10 C0 08 50 */	ps_neg f6, f1
/* 80162AF4 00158874  10 C7 34 20 */	ps_merge00 f6, f7, f6
/* 80162AF8 00158878  F0 C3 00 1C */	psq_st f6, 28(r3), 0, qr0
/* 80162AFC 0015887C  10 C0 00 5A */	ps_muls1 f6, f0, f1
/* 80162B00 00158880  F0 C3 00 24 */	psq_st f6, 36(r3), 0, qr0
/* 80162B04 00158884  38 21 00 10 */	addi r1, r1, 0x10
/* 80162B08 00158888  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX33ToMTX34
nw4r4mathFPQ34nw4r4math5$7MTX33ToMTX34:
/* 80162B0C 0015888C  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 80162B10 00158890  E0 24 00 0C */	psq_l f1, 12(r4), 0, qr0
/* 80162B14 00158894  E0 44 00 18 */	psq_l f2, 24(r4), 0, qr0
/* 80162B18 00158898  C0 64 00 08 */	lfs f3, 8(r4)
/* 80162B1C 0015889C  C0 84 00 14 */	lfs f4, 0x14(r4)
/* 80162B20 001588A0  C0 A4 00 20 */	lfs f5, 0x20(r4)
/* 80162B24 001588A4  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 80162B28 001588A8  F0 23 00 10 */	psq_st f1, 16(r3), 0, qr0
/* 80162B2C 001588AC  F0 43 00 20 */	psq_st f2, 32(r3), 0, qr0
/* 80162B30 001588B0  D0 63 00 08 */	stfs f3, 8(r3)
/* 80162B34 001588B4  D0 83 00 18 */	stfs f4, 0x18(r3)
/* 80162B38 001588B8  D0 A3 00 28 */	stfs f5, 0x28(r3)
/* 80162B3C 001588BC  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math4$7VEC3TransformNormal
nw4r4mathFPQ34nw4r4math4$7VEC3TransformNormal:
/* 80162B40 001588C0  C0 64 00 00 */	lfs f3, 0(r4)
/* 80162B44 001588C4  C0 45 00 00 */	lfs f2, 0(r5)
/* 80162B48 001588C8  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80162B4C 001588CC  EC E3 00 B2 */	fmuls f7, f3, f2
/* 80162B50 001588D0  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80162B54 001588D4  EC 81 00 B2 */	fmuls f4, f1, f2
/* 80162B58 001588D8  C0 64 00 04 */	lfs f3, 4(r4)
/* 80162B5C 001588DC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80162B60 001588E0  C0 A5 00 04 */	lfs f5, 4(r5)
/* 80162B64 001588E4  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80162B68 001588E8  EC C3 01 72 */	fmuls f6, f3, f5
/* 80162B6C 001588EC  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 80162B70 001588F0  EC 00 01 72 */	fmuls f0, f0, f5
/* 80162B74 001588F4  C1 04 00 08 */	lfs f8, 8(r4)
/* 80162B78 001588F8  EC 62 01 72 */	fmuls f3, f2, f5
/* 80162B7C 001588FC  C1 25 00 08 */	lfs f9, 8(r5)
/* 80162B80 00158900  C0 A4 00 18 */	lfs f5, 0x18(r4)
/* 80162B84 00158904  EC C7 30 2A */	fadds f6, f7, f6
/* 80162B88 00158908  C0 44 00 28 */	lfs f2, 0x28(r4)
/* 80162B8C 0015890C  ED 08 02 72 */	fmuls f8, f8, f9
/* 80162B90 00158910  EC 64 18 2A */	fadds f3, f4, f3
/* 80162B94 00158914  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80162B98 00158918  EC A5 02 72 */	fmuls f5, f5, f9
/* 80162B9C 0015891C  EC 88 30 2A */	fadds f4, f8, f6
/* 80162BA0 00158920  EC 42 02 72 */	fmuls f2, f2, f9
/* 80162BA4 00158924  EC 65 18 2A */	fadds f3, f5, f3
/* 80162BA8 00158928  EC 01 00 2A */	fadds f0, f1, f0
/* 80162BAC 0015892C  D0 81 00 08 */	stfs f4, 8(r1)
/* 80162BB0 00158930  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80162BB4 00158934  EC 02 00 2A */	fadds f0, f2, f0
/* 80162BB8 00158938  D0 83 00 00 */	stfs f4, 0(r3)
/* 80162BBC 0015893C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80162BC0 00158940  D0 63 00 04 */	stfs f3, 4(r3)
/* 80162BC4 00158944  D0 03 00 08 */	stfs f0, 8(r3)
/* 80162BC8 00158948  38 21 00 20 */	addi r1, r1, 0x20
/* 80162BCC 0015894C  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX44Identity
nw4r4mathFPQ34nw4r4math5$7MTX44Identity:
/* 80162BD0 00158950  C0 02 99 20 */	lfs f0, lbl_805A2C40-_SDA2_BASE_(r2)
/* 80162BD4 00158954  C0 22 99 24 */	lfs f1, lbl_805A2C44-_SDA2_BASE_(r2)
/* 80162BD8 00158958  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 80162BDC 0015895C  10 40 0C 60 */	ps_merge01 f2, f0, f1
/* 80162BE0 00158960  10 21 04 A0 */	ps_merge10 f1, f1, f0
/* 80162BE4 00158964  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 80162BE8 00158968  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 80162BEC 0015896C  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 80162BF0 00158970  F0 23 00 00 */	psq_st f1, 0(r3), 0, qr0
/* 80162BF4 00158974  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 80162BF8 00158978  F0 03 00 30 */	psq_st f0, 48(r3), 0, qr0
/* 80162BFC 0015897C  F0 43 00 38 */	psq_st f2, 56(r3), 0, qr0
/* 80162C00 00158980  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX44Copy
nw4r4mathFPQ34nw4r4math5$7MTX44Copy:
/* 80162C04 00158984  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 80162C08 00158988  E0 24 00 08 */	psq_l f1, 8(r4), 0, qr0
/* 80162C0C 0015898C  E0 44 00 10 */	psq_l f2, 16(r4), 0, qr0
/* 80162C10 00158990  E0 64 00 18 */	psq_l f3, 24(r4), 0, qr0
/* 80162C14 00158994  E0 84 00 20 */	psq_l f4, 32(r4), 0, qr0
/* 80162C18 00158998  E0 A4 00 28 */	psq_l f5, 40(r4), 0, qr0
/* 80162C1C 0015899C  E0 C4 00 30 */	psq_l f6, 48(r4), 0, qr0
/* 80162C20 001589A0  E0 E4 00 38 */	psq_l f7, 56(r4), 0, qr0
/* 80162C24 001589A4  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 80162C28 001589A8  F0 23 00 08 */	psq_st f1, 8(r3), 0, qr0
/* 80162C2C 001589AC  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 80162C30 001589B0  F0 63 00 18 */	psq_st f3, 24(r3), 0, qr0
/* 80162C34 001589B4  F0 83 00 20 */	psq_st f4, 32(r3), 0, qr0
/* 80162C38 001589B8  F0 A3 00 28 */	psq_st f5, 40(r3), 0, qr0
/* 80162C3C 001589BC  F0 C3 00 30 */	psq_st f6, 48(r3), 0, qr0
/* 80162C40 001589C0  F0 E3 00 38 */	psq_st f7, 56(r3), 0, qr0
/* 80162C44 001589C4  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math4$7VEC3TransformCoord
nw4r4mathFPQ34nw4r4math4$7VEC3TransformCoord:
/* 80162C48 001589C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80162C4C 001589CC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80162C50 001589D0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80162C54 001589D4  C1 85 00 00 */	lfs f12, 0(r5)
/* 80162C58 001589D8  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80162C5C 001589DC  C1 25 00 04 */	lfs f9, 4(r5)
/* 80162C60 001589E0  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 80162C64 001589E4  EC 40 03 32 */	fmuls f2, f0, f12
/* 80162C68 001589E8  C0 05 00 08 */	lfs f0, 8(r5)
/* 80162C6C 001589EC  EC 21 02 72 */	fmuls f1, f1, f9
/* 80162C70 001589F0  C0 64 00 38 */	lfs f3, 0x38(r4)
/* 80162C74 001589F4  C0 A4 00 00 */	lfs f5, 0(r4)
/* 80162C78 001589F8  EC 63 00 32 */	fmuls f3, f3, f0
/* 80162C7C 001589FC  C0 84 00 04 */	lfs f4, 4(r4)
/* 80162C80 00158A00  EC 22 08 2A */	fadds f1, f2, f1
/* 80162C84 00158A04  C0 44 00 3C */	lfs f2, 0x3c(r4)
/* 80162C88 00158A08  ED 65 03 32 */	fmuls f11, f5, f12
/* 80162C8C 00158A0C  ED 44 02 72 */	fmuls f10, f4, f9
/* 80162C90 00158A10  EC 63 08 2A */	fadds f3, f3, f1
/* 80162C94 00158A14  C0 C4 00 10 */	lfs f6, 0x10(r4)
/* 80162C98 00158A18  C0 22 99 24 */	lfs f1, lbl_805A2C44-_SDA2_BASE_(r2)
/* 80162C9C 00158A1C  C1 04 00 18 */	lfs f8, 0x18(r4)
/* 80162CA0 00158A20  EC E6 03 32 */	fmuls f7, f6, f12
/* 80162CA4 00158A24  EF E2 18 2A */	fadds f31, f2, f3
/* 80162CA8 00158A28  C0 A4 00 14 */	lfs f5, 0x14(r4)
/* 80162CAC 00158A2C  ED 4B 50 2A */	fadds f10, f11, f10
/* 80162CB0 00158A30  C0 84 00 20 */	lfs f4, 0x20(r4)
/* 80162CB4 00158A34  ED 08 00 32 */	fmuls f8, f8, f0
/* 80162CB8 00158A38  EF E1 F8 24 */	fdivs f31, f1, f31
/* 80162CBC 00158A3C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 80162CC0 00158A40  C1 A4 00 08 */	lfs f13, 8(r4)
/* 80162CC4 00158A44  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80162CC8 00158A48  EC C5 02 72 */	fmuls f6, f5, f9
/* 80162CCC 00158A4C  C0 A4 00 1C */	lfs f5, 0x1c(r4)
/* 80162CD0 00158A50  EC 64 03 32 */	fmuls f3, f4, f12
/* 80162CD4 00158A54  C0 84 00 28 */	lfs f4, 0x28(r4)
/* 80162CD8 00158A58  EC 42 02 72 */	fmuls f2, f2, f9
/* 80162CDC 00158A5C  C1 24 00 0C */	lfs f9, 0xc(r4)
/* 80162CE0 00158A60  ED 8D 00 32 */	fmuls f12, f13, f0
/* 80162CE4 00158A64  EC C7 30 2A */	fadds f6, f7, f6
/* 80162CE8 00158A68  EC 84 00 32 */	fmuls f4, f4, f0
/* 80162CEC 00158A6C  EC 03 10 2A */	fadds f0, f3, f2
/* 80162CF0 00158A70  EC EC 50 2A */	fadds f7, f12, f10
/* 80162CF4 00158A74  EC 68 30 2A */	fadds f3, f8, f6
/* 80162CF8 00158A78  EC 44 00 2A */	fadds f2, f4, f0
/* 80162CFC 00158A7C  EC E9 38 2A */	fadds f7, f9, f7
/* 80162D00 00158A80  EC 65 18 2A */	fadds f3, f5, f3
/* 80162D04 00158A84  EC 41 10 2A */	fadds f2, f1, f2
/* 80162D08 00158A88  EC 1F 01 F2 */	fmuls f0, f31, f7
/* 80162D0C 00158A8C  D0 E1 00 08 */	stfs f7, 8(r1)
/* 80162D10 00158A90  EC 3F 00 F2 */	fmuls f1, f31, f3
/* 80162D14 00158A94  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80162D18 00158A98  D0 03 00 00 */	stfs f0, 0(r3)
/* 80162D1C 00158A9C  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 80162D20 00158AA0  D0 23 00 04 */	stfs f1, 4(r3)
/* 80162D24 00158AA4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80162D28 00158AA8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80162D2C 00158AAC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80162D30 00158AB0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80162D34 00158AB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80162D38 00158AB8  4E 80 00 20 */	blr 

