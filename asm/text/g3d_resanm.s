.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult:
/* 80193080 00188E00  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80193084 00188E04  C0 43 00 08 */	lfs f2, 8(r3)
/* 80193088 00188E08  38 05 FF FF */	addi r0, r5, -1
/* 8019308C 00188E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80193090 00188E10  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80193094 00188E14  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80193098 00188E18  7C 83 02 14 */	add r4, r3, r0
/* 8019309C 00188E1C  4C 40 13 82 */	cror 2, 0, 2
/* 801930A0 00188E20  40 82 00 0C */	bne lbl_801930AC
/* 801930A4 00188E24  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 801930A8 00188E28  48 00 00 FC */	b lbl_801931A4
lbl_801930AC:
/* 801930AC 00188E2C  C0 04 00 08 */	lfs f0, 8(r4)
/* 801930B0 00188E30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801930B4 00188E34  4C 40 13 82 */	cror 2, 0, 2
/* 801930B8 00188E38  40 82 00 0C */	bne lbl_801930C4
/* 801930BC 00188E3C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 801930C0 00188E40  48 00 00 E4 */	b lbl_801931A4
lbl_801930C4:
/* 801930C4 00188E44  B0 A1 00 08 */	sth r5, 8(r1)
/* 801930C8 00188E48  EC 61 10 28 */	fsubs f3, f1, f2
/* 801930CC 00188E4C  E0 41 B0 08 */	psq_l f2, 8(r1), 1, qr3
/* 801930D0 00188E50  C0 03 00 04 */	lfs f0, 4(r3)
/* 801930D4 00188E54  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801930D8 00188E58  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801930DC 00188E5C  F0 01 B0 0C */	psq_st f0, 12(r1), 1, qr3
/* 801930E0 00188E60  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801930E4 00188E64  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801930E8 00188E68  7C 63 02 14 */	add r3, r3, r0
/* 801930EC 00188E6C  C4 03 00 08 */	lfsu f0, 8(r3)
/* 801930F0 00188E70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801930F4 00188E74  40 80 00 14 */	bge lbl_80193108
lbl_801930F8:
/* 801930F8 00188E78  C4 03 FF F4 */	lfsu f0, -0xc(r3)
/* 801930FC 00188E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80193100 00188E80  41 80 FF F8 */	blt lbl_801930F8
/* 80193104 00188E84  48 00 00 18 */	b lbl_8019311C
lbl_80193108:
/* 80193108 00188E88  C4 03 00 0C */	lfsu f0, 0xc(r3)
/* 8019310C 00188E8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80193110 00188E90  4C 40 13 82 */	cror 2, 0, 2
/* 80193114 00188E94  41 82 FF F4 */	beq lbl_80193108
/* 80193118 00188E98  38 63 FF F4 */	addi r3, r3, -12
lbl_8019311C:
/* 8019311C 00188E9C  C0 63 00 00 */	lfs f3, 0(r3)
/* 80193120 00188EA0  FC 03 08 00 */	fcmpu cr0, f3, f1
/* 80193124 00188EA4  40 82 00 0C */	bne lbl_80193130
/* 80193128 00188EA8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8019312C 00188EAC  48 00 00 78 */	b lbl_801931A4
lbl_80193130:
/* 80193130 00188EB0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80193134 00188EB4  ED 41 18 28 */	fsubs f10, f1, f3
/* 80193138 00188EB8  C0 02 9E 94 */	lfs f0, lbl_805A31B4-_SDA2_BASE_(r2)
/* 8019313C 00188EBC  ED 62 18 28 */	fsubs f11, f2, f3
/* 80193140 00188EC0  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80193144 00188EC4  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80193148 00188EC8  C0 22 9E 98 */	lfs f1, lbl_805A31B8-_SDA2_BASE_(r2)
/* 8019314C 00188ECC  ED 00 58 30 */	fres f8, f11
/* 80193150 00188ED0  C0 82 9E 90 */	lfs f4, lbl_805A31B0-_SDA2_BASE_(r2)
/* 80193154 00188ED4  C0 E3 00 14 */	lfs f7, 0x14(r3)
/* 80193158 00188ED8  C0 C3 00 08 */	lfs f6, 8(r3)
/* 8019315C 00188EDC  11 28 40 2A */	ps_add f9, f8, f8
/* 80193160 00188EE0  11 08 02 32 */	ps_mul f8, f8, f8
/* 80193164 00188EE4  EC 65 10 28 */	fsubs f3, f5, f2
/* 80193168 00188EE8  11 0B 4A 3C */	ps_nmsub f8, f11, f8, f9
/* 8019316C 00188EEC  ED 2A 02 32 */	fmuls f9, f10, f8
/* 80193170 00188EF0  EC 40 02 72 */	fmuls f2, f0, f9
/* 80193174 00188EF4  ED 09 20 28 */	fsubs f8, f9, f4
/* 80193178 00188EF8  EC 09 01 F2 */	fmuls f0, f9, f7
/* 8019317C 00188EFC  EC 82 08 28 */	fsubs f4, f2, f1
/* 80193180 00188F00  EC 28 01 B2 */	fmuls f1, f8, f6
/* 80193184 00188F04  EC 4A 02 32 */	fmuls f2, f10, f8
/* 80193188 00188F08  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8019318C 00188F0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80193190 00188F10  EC 29 00 F2 */	fmuls f1, f9, f3
/* 80193194 00188F14  EC 02 00 32 */	fmuls f0, f2, f0
/* 80193198 00188F18  EC 29 00 72 */	fmuls f1, f9, f1
/* 8019319C 00188F1C  EC 25 08 2A */	fadds f1, f5, f1
/* 801931A0 00188F20  EC 21 00 2A */	fadds f1, f1, f0
lbl_801931A4:
/* 801931A4 00188F24  38 21 00 10 */	addi r1, r1, 0x10
/* 801931A8 00188F28  4E 80 00 20 */	blr 

