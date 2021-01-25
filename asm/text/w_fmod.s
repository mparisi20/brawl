.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global fmod
fmod:
/* 80400B3C 003F68BC  4B FF C7 E4 */	b __ieee754_fmod

