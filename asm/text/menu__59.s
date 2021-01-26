.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global muMenu$7exchangeStockchkind2SelCharNarrationFrameEN
muMenu$7exchangeStockchkind2SelCharNarrationFrameEN:
/* 800AD6FC 000A347C  1C A0 00 0A */	mulli r5, r0, 0xa
/* 800AD700 000A3480  3C 80 80 45 */	lis r4, lbl_80455148@ha
/* 800AD704 000A3484  7D 03 43 78 */	mr r3, r8
/* 800AD708 000A3488  38 84 51 48 */	addi r4, r4, lbl_80455148@l
/* 800AD70C 000A348C  4C C6 31 82 */	crclr 6
/* 800AD710 000A3490  48 34 B2 EC */	b sprintf