.global nw4r3g3d6detailFPCQ34nw4r3g3d21Res$7GetResColorAnmResult
nw4r3g3d6detailFPCQ34nw4r3g3d21Res$7GetResColorAnmResult:
/* 801931AC 00188F2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801931B0 00188F30  7C 08 02 A6 */	mflr r0
/* 801931B4 00188F34  90 01 00 34 */	stw r0, 0x34(r1)
/* 801931B8 00188F38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801931BC 00188F3C  7C 7F 1B 78 */	mr r31, r3
/* 801931C0 00188F40  38 61 00 18 */	addi r3, r1, 0x18
/* 801931C4 00188F44  48 26 D7 21 */	bl modf
/* 801931C8 00188F48  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 801931CC 00188F4C  FC 20 08 18 */	frsp f1, f1
/* 801931D0 00188F50  C0 02 9E 9C */	lfs f0, lbl_805A31BC-_SDA2_BASE_(r2)
/* 801931D4 00188F54  FC 40 10 18 */	frsp f2, f2
/* 801931D8 00188F58  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801931DC 00188F5C  FC 00 10 1E */	fctiwz f0, f2
/* 801931E0 00188F60  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801931E4 00188F64  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801931E8 00188F68  40 82 00 10 */	bne lbl_801931F8
/* 801931EC 00188F6C  54 60 10 3A */	slwi r0, r3, 2
/* 801931F0 00188F70  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801931F4 00188F74  48 00 00 A4 */	b lbl_80193298
lbl_801931F8:
/* 801931F8 00188F78  38 03 00 01 */	addi r0, r3, 1
/* 801931FC 00188F7C  C0 02 9E A0 */	lfs f0, lbl_805A31C0-_SDA2_BASE_(r2)
/* 80193200 00188F80  54 63 10 3A */	slwi r3, r3, 2
/* 80193204 00188F84  54 00 10 3A */	slwi r0, r0, 2
/* 80193208 00188F88  7C 7F 18 2E */	lwzx r3, r31, r3
/* 8019320C 00188F8C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80193210 00188F90  EC 00 00 72 */	fmuls f0, f0, f1
/* 80193214 00188F94  90 61 00 14 */	stw r3, 0x14(r1)
/* 80193218 00188F98  90 01 00 10 */	stw r0, 0x10(r1)
/* 8019321C 00188F9C  F0 01 D0 08 */	psq_st f0, 8(r1), 1, qr5
/* 80193220 00188FA0  89 41 00 14 */	lbz r10, 0x14(r1)
/* 80193224 00188FA4  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80193228 00188FA8  A8 C1 00 08 */	lha r6, 8(r1)
/* 8019322C 00188FAC  7C 6A 00 50 */	subf r3, r10, r0
/* 80193230 00188FB0  88 E1 00 15 */	lbz r7, 0x15(r1)
/* 80193234 00188FB4  7C A6 19 D6 */	mullw r5, r6, r3
/* 80193238 00188FB8  88 01 00 11 */	lbz r0, 0x11(r1)
/* 8019323C 00188FBC  89 01 00 16 */	lbz r8, 0x16(r1)
/* 80193240 00188FC0  7C 87 00 50 */	subf r4, r7, r0
/* 80193244 00188FC4  88 61 00 12 */	lbz r3, 0x12(r1)
/* 80193248 00188FC8  89 21 00 17 */	lbz r9, 0x17(r1)
/* 8019324C 00188FCC  88 01 00 13 */	lbz r0, 0x13(r1)
/* 80193250 00188FD0  7C 68 18 50 */	subf r3, r8, r3
/* 80193254 00188FD4  7C A5 7E 70 */	srawi r5, r5, 0xf
/* 80193258 00188FD8  7C 86 21 D6 */	mullw r4, r6, r4
/* 8019325C 00188FDC  7C 09 00 50 */	subf r0, r9, r0
/* 80193260 00188FE0  7C AA 2A 14 */	add r5, r10, r5
/* 80193264 00188FE4  98 A1 00 0C */	stb r5, 0xc(r1)
/* 80193268 00188FE8  7C 84 7E 70 */	srawi r4, r4, 0xf
/* 8019326C 00188FEC  7C 66 19 D6 */	mullw r3, r6, r3
/* 80193270 00188FF0  7C 87 22 14 */	add r4, r7, r4
/* 80193274 00188FF4  98 81 00 0D */	stb r4, 0xd(r1)
/* 80193278 00188FF8  7C 63 7E 70 */	srawi r3, r3, 0xf
/* 8019327C 00188FFC  7C 06 01 D6 */	mullw r0, r6, r0
/* 80193280 00189000  7C 68 1A 14 */	add r3, r8, r3
/* 80193284 00189004  98 61 00 0E */	stb r3, 0xe(r1)
/* 80193288 00189008  7C 00 7E 70 */	srawi r0, r0, 0xf
/* 8019328C 0018900C  7C 09 02 14 */	add r0, r9, r0
/* 80193290 00189010  98 01 00 0F */	stb r0, 0xf(r1)
/* 80193294 00189014  80 61 00 0C */	lwz r3, 0xc(r1)
lbl_80193298:
/* 80193298 00189018  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019329C 0018901C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801932A0 00189020  7C 08 03 A6 */	mtlr r0
/* 801932A4 00189024  38 21 00 30 */	addi r1, r1, 0x30
/* 801932A8 00189028  4E 80 00 20 */	blr 

