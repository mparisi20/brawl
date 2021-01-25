.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NETGetRexPPCVersionPrintable
NETGetRexPPCVersionPrintable:
/* 8038F428 003851A8  80 6D B8 10 */	lwz r3, lbl_8059FC30-_SDA_BASE_(r13)
/* 8038F42C 003851AC  4E 80 00 20 */	blr 

