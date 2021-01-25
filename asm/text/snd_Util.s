.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail4UtilFi$7CalcPitchRatio
nw4r3snd6detail4UtilFi$7CalcPitchRatio:
/* 801D3258 001C8FD8  20 A3 0B FF */	subfic r5, r3, 0xbff
/* 801D325C 001C8FDC  38 00 0C 00 */	li r0, 0xc00
/* 801D3260 001C8FE0  7C A5 03 96 */	divwu r5, r5, r0
/* 801D3264 001C8FE4  2C 03 00 00 */	cmpwi r3, 0
/* 801D3268 001C8FE8  C0 22 A3 58 */	lfs f1, lbl_805A3678-_SDA2_BASE_(r2)
/* 801D326C 001C8FEC  38 C0 00 00 */	li r6, 0
/* 801D3270 001C8FF0  40 80 00 34 */	bge lbl_801D32A4
/* 801D3274 001C8FF4  54 A4 E8 FF */	rlwinm. r4, r5, 0x1d, 3, 0x1f
/* 801D3278 001C8FF8  1C 05 0C 00 */	mulli r0, r5, 0xc00
/* 801D327C 001C8FFC  7C 89 03 A6 */	mtctr r4
/* 801D3280 001C9000  41 82 00 14 */	beq lbl_801D3294
lbl_801D3284:
/* 801D3284 001C9004  38 C6 FF F8 */	addi r6, r6, -8
/* 801D3288 001C9008  42 00 FF FC */	bdnz lbl_801D3284
/* 801D328C 001C900C  70 A5 00 07 */	andi. r5, r5, 7
/* 801D3290 001C9010  41 82 00 10 */	beq lbl_801D32A0
lbl_801D3294:
/* 801D3294 001C9014  7C A9 03 A6 */	mtctr r5
lbl_801D3298:
/* 801D3298 001C9018  38 C6 FF FF */	addi r6, r6, -1
/* 801D329C 001C901C  42 00 FF FC */	bdnz lbl_801D3298
lbl_801D32A0:
/* 801D32A0 001C9020  7C 63 02 14 */	add r3, r3, r0
lbl_801D32A4:
/* 801D32A4 001C9024  38 00 0C 00 */	li r0, 0xc00
/* 801D32A8 001C9028  2C 03 0C 00 */	cmpwi r3, 0xc00
/* 801D32AC 001C902C  7C A3 03 96 */	divwu r5, r3, r0
/* 801D32B0 001C9030  41 80 00 34 */	blt lbl_801D32E4
/* 801D32B4 001C9034  54 A4 E8 FF */	rlwinm. r4, r5, 0x1d, 3, 0x1f
/* 801D32B8 001C9038  1C 05 F4 00 */	mulli r0, r5, -3072
/* 801D32BC 001C903C  7C 89 03 A6 */	mtctr r4
/* 801D32C0 001C9040  41 82 00 14 */	beq lbl_801D32D4
lbl_801D32C4:
/* 801D32C4 001C9044  38 C6 00 08 */	addi r6, r6, 8
/* 801D32C8 001C9048  42 00 FF FC */	bdnz lbl_801D32C4
/* 801D32CC 001C904C  70 A5 00 07 */	andi. r5, r5, 7
/* 801D32D0 001C9050  41 82 00 10 */	beq lbl_801D32E0
lbl_801D32D4:
/* 801D32D4 001C9054  7C A9 03 A6 */	mtctr r5
lbl_801D32D8:
/* 801D32D8 001C9058  38 C6 00 01 */	addi r6, r6, 1
/* 801D32DC 001C905C  42 00 FF FC */	bdnz lbl_801D32D8
lbl_801D32E0:
/* 801D32E0 001C9060  7C 63 02 14 */	add r3, r3, r0
lbl_801D32E4:
/* 801D32E4 001C9064  2C 06 00 00 */	cmpwi r6, 0
/* 801D32E8 001C9068  C0 02 A3 5C */	lfs f0, lbl_805A367C-_SDA2_BASE_(r2)
/* 801D32EC 001C906C  7C C5 33 78 */	mr r5, r6
/* 801D32F0 001C9070  40 81 00 50 */	ble lbl_801D3340
/* 801D32F4 001C9074  54 C4 E8 FF */	rlwinm. r4, r6, 0x1d, 3, 0x1f
/* 801D32F8 001C9078  7C 06 00 D0 */	neg r0, r6
/* 801D32FC 001C907C  7C 89 03 A6 */	mtctr r4
/* 801D3300 001C9080  41 82 00 30 */	beq lbl_801D3330
lbl_801D3304:
/* 801D3304 001C9084  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3308 001C9088  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D330C 001C908C  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3310 001C9090  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3314 001C9094  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3318 001C9098  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D331C 001C909C  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3320 001C90A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3324 001C90A4  42 00 FF E0 */	bdnz lbl_801D3304
/* 801D3328 001C90A8  70 C5 00 07 */	andi. r5, r6, 7
/* 801D332C 001C90AC  41 82 00 10 */	beq lbl_801D333C
lbl_801D3330:
/* 801D3330 001C90B0  7C A9 03 A6 */	mtctr r5
lbl_801D3334:
/* 801D3334 001C90B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3338 001C90B8  42 00 FF FC */	bdnz lbl_801D3334
lbl_801D333C:
/* 801D333C 001C90BC  7C C6 02 14 */	add r6, r6, r0
lbl_801D3340:
/* 801D3340 001C90C0  2C 06 00 00 */	cmpwi r6, 0
/* 801D3344 001C90C4  C0 02 A3 60 */	lfs f0, lbl_805A3680-_SDA2_BASE_(r2)
/* 801D3348 001C90C8  7C 86 00 D0 */	neg r4, r6
/* 801D334C 001C90CC  40 80 00 48 */	bge lbl_801D3394
/* 801D3350 001C90D0  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 801D3354 001C90D4  7C 09 03 A6 */	mtctr r0
/* 801D3358 001C90D8  41 82 00 30 */	beq lbl_801D3388
lbl_801D335C:
/* 801D335C 001C90DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3360 001C90E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3364 001C90E4  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3368 001C90E8  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D336C 001C90EC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3370 001C90F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3374 001C90F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3378 001C90F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D337C 001C90FC  42 00 FF E0 */	bdnz lbl_801D335C
/* 801D3380 001C9100  70 84 00 07 */	andi. r4, r4, 7
/* 801D3384 001C9104  41 82 00 10 */	beq lbl_801D3394
lbl_801D3388:
/* 801D3388 001C9108  7C 89 03 A6 */	mtctr r4
lbl_801D338C:
/* 801D338C 001C910C  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3390 001C9110  42 00 FF FC */	bdnz lbl_801D338C
lbl_801D3394:
/* 801D3394 001C9114  7C 64 46 70 */	srawi r4, r3, 8
/* 801D3398 001C9118  54 60 C0 0E */	slwi r0, r3, 0x18
/* 801D339C 001C911C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 801D33A0 001C9120  7C 03 00 50 */	subf r0, r3, r0
/* 801D33A4 001C9124  7C A4 01 95 */	addze. r5, r4
/* 801D33A8 001C9128  54 00 40 3E */	rotlwi r0, r0, 8
/* 801D33AC 001C912C  7C 60 1A 14 */	add r3, r0, r3
/* 801D33B0 001C9130  41 82 00 18 */	beq lbl_801D33C8
/* 801D33B4 001C9134  3C 80 80 41 */	lis r4, lbl_8040AFC0@ha
/* 801D33B8 001C9138  54 A0 10 3A */	slwi r0, r5, 2
/* 801D33BC 001C913C  38 84 AF C0 */	addi r4, r4, lbl_8040AFC0@l
/* 801D33C0 001C9140  7C 04 04 2E */	lfsx f0, r4, r0
/* 801D33C4 001C9144  EC 21 00 32 */	fmuls f1, f1, f0
lbl_801D33C8:
/* 801D33C8 001C9148  2C 03 00 00 */	cmpwi r3, 0
/* 801D33CC 001C914C  4D 82 00 20 */	beqlr 
/* 801D33D0 001C9150  3C 80 80 41 */	lis r4, lbl_8040AFF0@ha
/* 801D33D4 001C9154  54 60 10 3A */	slwi r0, r3, 2
/* 801D33D8 001C9158  38 84 AF F0 */	addi r4, r4, lbl_8040AFF0@l
/* 801D33DC 001C915C  7C 04 04 2E */	lfsx f0, r4, r0
/* 801D33E0 001C9160  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D33E4 001C9164  4E 80 00 20 */	blr 

