.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global sndSystem$7prepareBGM
sndSystem$7prepareBGM:
/* 8007CB08 00072888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007CB0C 0007288C  7C 08 02 A6 */	mflr r0
/* 8007CB10 00072890  3C 80 80 4A */	lis r4, lbl_8049DC00@ha
/* 8007CB14 00072894  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007CB18 00072898  38 84 DC 00 */	addi r4, r4, lbl_8049DC00@l
/* 8007CB1C 0007289C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8007CB20 000728A0  2C 00 00 00 */	cmpwi r0, 0
/* 8007CB24 000728A4  41 82 00 60 */	beq lbl_8007CB84
/* 8007CB28 000728A8  88 04 00 A4 */	lbz r0, 0xa4(r4)
/* 8007CB2C 000728AC  28 00 00 02 */	cmplwi r0, 2
/* 8007CB30 000728B0  40 82 00 54 */	bne lbl_8007CB84
/* 8007CB34 000728B4  88 04 00 A7 */	lbz r0, 0xa7(r4)
/* 8007CB38 000728B8  38 60 00 04 */	li r3, 4
/* 8007CB3C 000728BC  98 64 00 A5 */	stb r3, 0xa5(r4)
/* 8007CB40 000728C0  2C 00 00 00 */	cmpwi r0, 0
/* 8007CB44 000728C4  98 64 00 A4 */	stb r3, 0xa4(r4)
/* 8007CB48 000728C8  41 82 00 34 */	beq lbl_8007CB7C
/* 8007CB4C 000728CC  80 6D BD D8 */	lwz r3, lbl_805A01F8-_SDA_BASE_(r13)
/* 8007CB50 000728D0  80 63 07 F8 */	lwz r3, 0x7f8(r3)
/* 8007CB54 000728D4  2C 03 00 00 */	cmpwi r3, 0
/* 8007CB58 000728D8  41 82 00 0C */	beq lbl_8007CB64
/* 8007CB5C 000728DC  38 80 00 00 */	li r4, 0
/* 8007CB60 000728E0  48 18 57 7D */	bl AXSetVoiceState
lbl_8007CB64:
/* 8007CB64 000728E4  80 6D BD D8 */	lwz r3, lbl_805A01F8-_SDA_BASE_(r13)
/* 8007CB68 000728E8  80 63 07 FC */	lwz r3, 0x7fc(r3)
/* 8007CB6C 000728EC  2C 03 00 00 */	cmpwi r3, 0
/* 8007CB70 000728F0  41 82 00 0C */	beq lbl_8007CB7C
/* 8007CB74 000728F4  38 80 00 00 */	li r4, 0
/* 8007CB78 000728F8  48 18 57 65 */	bl AXSetVoiceState
lbl_8007CB7C:
/* 8007CB7C 000728FC  38 60 00 01 */	li r3, 1
/* 8007CB80 00072900  48 00 00 08 */	b lbl_8007CB88
lbl_8007CB84:
/* 8007CB84 00072904  38 60 00 00 */	li r3, 0
lbl_8007CB88:
/* 8007CB88 00072908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007CB8C 0007290C  7C 08 03 A6 */	mtlr r0
/* 8007CB90 00072910  38 21 00 10 */	addi r1, r1, 0x10
/* 8007CB94 00072914  4E 80 00 20 */	blr 

