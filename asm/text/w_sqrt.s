.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global sqrt
sqrt:
/* 80400D94 003F6B14  4B FF FD B4 */	b __ieee754_sqrt

