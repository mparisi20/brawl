.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ef15EmitterFormDiscFPQ34nw4r2$7Emission
nw4r2ef15EmitterFormDiscFPQ34nw4r2$7Emission:
/* 80170C84 00166A04  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 80170C88 00166A08  7C 08 02 A6 */	mflr r0
/* 80170C8C 00166A0C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 80170C90 00166A10  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 80170C94 00166A14  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, qr0
/* 80170C98 00166A18  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 80170C9C 00166A1C  F3 C1 01 98 */	psq_st f30, 408(r1), 0, qr0
/* 80170CA0 00166A20  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 80170CA4 00166A24  F3 A1 01 88 */	psq_st f29, 392(r1), 0, qr0
/* 80170CA8 00166A28  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 80170CAC 00166A2C  F3 81 01 78 */	psq_st f28, 376(r1), 0, qr0
/* 80170CB0 00166A30  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 80170CB4 00166A34  F3 61 01 68 */	psq_st f27, 360(r1), 0, qr0
/* 80170CB8 00166A38  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 80170CBC 00166A3C  F3 41 01 58 */	psq_st f26, 344(r1), 0, qr0
/* 80170CC0 00166A40  DB 21 01 40 */	stfd f25, 0x140(r1)
/* 80170CC4 00166A44  F3 21 01 48 */	psq_st f25, 328(r1), 0, qr0
/* 80170CC8 00166A48  DB 01 01 30 */	stfd f24, 0x130(r1)
/* 80170CCC 00166A4C  F3 01 01 38 */	psq_st f24, 312(r1), 0, qr0
/* 80170CD0 00166A50  DA E1 01 20 */	stfd f23, 0x120(r1)
/* 80170CD4 00166A54  F2 E1 01 28 */	psq_st f23, 296(r1), 0, qr0
/* 80170CD8 00166A58  DA C1 01 10 */	stfd f22, 0x110(r1)
/* 80170CDC 00166A5C  F2 C1 01 18 */	psq_st f22, 280(r1), 0, qr0
/* 80170CE0 00166A60  DA A1 01 00 */	stfd f21, 0x100(r1)
/* 80170CE4 00166A64  F2 A1 01 08 */	psq_st f21, 264(r1), 0, qr0
/* 80170CE8 00166A68  DA 81 00 F0 */	stfd f20, 0xf0(r1)
/* 80170CEC 00166A6C  F2 81 00 F8 */	psq_st f20, 248(r1), 0, qr0
/* 80170CF0 00166A70  DA 61 00 E0 */	stfd f19, 0xe0(r1)
/* 80170CF4 00166A74  F2 61 00 E8 */	psq_st f19, 232(r1), 0, qr0
/* 80170CF8 00166A78  DA 41 00 D0 */	stfd f18, 0xd0(r1)
/* 80170CFC 00166A7C  F2 41 00 D8 */	psq_st f18, 216(r1), 0, qr0
/* 80170D00 00166A80  DA 21 00 C0 */	stfd f17, 0xc0(r1)
/* 80170D04 00166A84  F2 21 00 C8 */	psq_st f17, 200(r1), 0, qr0
/* 80170D08 00166A88  DA 01 00 B0 */	stfd f16, 0xb0(r1)
/* 80170D0C 00166A8C  F2 01 00 B8 */	psq_st f16, 184(r1), 0, qr0
/* 80170D10 00166A90  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80170D14 00166A94  48 28 05 ED */	bl _savegpr_19
/* 80170D18 00166A98  3C 00 43 30 */	lis r0, 0x4330
/* 80170D1C 00166A9C  FE 00 08 90 */	fmr f16, f1
/* 80170D20 00166AA0  2C 06 00 01 */	cmpwi r6, 1
/* 80170D24 00166AA4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80170D28 00166AA8  7C 74 1B 78 */	mr r20, r3
/* 80170D2C 00166AAC  7C 95 23 78 */	mr r21, r4
/* 80170D30 00166AB0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80170D34 00166AB4  7C B6 2B 78 */	mr r22, r5
/* 80170D38 00166AB8  7C D7 33 78 */	mr r23, r6
/* 80170D3C 00166ABC  7C FB 3B 78 */	mr r27, r7
/* 80170D40 00166AC0  7D 18 43 78 */	mr r24, r8
/* 80170D44 00166AC4  7D 39 4B 78 */	mr r25, r9
/* 80170D48 00166AC8  7D 5A 53 78 */	mr r26, r10
/* 80170D4C 00166ACC  41 80 03 C8 */	blt lbl_80171114
/* 80170D50 00166AD0  C3 08 00 00 */	lfs f24, 0(r8)
/* 80170D54 00166AD4  C0 02 9A E8 */	lfs f0, lbl_805A2E08-_SDA2_BASE_(r2)
/* 80170D58 00166AD8  FC 20 C2 10 */	fabs f1, f24
/* 80170D5C 00166ADC  FC 20 08 18 */	frsp f1, f1
/* 80170D60 00166AE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170D64 00166AE4  40 81 00 08 */	ble lbl_80170D6C
/* 80170D68 00166AE8  48 00 00 08 */	b lbl_80170D70
lbl_80170D6C:
/* 80170D6C 00166AEC  FF 00 00 90 */	fmr f24, f0
lbl_80170D70:
/* 80170D70 00166AF0  54 E0 01 8D */	rlwinm. r0, r7, 0, 6, 6
/* 80170D74 00166AF4  41 82 00 0C */	beq lbl_80170D80
/* 80170D78 00166AF8  FE 80 C0 90 */	fmr f20, f24
/* 80170D7C 00166AFC  48 00 00 24 */	b lbl_80170DA0
lbl_80170D80:
/* 80170D80 00166B00  C2 88 00 10 */	lfs f20, 0x10(r8)
/* 80170D84 00166B04  C0 02 9A E8 */	lfs f0, lbl_805A2E08-_SDA2_BASE_(r2)
/* 80170D88 00166B08  FC 20 A2 10 */	fabs f1, f20
/* 80170D8C 00166B0C  FC 20 08 18 */	frsp f1, f1
/* 80170D90 00166B10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170D94 00166B14  40 81 00 08 */	ble lbl_80170D9C
/* 80170D98 00166B18  48 00 00 08 */	b lbl_80170DA0
lbl_80170D9C:
/* 80170D9C 00166B1C  FE 80 00 90 */	fmr f20, f0
lbl_80170DA0:
/* 80170DA0 00166B20  C2 62 9A EC */	lfs f19, lbl_805A2E0C-_SDA2_BASE_(r2)
/* 80170DA4 00166B24  54 E0 03 5B */	rlwinm. r0, r7, 0, 0xd, 0xd
/* 80170DA8 00166B28  FE 40 98 90 */	fmr f18, f19
/* 80170DAC 00166B2C  41 82 00 0C */	beq lbl_80170DB8
/* 80170DB0 00166B30  C2 28 00 08 */	lfs f17, 8(r8)
/* 80170DB4 00166B34  48 00 00 4C */	b lbl_80170E00
lbl_80170DB8:
/* 80170DB8 00166B38  3C 60 00 03 */	lis r3, 0x000343FD@ha
/* 80170DBC 00166B3C  80 A4 00 EC */	lwz r5, 0xec(r4)
/* 80170DC0 00166B40  38 03 43 FD */	addi r0, r3, 0x000343FD@l
/* 80170DC4 00166B44  C8 82 9B 20 */	lfd f4, lbl_805A2E40-_SDA2_BASE_(r2)
/* 80170DC8 00166B48  7C 65 01 D6 */	mullw r3, r5, r0
/* 80170DCC 00166B4C  C0 42 9A F0 */	lfs f2, lbl_805A2E10-_SDA2_BASE_(r2)
/* 80170DD0 00166B50  C0 22 9A F8 */	lfs f1, lbl_805A2E18-_SDA2_BASE_(r2)
/* 80170DD4 00166B54  C0 02 9A F4 */	lfs f0, lbl_805A2E14-_SDA2_BASE_(r2)
/* 80170DD8 00166B58  3C 63 00 27 */	addis r3, r3, 0x27
/* 80170DDC 00166B5C  38 63 9E C3 */	addi r3, r3, -24893
/* 80170DE0 00166B60  54 60 84 3E */	srwi r0, r3, 0x10
/* 80170DE4 00166B64  90 64 00 EC */	stw r3, 0xec(r4)
/* 80170DE8 00166B68  90 01 00 64 */	stw r0, 0x64(r1)
/* 80170DEC 00166B6C  C8 61 00 60 */	lfd f3, 0x60(r1)
/* 80170DF0 00166B70  EC 63 20 28 */	fsubs f3, f3, f4
/* 80170DF4 00166B74  EC 43 10 24 */	fdivs f2, f3, f2
/* 80170DF8 00166B78  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80170DFC 00166B7C  EE 20 00 72 */	fmuls f17, f0, f1
lbl_80170E00:
/* 80170E00 00166B80  54 FC 03 9D */	rlwinm. r28, r7, 0, 0xe, 0xe
/* 80170E04 00166B84  41 82 00 88 */	beq lbl_80170E8C
/* 80170E08 00166B88  C0 28 00 0C */	lfs f1, 0xc(r8)
/* 80170E0C 00166B8C  C0 08 00 08 */	lfs f0, 8(r8)
/* 80170E10 00166B90  C8 42 9B 00 */	lfd f2, lbl_805A2E20-_SDA2_BASE_(r2)
/* 80170E14 00166B94  EC 21 00 28 */	fsubs f1, f1, f0
/* 80170E18 00166B98  48 28 FD 25 */	bl fmod
/* 80170E1C 00166B9C  FC 20 08 18 */	frsp f1, f1
/* 80170E20 00166BA0  C0 02 9B 08 */	lfs f0, lbl_805A2E28-_SDA2_BASE_(r2)
/* 80170E24 00166BA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170E28 00166BA8  41 80 00 10 */	blt lbl_80170E38
/* 80170E2C 00166BAC  C0 02 9B 0C */	lfs f0, lbl_805A2E2C-_SDA2_BASE_(r2)
/* 80170E30 00166BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80170E34 00166BB4  40 81 00 2C */	ble lbl_80170E60
lbl_80170E38:
/* 80170E38 00166BB8  A0 15 00 32 */	lhz r0, 0x32(r21)
/* 80170E3C 00166BBC  C0 78 00 0C */	lfs f3, 0xc(r24)
/* 80170E40 00166BC0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80170E44 00166BC4  C0 58 00 08 */	lfs f2, 8(r24)
/* 80170E48 00166BC8  C8 22 9B 20 */	lfd f1, lbl_805A2E40-_SDA2_BASE_(r2)
/* 80170E4C 00166BCC  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80170E50 00166BD0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80170E54 00166BD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80170E58 00166BD8  EE 42 00 24 */	fdivs f18, f2, f0
/* 80170E5C 00166BDC  48 00 00 30 */	b lbl_80170E8C
lbl_80170E60:
/* 80170E60 00166BE0  A0 75 00 32 */	lhz r3, 0x32(r21)
/* 80170E64 00166BE4  C0 58 00 0C */	lfs f2, 0xc(r24)
/* 80170E68 00166BE8  38 03 FF FF */	addi r0, r3, -1
/* 80170E6C 00166BEC  C0 18 00 08 */	lfs f0, 8(r24)
/* 80170E70 00166BF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80170E74 00166BF4  C8 22 9B 28 */	lfd f1, lbl_805A2E48-_SDA2_BASE_(r2)
/* 80170E78 00166BF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80170E7C 00166BFC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80170E80 00166C00  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80170E84 00166C04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80170E88 00166C08  EE 42 00 24 */	fdivs f18, f2, f0
lbl_80170E8C:
/* 80170E8C 00166C0C  3F E0 00 03 */	lis r31, 0x000343FD@ha
/* 80170E90 00166C10  C3 82 9B 14 */	lfs f28, lbl_805A2E34-_SDA2_BASE_(r2)
/* 80170E94 00166C14  57 7D 01 CE */	rlwinm r29, r27, 0, 7, 7
/* 80170E98 00166C18  CB 22 9B 20 */	lfd f25, lbl_805A2E40-_SDA2_BASE_(r2)
/* 80170E9C 00166C1C  C3 42 9A F0 */	lfs f26, lbl_805A2E10-_SDA2_BASE_(r2)
/* 80170EA0 00166C20  3B DF 43 FD */	addi r30, r31, 0x000343FD@l
/* 80170EA4 00166C24  C3 62 9B 10 */	lfs f27, lbl_805A2E30-_SDA2_BASE_(r2)
/* 80170EA8 00166C28  3B 60 00 00 */	li r27, 0
/* 80170EAC 00166C2C  C3 A2 9A EC */	lfs f29, lbl_805A2E0C-_SDA2_BASE_(r2)
/* 80170EB0 00166C30  CB C2 9B 28 */	lfd f30, lbl_805A2E48-_SDA2_BASE_(r2)
/* 80170EB4 00166C34  C3 E2 9B 18 */	lfs f31, lbl_805A2E38-_SDA2_BASE_(r2)
/* 80170EB8 00166C38  48 00 02 54 */	b lbl_8017110C
lbl_80170EBC:
/* 80170EBC 00166C3C  80 15 00 EC */	lwz r0, 0xec(r21)
/* 80170EC0 00166C40  2C 1D 00 00 */	cmpwi r29, 0
/* 80170EC4 00166C44  7C 60 F1 D6 */	mullw r3, r0, r30
/* 80170EC8 00166C48  3C 63 00 27 */	addis r3, r3, 0x27
/* 80170ECC 00166C4C  3A 63 9E C3 */	addi r19, r3, -24893
/* 80170ED0 00166C50  56 60 84 3E */	srwi r0, r19, 0x10
/* 80170ED4 00166C54  92 75 00 EC */	stw r19, 0xec(r21)
/* 80170ED8 00166C58  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80170EDC 00166C5C  C0 18 00 04 */	lfs f0, 4(r24)
/* 80170EE0 00166C60  C8 21 00 68 */	lfd f1, 0x68(r1)
/* 80170EE4 00166C64  EC 60 D8 24 */	fdivs f3, f0, f27
/* 80170EE8 00166C68  EC 01 C8 28 */	fsubs f0, f1, f25
/* 80170EEC 00166C6C  EC 40 D0 24 */	fdivs f2, f0, f26
/* 80170EF0 00166C70  41 82 00 20 */	beq lbl_80170F10
/* 80170EF4 00166C74  EC 3C 10 28 */	fsubs f1, f28, f2
/* 80170EF8 00166C78  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80170EFC 00166C7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80170F00 00166C80  EC 22 00 2A */	fadds f1, f2, f0
/* 80170F04 00166C84  48 28 FE 91 */	bl sqrt
/* 80170F08 00166C88  FE A0 08 18 */	frsp f21, f1
/* 80170F0C 00166C8C  48 00 00 10 */	b lbl_80170F1C
lbl_80170F10:
/* 80170F10 00166C90  EC 1C 10 28 */	fsubs f0, f28, f2
/* 80170F14 00166C94  EC 03 00 32 */	fmuls f0, f3, f0
/* 80170F18 00166C98  EE A2 00 2A */	fadds f21, f2, f0
lbl_80170F1C:
/* 80170F1C 00166C9C  2C 1C 00 00 */	cmpwi r28, 0
/* 80170F20 00166CA0  40 82 00 3C */	bne lbl_80170F5C
/* 80170F24 00166CA4  38 1F 43 FD */	addi r0, r31, 0x43fd
/* 80170F28 00166CA8  7C 73 01 D6 */	mullw r3, r19, r0
/* 80170F2C 00166CAC  3C 63 00 27 */	addis r3, r3, 0x27
/* 80170F30 00166CB0  38 63 9E C3 */	addi r3, r3, -24893
/* 80170F34 00166CB4  54 60 84 3E */	srwi r0, r3, 0x10
/* 80170F38 00166CB8  90 75 00 EC */	stw r3, 0xec(r21)
/* 80170F3C 00166CBC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80170F40 00166CC0  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 80170F44 00166CC4  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 80170F48 00166CC8  C0 18 00 08 */	lfs f0, 8(r24)
/* 80170F4C 00166CCC  EC 42 C8 28 */	fsubs f2, f2, f25
/* 80170F50 00166CD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80170F54 00166CD4  EC 22 D0 24 */	fdivs f1, f2, f26
/* 80170F58 00166CD8  EE 60 00 72 */	fmuls f19, f0, f1
lbl_80170F5C:
/* 80170F5C 00166CDC  EC 31 98 2A */	fadds f1, f17, f19
/* 80170F60 00166CE0  48 28 FA 81 */	bl sin
/* 80170F64 00166CE4  FE E0 08 18 */	frsp f23, f1
/* 80170F68 00166CE8  EC 31 98 2A */	fadds f1, f17, f19
/* 80170F6C 00166CEC  48 28 F5 6D */	bl cos
/* 80170F70 00166CF0  FE C0 08 18 */	frsp f22, f1
/* 80170F74 00166CF4  D2 E1 00 38 */	stfs f23, 0x38(r1)
/* 80170F78 00166CF8  EC 17 05 72 */	fmuls f0, f23, f21
/* 80170F7C 00166CFC  D3 A1 00 3C */	stfs f29, 0x3c(r1)
/* 80170F80 00166D00  FC 40 B0 50 */	fneg f2, f22
/* 80170F84 00166D04  80 81 00 38 */	lwz r4, 0x38(r1)
/* 80170F88 00166D08  EC 38 00 32 */	fmuls f1, f24, f0
/* 80170F8C 00166D0C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80170F90 00166D10  D3 A1 00 54 */	stfs f29, 0x54(r1)
/* 80170F94 00166D14  FC 00 10 18 */	frsp f0, f2
/* 80170F98 00166D18  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80170F9C 00166D1C  EC 00 05 72 */	fmuls f0, f0, f21
/* 80170FA0 00166D20  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80170FA4 00166D24  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80170FA8 00166D28  EC 14 00 32 */	fmuls f0, f20, f0
/* 80170FAC 00166D2C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80170FB0 00166D30  90 61 00 30 */	stw r3, 0x30(r1)
/* 80170FB4 00166D34  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80170FB8 00166D38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80170FBC 00166D3C  C0 15 00 78 */	lfs f0, 0x78(r21)
/* 80170FC0 00166D40  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 80170FC4 00166D44  40 82 00 14 */	bne lbl_80170FD8
/* 80170FC8 00166D48  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 80170FCC 00166D4C  D3 81 00 24 */	stfs f28, 0x24(r1)
/* 80170FD0 00166D50  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 80170FD4 00166D54  48 00 00 44 */	b lbl_80171018
lbl_80170FD8:
/* 80170FD8 00166D58  EE B5 00 32 */	fmuls f21, f21, f0
/* 80170FDC 00166D5C  FC 20 A8 90 */	fmr f1, f21
/* 80170FE0 00166D60  48 28 FA 01 */	bl sin
/* 80170FE4 00166D64  FC 00 08 18 */	frsp f0, f1
/* 80170FE8 00166D68  FC 20 A8 90 */	fmr f1, f21
/* 80170FEC 00166D6C  EC 17 00 32 */	fmuls f0, f23, f0
/* 80170FF0 00166D70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80170FF4 00166D74  48 28 F4 E5 */	bl cos
/* 80170FF8 00166D78  FC 00 08 18 */	frsp f0, f1
/* 80170FFC 00166D7C  FC 20 A8 90 */	fmr f1, f21
/* 80171000 00166D80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80171004 00166D84  48 28 F9 DD */	bl sin
/* 80171008 00166D88  FC 20 08 18 */	frsp f1, f1
/* 8017100C 00166D8C  FC 00 B0 50 */	fneg f0, f22
/* 80171010 00166D90  EC 00 00 72 */	fmuls f0, f0, f1
/* 80171014 00166D94  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80171018:
/* 80171018 00166D98  7E 83 A3 78 */	mr r3, r20
/* 8017101C 00166D9C  7E A5 AB 78 */	mr r5, r21
/* 80171020 00166DA0  38 81 00 44 */	addi r4, r1, 0x44
/* 80171024 00166DA4  38 C1 00 50 */	addi r6, r1, 0x50
/* 80171028 00166DA8  38 E1 00 20 */	addi r7, r1, 0x20
/* 8017102C 00166DAC  39 01 00 2C */	addi r8, r1, 0x2c
/* 80171030 00166DB0  39 21 00 38 */	addi r9, r1, 0x38
/* 80171034 00166DB4  4B FF EC 01 */	bl nw4r2ef11EmitterFormCFPQ34nw4r4mat$7CalcVelocity
/* 80171038 00166DB8  80 15 00 EC */	lwz r0, 0xec(r21)
/* 8017103C 00166DBC  FC 20 80 90 */	fmr f1, f16
/* 80171040 00166DC0  7E 83 A3 78 */	mr r3, r20
/* 80171044 00166DC4  7F 24 CB 78 */	mr r4, r25
/* 80171048 00166DC8  7C C0 F1 D6 */	mullw r6, r0, r30
/* 8017104C 00166DCC  7E A5 AB 78 */	mr r5, r21
/* 80171050 00166DD0  3C C6 00 27 */	addis r6, r6, 0x27
/* 80171054 00166DD4  38 C6 9E C3 */	addi r6, r6, -24893
/* 80171058 00166DD8  54 C0 84 3E */	srwi r0, r6, 0x10
/* 8017105C 00166DDC  90 D5 00 EC */	stw r6, 0xec(r21)
/* 80171060 00166DE0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80171064 00166DE4  81 41 00 44 */	lwz r10, 0x44(r1)
/* 80171068 00166DE8  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8017106C 00166DEC  81 21 00 48 */	lwz r9, 0x48(r1)
/* 80171070 00166DF0  EC 00 C8 28 */	fsubs f0, f0, f25
/* 80171074 00166DF4  81 01 00 4C */	lwz r8, 0x4c(r1)
/* 80171078 00166DF8  80 E1 00 50 */	lwz r7, 0x50(r1)
/* 8017107C 00166DFC  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 80171080 00166E00  EE A0 D0 24 */	fdivs f21, f0, f26
/* 80171084 00166E04  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80171088 00166E08  91 41 00 08 */	stw r10, 8(r1)
/* 8017108C 00166E0C  91 21 00 0C */	stw r9, 0xc(r1)
/* 80171090 00166E10  91 01 00 10 */	stw r8, 0x10(r1)
/* 80171094 00166E14  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80171098 00166E18  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8017109C 00166E1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801710A0 00166E20  4B FF F0 B1 */	bl nw4r2ef11EmitterFormFUsfPQ34nw4r2e$7CalcLife
/* 801710A4 00166E24  88 15 00 67 */	lbz r0, 0x67(r21)
/* 801710A8 00166E28  7C 64 1B 78 */	mr r4, r3
/* 801710AC 00166E2C  81 96 00 1C */	lwz r12, 0x1c(r22)
/* 801710B0 00166E30  7E C3 B3 78 */	mr r3, r22
/* 801710B4 00166E34  7C 00 07 74 */	extsb r0, r0
/* 801710B8 00166E38  7F 47 D3 78 */	mr r7, r26
/* 801710BC 00166E3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801710C0 00166E40  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801710C4 00166E44  90 01 00 64 */	stw r0, 0x64(r1)
/* 801710C8 00166E48  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 801710CC 00166E4C  38 A1 00 14 */	addi r5, r1, 0x14
/* 801710D0 00166E50  38 C1 00 08 */	addi r6, r1, 8
/* 801710D4 00166E54  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 801710D8 00166E58  39 15 00 FC */	addi r8, r21, 0xfc
/* 801710DC 00166E5C  81 35 00 F8 */	lwz r9, 0xf8(r21)
/* 801710E0 00166E60  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801710E4 00166E64  A1 55 00 E8 */	lhz r10, 0xe8(r21)
/* 801710E8 00166E68  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801710EC 00166E6C  EC 00 05 72 */	fmuls f0, f0, f21
/* 801710F0 00166E70  EC 3C 00 2A */	fadds f1, f28, f0
/* 801710F4 00166E74  7D 89 03 A6 */	mtctr r12
/* 801710F8 00166E78  4E 80 04 21 */	bctrl 
/* 801710FC 00166E7C  2C 1C 00 00 */	cmpwi r28, 0
/* 80171100 00166E80  41 82 00 08 */	beq lbl_80171108
/* 80171104 00166E84  EE 73 90 2A */	fadds f19, f19, f18
lbl_80171108:
/* 80171108 00166E88  3B 7B 00 01 */	addi r27, r27, 1
lbl_8017110C:
/* 8017110C 00166E8C  7C 1B B8 00 */	cmpw r27, r23
/* 80171110 00166E90  41 80 FD AC */	blt lbl_80170EBC
lbl_80171114:
/* 80171114 00166E94  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, qr0
/* 80171118 00166E98  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 8017111C 00166E9C  E3 C1 01 98 */	psq_l f30, 408(r1), 0, qr0
/* 80171120 00166EA0  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 80171124 00166EA4  E3 A1 01 88 */	psq_l f29, 392(r1), 0, qr0
/* 80171128 00166EA8  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 8017112C 00166EAC  E3 81 01 78 */	psq_l f28, 376(r1), 0, qr0
/* 80171130 00166EB0  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 80171134 00166EB4  E3 61 01 68 */	psq_l f27, 360(r1), 0, qr0
/* 80171138 00166EB8  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 8017113C 00166EBC  E3 41 01 58 */	psq_l f26, 344(r1), 0, qr0
/* 80171140 00166EC0  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 80171144 00166EC4  E3 21 01 48 */	psq_l f25, 328(r1), 0, qr0
/* 80171148 00166EC8  CB 21 01 40 */	lfd f25, 0x140(r1)
/* 8017114C 00166ECC  E3 01 01 38 */	psq_l f24, 312(r1), 0, qr0
/* 80171150 00166ED0  CB 01 01 30 */	lfd f24, 0x130(r1)
/* 80171154 00166ED4  E2 E1 01 28 */	psq_l f23, 296(r1), 0, qr0
/* 80171158 00166ED8  CA E1 01 20 */	lfd f23, 0x120(r1)
/* 8017115C 00166EDC  E2 C1 01 18 */	psq_l f22, 280(r1), 0, qr0
/* 80171160 00166EE0  CA C1 01 10 */	lfd f22, 0x110(r1)
/* 80171164 00166EE4  E2 A1 01 08 */	psq_l f21, 264(r1), 0, qr0
/* 80171168 00166EE8  CA A1 01 00 */	lfd f21, 0x100(r1)
/* 8017116C 00166EEC  E2 81 00 F8 */	psq_l f20, 248(r1), 0, qr0
/* 80171170 00166EF0  CA 81 00 F0 */	lfd f20, 0xf0(r1)
/* 80171174 00166EF4  E2 61 00 E8 */	psq_l f19, 232(r1), 0, qr0
/* 80171178 00166EF8  CA 61 00 E0 */	lfd f19, 0xe0(r1)
/* 8017117C 00166EFC  E2 41 00 D8 */	psq_l f18, 216(r1), 0, qr0
/* 80171180 00166F00  CA 41 00 D0 */	lfd f18, 0xd0(r1)
/* 80171184 00166F04  E2 21 00 C8 */	psq_l f17, 200(r1), 0, qr0
/* 80171188 00166F08  CA 21 00 C0 */	lfd f17, 0xc0(r1)
/* 8017118C 00166F0C  E2 01 00 B8 */	psq_l f16, 184(r1), 0, qr0
/* 80171190 00166F10  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80171194 00166F14  CA 01 00 B0 */	lfd f16, 0xb0(r1)
/* 80171198 00166F18  48 28 01 B5 */	bl _restgpr_19
/* 8017119C 00166F1C  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801711A0 00166F20  7C 08 03 A6 */	mtlr r0
/* 801711A4 00166F24  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 801711A8 00166F28  4E 80 00 20 */	blr 

