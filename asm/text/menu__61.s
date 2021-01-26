.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global muMenu$7exchangeStockchkind2SelCharNarrationSndID
muMenu$7exchangeStockchkind2SelCharNarrationSndID:
/* 800AE4A0 000A4220  1C 04 00 64 */	mulli r0, r4, 0x64
/* 800AE4A4 000A4224  80 7E 00 00 */	lwz r3, 0(r30)
/* 800AE4A8 000A4228  80 9E 2F 00 */	lwz r4, 0x2f00(r30)
/* 800AE4AC 000A422C  7C 63 02 14 */	add r3, r3, r0
/* 800AE4B0 000A4230  88 03 00 29 */	lbz r0, 0x29(r3)
/* 800AE4B4 000A4234  7C 80 00 39 */	and. r0, r4, r0
/* 800AE4B8 000A4238  41 82 00 10 */	beq lbl_800AE4C8
/* 800AE4BC 000A423C  90 E6 17 84 */	stw r7, 0x1784(r6)
/* 800AE4C0 000A4240  38 C6 00 04 */	addi r6, r6, 4
/* 800AE4C4 000A4244  48 00 00 08 */	b lbl_800AE4CC

.global lbl_800AE4C8
lbl_800AE4C8:
/* 800AE4C8 000A4248  3B FF FF FF */	addi r31, r31, -1
lbl_800AE4CC:
/* 800AE4CC 000A424C  38 A5 00 04 */	addi r5, r5, 4
/* 800AE4D0 000A4250  42 00 FF B0 */	bdnz lbl_800AE480

.global lbl_800AE4D4
lbl_800AE4D4:
/* 800AE4D4 000A4254  93 FE 00 0C */	stw r31, 0xc(r30)
/* 800AE4D8 000A4258  7F E3 FB 78 */	mr r3, r31
/* 800AE4DC 000A425C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AE4E0 000A4260  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AE4E4 000A4264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AE4E8 000A4268  7C 08 03 A6 */	mtlr r0
/* 800AE4EC 000A426C  38 21 00 10 */	addi r1, r1, 0x10
/* 800AE4F0 000A4270  4E 80 00 20 */	blr 

