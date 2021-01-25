.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global RFLiGetDefaultDataPtr
RFLiGetDefaultDataPtr:
/* 803D5B54 003CB8D4  28 03 00 06 */	cmplwi r3, 6
/* 803D5B58 003CB8D8  41 80 00 0C */	blt lbl_803D5B64
/* 803D5B5C 003CB8DC  38 60 00 00 */	li r3, 0
/* 803D5B60 003CB8E0  4E 80 00 20 */	blr 
lbl_803D5B64:
/* 803D5B64 003CB8E4  1C 03 00 4A */	mulli r0, r3, 0x4a
/* 803D5B68 003CB8E8  3C 60 80 42 */	lis r3, lbl_8041AEC0@ha
/* 803D5B6C 003CB8EC  38 63 AE C0 */	addi r3, r3, lbl_8041AEC0@l
/* 803D5B70 003CB8F0  7C 63 02 14 */	add r3, r3, r0
/* 803D5B74 003CB8F4  4E 80 00 20 */	blr 

.global RFLiGetDefaultData
RFLiGetDefaultData:
/* 803D5B78 003CB8F8  1C 04 00 4A */	mulli r0, r4, 0x4a
/* 803D5B7C 003CB8FC  3C A0 80 42 */	lis r5, lbl_8041AEC0@ha
/* 803D5B80 003CB900  7C 64 1B 78 */	mr r4, r3
/* 803D5B84 003CB904  38 A5 AE C0 */	addi r5, r5, lbl_8041AEC0@l
/* 803D5B88 003CB908  7C 65 02 14 */	add r3, r5, r0
/* 803D5B8C 003CB90C  4B FF F4 38 */	b RFLiConvertRaw2Info

