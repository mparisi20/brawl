.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pow
pow:
/* 80400B44 003F68C4  4B FF CE D4 */	b __ieee754_pow

