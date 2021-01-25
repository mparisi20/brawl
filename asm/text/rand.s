.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global rand
rand:
/* 803F8C3C 003EE9BC  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 803F8C40 003EE9C0  80 8D BB 38 */	lwz r4, lbl_8059FF58-_SDA_BASE_(r13)
/* 803F8C44 003EE9C4  38 03 4E 6D */	addi r0, r3, 0x41C64E6D@l
/* 803F8C48 003EE9C8  7C 64 01 D6 */	mullw r3, r4, r0
/* 803F8C4C 003EE9CC  38 03 30 39 */	addi r0, r3, 0x3039
/* 803F8C50 003EE9D0  90 0D BB 38 */	stw r0, lbl_8059FF58-_SDA_BASE_(r13)
/* 803F8C54 003EE9D4  54 03 84 7E */	rlwinm r3, r0, 0x10, 0x11, 0x1f
/* 803F8C58 003EE9D8  4E 80 00 20 */	blr 

.global srand
srand:
/* 803F8C5C 003EE9DC  90 6D BB 38 */	stw r3, lbl_8059FF58-_SDA_BASE_(r13)
/* 803F8C60 003EE9E0  4E 80 00 20 */	blr 

