.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global utBitArray$7clear
utBitArray$7clear:
/* 80044214 00039F94  7C 66 1B 78 */	mr r6, r3
/* 80044218 00039F98  38 E0 00 00 */	li r7, 0
/* 8004421C 00039F9C  38 A0 00 00 */	li r5, 0
/* 80044220 00039FA0  48 00 00 0C */	b lbl_8004422C
lbl_80044224:
/* 80044224 00039FA4  94 A6 00 04 */	stwu r5, 4(r6)
/* 80044228 00039FA8  38 E7 00 01 */	addi r7, r7, 1
lbl_8004422C:
/* 8004422C 00039FAC  80 83 00 00 */	lwz r4, 0(r3)
/* 80044230 00039FB0  38 04 00 01 */	addi r0, r4, 1
/* 80044234 00039FB4  54 04 D9 7E */	srwi r4, r0, 5
/* 80044238 00039FB8  38 04 00 01 */	addi r0, r4, 1
/* 8004423C 00039FBC  7C 07 00 40 */	cmplw r7, r0
/* 80044240 00039FC0  41 80 FF E4 */	blt lbl_80044224
/* 80044244 00039FC4  4E 80 00 20 */	blr 

.global utBitArray$7hasUnsetBit
utBitArray$7hasUnsetBit:
/* 80044248 00039FC8  80 C3 00 00 */	lwz r6, 0(r3)
/* 8004424C 00039FCC  7C 65 1B 78 */	mr r5, r3
/* 80044250 00039FD0  38 E0 00 00 */	li r7, 0
/* 80044254 00039FD4  54 C0 D9 7E */	srwi r0, r6, 5
/* 80044258 00039FD8  7C 09 03 A6 */	mtctr r0
/* 8004425C 00039FDC  28 00 00 00 */	cmplwi r0, 0
/* 80044260 00039FE0  40 81 00 28 */	ble lbl_80044288
lbl_80044264:
/* 80044264 00039FE4  80 85 00 04 */	lwz r4, 4(r5)
/* 80044268 00039FE8  3C 04 00 01 */	addis r0, r4, 1
/* 8004426C 00039FEC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80044270 00039FF0  41 82 00 0C */	beq lbl_8004427C
/* 80044274 00039FF4  38 60 00 01 */	li r3, 1
/* 80044278 00039FF8  4E 80 00 20 */	blr 
lbl_8004427C:
/* 8004427C 00039FFC  38 A5 00 04 */	addi r5, r5, 4
/* 80044280 0003A000  38 E7 00 01 */	addi r7, r7, 1
/* 80044284 0003A004  42 00 FF E0 */	bdnz lbl_80044264
lbl_80044288:
/* 80044288 0003A008  54 E0 28 34 */	slwi r0, r7, 5
/* 8004428C 0003A00C  7C 00 30 40 */	cmplw r0, r6
/* 80044290 0003A010  40 80 00 C8 */	bge lbl_80044358
/* 80044294 0003A014  7D 00 30 50 */	subf r8, r0, r6
/* 80044298 0003A018  38 C0 00 00 */	li r6, 0
/* 8004429C 0003A01C  28 08 00 00 */	cmplwi r8, 0
/* 800442A0 0003A020  38 A0 00 00 */	li r5, 0
/* 800442A4 0003A024  38 80 00 01 */	li r4, 1
/* 800442A8 0003A028  40 81 00 90 */	ble lbl_80044338
/* 800442AC 0003A02C  55 00 E8 FF */	rlwinm. r0, r8, 0x1d, 3, 0x1f
/* 800442B0 0003A030  7C 09 03 A6 */	mtctr r0
/* 800442B4 0003A034  41 82 00 70 */	beq lbl_80044324
lbl_800442B8:
/* 800442B8 0003A038  7C 80 28 30 */	slw r0, r4, r5
/* 800442BC 0003A03C  38 A5 00 01 */	addi r5, r5, 1
/* 800442C0 0003A040  7C C6 03 78 */	or r6, r6, r0
/* 800442C4 0003A044  7C 80 28 30 */	slw r0, r4, r5
/* 800442C8 0003A048  38 A5 00 01 */	addi r5, r5, 1
/* 800442CC 0003A04C  7C C6 03 78 */	or r6, r6, r0
/* 800442D0 0003A050  7C 80 28 30 */	slw r0, r4, r5
/* 800442D4 0003A054  38 A5 00 01 */	addi r5, r5, 1
/* 800442D8 0003A058  7C C6 03 78 */	or r6, r6, r0
/* 800442DC 0003A05C  7C 80 28 30 */	slw r0, r4, r5
/* 800442E0 0003A060  38 A5 00 01 */	addi r5, r5, 1
/* 800442E4 0003A064  7C C6 03 78 */	or r6, r6, r0
/* 800442E8 0003A068  7C 80 28 30 */	slw r0, r4, r5
/* 800442EC 0003A06C  38 A5 00 01 */	addi r5, r5, 1
/* 800442F0 0003A070  7C C6 03 78 */	or r6, r6, r0
/* 800442F4 0003A074  7C 80 28 30 */	slw r0, r4, r5
/* 800442F8 0003A078  38 A5 00 01 */	addi r5, r5, 1
/* 800442FC 0003A07C  7C C6 03 78 */	or r6, r6, r0
/* 80044300 0003A080  7C 80 28 30 */	slw r0, r4, r5
/* 80044304 0003A084  38 A5 00 01 */	addi r5, r5, 1
/* 80044308 0003A088  7C C6 03 78 */	or r6, r6, r0
/* 8004430C 0003A08C  7C 80 28 30 */	slw r0, r4, r5
/* 80044310 0003A090  38 A5 00 01 */	addi r5, r5, 1
/* 80044314 0003A094  7C C6 03 78 */	or r6, r6, r0
/* 80044318 0003A098  42 00 FF A0 */	bdnz lbl_800442B8
/* 8004431C 0003A09C  71 08 00 07 */	andi. r8, r8, 7
/* 80044320 0003A0A0  41 82 00 18 */	beq lbl_80044338
lbl_80044324:
/* 80044324 0003A0A4  7D 09 03 A6 */	mtctr r8
lbl_80044328:
/* 80044328 0003A0A8  7C 80 28 30 */	slw r0, r4, r5
/* 8004432C 0003A0AC  38 A5 00 01 */	addi r5, r5, 1
/* 80044330 0003A0B0  7C C6 03 78 */	or r6, r6, r0
/* 80044334 0003A0B4  42 00 FF F4 */	bdnz lbl_80044328
lbl_80044338:
/* 80044338 0003A0B8  54 E0 10 3A */	slwi r0, r7, 2
/* 8004433C 0003A0BC  7C 63 02 14 */	add r3, r3, r0
/* 80044340 0003A0C0  80 03 00 04 */	lwz r0, 4(r3)
/* 80044344 0003A0C4  7C C0 00 38 */	and r0, r6, r0
/* 80044348 0003A0C8  7C 06 00 40 */	cmplw r6, r0
/* 8004434C 0003A0CC  41 82 00 0C */	beq lbl_80044358
/* 80044350 0003A0D0  38 60 00 01 */	li r3, 1
/* 80044354 0003A0D4  4E 80 00 20 */	blr 
lbl_80044358:
/* 80044358 0003A0D8  38 60 00 00 */	li r3, 0
/* 8004435C 0003A0DC  4E 80 00 20 */	blr 

