.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global Message$7getIndexItems
Message$7getIndexItems:
/* 80067B14 0005D894  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 80067B18 0005D898  7C 08 03 A6 */	mtlr r0
/* 80067B1C 0005D89C  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 80067B20 0005D8A0  4E 80 00 20 */	blr 

