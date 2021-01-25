.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __DSP_debug_printf
__DSP_debug_printf:
/* 80209A98 001FF818  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80209A9C 001FF81C  40 86 00 24 */	bne cr1, lbl_80209AC0
/* 80209AA0 001FF820  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80209AA4 001FF824  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80209AA8 001FF828  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80209AAC 001FF82C  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80209AB0 001FF830  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80209AB4 001FF834  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80209AB8 001FF838  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80209ABC 001FF83C  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80209AC0:
/* 80209AC0 001FF840  90 61 00 08 */	stw r3, 8(r1)
/* 80209AC4 001FF844  90 81 00 0C */	stw r4, 0xc(r1)
/* 80209AC8 001FF848  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80209ACC 001FF84C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80209AD0 001FF850  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80209AD4 001FF854  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80209AD8 001FF858  91 21 00 20 */	stw r9, 0x20(r1)
/* 80209ADC 001FF85C  91 41 00 24 */	stw r10, 0x24(r1)
/* 80209AE0 001FF860  38 21 00 70 */	addi r1, r1, 0x70
/* 80209AE4 001FF864  4E 80 00 20 */	blr 

