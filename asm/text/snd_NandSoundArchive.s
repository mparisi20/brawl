.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd16NandSoundArchiveFv$7Close
nw4r3snd16NandSoundArchiveFv$7Close:
/* 801C21F8 001B7F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C21FC 001B7F7C  7C 08 02 A6 */	mflr r0
/* 801C2200 001B7F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2204 001B7F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C2208 001B7F88  7C 7F 1B 78 */	mr r31, r3
/* 801C220C 001B7F8C  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 801C2210 001B7F90  2C 00 00 00 */	cmpwi r0, 0
/* 801C2214 001B7F94  41 82 00 14 */	beq lbl_801C2228
/* 801C2218 001B7F98  38 63 01 4C */	addi r3, r3, 0x14c
/* 801C221C 001B7F9C  48 04 9A 21 */	bl NANDClose
/* 801C2220 001B7FA0  38 00 00 00 */	li r0, 0
/* 801C2224 001B7FA4  98 1F 01 D8 */	stb r0, 0x1d8(r31)
lbl_801C2228:
/* 801C2228 001B7FA8  7F E3 FB 78 */	mr r3, r31
/* 801C222C 001B7FAC  48 00 49 69 */	bl nw4r3snd12SoundArchiveFv$7Shutdown
/* 801C2230 001B7FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C2234 001B7FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C2238 001B7FB8  7C 08 03 A6 */	mtlr r0
/* 801C223C 001B7FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2240 001B7FC0  4E 80 00 20 */	blr 

