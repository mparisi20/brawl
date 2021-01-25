.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global efScreenHandle$7isValid
efScreenHandle$7isValid:
/* 8005E5C8 00054348  88 03 00 00 */	lbz r0, 0(r3)
/* 8005E5CC 0005434C  38 60 00 00 */	li r3, 0
/* 8005E5D0 00054350  7C 00 07 75 */	extsb. r0, r0
/* 8005E5D4 00054354  4D 80 00 20 */	bltlr 
/* 8005E5D8 00054358  2C 00 00 0A */	cmpwi r0, 0xa
/* 8005E5DC 0005435C  4C 80 00 20 */	bgelr 
/* 8005E5E0 00054360  38 60 00 01 */	li r3, 1
/* 8005E5E4 00054364  4E 80 00 20 */	blr 

