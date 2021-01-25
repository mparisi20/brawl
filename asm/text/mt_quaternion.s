.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global Quat$7set
Quat$7set:
/* 8003F8FC 0003567C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003F900 00035680  7C 08 02 A6 */	mflr r0
/* 8003F904 00035684  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003F908 00035688  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8003F90C 0003568C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8003F910 00035690  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8003F914 00035694  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8003F918 00035698  FF C0 08 90 */	fmr f30, f1
/* 8003F91C 0003569C  C0 02 84 20 */	lfs f0, lbl_805A1740-_SDA2_BASE_(r2)
/* 8003F920 000356A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003F924 000356A4  7C 9F 23 78 */	mr r31, r4
/* 8003F928 000356A8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8003F92C 000356AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003F930 000356B0  7C 7E 1B 78 */	mr r30, r3
/* 8003F934 000356B4  48 3C 10 AD */	bl sin
/* 8003F938 000356B8  C0 02 84 20 */	lfs f0, lbl_805A1740-_SDA2_BASE_(r2)
/* 8003F93C 000356BC  FF E0 08 18 */	frsp f31, f1
/* 8003F940 000356C0  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8003F944 000356C4  48 3C 0B 95 */	bl cos
/* 8003F948 000356C8  FF C0 08 18 */	frsp f30, f1
/* 8003F94C 000356CC  7F E4 FB 78 */	mr r4, r31
/* 8003F950 000356D0  38 61 00 08 */	addi r3, r1, 8
/* 8003F954 000356D4  4B FF E5 8D */	bl Vec3f$7normalize_790
/* 8003F958 000356D8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8003F95C 000356DC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8003F960 000356E0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8003F964 000356E4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8003F968 000356E8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8003F96C 000356EC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8003F970 000356F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8003F974 000356F4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8003F978 000356F8  D3 DE 00 0C */	stfs f30, 0xc(r30)
/* 8003F97C 000356FC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8003F980 00035700  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8003F984 00035704  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8003F988 00035708  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8003F98C 0003570C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8003F990 00035710  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003F994 00035714  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003F998 00035718  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003F99C 0003571C  7C 08 03 A6 */	mtlr r0
/* 8003F9A0 00035720  38 21 00 40 */	addi r1, r1, 0x40
/* 8003F9A4 00035724  4E 80 00 20 */	blr 

.global Quat$7mul
Quat$7mul:
/* 8003F9A8 00035728  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8003F9AC 0003572C  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 8003F9B0 00035730  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 8003F9B4 00035734  E0 A4 00 08 */	psq_l f5, 8(r4), 0, qr0
/* 8003F9B8 00035738  11 64 00 9A */	ps_muls1 f11, f4, f2
/* 8003F9BC 0003573C  10 C4 00 DA */	ps_muls1 f6, f4, f3
/* 8003F9C0 00035740  10 E5 00 DA */	ps_muls1 f7, f5, f3
/* 8003F9C4 00035744  11 45 00 9A */	ps_muls1 f10, f5, f2
/* 8003F9C8 00035748  11 05 00 98 */	ps_muls0 f8, f5, f2
/* 8003F9CC 0003574C  11 84 00 D8 */	ps_muls0 f12, f4, f3
/* 8003F9D0 00035750  11 24 00 98 */	ps_muls0 f9, f4, f2
/* 8003F9D4 00035754  11 A5 00 D8 */	ps_muls0 f13, f5, f3
/* 8003F9D8 00035758  11 46 50 2A */	ps_add f10, f6, f10
/* 8003F9DC 0003575C  11 67 58 28 */	ps_sub f11, f7, f11
/* 8003F9E0 00035760  11 88 60 28 */	ps_sub f12, f8, f12
/* 8003F9E4 00035764  10 8A 54 A0 */	ps_merge10 f4, f10, f10
/* 8003F9E8 00035768  11 A9 68 2A */	ps_add f13, f9, f13
/* 8003F9EC 0003576C  10 AB 5C A0 */	ps_merge10 f5, f11, f11
/* 8003F9F0 00035770  10 4A 62 94 */	ps_sum0 f2, f10, f10, f12
/* 8003F9F4 00035774  10 6B 6A D4 */	ps_sum0 f3, f11, f11, f13
/* 8003F9F8 00035778  10 84 60 28 */	ps_sub f4, f4, f12
/* 8003F9FC 0003577C  10 A5 68 28 */	ps_sub f5, f5, f13
/* 8003FA00 00035780  F0 45 80 00 */	psq_st f2, 0(r5), 1, qr0
/* 8003FA04 00035784  F0 65 80 08 */	psq_st f3, 8(r5), 1, qr0
/* 8003FA08 00035788  F0 85 80 04 */	psq_st f4, 4(r5), 1, qr0
/* 8003FA0C 0003578C  F0 A5 80 0C */	psq_st f5, 12(r5), 1, qr0
/* 8003FA10 00035790  4E 80 00 20 */	blr 

.global Quat$7rot
Quat$7rot:
/* 8003FA14 00035794  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003FA18 00035798  7C 08 02 A6 */	mflr r0
/* 8003FA1C 0003579C  C0 43 00 00 */	lfs f2, 0(r3)
/* 8003FA20 000357A0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8003FA24 000357A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003FA28 000357A8  FC 80 10 50 */	fneg f4, f2
/* 8003FA2C 000357AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8003FA30 000357B0  FC 60 08 50 */	fneg f3, f1
/* 8003FA34 000357B4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8003FA38 000357B8  7C BF 2B 78 */	mr r31, r5
/* 8003FA3C 000357BC  FC 40 00 50 */	fneg f2, f0
/* 8003FA40 000357C0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8003FA44 000357C4  38 A1 00 08 */	addi r5, r1, 8
/* 8003FA48 000357C8  C0 E4 00 08 */	lfs f7, 8(r4)
/* 8003FA4C 000357CC  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8003FA50 000357D0  C0 A4 00 00 */	lfs f5, 0(r4)
/* 8003FA54 000357D4  38 81 00 18 */	addi r4, r1, 0x18
/* 8003FA58 000357D8  C0 02 84 24 */	lfs f0, lbl_805A1744-_SDA2_BASE_(r2)
/* 8003FA5C 000357DC  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8003FA60 000357E0  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8003FA64 000357E4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8003FA68 000357E8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8003FA6C 000357EC  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8003FA70 000357F0  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 8003FA74 000357F4  D0 E1 00 20 */	stfs f7, 0x20(r1)
/* 8003FA78 000357F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8003FA7C 000357FC  4B FF FF 2D */	bl Quat$7mul
/* 8003FA80 00035800  38 61 00 08 */	addi r3, r1, 8
/* 8003FA84 00035804  38 81 00 28 */	addi r4, r1, 0x28
/* 8003FA88 00035808  7C 65 1B 78 */	mr r5, r3
/* 8003FA8C 0003580C  4B FF FF 1D */	bl Quat$7mul
/* 8003FA90 00035810  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8003FA94 00035814  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8003FA98 00035818  C0 01 00 08 */	lfs f0, 8(r1)
/* 8003FA9C 0003581C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8003FAA0 00035820  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8003FAA4 00035824  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8003FAA8 00035828  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8003FAAC 0003582C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003FAB0 00035830  7C 08 03 A6 */	mtlr r0
/* 8003FAB4 00035834  38 21 00 40 */	addi r1, r1, 0x40
/* 8003FAB8 00035838  4E 80 00 20 */	blr 

