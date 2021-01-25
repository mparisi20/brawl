.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global GetUseSerialIO
GetUseSerialIO:
/* 80405EEC 003FBC6C  3C 60 80 5A */	lis r3, lbl_8059BEE0@ha
/* 80405EF0 003FBC70  38 63 BE E0 */	addi r3, r3, lbl_8059BEE0@l
/* 80405EF4 003FBC74  88 63 00 00 */	lbz r3, 0(r3)
/* 80405EF8 003FBC78  4E 80 00 20 */	blr 

.global SetUseSerialIO
SetUseSerialIO:
/* 80405EFC 003FBC7C  3C 80 80 5A */	lis r4, lbl_8059BEE0@ha
/* 80405F00 003FBC80  98 64 BE E0 */	stb r3, lbl_8059BEE0@l(r4)
/* 80405F04 003FBC84  4E 80 00 20 */	blr 

