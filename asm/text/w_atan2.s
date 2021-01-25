.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global atan2
atan2:
/* 80400B38 003F68B8  4B FF C5 78 */	b __ieee754_atan2

