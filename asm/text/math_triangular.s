.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r4mathFf$7SinFIdx
nw4r4mathFf$7SinFIdx:
/* 801622C4 00158044  FC 60 0A 10 */	fabs f3, f1
/* 801622C8 00158048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801622CC 0015804C  C0 02 98 F0 */	lfs f0, lbl_805A2C10-_SDA2_BASE_(r2)
/* 801622D0 00158050  48 00 00 08 */	b lbl_801622D8
lbl_801622D4:
/* 801622D4 00158054  EC 63 00 28 */	fsubs f3, f3, f0
lbl_801622D8:
/* 801622D8 00158058  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801622DC 0015805C  41 81 FF F8 */	bgt lbl_801622D4
/* 801622E0 00158060  F0 61 B0 0C */	psq_st f3, 12(r1), 1, qr3
/* 801622E4 00158064  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801622E8 00158068  B0 01 00 08 */	sth r0, 8(r1)
/* 801622EC 0015806C  E0 41 B0 08 */	psq_l f2, 8(r1), 1, qr3
/* 801622F0 00158070  3C 80 80 41 */	lis r4, lbl_804097C8@ha
/* 801622F4 00158074  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 801622F8 00158078  C0 02 98 F4 */	lfs f0, lbl_805A2C14-_SDA2_BASE_(r2)
/* 801622FC 0015807C  38 84 97 C8 */	addi r4, r4, lbl_804097C8@l
/* 80162300 00158080  EC 83 10 28 */	fsubs f4, f3, f2
/* 80162304 00158084  7C 64 02 14 */	add r3, r4, r0
/* 80162308 00158088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016230C 0015808C  C0 63 00 08 */	lfs f3, 8(r3)
/* 80162310 00158090  7C 44 04 2E */	lfsx f2, r4, r0
/* 80162314 00158094  EC 04 00 F2 */	fmuls f0, f4, f3
/* 80162318 00158098  EC 22 00 2A */	fadds f1, f2, f0
/* 8016231C 0015809C  40 80 00 08 */	bge lbl_80162324
/* 80162320 001580A0  FC 20 08 50 */	fneg f1, f1
lbl_80162324:
/* 80162324 001580A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80162328 001580A8  4E 80 00 20 */	blr 

.global nw4r4mathFf$7CosFIdx
nw4r4mathFf$7CosFIdx:
/* 8016232C 001580AC  FC 20 0A 10 */	fabs f1, f1
/* 80162330 001580B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80162334 001580B4  C0 02 98 F0 */	lfs f0, lbl_805A2C10-_SDA2_BASE_(r2)
/* 80162338 001580B8  48 00 00 08 */	b lbl_80162340
lbl_8016233C:
/* 8016233C 001580BC  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80162340:
/* 80162340 001580C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80162344 001580C4  41 81 FF F8 */	bgt lbl_8016233C
/* 80162348 001580C8  F0 21 B0 0C */	psq_st f1, 12(r1), 1, qr3
/* 8016234C 001580CC  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80162350 001580D0  B0 01 00 08 */	sth r0, 8(r1)
/* 80162354 001580D4  E0 01 B0 08 */	psq_l f0, 8(r1), 1, qr3
/* 80162358 001580D8  3C 60 80 41 */	lis r3, lbl_804097C8@ha
/* 8016235C 001580DC  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 80162360 001580E0  38 63 97 C8 */	addi r3, r3, lbl_804097C8@l
/* 80162364 001580E4  EC 41 00 28 */	fsubs f2, f1, f0
/* 80162368 001580E8  7C 63 02 14 */	add r3, r3, r0
/* 8016236C 001580EC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80162370 001580F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80162374 001580F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80162378 001580F8  EC 20 08 2A */	fadds f1, f0, f1
/* 8016237C 001580FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80162380 00158100  4E 80 00 20 */	blr 

