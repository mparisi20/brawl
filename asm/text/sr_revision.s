.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global srSystemGetRevisionNumber
srSystemGetRevisionNumber:
/* 8000C8E0 00002660  38 60 7D 20 */	li r3, 0x7d20
/* 8000C8E4 00002664  4E 80 00 20 */	blr 

