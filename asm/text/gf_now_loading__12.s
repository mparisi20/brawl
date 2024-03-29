.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfNowLoading$7setup1
gfNowLoading$7setup1:
/* 8003E05C 00033DDC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8003E060 00033DE0  7C 08 02 A6 */	mflr r0
/* 8003E064 00033DE4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8003E068 00033DE8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8003E06C 00033DEC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8003E070 00033DF0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8003E074 00033DF4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 8003E078 00033DF8  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8003E07C 00033DFC  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 8003E080 00033E00  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8003E084 00033E04  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 8003E088 00033E08  FF E0 08 90 */	fmr f31, f1
/* 8003E08C 00033E0C  C0 83 00 00 */	lfs f4, 0(r3)
/* 8003E090 00033E10  C0 64 00 00 */	lfs f3, 0(r4)
/* 8003E094 00033E14  C0 43 00 04 */	lfs f2, 4(r3)
/* 8003E098 00033E18  C0 04 00 04 */	lfs f0, 4(r4)
/* 8003E09C 00033E1C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8003E0A0 00033E20  C0 A3 00 08 */	lfs f5, 8(r3)
/* 8003E0A4 00033E24  EC 42 00 32 */	fmuls f2, f2, f0
/* 8003E0A8 00033E28  C0 84 00 08 */	lfs f4, 8(r4)
/* 8003E0AC 00033E2C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8003E0B0 00033E30  7C BF 2B 78 */	mr r31, r5
/* 8003E0B4 00033E34  EC 85 01 32 */	fmuls f4, f5, f4
/* 8003E0B8 00033E38  C0 02 84 04 */	lfs f0, lbl_805A1724-_SDA2_BASE_(r2)
/* 8003E0BC 00033E3C  EC 43 10 2A */	fadds f2, f3, f2
/* 8003E0C0 00033E40  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8003E0C4 00033E44  7C 9E 23 78 */	mr r30, r4
/* 8003E0C8 00033E48  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8003E0CC 00033E4C  7C 7D 1B 78 */	mr r29, r3
/* 8003E0D0 00033E50  EF C4 10 2A */	fadds f30, f4, f2
/* 8003E0D4 00033E54  FC 40 F2 10 */	fabs f2, f30
/* 8003E0D8 00033E58  FC 40 10 18 */	frsp f2, f2
/* 8003E0DC 00033E5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8003E0E0 00033E60  40 81 00 68 */	ble lbl_8003E148
/* 8003E0E4 00033E64  C0 02 83 F0 */	lfs f0, lbl_805A1710-_SDA2_BASE_(r2)
/* 8003E0E8 00033E68  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 8003E0EC 00033E6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8003E0F0 00033E70  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8003E0F4 00033E74  10 A4 00 58 */	ps_muls0 f5, f4, f1
/* 8003E0F8 00033E78  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 8003E0FC 00033E7C  E0 84 80 08 */	psq_l f4, 8(r4), 1, qr0
/* 8003E100 00033E80  10 42 00 18 */	ps_muls0 f2, f2, f0
/* 8003E104 00033E84  10 03 00 18 */	ps_muls0 f0, f3, f0
/* 8003E108 00033E88  F0 A1 00 38 */	psq_st f5, 56(r1), 0, qr0
/* 8003E10C 00033E8C  10 64 00 58 */	ps_muls0 f3, f4, f1
/* 8003E110 00033E90  10 22 28 2A */	ps_add f1, f2, f5
/* 8003E114 00033E94  F0 41 00 44 */	psq_st f2, 68(r1), 0, qr0
/* 8003E118 00033E98  10 40 18 2A */	ps_add f2, f0, f3
/* 8003E11C 00033E9C  F0 01 80 4C */	psq_st f0, 76(r1), 1, qr0
/* 8003E120 00033EA0  F0 21 00 50 */	psq_st f1, 80(r1), 0, qr0
/* 8003E124 00033EA4  F0 41 80 58 */	psq_st f2, 88(r1), 1, qr0
/* 8003E128 00033EA8  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8003E12C 00033EAC  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8003E130 00033EB0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8003E134 00033EB4  F0 61 80 40 */	psq_st f3, 64(r1), 1, qr0
/* 8003E138 00033EB8  D0 45 00 00 */	stfs f2, 0(r5)
/* 8003E13C 00033EBC  D0 25 00 04 */	stfs f1, 4(r5)
/* 8003E140 00033EC0  D0 05 00 08 */	stfs f0, 8(r5)
/* 8003E144 00033EC4  48 00 00 C4 */	b lbl_8003E208
lbl_8003E148:
/* 8003E148 00033EC8  FC 20 10 90 */	fmr f1, f2
/* 8003E14C 00033ECC  48 3C 29 E5 */	bl acos
/* 8003E150 00033ED0  C0 02 83 F0 */	lfs f0, lbl_805A1710-_SDA2_BASE_(r2)
/* 8003E154 00033ED4  FF A0 08 18 */	frsp f29, f1
/* 8003E158 00033ED8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8003E15C 00033EDC  EC 20 07 72 */	fmuls f1, f0, f29
/* 8003E160 00033EE0  48 3C 28 81 */	bl sin
/* 8003E164 00033EE4  FF 80 08 18 */	frsp f28, f1
/* 8003E168 00033EE8  EC 3F 07 72 */	fmuls f1, f31, f29
/* 8003E16C 00033EEC  48 3C 28 75 */	bl sin
/* 8003E170 00033EF0  C0 02 83 EC */	lfs f0, lbl_805A170C-_SDA2_BASE_(r2)
/* 8003E174 00033EF4  FC A0 08 18 */	frsp f5, f1
/* 8003E178 00033EF8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8003E17C 00033EFC  40 80 00 08 */	bge lbl_8003E184
/* 8003E180 00033F00  FF 80 E0 50 */	fneg f28, f28
lbl_8003E184:
/* 8003E184 00033F04  E0 1D 00 00 */	psq_l f0, 0(r29), 0, qr0
/* 8003E188 00033F08  FC 20 E8 90 */	fmr f1, f29
/* 8003E18C 00033F0C  E0 5D 80 08 */	psq_l f2, 8(r29), 1, qr0
/* 8003E190 00033F10  E0 7E 00 00 */	psq_l f3, 0(r30), 0, qr0
/* 8003E194 00033F14  10 00 07 18 */	ps_muls0 f0, f0, f28
/* 8003E198 00033F18  E0 9E 80 08 */	psq_l f4, 8(r30), 1, qr0
/* 8003E19C 00033F1C  10 42 07 18 */	ps_muls0 f2, f2, f28
/* 8003E1A0 00033F20  10 63 01 58 */	ps_muls0 f3, f3, f5
/* 8003E1A4 00033F24  10 84 01 58 */	ps_muls0 f4, f4, f5
/* 8003E1A8 00033F28  F0 01 00 14 */	psq_st f0, 20(r1), 0, qr0
/* 8003E1AC 00033F2C  10 00 18 2A */	ps_add f0, f0, f3
/* 8003E1B0 00033F30  F0 41 80 1C */	psq_st f2, 28(r1), 1, qr0
/* 8003E1B4 00033F34  10 42 20 2A */	ps_add f2, f2, f4
/* 8003E1B8 00033F38  F0 61 00 08 */	psq_st f3, 8(r1), 0, qr0
/* 8003E1BC 00033F3C  F0 81 80 10 */	psq_st f4, 16(r1), 1, qr0
/* 8003E1C0 00033F40  F0 01 00 20 */	psq_st f0, 32(r1), 0, qr0
/* 8003E1C4 00033F44  F0 41 80 28 */	psq_st f2, 40(r1), 1, qr0
/* 8003E1C8 00033F48  48 3C 28 19 */	bl sin
/* 8003E1CC 00033F4C  FC 60 08 18 */	frsp f3, f1
/* 8003E1D0 00033F50  C0 02 83 F0 */	lfs f0, lbl_805A1710-_SDA2_BASE_(r2)
/* 8003E1D4 00033F54  E0 21 00 20 */	psq_l f1, 32(r1), 0, qr0
/* 8003E1D8 00033F58  E0 41 80 28 */	psq_l f2, 40(r1), 1, qr0
/* 8003E1DC 00033F5C  EC 60 18 24 */	fdivs f3, f0, f3
/* 8003E1E0 00033F60  10 01 00 D8 */	ps_muls0 f0, f1, f3
/* 8003E1E4 00033F64  10 22 00 D8 */	ps_muls0 f1, f2, f3
/* 8003E1E8 00033F68  F0 01 00 2C */	psq_st f0, 44(r1), 0, qr0
/* 8003E1EC 00033F6C  F0 21 80 34 */	psq_st f1, 52(r1), 1, qr0
/* 8003E1F0 00033F70  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8003E1F4 00033F74  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8003E1F8 00033F78  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8003E1FC 00033F7C  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8003E200 00033F80  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8003E204 00033F84  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8003E208:
/* 8003E208 00033F88  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8003E20C 00033F8C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8003E210 00033F90  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 8003E214 00033F94  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8003E218 00033F98  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 8003E21C 00033F9C  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8003E220 00033FA0  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 8003E224 00033FA4  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8003E228 00033FA8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8003E22C 00033FAC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8003E230 00033FB0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8003E234 00033FB4  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8003E238 00033FB8  7C 08 03 A6 */	mtlr r0
/* 8003E23C 00033FBC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8003E240 00033FC0  4E 80 00 20 */	blr 

