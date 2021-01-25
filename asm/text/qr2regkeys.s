.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global qr2_register_keyA
qr2_register_keyA:
/* 8037B354 003710D4  2C 03 00 32 */	cmpwi r3, 0x32
/* 8037B358 003710D8  4D 80 00 20 */	bltlr 
/* 8037B35C 003710DC  2C 03 00 FE */	cmpwi r3, 0xfe
/* 8037B360 003710E0  40 81 00 08 */	ble lbl_8037B368
/* 8037B364 003710E4  4E 80 00 20 */	blr 
lbl_8037B368:
/* 8037B368 003710E8  3C A0 80 49 */	lis r5, lbl_804901F0@ha
/* 8037B36C 003710EC  54 60 10 3A */	slwi r0, r3, 2
/* 8037B370 003710F0  38 A5 01 F0 */	addi r5, r5, lbl_804901F0@l
/* 8037B374 003710F4  7C 85 01 2E */	stwx r4, r5, r0
/* 8037B378 003710F8  4E 80 00 20 */	blr 

