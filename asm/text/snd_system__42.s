.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global sndSystem$7isFinishLoad
sndSystem$7isFinishLoad:
/* 800794DC 0006F25C  80 05 00 04 */	lwz r0, 4(r5)
/* 800794E0 0006F260  7C 00 20 40 */	cmplw r0, r4
/* 800794E4 0006F264  40 80 00 64 */	bge lbl_80079548
/* 800794E8 0006F268  80 07 04 54 */	lwz r0, 0x454(r7)
/* 800794EC 0006F26C  39 08 00 01 */	addi r8, r8, 1
/* 800794F0 0006F270  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800794F4 0006F274  7C A6 02 14 */	add r5, r6, r0
/* 800794F8 0006F278  80 05 00 04 */	lwz r0, 4(r5)
/* 800794FC 0006F27C  7C 00 20 40 */	cmplw r0, r4
/* 80079500 0006F280  40 80 00 48 */	bge lbl_80079548
/* 80079504 0006F284  80 07 05 1C */	lwz r0, 0x51c(r7)
/* 80079508 0006F288  39 08 00 01 */	addi r8, r8, 1
/* 8007950C 0006F28C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80079510 0006F290  7C A6 02 14 */	add r5, r6, r0
/* 80079514 0006F294  80 05 00 04 */	lwz r0, 4(r5)
/* 80079518 0006F298  7C 00 20 40 */	cmplw r0, r4
/* 8007951C 0006F29C  40 80 00 2C */	bge lbl_80079548
/* 80079520 0006F2A0  80 07 05 E4 */	lwz r0, 0x5e4(r7)
/* 80079524 0006F2A4  39 08 00 01 */	addi r8, r8, 1
/* 80079528 0006F2A8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8007952C 0006F2AC  7C A6 02 14 */	add r5, r6, r0
/* 80079530 0006F2B0  80 05 00 04 */	lwz r0, 4(r5)
/* 80079534 0006F2B4  7C 00 20 40 */	cmplw r0, r4
/* 80079538 0006F2B8  40 80 00 10 */	bge lbl_80079548
/* 8007953C 0006F2BC  38 E7 04 B0 */	addi r7, r7, 0x4b0
/* 80079540 0006F2C0  39 08 00 01 */	addi r8, r8, 1
/* 80079544 0006F2C4  42 00 FF 50 */	bdnz lbl_80079494
lbl_80079548:
/* 80079548 0006F2C8  7D 03 43 78 */	mr r3, r8
/* 8007954C 0006F2CC  4E 80 00 20 */	blr 
