.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMonitorStream$7init
hkMonitorStream$7init:
/* 8027FF58 00275CD8  3C 80 80 53 */	lis r4, lbl_80532448@ha
/* 8027FF5C 00275CDC  38 00 00 00 */	li r0, 0
/* 8027FF60 00275CE0  38 64 24 48 */	addi r3, r4, lbl_80532448@l
/* 8027FF64 00275CE4  90 04 24 48 */	stw r0, 0x2448(r4)
/* 8027FF68 00275CE8  98 03 00 10 */	stb r0, 0x10(r3)
/* 8027FF6C 00275CEC  90 03 00 08 */	stw r0, 8(r3)
/* 8027FF70 00275CF0  90 03 00 04 */	stw r0, 4(r3)
/* 8027FF74 00275CF4  90 03 00 0C */	stw r0, 0xc(r3)
/* 8027FF78 00275CF8  4E 80 00 20 */	blr 

.global hkMonitorStream$7quit
hkMonitorStream$7quit:
/* 8027FF7C 00275CFC  80 83 00 00 */	lwz r4, 0(r3)
/* 8027FF80 00275D00  38 A0 00 00 */	li r5, 0
/* 8027FF84 00275D04  2C 04 00 00 */	cmpwi r4, 0
/* 8027FF88 00275D08  41 82 00 14 */	beq lbl_8027FF9C
/* 8027FF8C 00275D0C  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8027FF90 00275D10  7C 00 07 75 */	extsb. r0, r0
/* 8027FF94 00275D14  41 82 00 08 */	beq lbl_8027FF9C
/* 8027FF98 00275D18  38 A0 00 01 */	li r5, 1
lbl_8027FF9C:
/* 8027FF9C 00275D1C  2C 05 00 00 */	cmpwi r5, 0
/* 8027FFA0 00275D20  4D 82 00 20 */	beqlr 
/* 8027FFA4 00275D24  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 8027FFA8 00275D28  81 83 00 00 */	lwz r12, 0(r3)
/* 8027FFAC 00275D2C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8027FFB0 00275D30  7D 89 03 A6 */	mtctr r12
/* 8027FFB4 00275D34  4E 80 04 20 */	bctr 
/* 8027FFB8 00275D38  4E 80 00 20 */	blr 

.global __sinit_$3hkMonitorStream_cpp
__sinit_$3hkMonitorStream_cpp:
/* 8027FFBC 00275D3C  4E 80 00 20 */	blr 