.global nw4r4mathFPfPff$7SinCosFIdx
nw4r4mathFPfPff$7SinCosFIdx:
/* 80162384 00158104  FC 00 0A 10 */	fabs f0, f1
/* 80162388 00158108  3C A0 80 41 */	lis r5, lbl_804097C8@ha
/* 8016238C 0015810C  C0 42 98 F0 */	lfs f2, lbl_805A2C10-_SDA2_BASE_(r2)
/* 80162390 00158110  38 A5 97 C8 */	addi r5, r5, lbl_804097C8@l
/* 80162394 00158114  F0 03 B0 00 */	psq_st f0, 0(r3), 1, qr3
/* 80162398 00158118  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8016239C 0015811C  40 81 00 14 */	ble lbl_801623B0
lbl_801623A0:
/* 801623A0 00158120  EC 00 10 28 */	fsubs f0, f0, f2
/* 801623A4 00158124  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801623A8 00158128  41 81 FF F8 */	bgt lbl_801623A0
/* 801623AC 0015812C  F0 03 B0 00 */	psq_st f0, 0(r3), 1, qr3
lbl_801623B0:
/* 801623B0 00158130  A0 03 00 00 */	lhz r0, 0(r3)
/* 801623B4 00158134  EC 82 10 28 */	fsubs f4, f2, f2
/* 801623B8 00158138  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 801623BC 0015813C  7C A5 02 14 */	add r5, r5, r0
/* 801623C0 00158140  E0 43 B0 00 */	psq_l f2, 0(r3), 1, qr3
/* 801623C4 00158144  E0 65 00 00 */	psq_l f3, 0(r5), 0, qr0
/* 801623C8 00158148  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 801623CC 0015814C  EC 40 10 28 */	fsubs f2, f0, f2
/* 801623D0 00158150  E0 05 00 08 */	psq_l f0, 8(r5), 0, qr0
/* 801623D4 00158154  10 00 18 9C */	ps_madds0 f0, f0, f2, f3
/* 801623D8 00158158  10 40 04 A0 */	ps_merge10 f2, f0, f0
/* 801623DC 0015815C  F0 44 80 00 */	psq_st f2, 0(r4), 1, qr0
/* 801623E0 00158160  40 80 00 08 */	bge lbl_801623E8
/* 801623E4 00158164  10 00 00 50 */	ps_neg f0, f0
lbl_801623E8:
/* 801623E8 00158168  F0 03 80 00 */	psq_st f0, 0(r3), 1, qr0
/* 801623EC 0015816C  4E 80 00 20 */	blr 

