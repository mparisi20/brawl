.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __stdio_atexit
__stdio_atexit:
/* 803F6568 003EC2E8  3C 60 80 3F */	lis r3, __close_all@ha
/* 803F656C 003EC2EC  38 63 35 5C */	addi r3, r3, __close_all@l
/* 803F6570 003EC2F0  90 6D CE D4 */	stw r3, lbl_805A12F4-_SDA_BASE_(r13)
/* 803F6574 003EC2F4  4E 80 00 20 */	blr 