.global nw4r3snd6detail4UtilFf$7CalcVolumeRatio
nw4r3snd6detail4UtilFf$7CalcVolumeRatio:
/* 801D33E8 001C9168  C0 42 A3 64 */	lfs f2, lbl_805A3684-_SDA2_BASE_(r2)
/* 801D33EC 001C916C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D33F0 001C9170  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801D33F4 001C9174  40 81 00 08 */	ble lbl_801D33FC
/* 801D33F8 001C9178  48 00 00 18 */	b lbl_801D3410
lbl_801D33FC:
/* 801D33FC 001C917C  C0 42 A3 68 */	lfs f2, lbl_805A3688-_SDA2_BASE_(r2)
/* 801D3400 001C9180  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801D3404 001C9184  40 80 00 08 */	bge lbl_801D340C
/* 801D3408 001C9188  48 00 00 08 */	b lbl_801D3410
lbl_801D340C:
/* 801D340C 001C918C  FC 40 08 90 */	fmr f2, f1
lbl_801D3410:
/* 801D3410 001C9190  C0 02 A3 6C */	lfs f0, lbl_805A368C-_SDA2_BASE_(r2)
/* 801D3414 001C9194  3C 60 80 41 */	lis r3, lbl_8040B3F0@ha
/* 801D3418 001C9198  38 63 B3 F0 */	addi r3, r3, lbl_8040B3F0@l
/* 801D341C 001C919C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801D3420 001C91A0  FC 00 00 1E */	fctiwz f0, f0
/* 801D3424 001C91A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 801D3428 001C91A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801D342C 001C91AC  38 04 03 88 */	addi r0, r4, 0x388
/* 801D3430 001C91B0  54 00 10 3A */	slwi r0, r0, 2
/* 801D3434 001C91B4  7C 23 04 2E */	lfsx f1, r3, r0
/* 801D3438 001C91B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D343C 001C91BC  4E 80 00 20 */	blr 

