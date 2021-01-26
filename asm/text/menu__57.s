.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global muMenu$7exchangeMuStockchkind2GmNativeGame
muMenu$7exchangeMuStockchkind2GmNativeGame:
/* 800ACF28 000A2CA8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800ACF2C 000A2CAC  7C 00 F0 51 */	subf. r0, r0, r30
/* 800ACF30 000A2CB0  40 82 00 10 */	bne lbl_800ACF40
/* 800ACF34 000A2CB4  7C 03 F0 16 */	mulhwu r0, r3, r30
/* 800ACF38 000A2CB8  54 03 E8 FE */	srwi r3, r0, 3
/* 800ACF3C 000A2CBC  48 00 00 10 */	b lbl_800ACF4C
lbl_800ACF40:
/* 800ACF40 000A2CC0  7C 03 F0 16 */	mulhwu r0, r3, r30
/* 800ACF44 000A2CC4  54 03 E8 FE */	srwi r3, r0, 3
/* 800ACF48 000A2CC8  38 63 00 01 */	addi r3, r3, 1

.global lbl_800ACF4C
lbl_800ACF4C:
/* 800ACF4C 000A2CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 800ACF50 000A2CD0  48 34 44 1D */	bl _restgpr_27
/* 800ACF54 000A2CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800ACF58 000A2CD8  7C 08 03 A6 */	mtlr r0
/* 800ACF5C 000A2CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 800ACF60 000A2CE0  4E 80 00 20 */	blr 

