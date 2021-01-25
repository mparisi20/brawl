.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAFwrite
FAFwrite:
/* 803EBF98 003E1D18  4B FF F8 8C */	b pf2_fwrite