.global utBitArray$7getUnsetBit
utBitArray$7getUnsetBit:
/* 80044360 0003A0E0  80 C3 00 00 */	lwz r6, 0(r3)
/* 80044364 0003A0E4  7C 65 1B 78 */	mr r5, r3
/* 80044368 0003A0E8  38 E0 00 00 */	li r7, 0
/* 8004436C 0003A0EC  39 00 00 00 */	li r8, 0
/* 80044370 0003A0F0  54 C0 D9 7E */	srwi r0, r6, 5
/* 80044374 0003A0F4  7C 09 03 A6 */	mtctr r0
/* 80044378 0003A0F8  28 00 00 00 */	cmplwi r0, 0
/* 8004437C 0003A0FC  40 81 00 EC */	ble lbl_80044468
lbl_80044380:
/* 80044380 0003A100  80 85 00 04 */	lwz r4, 4(r5)
/* 80044384 0003A104  3C 04 00 01 */	addis r0, r4, 1
/* 80044388 0003A108  28 00 FF FF */	cmplwi r0, 0xffff
/* 8004438C 0003A10C  41 82 00 CC */	beq lbl_80044458
/* 80044390 0003A110  55 04 10 3A */	slwi r4, r8, 2
/* 80044394 0003A114  38 00 00 04 */	li r0, 4
/* 80044398 0003A118  7C 63 22 14 */	add r3, r3, r4
/* 8004439C 0003A11C  38 80 00 00 */	li r4, 0
/* 800443A0 0003A120  80 63 00 04 */	lwz r3, 4(r3)
/* 800443A4 0003A124  7C 09 03 A6 */	mtctr r0
lbl_800443A8:
/* 800443A8 0003A128  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800443AC 0003A12C  40 82 00 08 */	bne lbl_800443B4
/* 800443B0 0003A130  48 00 00 A0 */	b lbl_80044450
lbl_800443B4:
/* 800443B4 0003A134  54 63 F8 7E */	srwi r3, r3, 1
/* 800443B8 0003A138  38 84 00 01 */	addi r4, r4, 1
/* 800443BC 0003A13C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800443C0 0003A140  40 82 00 08 */	bne lbl_800443C8
/* 800443C4 0003A144  48 00 00 8C */	b lbl_80044450
lbl_800443C8:
/* 800443C8 0003A148  54 63 F8 7E */	srwi r3, r3, 1
/* 800443CC 0003A14C  38 84 00 01 */	addi r4, r4, 1
/* 800443D0 0003A150  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800443D4 0003A154  40 82 00 08 */	bne lbl_800443DC
/* 800443D8 0003A158  48 00 00 78 */	b lbl_80044450
lbl_800443DC:
/* 800443DC 0003A15C  54 63 F8 7E */	srwi r3, r3, 1
/* 800443E0 0003A160  38 84 00 01 */	addi r4, r4, 1
/* 800443E4 0003A164  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800443E8 0003A168  40 82 00 08 */	bne lbl_800443F0
/* 800443EC 0003A16C  48 00 00 64 */	b lbl_80044450
lbl_800443F0:
/* 800443F0 0003A170  54 63 F8 7E */	srwi r3, r3, 1
/* 800443F4 0003A174  38 84 00 01 */	addi r4, r4, 1
/* 800443F8 0003A178  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800443FC 0003A17C  40 82 00 08 */	bne lbl_80044404
/* 80044400 0003A180  48 00 00 50 */	b lbl_80044450
lbl_80044404:
/* 80044404 0003A184  54 63 F8 7E */	srwi r3, r3, 1
/* 80044408 0003A188  38 84 00 01 */	addi r4, r4, 1
/* 8004440C 0003A18C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80044410 0003A190  40 82 00 08 */	bne lbl_80044418
/* 80044414 0003A194  48 00 00 3C */	b lbl_80044450
lbl_80044418:
/* 80044418 0003A198  54 63 F8 7E */	srwi r3, r3, 1
/* 8004441C 0003A19C  38 84 00 01 */	addi r4, r4, 1
/* 80044420 0003A1A0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80044424 0003A1A4  40 82 00 08 */	bne lbl_8004442C
/* 80044428 0003A1A8  48 00 00 28 */	b lbl_80044450
lbl_8004442C:
/* 8004442C 0003A1AC  54 63 F8 7E */	srwi r3, r3, 1
/* 80044430 0003A1B0  38 84 00 01 */	addi r4, r4, 1
/* 80044434 0003A1B4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80044438 0003A1B8  40 82 00 08 */	bne lbl_80044440
/* 8004443C 0003A1BC  48 00 00 14 */	b lbl_80044450
lbl_80044440:
/* 80044440 0003A1C0  54 63 F8 7E */	srwi r3, r3, 1
/* 80044444 0003A1C4  38 84 00 01 */	addi r4, r4, 1
/* 80044448 0003A1C8  42 00 FF 60 */	bdnz lbl_800443A8
/* 8004444C 0003A1CC  38 80 00 21 */	li r4, 0x21
lbl_80044450:
/* 80044450 0003A1D0  7C 67 22 14 */	add r3, r7, r4
/* 80044454 0003A1D4  4E 80 00 20 */	blr 
lbl_80044458:
/* 80044458 0003A1D8  38 E7 00 20 */	addi r7, r7, 0x20
/* 8004445C 0003A1DC  38 A5 00 04 */	addi r5, r5, 4
/* 80044460 0003A1E0  39 08 00 01 */	addi r8, r8, 1
/* 80044464 0003A1E4  42 00 FF 1C */	bdnz lbl_80044380
lbl_80044468:
/* 80044468 0003A1E8  55 00 28 34 */	slwi r0, r8, 5
/* 8004446C 0003A1EC  7C 00 30 40 */	cmplw r0, r6
/* 80044470 0003A1F0  40 80 01 80 */	bge lbl_800445F0
/* 80044474 0003A1F4  7D 20 30 50 */	subf r9, r0, r6
/* 80044478 0003A1F8  38 C0 00 00 */	li r6, 0
/* 8004447C 0003A1FC  28 09 00 00 */	cmplwi r9, 0
/* 80044480 0003A200  38 A0 00 00 */	li r5, 0
/* 80044484 0003A204  38 80 00 01 */	li r4, 1
/* 80044488 0003A208  40 81 00 90 */	ble lbl_80044518
/* 8004448C 0003A20C  55 20 E8 FF */	rlwinm. r0, r9, 0x1d, 3, 0x1f
/* 80044490 0003A210  7C 09 03 A6 */	mtctr r0
/* 80044494 0003A214  41 82 00 70 */	beq lbl_80044504
lbl_80044498:
/* 80044498 0003A218  7C 80 28 30 */	slw r0, r4, r5
/* 8004449C 0003A21C  38 A5 00 01 */	addi r5, r5, 1
/* 800444A0 0003A220  7C C6 03 78 */	or r6, r6, r0
/* 800444A4 0003A224  7C 80 28 30 */	slw r0, r4, r5
/* 800444A8 0003A228  38 A5 00 01 */	addi r5, r5, 1
/* 800444AC 0003A22C  7C C6 03 78 */	or r6, r6, r0
/* 800444B0 0003A230  7C 80 28 30 */	slw r0, r4, r5
/* 800444B4 0003A234  38 A5 00 01 */	addi r5, r5, 1
/* 800444B8 0003A238  7C C6 03 78 */	or r6, r6, r0
/* 800444BC 0003A23C  7C 80 28 30 */	slw r0, r4, r5
/* 800444C0 0003A240  38 A5 00 01 */	addi r5, r5, 1
/* 800444C4 0003A244  7C C6 03 78 */	or r6, r6, r0
/* 800444C8 0003A248  7C 80 28 30 */	slw r0, r4, r5
/* 800444CC 0003A24C  38 A5 00 01 */	addi r5, r5, 1
/* 800444D0 0003A250  7C C6 03 78 */	or r6, r6, r0
/* 800444D4 0003A254  7C 80 28 30 */	slw r0, r4, r5
/* 800444D8 0003A258  38 A5 00 01 */	addi r5, r5, 1
/* 800444DC 0003A25C  7C C6 03 78 */	or r6, r6, r0
/* 800444E0 0003A260  7C 80 28 30 */	slw r0, r4, r5
/* 800444E4 0003A264  38 A5 00 01 */	addi r5, r5, 1
/* 800444E8 0003A268  7C C6 03 78 */	or r6, r6, r0
/* 800444EC 0003A26C  7C 80 28 30 */	slw r0, r4, r5
/* 800444F0 0003A270  38 A5 00 01 */	addi r5, r5, 1
/* 800444F4 0003A274  7C C6 03 78 */	or r6, r6, r0
/* 800444F8 0003A278  42 00 FF A0 */	bdnz lbl_80044498
/* 800444FC 0003A27C  71 29 00 07 */	andi. r9, r9, 7
/* 80044500 0003A280  41 82 00 18 */	beq lbl_80044518
lbl_80044504:
/* 80044504 0003A284  7D 29 03 A6 */	mtctr r9
lbl_80044508:
/* 80044508 0003A288  7C 80 28 30 */	slw r0, r4, r5
/* 8004450C 0003A28C  38 A5 00 01 */	addi r5, r5, 1
/* 80044510 0003A290  7C C6 03 78 */	or r6, r6, r0
/* 80044514 0003A294  42 00 FF F4 */	bdnz lbl_80044508
lbl_80044518:
/* 80044518 0003A298  55 00 10 3A */	slwi r0, r8, 2
/* 8004451C 0003A29C  7C 63 02 14 */	add r3, r3, r0
/* 80044520 0003A2A0  80 03 00 04 */	lwz r0, 4(r3)
/* 80044524 0003A2A4  7C 04 33 38 */	orc r4, r0, r6
/* 80044528 0003A2A8  3C 04 00 01 */	addis r0, r4, 1
/* 8004452C 0003A2AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80044530 0003A2B0  41 82 00 C0 */	beq lbl_800445F0
/* 80044534 0003A2B4  38 00 00 04 */	li r0, 4
/* 80044538 0003A2B8  38 60 00 00 */	li r3, 0
/* 8004453C 0003A2BC  7C 09 03 A6 */	mtctr r0
lbl_80044540:
/* 80044540 0003A2C0  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80044544 0003A2C4  40 82 00 08 */	bne lbl_8004454C
/* 80044548 0003A2C8  48 00 00 A0 */	b lbl_800445E8
lbl_8004454C:
/* 8004454C 0003A2CC  54 84 F8 7E */	srwi r4, r4, 1
/* 80044550 0003A2D0  38 63 00 01 */	addi r3, r3, 1
/* 80044554 0003A2D4  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80044558 0003A2D8  40 82 00 08 */	bne lbl_80044560
/* 8004455C 0003A2DC  48 00 00 8C */	b lbl_800445E8
lbl_80044560:
/* 80044560 0003A2E0  54 84 F8 7E */	srwi r4, r4, 1
/* 80044564 0003A2E4  38 63 00 01 */	addi r3, r3, 1
/* 80044568 0003A2E8  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8004456C 0003A2EC  40 82 00 08 */	bne lbl_80044574
/* 80044570 0003A2F0  48 00 00 78 */	b lbl_800445E8
lbl_80044574:
/* 80044574 0003A2F4  54 84 F8 7E */	srwi r4, r4, 1
/* 80044578 0003A2F8  38 63 00 01 */	addi r3, r3, 1
/* 8004457C 0003A2FC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80044580 0003A300  40 82 00 08 */	bne lbl_80044588
/* 80044584 0003A304  48 00 00 64 */	b lbl_800445E8
lbl_80044588:
/* 80044588 0003A308  54 84 F8 7E */	srwi r4, r4, 1
/* 8004458C 0003A30C  38 63 00 01 */	addi r3, r3, 1
/* 80044590 0003A310  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80044594 0003A314  40 82 00 08 */	bne lbl_8004459C
/* 80044598 0003A318  48 00 00 50 */	b lbl_800445E8
lbl_8004459C:
/* 8004459C 0003A31C  54 84 F8 7E */	srwi r4, r4, 1
/* 800445A0 0003A320  38 63 00 01 */	addi r3, r3, 1
/* 800445A4 0003A324  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800445A8 0003A328  40 82 00 08 */	bne lbl_800445B0
/* 800445AC 0003A32C  48 00 00 3C */	b lbl_800445E8
lbl_800445B0:
/* 800445B0 0003A330  54 84 F8 7E */	srwi r4, r4, 1
/* 800445B4 0003A334  38 63 00 01 */	addi r3, r3, 1
/* 800445B8 0003A338  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800445BC 0003A33C  40 82 00 08 */	bne lbl_800445C4
/* 800445C0 0003A340  48 00 00 28 */	b lbl_800445E8
lbl_800445C4:
/* 800445C4 0003A344  54 84 F8 7E */	srwi r4, r4, 1
/* 800445C8 0003A348  38 63 00 01 */	addi r3, r3, 1
/* 800445CC 0003A34C  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800445D0 0003A350  40 82 00 08 */	bne lbl_800445D8
/* 800445D4 0003A354  48 00 00 14 */	b lbl_800445E8
lbl_800445D8:
/* 800445D8 0003A358  54 84 F8 7E */	srwi r4, r4, 1
/* 800445DC 0003A35C  38 63 00 01 */	addi r3, r3, 1
/* 800445E0 0003A360  42 00 FF 60 */	bdnz lbl_80044540
/* 800445E4 0003A364  38 60 00 21 */	li r3, 0x21
lbl_800445E8:
/* 800445E8 0003A368  7C 67 1A 14 */	add r3, r7, r3
/* 800445EC 0003A36C  4E 80 00 20 */	blr 
lbl_800445F0:
/* 800445F0 0003A370  3C 60 10 00 */	lis r3, 0x0FFFFFFF@ha
/* 800445F4 0003A374  38 63 FF FF */	addi r3, r3, 0x0FFFFFFF@l
/* 800445F8 0003A378  4E 80 00 20 */	blr 