.global nw4r4mathFf$7AtanFIdx
nw4r4mathFf$7AtanFIdx:
/* 801623F0 00158170  C0 02 98 F4 */	lfs f0, lbl_805A2C14-_SDA2_BASE_(r2)
/* 801623F4 00158174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801623F8 00158178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801623FC 0015817C  4C 41 13 82 */	cror 2, 1, 2
/* 80162400 00158180  40 82 00 9C */	bne lbl_8016249C
/* 80162404 00158184  C0 02 98 F8 */	lfs f0, lbl_805A2C18-_SDA2_BASE_(r2)
/* 80162408 00158188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016240C 0015818C  40 81 00 50 */	ble lbl_8016245C
/* 80162410 00158190  EC 20 08 24 */	fdivs f1, f0, f1
/* 80162414 00158194  C0 02 98 FC */	lfs f0, lbl_805A2C1C-_SDA2_BASE_(r2)
/* 80162418 00158198  EC 21 00 32 */	fmuls f1, f1, f0
/* 8016241C 0015819C  F0 21 B0 1C */	psq_st f1, 28(r1), 1, qr3
/* 80162420 001581A0  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 80162424 001581A4  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80162428 001581A8  E0 41 B0 0E */	psq_l f2, 14(r1), 1, qr3
/* 8016242C 001581AC  3C 80 80 46 */	lis r4, lbl_80465138@ha
/* 80162430 001581B0  54 00 18 38 */	slwi r0, r0, 3
/* 80162434 001581B4  C0 02 99 00 */	lfs f0, lbl_805A2C20-_SDA2_BASE_(r2)
/* 80162438 001581B8  38 84 51 38 */	addi r4, r4, lbl_80465138@l
/* 8016243C 001581BC  EC 61 10 28 */	fsubs f3, f1, f2
/* 80162440 001581C0  7C 64 02 14 */	add r3, r4, r0
/* 80162444 001581C4  7C 24 04 2E */	lfsx f1, r4, r0
/* 80162448 001581C8  C0 43 00 04 */	lfs f2, 4(r3)
/* 8016244C 001581CC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80162450 001581D0  EC 21 10 2A */	fadds f1, f1, f2
/* 80162454 001581D4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80162458 001581D8  48 00 00 E0 */	b lbl_80162538
lbl_8016245C:
/* 8016245C 001581DC  C0 02 98 FC */	lfs f0, lbl_805A2C1C-_SDA2_BASE_(r2)
/* 80162460 001581E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80162464 001581E4  F0 01 B0 18 */	psq_st f0, 24(r1), 1, qr3
/* 80162468 001581E8  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 8016246C 001581EC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80162470 001581F0  E0 21 B0 0C */	psq_l f1, 12(r1), 1, qr3
/* 80162474 001581F4  3C 80 80 46 */	lis r4, lbl_80465138@ha
/* 80162478 001581F8  54 00 18 38 */	slwi r0, r0, 3
/* 8016247C 001581FC  38 84 51 38 */	addi r4, r4, lbl_80465138@l
/* 80162480 00158200  EC 40 08 28 */	fsubs f2, f0, f1
/* 80162484 00158204  7C 64 02 14 */	add r3, r4, r0
/* 80162488 00158208  7C 04 04 2E */	lfsx f0, r4, r0
/* 8016248C 0015820C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80162490 00158210  EC 22 00 72 */	fmuls f1, f2, f1
/* 80162494 00158214  EC 20 08 2A */	fadds f1, f0, f1
/* 80162498 00158218  48 00 00 A0 */	b lbl_80162538
lbl_8016249C:
/* 8016249C 0015821C  C0 02 99 04 */	lfs f0, lbl_805A2C24-_SDA2_BASE_(r2)
/* 801624A0 00158220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801624A4 00158224  40 80 00 50 */	bge lbl_801624F4
/* 801624A8 00158228  EC 20 08 24 */	fdivs f1, f0, f1
/* 801624AC 0015822C  C0 02 98 FC */	lfs f0, lbl_805A2C1C-_SDA2_BASE_(r2)
/* 801624B0 00158230  EC 21 00 32 */	fmuls f1, f1, f0
/* 801624B4 00158234  F0 21 B0 14 */	psq_st f1, 20(r1), 1, qr3
/* 801624B8 00158238  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801624BC 0015823C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 801624C0 00158240  E0 41 B0 0A */	psq_l f2, 10(r1), 1, qr3
/* 801624C4 00158244  3C 80 80 46 */	lis r4, lbl_80465138@ha
/* 801624C8 00158248  54 00 18 38 */	slwi r0, r0, 3
/* 801624CC 0015824C  C0 02 99 08 */	lfs f0, lbl_805A2C28-_SDA2_BASE_(r2)
/* 801624D0 00158250  38 84 51 38 */	addi r4, r4, lbl_80465138@l
/* 801624D4 00158254  EC 61 10 28 */	fsubs f3, f1, f2
/* 801624D8 00158258  7C 64 02 14 */	add r3, r4, r0
/* 801624DC 0015825C  7C 24 04 2E */	lfsx f1, r4, r0
/* 801624E0 00158260  C0 43 00 04 */	lfs f2, 4(r3)
/* 801624E4 00158264  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801624E8 00158268  EC 21 10 2A */	fadds f1, f1, f2
/* 801624EC 0015826C  EC 20 08 2A */	fadds f1, f0, f1
/* 801624F0 00158270  48 00 00 48 */	b lbl_80162538
lbl_801624F4:
/* 801624F4 00158274  FC 20 08 50 */	fneg f1, f1
/* 801624F8 00158278  C0 02 98 FC */	lfs f0, lbl_805A2C1C-_SDA2_BASE_(r2)
/* 801624FC 0015827C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80162500 00158280  F0 21 B0 10 */	psq_st f1, 16(r1), 1, qr3
/* 80162504 00158284  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80162508 00158288  B0 01 00 08 */	sth r0, 8(r1)
/* 8016250C 0015828C  E0 01 B0 08 */	psq_l f0, 8(r1), 1, qr3
/* 80162510 00158290  3C 80 80 46 */	lis r4, lbl_80465138@ha
/* 80162514 00158294  54 00 18 38 */	slwi r0, r0, 3
/* 80162518 00158298  38 84 51 38 */	addi r4, r4, lbl_80465138@l
/* 8016251C 0015829C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80162520 001582A0  7C 64 02 14 */	add r3, r4, r0
/* 80162524 001582A4  7C 04 04 2E */	lfsx f0, r4, r0
/* 80162528 001582A8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8016252C 001582AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80162530 001582B0  EC 00 08 2A */	fadds f0, f0, f1
/* 80162534 001582B4  FC 20 00 50 */	fneg f1, f0
lbl_80162538:
/* 80162538 001582B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8016253C 001582BC  4E 80 00 20 */	blr 

