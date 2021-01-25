.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFiPFFATFS_initializeFATFS
VFiPFFATFS_initializeFATFS:
/* 803B9BC4 003AF944  48 00 6F 74 */	b VFiPFVOL_InitModule

