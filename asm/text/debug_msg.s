.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DEBUGPrint
DEBUGPrint:
/* 8022550C 0021B28C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80225510 0021B290  40 86 00 24 */	bne cr1, lbl_80225534
/* 80225514 0021B294  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80225518 0021B298  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8022551C 0021B29C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80225520 0021B2A0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80225524 0021B2A4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80225528 0021B2A8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8022552C 0021B2AC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80225530 0021B2B0  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80225534:
/* 80225534 0021B2B4  90 61 00 08 */	stw r3, 8(r1)
/* 80225538 0021B2B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8022553C 0021B2BC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80225540 0021B2C0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80225544 0021B2C4  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80225548 0021B2C8  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8022554C 0021B2CC  91 21 00 20 */	stw r9, 0x20(r1)
/* 80225550 0021B2D0  91 41 00 24 */	stw r10, 0x24(r1)
/* 80225554 0021B2D4  38 21 00 70 */	addi r1, r1, 0x70
/* 80225558 0021B2D8  4E 80 00 20 */	blr 