.global nw4r3snd6detail4UtilFfRCQ54nw4r3snd6detail4U$7CalcPanRatio
nw4r3snd6detail4UtilFfRCQ54nw4r3snd6detail4U$7CalcPanRatio:
/* 801D3440 001C91C0  C0 42 A3 58 */	lfs f2, lbl_805A3678-_SDA2_BASE_(r2)
/* 801D3444 001C91C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D3448 001C91C8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801D344C 001C91CC  40 81 00 08 */	ble lbl_801D3454
/* 801D3450 001C91D0  48 00 00 18 */	b lbl_801D3468
lbl_801D3454:
/* 801D3454 001C91D4  C0 42 A3 70 */	lfs f2, lbl_805A3690-_SDA2_BASE_(r2)
/* 801D3458 001C91D8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801D345C 001C91DC  40 80 00 08 */	bge lbl_801D3464
/* 801D3460 001C91E0  48 00 00 08 */	b lbl_801D3468
lbl_801D3464:
/* 801D3464 001C91E4  FC 40 08 90 */	fmr f2, f1
lbl_801D3468:
/* 801D3468 001C91E8  C0 02 A3 58 */	lfs f0, lbl_805A3678-_SDA2_BASE_(r2)
/* 801D346C 001C91EC  3C 80 80 46 */	lis r4, lbl_80466D50@ha
/* 801D3470 001C91F0  80 03 00 00 */	lwz r0, 0(r3)
/* 801D3474 001C91F4  38 84 6D 50 */	addi r4, r4, lbl_80466D50@l
/* 801D3478 001C91F8  EC 20 10 2A */	fadds f1, f0, f2
/* 801D347C 001C91FC  C0 42 A3 60 */	lfs f2, lbl_805A3680-_SDA2_BASE_(r2)
/* 801D3480 001C9200  54 05 10 3A */	slwi r5, r0, 2
/* 801D3484 001C9204  88 03 00 04 */	lbz r0, 4(r3)
/* 801D3488 001C9208  C0 02 A3 74 */	lfs f0, lbl_805A3694-_SDA2_BASE_(r2)
/* 801D348C 001C920C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801D3490 001C9210  2C 00 00 00 */	cmpwi r0, 0
/* 801D3494 001C9214  7C 84 28 2E */	lwzx r4, r4, r5
/* 801D3498 001C9218  EC 00 00 72 */	fmuls f0, f0, f1
/* 801D349C 001C921C  EC 02 00 2A */	fadds f0, f2, f0
/* 801D34A0 001C9220  FC 00 00 1E */	fctiwz f0, f0
/* 801D34A4 001C9224  D8 01 00 08 */	stfd f0, 8(r1)
/* 801D34A8 001C9228  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801D34AC 001C922C  54 00 10 3A */	slwi r0, r0, 2
/* 801D34B0 001C9230  7C 44 04 2E */	lfsx f2, r4, r0
/* 801D34B4 001C9234  41 82 00 0C */	beq lbl_801D34C0
/* 801D34B8 001C9238  C0 04 02 00 */	lfs f0, 0x200(r4)
/* 801D34BC 001C923C  EC 42 00 24 */	fdivs f2, f2, f0
lbl_801D34C0:
/* 801D34C0 001C9240  88 03 00 05 */	lbz r0, 5(r3)
/* 801D34C4 001C9244  2C 00 00 00 */	cmpwi r0, 0
/* 801D34C8 001C9248  41 82 00 2C */	beq lbl_801D34F4
/* 801D34CC 001C924C  C0 22 A3 58 */	lfs f1, lbl_805A3678-_SDA2_BASE_(r2)
/* 801D34D0 001C9250  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D34D4 001C9254  40 81 00 08 */	ble lbl_801D34DC
/* 801D34D8 001C9258  48 00 00 40 */	b lbl_801D3518
lbl_801D34DC:
/* 801D34DC 001C925C  C0 22 A3 78 */	lfs f1, lbl_805A3698-_SDA2_BASE_(r2)
/* 801D34E0 001C9260  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D34E4 001C9264  40 80 00 08 */	bge lbl_801D34EC
/* 801D34E8 001C9268  48 00 00 30 */	b lbl_801D3518
lbl_801D34EC:
/* 801D34EC 001C926C  FC 20 10 90 */	fmr f1, f2
/* 801D34F0 001C9270  48 00 00 28 */	b lbl_801D3518
lbl_801D34F4:
/* 801D34F4 001C9274  C0 22 A3 5C */	lfs f1, lbl_805A367C-_SDA2_BASE_(r2)
/* 801D34F8 001C9278  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D34FC 001C927C  40 81 00 08 */	ble lbl_801D3504
/* 801D3500 001C9280  48 00 00 18 */	b lbl_801D3518
lbl_801D3504:
/* 801D3504 001C9284  C0 22 A3 78 */	lfs f1, lbl_805A3698-_SDA2_BASE_(r2)
/* 801D3508 001C9288  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D350C 001C928C  40 80 00 08 */	bge lbl_801D3514
/* 801D3510 001C9290  48 00 00 08 */	b lbl_801D3518
lbl_801D3514:
/* 801D3514 001C9294  FC 20 10 90 */	fmr f1, f2
lbl_801D3518:
/* 801D3518 001C9298  38 21 00 10 */	addi r1, r1, 0x10
/* 801D351C 001C929C  4E 80 00 20 */	blr 

