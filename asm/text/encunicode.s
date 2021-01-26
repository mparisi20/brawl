.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ENCConvertStringUtf8ToUtf16
ENCConvertStringUtf8ToUtf16:
/* 8020BB44 002018C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8020BB48 002018C8  4E 80 00 20 */	blr 

