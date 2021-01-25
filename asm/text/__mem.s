.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global strlen
strlen:
/* 803F0640 003E63C0  38 83 FF FF */	addi r4, r3, -1
/* 803F0644 003E63C4  38 60 FF FF */	li r3, -1
lbl_803F0648:
/* 803F0648 003E63C8  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803F064C 003E63CC  38 63 00 01 */	addi r3, r3, 1
/* 803F0650 003E63D0  2C 00 00 00 */	cmpwi r0, 0
/* 803F0654 003E63D4  40 82 FF F4 */	bne lbl_803F0648
/* 803F0658 003E63D8  4E 80 00 20 */	blr 