.global nw4r3snd6detail4UtilFfRCQ54nw4r3snd6detail4U$7CalcSurroundPanRatio
nw4r3snd6detail4UtilFfRCQ54nw4r3snd6detail4U$7CalcSurroundPanRatio:
/* 801D3520 001C92A0  C0 02 A3 5C */	lfs f0, lbl_805A367C-_SDA2_BASE_(r2)
/* 801D3524 001C92A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D3528 001C92A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D352C 001C92AC  40 81 00 08 */	ble lbl_801D3534
/* 801D3530 001C92B0  48 00 00 18 */	b lbl_801D3548
lbl_801D3534:
/* 801D3534 001C92B4  C0 02 A3 78 */	lfs f0, lbl_805A3698-_SDA2_BASE_(r2)
/* 801D3538 001C92B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D353C 001C92BC  40 80 00 08 */	bge lbl_801D3544
/* 801D3540 001C92C0  48 00 00 08 */	b lbl_801D3548
lbl_801D3544:
/* 801D3544 001C92C4  FC 00 08 90 */	fmr f0, f1
lbl_801D3548:
/* 801D3548 001C92C8  C0 42 A3 60 */	lfs f2, lbl_805A3680-_SDA2_BASE_(r2)
/* 801D354C 001C92CC  3C 80 80 46 */	lis r4, lbl_80466D50@ha
/* 801D3550 001C92D0  80 03 00 00 */	lwz r0, 0(r3)
/* 801D3554 001C92D4  38 84 6D 50 */	addi r4, r4, lbl_80466D50@l
/* 801D3558 001C92D8  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801D355C 001C92DC  C0 02 A3 74 */	lfs f0, lbl_805A3694-_SDA2_BASE_(r2)
/* 801D3560 001C92E0  54 00 10 3A */	slwi r0, r0, 2
/* 801D3564 001C92E4  C0 62 A3 5C */	lfs f3, lbl_805A367C-_SDA2_BASE_(r2)
/* 801D3568 001C92E8  7C 64 00 2E */	lwzx r3, r4, r0
/* 801D356C 001C92EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801D3570 001C92F0  EC 02 00 2A */	fadds f0, f2, f0
/* 801D3574 001C92F4  FC 00 00 1E */	fctiwz f0, f0
/* 801D3578 001C92F8  D8 01 00 08 */	stfd f0, 8(r1)
/* 801D357C 001C92FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801D3580 001C9300  54 00 10 3A */	slwi r0, r0, 2
/* 801D3584 001C9304  7C 03 04 2E */	lfsx f0, r3, r0
/* 801D3588 001C9308  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801D358C 001C930C  40 81 00 08 */	ble lbl_801D3594
/* 801D3590 001C9310  48 00 00 18 */	b lbl_801D35A8
lbl_801D3594:
/* 801D3594 001C9314  C0 62 A3 78 */	lfs f3, lbl_805A3698-_SDA2_BASE_(r2)
/* 801D3598 001C9318  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801D359C 001C931C  40 80 00 08 */	bge lbl_801D35A4
/* 801D35A0 001C9320  48 00 00 08 */	b lbl_801D35A8
lbl_801D35A4:
/* 801D35A4 001C9324  FC 60 00 90 */	fmr f3, f0
lbl_801D35A8:
/* 801D35A8 001C9328  FC 20 18 90 */	fmr f1, f3
/* 801D35AC 001C932C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D35B0 001C9330  4E 80 00 20 */	blr 