.global utBitArrayStaticBase$7initilize
utBitArrayStaticBase$7initilize:
/* 800445FC 0003A37C  38 04 00 01 */	addi r0, r4, 1
/* 80044600 0003A380  90 83 00 00 */	stw r4, 0(r3)
/* 80044604 0003A384  54 05 D9 7E */	srwi r5, r0, 5
/* 80044608 0003A388  38 80 00 00 */	li r4, 0
/* 8004460C 0003A38C  28 05 00 00 */	cmplwi r5, 0
/* 80044610 0003A390  4C 81 00 20 */	blelr 
/* 80044614 0003A394  54 A0 E8 FF */	rlwinm. r0, r5, 0x1d, 3, 0x1f
/* 80044618 0003A398  7C 09 03 A6 */	mtctr r0
/* 8004461C 0003A39C  41 82 00 30 */	beq lbl_8004464C
lbl_80044620:
/* 80044620 0003A3A0  90 83 00 04 */	stw r4, 4(r3)
/* 80044624 0003A3A4  90 83 00 08 */	stw r4, 8(r3)
/* 80044628 0003A3A8  90 83 00 0C */	stw r4, 0xc(r3)
/* 8004462C 0003A3AC  90 83 00 10 */	stw r4, 0x10(r3)
/* 80044630 0003A3B0  90 83 00 14 */	stw r4, 0x14(r3)
/* 80044634 0003A3B4  90 83 00 18 */	stw r4, 0x18(r3)
/* 80044638 0003A3B8  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8004463C 0003A3BC  94 83 00 20 */	stwu r4, 0x20(r3)
/* 80044640 0003A3C0  42 00 FF E0 */	bdnz lbl_80044620
/* 80044644 0003A3C4  70 A5 00 07 */	andi. r5, r5, 7
/* 80044648 0003A3C8  4D 82 00 20 */	beqlr 
lbl_8004464C:
/* 8004464C 0003A3CC  7C A9 03 A6 */	mtctr r5
lbl_80044650:
/* 80044650 0003A3D0  94 83 00 04 */	stwu r4, 4(r3)
/* 80044654 0003A3D4  42 00 FF FC */	bdnz lbl_80044650
/* 80044658 0003A3D8  4E 80 00 20 */	blr 

