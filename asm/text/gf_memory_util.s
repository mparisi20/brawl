.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfMemFill
gfMemFill:
/* 80026474 0001C1F4  4B FD DF C8 */	b func_8000443C

