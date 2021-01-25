.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TRK_strlen
TRK_strlen:
/* 80403754 003F94D4  38 83 FF FF */	addi r4, r3, -1
/* 80403758 003F94D8  38 60 FF FF */	li r3, -1
lbl_8040375C:
/* 8040375C 003F94DC  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80403760 003F94E0  38 63 00 01 */	addi r3, r3, 1
/* 80403764 003F94E4  28 00 00 00 */	cmplwi r0, 0
/* 80403768 003F94E8  40 82 FF F4 */	bne lbl_8040375C
/* 8040376C 003F94EC  4E 80 00 20 */	blr 