.global nw4r3snd6detail4UtilFf$7CalcLpfFreq
nw4r3snd6detail4UtilFf$7CalcLpfFreq:
/* 801D35B4 001C9334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D35B8 001C9338  7C 08 02 A6 */	mflr r0
/* 801D35BC 001C933C  C0 42 A3 58 */	lfs f2, lbl_805A3678-_SDA2_BASE_(r2)
/* 801D35C0 001C9340  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D35C4 001C9344  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801D35C8 001C9348  40 81 00 08 */	ble lbl_801D35D0
/* 801D35CC 001C934C  48 00 00 18 */	b lbl_801D35E4
lbl_801D35D0:
/* 801D35D0 001C9350  C0 42 A3 78 */	lfs f2, lbl_805A3698-_SDA2_BASE_(r2)
/* 801D35D4 001C9354  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801D35D8 001C9358  40 80 00 08 */	bge lbl_801D35E0
/* 801D35DC 001C935C  48 00 00 08 */	b lbl_801D35E4
lbl_801D35E0:
/* 801D35E0 001C9360  FC 40 08 90 */	fmr f2, f1
lbl_801D35E4:
/* 801D35E4 001C9364  C8 22 A3 98 */	lfd f1, lbl_805A36B8-_SDA2_BASE_(r2)
/* 801D35E8 001C9368  C8 02 A3 90 */	lfd f0, lbl_805A36B0-_SDA2_BASE_(r2)
/* 801D35EC 001C936C  FC 42 08 28 */	fsub f2, f2, f1
/* 801D35F0 001C9370  C8 22 A3 88 */	lfd f1, lbl_805A36A8-_SDA2_BASE_(r2)
/* 801D35F4 001C9374  FC 40 00 B2 */	fmul f2, f0, f2
/* 801D35F8 001C9378  48 22 D5 4D */	bl pow
/* 801D35FC 001C937C  C8 02 A3 80 */	lfd f0, lbl_805A36A0-_SDA2_BASE_(r2)
/* 801D3600 001C9380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D3604 001C9384  FC 00 00 72 */	fmul f0, f0, f1
/* 801D3608 001C9388  FC 00 00 1E */	fctiwz f0, f0
/* 801D360C 001C938C  D8 01 00 08 */	stfd f0, 8(r1)
/* 801D3610 001C9390  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801D3614 001C9394  7C 08 03 A6 */	mtlr r0
/* 801D3618 001C9398  38 21 00 10 */	addi r1, r1, 0x10
/* 801D361C 001C939C  4E 80 00 20 */	blr 