.global nw4r4mathFff$7Atan2FIdx
nw4r4mathFff$7Atan2FIdx:
/* 80162540 001582C0  C0 02 98 F4 */	lfs f0, lbl_805A2C14-_SDA2_BASE_(r2)
/* 80162544 001582C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80162548 001582C8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8016254C 001582CC  40 82 00 14 */	bne lbl_80162560
/* 80162550 001582D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80162554 001582D4  40 82 00 0C */	bne lbl_80162560
/* 80162558 001582D8  FC 20 00 90 */	fmr f1, f0
/* 8016255C 001582DC  48 00 01 84 */	b lbl_801626E0
lbl_80162560:
/* 80162560 001582E0  C0 82 98 F4 */	lfs f4, lbl_805A2C14-_SDA2_BASE_(r2)
/* 80162564 001582E4  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 80162568 001582E8  4C 41 13 82 */	cror 2, 1, 2
/* 8016256C 001582EC  40 82 00 6C */	bne lbl_801625D8
/* 80162570 001582F0  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 80162574 001582F4  4C 41 13 82 */	cror 2, 1, 2
/* 80162578 001582F8  40 82 00 30 */	bne lbl_801625A8
/* 8016257C 001582FC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80162580 00158300  4C 41 13 82 */	cror 2, 1, 2
/* 80162584 00158304  40 82 00 10 */	bne lbl_80162594
/* 80162588 00158308  FC 60 10 90 */	fmr f3, f2
/* 8016258C 0015830C  38 00 00 00 */	li r0, 0
/* 80162590 00158310  48 00 00 BC */	b lbl_8016264C
lbl_80162594:
/* 80162594 00158314  FC 60 08 90 */	fmr f3, f1
/* 80162598 00158318  C0 82 99 00 */	lfs f4, lbl_805A2C20-_SDA2_BASE_(r2)
/* 8016259C 0015831C  FC 20 10 90 */	fmr f1, f2
/* 801625A0 00158320  38 00 00 01 */	li r0, 1
/* 801625A4 00158324  48 00 00 A8 */	b lbl_8016264C
lbl_801625A8:
/* 801625A8 00158328  FC 20 08 50 */	fneg f1, f1
/* 801625AC 0015832C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801625B0 00158330  4C 41 13 82 */	cror 2, 1, 2
/* 801625B4 00158334  40 82 00 10 */	bne lbl_801625C4
/* 801625B8 00158338  FC 60 10 90 */	fmr f3, f2
/* 801625BC 0015833C  38 00 00 01 */	li r0, 1
/* 801625C0 00158340  48 00 00 8C */	b lbl_8016264C
lbl_801625C4:
/* 801625C4 00158344  FC 60 08 90 */	fmr f3, f1
/* 801625C8 00158348  C0 82 99 08 */	lfs f4, lbl_805A2C28-_SDA2_BASE_(r2)
/* 801625CC 0015834C  FC 20 10 90 */	fmr f1, f2
/* 801625D0 00158350  38 00 00 00 */	li r0, 0
/* 801625D4 00158354  48 00 00 78 */	b lbl_8016264C
lbl_801625D8:
/* 801625D8 00158358  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 801625DC 0015835C  4C 41 13 82 */	cror 2, 1, 2
/* 801625E0 00158360  40 82 00 38 */	bne lbl_80162618
/* 801625E4 00158364  FC 00 10 50 */	fneg f0, f2
/* 801625E8 00158368  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801625EC 0015836C  4C 41 13 82 */	cror 2, 1, 2
/* 801625F0 00158370  40 82 00 14 */	bne lbl_80162604
/* 801625F4 00158374  FC 60 00 90 */	fmr f3, f0
/* 801625F8 00158378  C0 82 99 0C */	lfs f4, lbl_805A2C2C-_SDA2_BASE_(r2)
/* 801625FC 0015837C  38 00 00 01 */	li r0, 1
/* 80162600 00158380  48 00 00 4C */	b lbl_8016264C
lbl_80162604:
/* 80162604 00158384  FC 60 08 90 */	fmr f3, f1
/* 80162608 00158388  C0 82 99 00 */	lfs f4, lbl_805A2C20-_SDA2_BASE_(r2)
/* 8016260C 0015838C  FC 20 00 90 */	fmr f1, f0
/* 80162610 00158390  38 00 00 00 */	li r0, 0
/* 80162614 00158394  48 00 00 38 */	b lbl_8016264C
lbl_80162618:
/* 80162618 00158398  FC 00 10 50 */	fneg f0, f2
/* 8016261C 0015839C  FC 20 08 50 */	fneg f1, f1
/* 80162620 001583A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80162624 001583A4  4C 41 13 82 */	cror 2, 1, 2
/* 80162628 001583A8  40 82 00 14 */	bne lbl_8016263C
/* 8016262C 001583AC  FC 60 00 90 */	fmr f3, f0
/* 80162630 001583B0  C0 82 99 10 */	lfs f4, lbl_805A2C30-_SDA2_BASE_(r2)
/* 80162634 001583B4  38 00 00 00 */	li r0, 0
/* 80162638 001583B8  48 00 00 14 */	b lbl_8016264C
lbl_8016263C:
/* 8016263C 001583BC  FC 60 08 90 */	fmr f3, f1
/* 80162640 001583C0  C0 82 99 08 */	lfs f4, lbl_805A2C28-_SDA2_BASE_(r2)
/* 80162644 001583C4  FC 20 00 90 */	fmr f1, f0
/* 80162648 001583C8  38 00 00 01 */	li r0, 1
lbl_8016264C:
/* 8016264C 001583CC  2C 00 00 00 */	cmpwi r0, 0
/* 80162650 001583D0  41 82 00 4C */	beq lbl_8016269C
/* 80162654 001583D4  EC 21 18 24 */	fdivs f1, f1, f3
/* 80162658 001583D8  C0 02 98 FC */	lfs f0, lbl_805A2C1C-_SDA2_BASE_(r2)
/* 8016265C 001583DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80162660 001583E0  F0 21 B0 10 */	psq_st f1, 16(r1), 1, qr3
/* 80162664 001583E4  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80162668 001583E8  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8016266C 001583EC  E0 01 B0 0A */	psq_l f0, 10(r1), 1, qr3
/* 80162670 001583F0  3C 80 80 46 */	lis r4, lbl_80465138@ha
/* 80162674 001583F4  54 00 18 38 */	slwi r0, r0, 3
/* 80162678 001583F8  38 84 51 38 */	addi r4, r4, lbl_80465138@l
/* 8016267C 001583FC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80162680 00158400  7C 64 02 14 */	add r3, r4, r0
/* 80162684 00158404  7C 04 04 2E */	lfsx f0, r4, r0
/* 80162688 00158408  C0 23 00 04 */	lfs f1, 4(r3)
/* 8016268C 0015840C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80162690 00158410  EC 00 08 2A */	fadds f0, f0, f1
/* 80162694 00158414  EC 24 00 28 */	fsubs f1, f4, f0
/* 80162698 00158418  48 00 00 48 */	b lbl_801626E0
lbl_8016269C:
/* 8016269C 0015841C  EC 21 18 24 */	fdivs f1, f1, f3
/* 801626A0 00158420  C0 02 98 FC */	lfs f0, lbl_805A2C1C-_SDA2_BASE_(r2)
/* 801626A4 00158424  EC 21 00 32 */	fmuls f1, f1, f0
/* 801626A8 00158428  F0 21 B0 0C */	psq_st f1, 12(r1), 1, qr3
/* 801626AC 0015842C  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801626B0 00158430  B0 01 00 08 */	sth r0, 8(r1)
/* 801626B4 00158434  E0 01 B0 08 */	psq_l f0, 8(r1), 1, qr3
/* 801626B8 00158438  3C 80 80 46 */	lis r4, lbl_80465138@ha
/* 801626BC 0015843C  54 00 18 38 */	slwi r0, r0, 3
/* 801626C0 00158440  38 84 51 38 */	addi r4, r4, lbl_80465138@l
/* 801626C4 00158444  EC 41 00 28 */	fsubs f2, f1, f0
/* 801626C8 00158448  7C 64 02 14 */	add r3, r4, r0
/* 801626CC 0015844C  7C 04 04 2E */	lfsx f0, r4, r0
/* 801626D0 00158450  C0 23 00 04 */	lfs f1, 4(r3)
/* 801626D4 00158454  EC 22 00 72 */	fmuls f1, f2, f1
/* 801626D8 00158458  EC 00 08 2A */	fadds f0, f0, f1
/* 801626DC 0015845C  EC 24 00 2A */	fadds f1, f4, f0
lbl_801626E0:
/* 801626E0 00158460  38 21 00 20 */	addi r1, r1, 0x20
/* 801626E4 00158464  4E 80 00 20 */	blr 

