.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __ieee754_rem_pio2
__ieee754_rem_pio2:
/* 803FE260 003F3FE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803FE264 003F3FE4  7C 08 02 A6 */	mflr r0
/* 803FE268 003F3FE8  3C 80 3F E9 */	lis r4, 0x3FE921FB@ha
/* 803FE26C 003F3FEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 803FE270 003F3FF0  38 04 21 FB */	addi r0, r4, 0x3FE921FB@l
/* 803FE274 003F3FF4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803FE278 003F3FF8  D8 21 00 08 */	stfd f1, 8(r1)
/* 803FE27C 003F3FFC  83 E1 00 08 */	lwz r31, 8(r1)
/* 803FE280 003F4000  93 C1 00 58 */	stw r30, 0x58(r1)
/* 803FE284 003F4004  7C 7E 1B 78 */	mr r30, r3
/* 803FE288 003F4008  57 E6 00 7E */	clrlwi r6, r31, 1
/* 803FE28C 003F400C  7C 06 00 00 */	cmpw r6, r0
/* 803FE290 003F4010  41 81 00 18 */	bgt lbl_803FE2A8
/* 803FE294 003F4014  C8 02 BC 08 */	lfd f0, lbl_805A4F28-_SDA2_BASE_(r2)
/* 803FE298 003F4018  D8 23 00 00 */	stfd f1, 0(r3)
/* 803FE29C 003F401C  D8 03 00 08 */	stfd f0, 8(r3)
/* 803FE2A0 003F4020  38 60 00 00 */	li r3, 0
/* 803FE2A4 003F4024  48 00 03 3C */	b lbl_803FE5E0
lbl_803FE2A8:
/* 803FE2A8 003F4028  3C 80 40 03 */	lis r4, 0x4002D97C@ha
/* 803FE2AC 003F402C  38 04 D9 7C */	addi r0, r4, 0x4002D97C@l
/* 803FE2B0 003F4030  7C 06 00 00 */	cmpw r6, r0
/* 803FE2B4 003F4034  40 80 00 CC */	bge lbl_803FE380
/* 803FE2B8 003F4038  2C 1F 00 00 */	cmpwi r31, 0
/* 803FE2BC 003F403C  40 81 00 64 */	ble lbl_803FE320
/* 803FE2C0 003F4040  C8 02 BC 10 */	lfd f0, lbl_805A4F30-_SDA2_BASE_(r2)
/* 803FE2C4 003F4044  3C 06 C0 07 */	addis r0, r6, 0xc007
/* 803FE2C8 003F4048  28 00 21 FB */	cmplwi r0, 0x21fb
/* 803FE2CC 003F404C  FC 61 00 28 */	fsub f3, f1, f0
/* 803FE2D0 003F4050  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 803FE2D4 003F4054  41 82 00 20 */	beq lbl_803FE2F4
/* 803FE2D8 003F4058  C8 42 BC 18 */	lfd f2, lbl_805A4F38-_SDA2_BASE_(r2)
/* 803FE2DC 003F405C  FC 23 10 28 */	fsub f1, f3, f2
/* 803FE2E0 003F4060  FC 03 08 28 */	fsub f0, f3, f1
/* 803FE2E4 003F4064  D8 23 00 00 */	stfd f1, 0(r3)
/* 803FE2E8 003F4068  FC 00 10 28 */	fsub f0, f0, f2
/* 803FE2EC 003F406C  D8 03 00 08 */	stfd f0, 8(r3)
/* 803FE2F0 003F4070  48 00 00 28 */	b lbl_803FE318
lbl_803FE2F4:
/* 803FE2F4 003F4074  C8 02 BC 20 */	lfd f0, lbl_805A4F40-_SDA2_BASE_(r2)
/* 803FE2F8 003F4078  C8 42 BC 28 */	lfd f2, lbl_805A4F48-_SDA2_BASE_(r2)
/* 803FE2FC 003F407C  FC 03 00 28 */	fsub f0, f3, f0
/* 803FE300 003F4080  FC 20 10 28 */	fsub f1, f0, f2
/* 803FE304 003F4084  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803FE308 003F4088  FC 00 08 28 */	fsub f0, f0, f1
/* 803FE30C 003F408C  D8 23 00 00 */	stfd f1, 0(r3)
/* 803FE310 003F4090  FC 00 10 28 */	fsub f0, f0, f2
/* 803FE314 003F4094  D8 03 00 08 */	stfd f0, 8(r3)
lbl_803FE318:
/* 803FE318 003F4098  38 60 00 01 */	li r3, 1
/* 803FE31C 003F409C  48 00 02 C4 */	b lbl_803FE5E0
lbl_803FE320:
/* 803FE320 003F40A0  C8 02 BC 10 */	lfd f0, lbl_805A4F30-_SDA2_BASE_(r2)
/* 803FE324 003F40A4  3C 06 C0 07 */	addis r0, r6, 0xc007
/* 803FE328 003F40A8  28 00 21 FB */	cmplwi r0, 0x21fb
/* 803FE32C 003F40AC  FC 60 08 2A */	fadd f3, f0, f1
/* 803FE330 003F40B0  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 803FE334 003F40B4  41 82 00 20 */	beq lbl_803FE354
/* 803FE338 003F40B8  C8 42 BC 18 */	lfd f2, lbl_805A4F38-_SDA2_BASE_(r2)
/* 803FE33C 003F40BC  FC 22 18 2A */	fadd f1, f2, f3
/* 803FE340 003F40C0  FC 03 08 28 */	fsub f0, f3, f1
/* 803FE344 003F40C4  D8 23 00 00 */	stfd f1, 0(r3)
/* 803FE348 003F40C8  FC 02 00 2A */	fadd f0, f2, f0
/* 803FE34C 003F40CC  D8 03 00 08 */	stfd f0, 8(r3)
/* 803FE350 003F40D0  48 00 00 28 */	b lbl_803FE378
lbl_803FE354:
/* 803FE354 003F40D4  C8 02 BC 20 */	lfd f0, lbl_805A4F40-_SDA2_BASE_(r2)
/* 803FE358 003F40D8  C8 42 BC 28 */	lfd f2, lbl_805A4F48-_SDA2_BASE_(r2)
/* 803FE35C 003F40DC  FC 03 00 2A */	fadd f0, f3, f0
/* 803FE360 003F40E0  FC 22 00 2A */	fadd f1, f2, f0
/* 803FE364 003F40E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803FE368 003F40E8  FC 00 08 28 */	fsub f0, f0, f1
/* 803FE36C 003F40EC  D8 23 00 00 */	stfd f1, 0(r3)
/* 803FE370 003F40F0  FC 02 00 2A */	fadd f0, f2, f0
/* 803FE374 003F40F4  D8 03 00 08 */	stfd f0, 8(r3)
lbl_803FE378:
/* 803FE378 003F40F8  38 60 FF FF */	li r3, -1
/* 803FE37C 003F40FC  48 00 02 64 */	b lbl_803FE5E0
lbl_803FE380:
/* 803FE380 003F4100  3C 80 41 39 */	lis r4, 0x413921FB@ha
/* 803FE384 003F4104  38 04 21 FB */	addi r0, r4, 0x413921FB@l
/* 803FE388 003F4108  7C 06 00 00 */	cmpw r6, r0
/* 803FE38C 003F410C  41 81 01 48 */	bgt lbl_803FE4D4
/* 803FE390 003F4110  FC A0 0A 10 */	fabs f5, f1
/* 803FE394 003F4114  C8 02 BC 38 */	lfd f0, lbl_805A4F58-_SDA2_BASE_(r2)
/* 803FE398 003F4118  3C 00 43 30 */	lis r0, 0x4330
/* 803FE39C 003F411C  C8 42 BC 30 */	lfd f2, lbl_805A4F50-_SDA2_BASE_(r2)
/* 803FE3A0 003F4120  90 01 00 38 */	stw r0, 0x38(r1)
/* 803FE3A4 003F4124  FC 80 01 72 */	fmul f4, f0, f5
/* 803FE3A8 003F4128  C8 62 BC 58 */	lfd f3, lbl_805A4F78-_SDA2_BASE_(r2)
/* 803FE3AC 003F412C  C8 22 BC 10 */	lfd f1, lbl_805A4F30-_SDA2_BASE_(r2)
/* 803FE3B0 003F4130  C8 02 BC 18 */	lfd f0, lbl_805A4F38-_SDA2_BASE_(r2)
/* 803FE3B4 003F4134  FC 42 20 2A */	fadd f2, f2, f4
/* 803FE3B8 003F4138  FC 40 10 1E */	fctiwz f2, f2
/* 803FE3BC 003F413C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803FE3C0 003F4140  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 803FE3C4 003F4144  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 803FE3C8 003F4148  2C 05 00 20 */	cmpwi r5, 0x20
/* 803FE3CC 003F414C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803FE3D0 003F4150  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 803FE3D4 003F4154  FC C2 18 28 */	fsub f6, f2, f3
/* 803FE3D8 003F4158  FC 21 01 B2 */	fmul f1, f1, f6
/* 803FE3DC 003F415C  FC 40 01 B2 */	fmul f2, f0, f6
/* 803FE3E0 003F4160  FC 85 08 28 */	fsub f4, f5, f1
/* 803FE3E4 003F4164  40 80 00 2C */	bge lbl_803FE410
/* 803FE3E8 003F4168  38 05 FF FF */	addi r0, r5, -1
/* 803FE3EC 003F416C  3C 80 80 42 */	lis r4, lbl_80420298@ha
/* 803FE3F0 003F4170  54 00 10 3A */	slwi r0, r0, 2
/* 803FE3F4 003F4174  38 84 02 98 */	addi r4, r4, lbl_80420298@l
/* 803FE3F8 003F4178  7C 04 00 2E */	lwzx r0, r4, r0
/* 803FE3FC 003F417C  7C 06 00 00 */	cmpw r6, r0
/* 803FE400 003F4180  41 82 00 10 */	beq lbl_803FE410
/* 803FE404 003F4184  FC 04 10 28 */	fsub f0, f4, f2
/* 803FE408 003F4188  D8 03 00 00 */	stfd f0, 0(r3)
/* 803FE40C 003F418C  48 00 00 90 */	b lbl_803FE49C
lbl_803FE410:
/* 803FE410 003F4190  FC 04 10 28 */	fsub f0, f4, f2
/* 803FE414 003F4194  7C C4 A6 70 */	srawi r4, r6, 0x14
/* 803FE418 003F4198  D8 03 00 00 */	stfd f0, 0(r3)
/* 803FE41C 003F419C  80 03 00 00 */	lwz r0, 0(r3)
/* 803FE420 003F41A0  54 00 65 7E */	rlwinm r0, r0, 0xc, 0x15, 0x1f
/* 803FE424 003F41A4  7C 00 20 50 */	subf r0, r0, r4
/* 803FE428 003F41A8  2C 00 00 10 */	cmpwi r0, 0x10
/* 803FE42C 003F41AC  40 81 00 70 */	ble lbl_803FE49C
/* 803FE430 003F41B0  C8 22 BC 20 */	lfd f1, lbl_805A4F40-_SDA2_BASE_(r2)
/* 803FE434 003F41B4  FC 40 20 90 */	fmr f2, f4
/* 803FE438 003F41B8  C8 02 BC 28 */	lfd f0, lbl_805A4F48-_SDA2_BASE_(r2)
/* 803FE43C 003F41BC  FC 61 01 B2 */	fmul f3, f1, f6
/* 803FE440 003F41C0  FC 20 01 B2 */	fmul f1, f0, f6
/* 803FE444 003F41C4  FC 84 18 28 */	fsub f4, f4, f3
/* 803FE448 003F41C8  FC 02 20 28 */	fsub f0, f2, f4
/* 803FE44C 003F41CC  FC 00 18 28 */	fsub f0, f0, f3
/* 803FE450 003F41D0  FC 41 00 28 */	fsub f2, f1, f0
/* 803FE454 003F41D4  FC 04 10 28 */	fsub f0, f4, f2
/* 803FE458 003F41D8  D8 03 00 00 */	stfd f0, 0(r3)
/* 803FE45C 003F41DC  80 03 00 00 */	lwz r0, 0(r3)
/* 803FE460 003F41E0  54 00 65 7E */	rlwinm r0, r0, 0xc, 0x15, 0x1f
/* 803FE464 003F41E4  7C 00 20 50 */	subf r0, r0, r4
/* 803FE468 003F41E8  2C 00 00 31 */	cmpwi r0, 0x31
/* 803FE46C 003F41EC  40 81 00 30 */	ble lbl_803FE49C
/* 803FE470 003F41F0  C8 22 BC 40 */	lfd f1, lbl_805A4F60-_SDA2_BASE_(r2)
/* 803FE474 003F41F4  FC 40 20 90 */	fmr f2, f4
/* 803FE478 003F41F8  C8 02 BC 48 */	lfd f0, lbl_805A4F68-_SDA2_BASE_(r2)
/* 803FE47C 003F41FC  FC 61 01 B2 */	fmul f3, f1, f6
/* 803FE480 003F4200  FC 20 01 B2 */	fmul f1, f0, f6
/* 803FE484 003F4204  FC 84 18 28 */	fsub f4, f4, f3
/* 803FE488 003F4208  FC 02 20 28 */	fsub f0, f2, f4
/* 803FE48C 003F420C  FC 00 18 28 */	fsub f0, f0, f3
/* 803FE490 003F4210  FC 41 00 28 */	fsub f2, f1, f0
/* 803FE494 003F4214  FC 04 10 28 */	fsub f0, f4, f2
/* 803FE498 003F4218  D8 03 00 00 */	stfd f0, 0(r3)
lbl_803FE49C:
/* 803FE49C 003F421C  C8 23 00 00 */	lfd f1, 0(r3)
/* 803FE4A0 003F4220  2C 1F 00 00 */	cmpwi r31, 0
/* 803FE4A4 003F4224  FC 04 08 28 */	fsub f0, f4, f1
/* 803FE4A8 003F4228  FC 00 10 28 */	fsub f0, f0, f2
/* 803FE4AC 003F422C  D8 03 00 08 */	stfd f0, 8(r3)
/* 803FE4B0 003F4230  40 80 00 1C */	bge lbl_803FE4CC
/* 803FE4B4 003F4234  FC 20 08 50 */	fneg f1, f1
/* 803FE4B8 003F4238  FC 00 00 50 */	fneg f0, f0
/* 803FE4BC 003F423C  D8 23 00 00 */	stfd f1, 0(r3)
/* 803FE4C0 003F4240  D8 03 00 08 */	stfd f0, 8(r3)
/* 803FE4C4 003F4244  7C 65 00 D0 */	neg r3, r5
/* 803FE4C8 003F4248  48 00 01 18 */	b lbl_803FE5E0
lbl_803FE4CC:
/* 803FE4CC 003F424C  7C A3 2B 78 */	mr r3, r5
/* 803FE4D0 003F4250  48 00 01 10 */	b lbl_803FE5E0
lbl_803FE4D4:
/* 803FE4D4 003F4254  3C 00 7F F0 */	lis r0, 0x7ff0
/* 803FE4D8 003F4258  7C 06 00 00 */	cmpw r6, r0
/* 803FE4DC 003F425C  41 80 00 18 */	blt lbl_803FE4F4
/* 803FE4E0 003F4260  FC 01 08 28 */	fsub f0, f1, f1
/* 803FE4E4 003F4264  D8 03 00 08 */	stfd f0, 8(r3)
/* 803FE4E8 003F4268  D8 03 00 00 */	stfd f0, 0(r3)
/* 803FE4EC 003F426C  38 60 00 00 */	li r3, 0
/* 803FE4F0 003F4270  48 00 00 F0 */	b lbl_803FE5E0
lbl_803FE4F4:
/* 803FE4F4 003F4274  7C C3 A6 70 */	srawi r3, r6, 0x14
/* 803FE4F8 003F4278  3C 00 43 30 */	lis r0, 0x4330
/* 803FE4FC 003F427C  38 A3 FB EA */	addi r5, r3, -1046
/* 803FE500 003F4280  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803FE504 003F4284  54 A3 A0 16 */	slwi r3, r5, 0x14
/* 803FE508 003F4288  90 01 00 30 */	stw r0, 0x30(r1)
/* 803FE50C 003F428C  7C 63 30 50 */	subf r3, r3, r6
/* 803FE510 003F4290  C8 A2 BC 58 */	lfd f5, lbl_805A4F78-_SDA2_BASE_(r2)
/* 803FE514 003F4294  90 81 00 14 */	stw r4, 0x14(r1)
/* 803FE518 003F4298  38 81 00 30 */	addi r4, r1, 0x30
/* 803FE51C 003F429C  C8 82 BC 50 */	lfd f4, lbl_805A4F70-_SDA2_BASE_(r2)
/* 803FE520 003F42A0  38 C0 00 03 */	li r6, 3
/* 803FE524 003F42A4  90 61 00 10 */	stw r3, 0x10(r1)
/* 803FE528 003F42A8  C8 22 BC 08 */	lfd f1, lbl_805A4F28-_SDA2_BASE_(r2)
/* 803FE52C 003F42AC  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 803FE530 003F42B0  90 01 00 48 */	stw r0, 0x48(r1)
/* 803FE534 003F42B4  FC 00 18 1E */	fctiwz f0, f3
/* 803FE538 003F42B8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 803FE53C 003F42BC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803FE540 003F42C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803FE544 003F42C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FE548 003F42C8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 803FE54C 003F42CC  FC 40 28 28 */	fsub f2, f0, f5
/* 803FE550 003F42D0  FC 03 10 28 */	fsub f0, f3, f2
/* 803FE554 003F42D4  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 803FE558 003F42D8  FC 64 00 32 */	fmul f3, f4, f0
/* 803FE55C 003F42DC  FC 00 18 1E */	fctiwz f0, f3
/* 803FE560 003F42E0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 803FE564 003F42E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803FE568 003F42E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803FE56C 003F42EC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 803FE570 003F42F0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 803FE574 003F42F4  FC 40 28 28 */	fsub f2, f0, f5
/* 803FE578 003F42F8  FC 03 10 28 */	fsub f0, f3, f2
/* 803FE57C 003F42FC  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 803FE580 003F4300  FC 04 00 32 */	fmul f0, f4, f0
/* 803FE584 003F4304  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803FE588 003F4308  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803FE58C 003F430C  48 00 00 0C */	b lbl_803FE598
lbl_803FE590:
/* 803FE590 003F4310  38 84 FF F8 */	addi r4, r4, -8
/* 803FE594 003F4314  38 C6 FF FF */	addi r6, r6, -1
lbl_803FE598:
/* 803FE598 003F4318  C8 04 FF F8 */	lfd f0, -8(r4)
/* 803FE59C 003F431C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803FE5A0 003F4320  41 82 FF F0 */	beq lbl_803FE590
/* 803FE5A4 003F4324  3D 00 80 42 */	lis r8, lbl_80420190@ha
/* 803FE5A8 003F4328  7F C4 F3 78 */	mr r4, r30
/* 803FE5AC 003F432C  38 61 00 18 */	addi r3, r1, 0x18
/* 803FE5B0 003F4330  38 E0 00 02 */	li r7, 2
/* 803FE5B4 003F4334  39 08 01 90 */	addi r8, r8, lbl_80420190@l
/* 803FE5B8 003F4338  48 00 01 51 */	bl __kernel_rem_pio2
/* 803FE5BC 003F433C  2C 1F 00 00 */	cmpwi r31, 0
/* 803FE5C0 003F4340  40 80 00 20 */	bge lbl_803FE5E0
/* 803FE5C4 003F4344  C8 3E 00 00 */	lfd f1, 0(r30)
/* 803FE5C8 003F4348  7C 63 00 D0 */	neg r3, r3
/* 803FE5CC 003F434C  C8 1E 00 08 */	lfd f0, 8(r30)
/* 803FE5D0 003F4350  FC 20 08 50 */	fneg f1, f1
/* 803FE5D4 003F4354  FC 00 00 50 */	fneg f0, f0
/* 803FE5D8 003F4358  D8 3E 00 00 */	stfd f1, 0(r30)
/* 803FE5DC 003F435C  D8 1E 00 08 */	stfd f0, 8(r30)
lbl_803FE5E0:
/* 803FE5E0 003F4360  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803FE5E4 003F4364  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 803FE5E8 003F4368  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 803FE5EC 003F436C  7C 08 03 A6 */	mtlr r0
/* 803FE5F0 003F4370  38 21 00 60 */	addi r1, r1, 0x60
/* 803FE5F4 003F4374  4E 80 00 20 */	blr 