.global nw4r3snd6detail4UtilFiPUsPUsPUsPUsPUs$7GetRemoteFilterCoefs
nw4r3snd6detail4UtilFiPUsPUsPUsPUsPUs$7GetRemoteFilterCoefs:
/* 801D3620 001C93A0  2C 03 00 7F */	cmpwi r3, 0x7f
/* 801D3624 001C93A4  40 81 00 0C */	ble lbl_801D3630
/* 801D3628 001C93A8  38 00 00 7F */	li r0, 0x7f
/* 801D362C 001C93AC  48 00 00 0C */	b lbl_801D3638
lbl_801D3630:
/* 801D3630 001C93B0  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 801D3634 001C93B4  7C 60 00 78 */	andc r0, r3, r0
lbl_801D3638:
/* 801D3638 001C93B8  1D 20 00 0A */	mulli r9, r0, 0xa
/* 801D363C 001C93BC  3C 60 80 41 */	lis r3, lbl_8040CF10@ha
/* 801D3640 001C93C0  38 63 CF 10 */	addi r3, r3, lbl_8040CF10@l
/* 801D3644 001C93C4  7C 03 4A 2E */	lhzx r0, r3, r9
/* 801D3648 001C93C8  7D 23 4A 14 */	add r9, r3, r9
/* 801D364C 001C93CC  A0 69 00 02 */	lhz r3, 2(r9)
/* 801D3650 001C93D0  B0 04 00 00 */	sth r0, 0(r4)
/* 801D3654 001C93D4  A0 09 00 04 */	lhz r0, 4(r9)
/* 801D3658 001C93D8  B0 65 00 00 */	sth r3, 0(r5)
/* 801D365C 001C93DC  A0 69 00 06 */	lhz r3, 6(r9)
/* 801D3660 001C93E0  B0 06 00 00 */	sth r0, 0(r6)
/* 801D3664 001C93E4  A0 09 00 08 */	lhz r0, 8(r9)
/* 801D3668 001C93E8  B0 67 00 00 */	sth r3, 0(r7)
/* 801D366C 001C93EC  B0 08 00 00 */	sth r0, 0(r8)
/* 801D3670 001C93F0  4E 80 00 20 */	blr 

.global nw4r3snd6detail4UtilFv$7CalcRandom
nw4r3snd6detail4UtilFv$7CalcRandom:
/* 801D3674 001C93F4  3C 60 00 19 */	lis r3, 0x0019660D@ha
/* 801D3678 001C93F8  80 8D A5 58 */	lwz r4, lbl_8059E978-_SDA_BASE_(r13)
/* 801D367C 001C93FC  38 03 66 0D */	addi r0, r3, 0x0019660D@l
/* 801D3680 001C9400  7C 64 01 D6 */	mullw r3, r4, r0
/* 801D3684 001C9404  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 801D3688 001C9408  38 03 F3 5F */	addi r0, r3, -3233
/* 801D368C 001C940C  90 0D A5 58 */	stw r0, lbl_8059E978-_SDA_BASE_(r13)
/* 801D3690 001C9410  54 03 84 3E */	srwi r3, r0, 0x10
/* 801D3694 001C9414  4E 80 00 20 */	blr 

.global nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util$7GetDataRefAddressImpl
nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util$7GetDataRefAddressImpl:
/* 801D3698 001C9418  2C 03 00 01 */	cmpwi r3, 1
/* 801D369C 001C941C  40 82 00 0C */	bne lbl_801D36A8
/* 801D36A0 001C9420  7C 64 2A 14 */	add r3, r4, r5
/* 801D36A4 001C9424  4E 80 00 20 */	blr 
lbl_801D36A8:
/* 801D36A8 001C9428  2C 03 00 00 */	cmpwi r3, 0
/* 801D36AC 001C942C  38 60 00 00 */	li r3, 0
/* 801D36B0 001C9430  4C 82 00 20 */	bnelr 
/* 801D36B4 001C9434  7C 83 23 78 */	mr r3, r4
/* 801D36B8 001C9438  4E 80 00 20 */	blr 
