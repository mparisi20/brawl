.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global moUnResolvedMessage
moUnResolvedMessage:
/* 80043B18 00039898  4E 80 00 20 */	blr 

.global srStageKind$7moGetStageModuleName
srStageKind$7moGetStageModuleName:
/* 80043B1C 0003989C  3C 80 80 43 */	lis r4, lbl_8042AEB0@ha
/* 80043B20 000398A0  38 00 00 31 */	li r0, 0x31
/* 80043B24 000398A4  38 84 AE B0 */	addi r4, r4, lbl_8042AEB0@l
/* 80043B28 000398A8  38 A0 00 00 */	li r5, 0
/* 80043B2C 000398AC  38 C0 00 00 */	li r6, 0
/* 80043B30 000398B0  7C 09 03 A6 */	mtctr r0
lbl_80043B34:
/* 80043B34 000398B4  80 04 00 00 */	lwz r0, 0(r4)
/* 80043B38 000398B8  7C 03 00 00 */	cmpw r3, r0
/* 80043B3C 000398BC  40 82 00 1C */	bne lbl_80043B58
/* 80043B40 000398C0  1C 06 00 24 */	mulli r0, r6, 0x24
/* 80043B44 000398C4  3C 60 80 43 */	lis r3, lbl_8042AEB0@ha
/* 80043B48 000398C8  38 63 AE B0 */	addi r3, r3, lbl_8042AEB0@l
/* 80043B4C 000398CC  7C A3 02 14 */	add r5, r3, r0
/* 80043B50 000398D0  38 A5 00 04 */	addi r5, r5, 4
/* 80043B54 000398D4  48 00 00 10 */	b lbl_80043B64
lbl_80043B58:
/* 80043B58 000398D8  38 84 00 24 */	addi r4, r4, 0x24
/* 80043B5C 000398DC  38 C6 00 01 */	addi r6, r6, 1
/* 80043B60 000398E0  42 00 FF D4 */	bdnz lbl_80043B34
lbl_80043B64:
/* 80043B64 000398E4  7C A3 2B 78 */	mr r3, r5
/* 80043B68 000398E8  4E 80 00 20 */	blr 

