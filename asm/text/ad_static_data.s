.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global adventureStaticData$7getStepIndex
adventureStaticData$7getStepIndex:
/* 8015B09C 00150E1C  3C 80 80 46 */	lis r4, lbl_804621C0@ha
/* 8015B0A0 00150E20  38 00 01 01 */	li r0, 0x101
/* 8015B0A4 00150E24  38 84 21 C0 */	addi r4, r4, lbl_804621C0@l
/* 8015B0A8 00150E28  38 A0 00 00 */	li r5, 0
/* 8015B0AC 00150E2C  7C 09 03 A6 */	mtctr r0
lbl_8015B0B0:
/* 8015B0B0 00150E30  80 04 00 00 */	lwz r0, 0(r4)
/* 8015B0B4 00150E34  7C 03 00 40 */	cmplw r3, r0
/* 8015B0B8 00150E38  40 82 00 0C */	bne lbl_8015B0C4
/* 8015B0BC 00150E3C  7C A3 2B 78 */	mr r3, r5
/* 8015B0C0 00150E40  4E 80 00 20 */	blr 
lbl_8015B0C4:
/* 8015B0C4 00150E44  38 84 00 08 */	addi r4, r4, 8
/* 8015B0C8 00150E48  38 A5 00 01 */	addi r5, r5, 1
/* 8015B0CC 00150E4C  42 00 FF E4 */	bdnz lbl_8015B0B0
/* 8015B0D0 00150E50  38 60 FF FF */	li r3, -1
/* 8015B0D4 00150E54  4E 80 00 20 */	blr 

.global adventureStaticData$7getAllStepNum
adventureStaticData$7getAllStepNum:
/* 8015B0D8 00150E58  38 60 01 01 */	li r3, 0x101
/* 8015B0DC 00150E5C  4E 80 00 20 */	blr 