.global utBitArrayStaticBase$7getUnsetBit
utBitArrayStaticBase$7getUnsetBit:
/* 8004465C 0003A3DC  80 C3 00 00 */	lwz r6, 0(r3)
/* 80044660 0003A3E0  7C 65 1B 78 */	mr r5, r3
/* 80044664 0003A3E4  38 E0 00 00 */	li r7, 0
/* 80044668 0003A3E8  39 00 00 00 */	li r8, 0
/* 8004466C 0003A3EC  54 C0 D9 7E */	srwi r0, r6, 5
/* 80044670 0003A3F0  7C 09 03 A6 */	mtctr r0
/* 80044674 0003A3F4  28 00 00 00 */	cmplwi r0, 0
/* 80044678 0003A3F8  40 81 00 EC */	ble lbl_80044764
lbl_8004467C:
/* 8004467C 0003A3FC  80 85 00 04 */	lwz r4, 4(r5)
/* 80044680 0003A400  3C 04 00 01 */	addis r0, r4, 1
/* 80044684 0003A404  28 00 FF FF */	cmplwi r0, 0xffff
/* 80044688 0003A408  41 82 00 CC */	beq lbl_80044754
/* 8004468C 0003A40C  55 04 10 3A */	slwi r4, r8, 2
/* 80044690 0003A410  38 00 00 04 */	li r0, 4
/* 80044694 0003A414  7C 63 22 14 */	add r3, r3, r4
/* 80044698 0003A418  38 80 00 00 */	li r4, 0
/* 8004469C 0003A41C  80 63 00 04 */	lwz r3, 4(r3)
/* 800446A0 0003A420  7C 09 03 A6 */	mtctr r0
lbl_800446A4:
/* 800446A4 0003A424  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800446A8 0003A428  40 82 00 08 */	bne lbl_800446B0
/* 800446AC 0003A42C  48 00 00 A0 */	b lbl_8004474C
lbl_800446B0:
/* 800446B0 0003A430  54 63 F8 7E */	srwi r3, r3, 1
/* 800446B4 0003A434  38 84 00 01 */	addi r4, r4, 1
/* 800446B8 0003A438  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800446BC 0003A43C  40 82 00 08 */	bne lbl_800446C4
/* 800446C0 0003A440  48 00 00 8C */	b lbl_8004474C
lbl_800446C4:
/* 800446C4 0003A444  54 63 F8 7E */	srwi r3, r3, 1
/* 800446C8 0003A448  38 84 00 01 */	addi r4, r4, 1
/* 800446CC 0003A44C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800446D0 0003A450  40 82 00 08 */	bne lbl_800446D8
/* 800446D4 0003A454  48 00 00 78 */	b lbl_8004474C
lbl_800446D8:
/* 800446D8 0003A458  54 63 F8 7E */	srwi r3, r3, 1
/* 800446DC 0003A45C  38 84 00 01 */	addi r4, r4, 1
/* 800446E0 0003A460  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800446E4 0003A464  40 82 00 08 */	bne lbl_800446EC
/* 800446E8 0003A468  48 00 00 64 */	b lbl_8004474C
lbl_800446EC:
/* 800446EC 0003A46C  54 63 F8 7E */	srwi r3, r3, 1
/* 800446F0 0003A470  38 84 00 01 */	addi r4, r4, 1
/* 800446F4 0003A474  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800446F8 0003A478  40 82 00 08 */	bne lbl_80044700
/* 800446FC 0003A47C  48 00 00 50 */	b lbl_8004474C
lbl_80044700:
/* 80044700 0003A480  54 63 F8 7E */	srwi r3, r3, 1
/* 80044704 0003A484  38 84 00 01 */	addi r4, r4, 1
/* 80044708 0003A488  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8004470C 0003A48C  40 82 00 08 */	bne lbl_80044714
/* 80044710 0003A490  48 00 00 3C */	b lbl_8004474C
lbl_80044714:
/* 80044714 0003A494  54 63 F8 7E */	srwi r3, r3, 1
/* 80044718 0003A498  38 84 00 01 */	addi r4, r4, 1
/* 8004471C 0003A49C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80044720 0003A4A0  40 82 00 08 */	bne lbl_80044728
/* 80044724 0003A4A4  48 00 00 28 */	b lbl_8004474C
lbl_80044728:
/* 80044728 0003A4A8  54 63 F8 7E */	srwi r3, r3, 1
/* 8004472C 0003A4AC  38 84 00 01 */	addi r4, r4, 1
/* 80044730 0003A4B0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80044734 0003A4B4  40 82 00 08 */	bne lbl_8004473C
/* 80044738 0003A4B8  48 00 00 14 */	b lbl_8004474C
lbl_8004473C:
/* 8004473C 0003A4BC  54 63 F8 7E */	srwi r3, r3, 1
/* 80044740 0003A4C0  38 84 00 01 */	addi r4, r4, 1
/* 80044744 0003A4C4  42 00 FF 60 */	bdnz lbl_800446A4
/* 80044748 0003A4C8  38 80 00 21 */	li r4, 0x21
lbl_8004474C:
/* 8004474C 0003A4CC  7C 67 22 14 */	add r3, r7, r4
/* 80044750 0003A4D0  4E 80 00 20 */	blr 
lbl_80044754:
/* 80044754 0003A4D4  38 E7 00 20 */	addi r7, r7, 0x20
/* 80044758 0003A4D8  38 A5 00 04 */	addi r5, r5, 4
/* 8004475C 0003A4DC  39 08 00 01 */	addi r8, r8, 1
/* 80044760 0003A4E0  42 00 FF 1C */	bdnz lbl_8004467C
lbl_80044764:
/* 80044764 0003A4E4  55 00 28 34 */	slwi r0, r8, 5
/* 80044768 0003A4E8  7C 00 30 40 */	cmplw r0, r6
/* 8004476C 0003A4EC  40 80 01 80 */	bge lbl_800448EC
/* 80044770 0003A4F0  7D 20 30 50 */	subf r9, r0, r6
/* 80044774 0003A4F4  38 C0 00 00 */	li r6, 0
/* 80044778 0003A4F8  28 09 00 00 */	cmplwi r9, 0
/* 8004477C 0003A4FC  38 A0 00 00 */	li r5, 0
/* 80044780 0003A500  38 80 00 01 */	li r4, 1
/* 80044784 0003A504  40 81 00 90 */	ble lbl_80044814
/* 80044788 0003A508  55 20 E8 FF */	rlwinm. r0, r9, 0x1d, 3, 0x1f
/* 8004478C 0003A50C  7C 09 03 A6 */	mtctr r0
/* 80044790 0003A510  41 82 00 70 */	beq lbl_80044800
lbl_80044794:
/* 80044794 0003A514  7C 80 28 30 */	slw r0, r4, r5
/* 80044798 0003A518  38 A5 00 01 */	addi r5, r5, 1
/* 8004479C 0003A51C  7C C6 03 78 */	or r6, r6, r0
/* 800447A0 0003A520  7C 80 28 30 */	slw r0, r4, r5
/* 800447A4 0003A524  38 A5 00 01 */	addi r5, r5, 1
/* 800447A8 0003A528  7C C6 03 78 */	or r6, r6, r0
/* 800447AC 0003A52C  7C 80 28 30 */	slw r0, r4, r5
/* 800447B0 0003A530  38 A5 00 01 */	addi r5, r5, 1
/* 800447B4 0003A534  7C C6 03 78 */	or r6, r6, r0
/* 800447B8 0003A538  7C 80 28 30 */	slw r0, r4, r5
/* 800447BC 0003A53C  38 A5 00 01 */	addi r5, r5, 1
/* 800447C0 0003A540  7C C6 03 78 */	or r6, r6, r0
/* 800447C4 0003A544  7C 80 28 30 */	slw r0, r4, r5
/* 800447C8 0003A548  38 A5 00 01 */	addi r5, r5, 1
/* 800447CC 0003A54C  7C C6 03 78 */	or r6, r6, r0
/* 800447D0 0003A550  7C 80 28 30 */	slw r0, r4, r5
/* 800447D4 0003A554  38 A5 00 01 */	addi r5, r5, 1
/* 800447D8 0003A558  7C C6 03 78 */	or r6, r6, r0
/* 800447DC 0003A55C  7C 80 28 30 */	slw r0, r4, r5
/* 800447E0 0003A560  38 A5 00 01 */	addi r5, r5, 1
/* 800447E4 0003A564  7C C6 03 78 */	or r6, r6, r0
/* 800447E8 0003A568  7C 80 28 30 */	slw r0, r4, r5
/* 800447EC 0003A56C  38 A5 00 01 */	addi r5, r5, 1
/* 800447F0 0003A570  7C C6 03 78 */	or r6, r6, r0
/* 800447F4 0003A574  42 00 FF A0 */	bdnz lbl_80044794
/* 800447F8 0003A578  71 29 00 07 */	andi. r9, r9, 7
/* 800447FC 0003A57C  41 82 00 18 */	beq lbl_80044814
lbl_80044800:
/* 80044800 0003A580  7D 29 03 A6 */	mtctr r9
lbl_80044804:
/* 80044804 0003A584  7C 80 28 30 */	slw r0, r4, r5
/* 80044808 0003A588  38 A5 00 01 */	addi r5, r5, 1
/* 8004480C 0003A58C  7C C6 03 78 */	or r6, r6, r0
/* 80044810 0003A590  42 00 FF F4 */	bdnz lbl_80044804
lbl_80044814:
/* 80044814 0003A594  55 00 10 3A */	slwi r0, r8, 2
/* 80044818 0003A598  7C 63 02 14 */	add r3, r3, r0
/* 8004481C 0003A59C  80 03 00 04 */	lwz r0, 4(r3)
/* 80044820 0003A5A0  7C 04 33 38 */	orc r4, r0, r6
/* 80044824 0003A5A4  3C 04 00 01 */	addis r0, r4, 1
/* 80044828 0003A5A8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8004482C 0003A5AC  41 82 00 C0 */	beq lbl_800448EC
/* 80044830 0003A5B0  38 00 00 04 */	li r0, 4
/* 80044834 0003A5B4  38 60 00 00 */	li r3, 0
/* 80044838 0003A5B8  7C 09 03 A6 */	mtctr r0
lbl_8004483C:
/* 8004483C 0003A5BC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80044840 0003A5C0  40 82 00 08 */	bne lbl_80044848
/* 80044844 0003A5C4  48 00 00 A0 */	b lbl_800448E4
lbl_80044848:
/* 80044848 0003A5C8  54 84 F8 7E */	srwi r4, r4, 1
/* 8004484C 0003A5CC  38 63 00 01 */	addi r3, r3, 1
/* 80044850 0003A5D0  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80044854 0003A5D4  40 82 00 08 */	bne lbl_8004485C
/* 80044858 0003A5D8  48 00 00 8C */	b lbl_800448E4
lbl_8004485C:
/* 8004485C 0003A5DC  54 84 F8 7E */	srwi r4, r4, 1
/* 80044860 0003A5E0  38 63 00 01 */	addi r3, r3, 1
/* 80044864 0003A5E4  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80044868 0003A5E8  40 82 00 08 */	bne lbl_80044870
/* 8004486C 0003A5EC  48 00 00 78 */	b lbl_800448E4
lbl_80044870:
/* 80044870 0003A5F0  54 84 F8 7E */	srwi r4, r4, 1
/* 80044874 0003A5F4  38 63 00 01 */	addi r3, r3, 1
/* 80044878 0003A5F8  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8004487C 0003A5FC  40 82 00 08 */	bne lbl_80044884
/* 80044880 0003A600  48 00 00 64 */	b lbl_800448E4
lbl_80044884:
/* 80044884 0003A604  54 84 F8 7E */	srwi r4, r4, 1
/* 80044888 0003A608  38 63 00 01 */	addi r3, r3, 1
/* 8004488C 0003A60C  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80044890 0003A610  40 82 00 08 */	bne lbl_80044898
/* 80044894 0003A614  48 00 00 50 */	b lbl_800448E4
lbl_80044898:
/* 80044898 0003A618  54 84 F8 7E */	srwi r4, r4, 1
/* 8004489C 0003A61C  38 63 00 01 */	addi r3, r3, 1
/* 800448A0 0003A620  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800448A4 0003A624  40 82 00 08 */	bne lbl_800448AC
/* 800448A8 0003A628  48 00 00 3C */	b lbl_800448E4
lbl_800448AC:
/* 800448AC 0003A62C  54 84 F8 7E */	srwi r4, r4, 1
/* 800448B0 0003A630  38 63 00 01 */	addi r3, r3, 1
/* 800448B4 0003A634  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800448B8 0003A638  40 82 00 08 */	bne lbl_800448C0
/* 800448BC 0003A63C  48 00 00 28 */	b lbl_800448E4
lbl_800448C0:
/* 800448C0 0003A640  54 84 F8 7E */	srwi r4, r4, 1
/* 800448C4 0003A644  38 63 00 01 */	addi r3, r3, 1
/* 800448C8 0003A648  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800448CC 0003A64C  40 82 00 08 */	bne lbl_800448D4
/* 800448D0 0003A650  48 00 00 14 */	b lbl_800448E4
lbl_800448D4:
/* 800448D4 0003A654  54 84 F8 7E */	srwi r4, r4, 1
/* 800448D8 0003A658  38 63 00 01 */	addi r3, r3, 1
/* 800448DC 0003A65C  42 00 FF 60 */	bdnz lbl_8004483C
/* 800448E0 0003A660  38 60 00 21 */	li r3, 0x21
lbl_800448E4:
/* 800448E4 0003A664  7C 67 1A 14 */	add r3, r7, r3
/* 800448E8 0003A668  4E 80 00 20 */	blr 
lbl_800448EC:
/* 800448EC 0003A66C  3C 60 10 00 */	lis r3, 0x0FFFFFFF@ha
/* 800448F0 0003A670  38 63 FF FF */	addi r3, r3, 0x0FFFFFFF@l
/* 800448F4 0003A674  4E 80 00 20 */	blr 

