.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global PFFATFS_initializeFATFS
PFFATFS_initializeFATFS:
/* 803E3610 003D9390  48 00 62 04 */	b PFVOL_InitModule

