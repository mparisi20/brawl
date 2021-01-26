.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfNowLoading$7renderIcon
gfNowLoading$7renderIcon:
/* 8003ECA0 00034A20  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8003ECA4 00034A24  7C 08 02 A6 */	mflr r0
/* 8003ECA8 00034A28  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003ECAC 00034A2C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8003ECB0 00034A30  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8003ECB4 00034A34  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8003ECB8 00034A38  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8003ECBC 00034A3C  FF C0 10 90 */	fmr f30, f2
/* 8003ECC0 00034A40  FF E0 18 90 */	fmr f31, f3
/* 8003ECC4 00034A44  38 81 00 10 */	addi r4, r1, 0x10
/* 8003ECC8 00034A48  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8003ECCC 00034A4C  7C 7F 1B 78 */	mr r31, r3
/* 8003ECD0 00034A50  38 61 00 1C */	addi r3, r1, 0x1c
/* 8003ECD4 00034A54  48 00 11 D1 */	bl mtSinCosf
/* 8003ECD8 00034A58  FC 20 F0 90 */	fmr f1, f30
/* 8003ECDC 00034A5C  38 61 00 18 */	addi r3, r1, 0x18
/* 8003ECE0 00034A60  38 81 00 0C */	addi r4, r1, 0xc
/* 8003ECE4 00034A64  48 00 11 C1 */	bl mtSinCosf
/* 8003ECE8 00034A68  FC 20 F8 90 */	fmr f1, f31
/* 8003ECEC 00034A6C  38 61 00 14 */	addi r3, r1, 0x14
/* 8003ECF0 00034A70  38 81 00 08 */	addi r4, r1, 8
/* 8003ECF4 00034A74  48 00 11 B1 */	bl mtSinCosf
/* 8003ECF8 00034A78  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8003ECFC 00034A7C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8003ED00 00034A80  C0 02 84 08 */	lfs f0, lbl_805A1728-_SDA2_BASE_(r2)
/* 8003ED04 00034A84  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003ED08 00034A88  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8003ED0C 00034A8C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8003ED10 00034A90  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8003ED14 00034A94  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003ED18 00034A98  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8003ED1C 00034A9C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8003ED20 00034AA0  FC 20 08 50 */	fneg f1, f1
/* 8003ED24 00034AA4  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8003ED28 00034AA8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8003ED2C 00034AAC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8003ED30 00034AB0  C0 61 00 08 */	lfs f3, 8(r1)
/* 8003ED34 00034AB4  EC 82 00 72 */	fmuls f4, f2, f1
/* 8003ED38 00034AB8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8003ED3C 00034ABC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8003ED40 00034AC0  EC 63 01 32 */	fmuls f3, f3, f4
/* 8003ED44 00034AC4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003ED48 00034AC8  EC 23 08 28 */	fsubs f1, f3, f1
/* 8003ED4C 00034ACC  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8003ED50 00034AD0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8003ED54 00034AD4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8003ED58 00034AD8  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8003ED5C 00034ADC  EC 82 00 72 */	fmuls f4, f2, f1
/* 8003ED60 00034AE0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8003ED64 00034AE4  C0 21 00 08 */	lfs f1, 8(r1)
/* 8003ED68 00034AE8  EC 63 01 32 */	fmuls f3, f3, f4
/* 8003ED6C 00034AEC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003ED70 00034AF0  EC 23 08 2A */	fadds f1, f3, f1
/* 8003ED74 00034AF4  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 8003ED78 00034AF8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8003ED7C 00034AFC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8003ED80 00034B00  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003ED84 00034B04  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8003ED88 00034B08  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8003ED8C 00034B0C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8003ED90 00034B10  C0 61 00 08 */	lfs f3, 8(r1)
/* 8003ED94 00034B14  EC 82 00 72 */	fmuls f4, f2, f1
/* 8003ED98 00034B18  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8003ED9C 00034B1C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8003EDA0 00034B20  EC 63 01 32 */	fmuls f3, f3, f4
/* 8003EDA4 00034B24  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003EDA8 00034B28  EC 23 08 2A */	fadds f1, f3, f1
/* 8003EDAC 00034B2C  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8003EDB0 00034B30  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8003EDB4 00034B34  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8003EDB8 00034B38  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8003EDBC 00034B3C  EC 82 00 72 */	fmuls f4, f2, f1
/* 8003EDC0 00034B40  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8003EDC4 00034B44  C0 21 00 08 */	lfs f1, 8(r1)
/* 8003EDC8 00034B48  EC 63 01 32 */	fmuls f3, f3, f4
/* 8003EDCC 00034B4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003EDD0 00034B50  EC 23 08 28 */	fsubs f1, f3, f1
/* 8003EDD4 00034B54  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 8003EDD8 00034B58  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8003EDDC 00034B5C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8003EDE0 00034B60  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003EDE4 00034B64  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8003EDE8 00034B68  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8003EDEC 00034B6C  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8003EDF0 00034B70  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8003EDF4 00034B74  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8003EDF8 00034B78  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8003EDFC 00034B7C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8003EE00 00034B80  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8003EE04 00034B84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8003EE08 00034B88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8003EE0C 00034B8C  7C 08 03 A6 */	mtlr r0
/* 8003EE10 00034B90  38 21 00 50 */	addi r1, r1, 0x50
/* 8003EE14 00034B94  4E 80 00 20 */	blr 

