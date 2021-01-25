.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ftSystem$7__dt
ftSystem$7__dt:
/* 8013D004 00132D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013D008 00132D88  7C 08 02 A6 */	mflr r0
/* 8013D00C 00132D8C  2C 03 00 00 */	cmpwi r3, 0
/* 8013D010 00132D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013D014 00132D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013D018 00132D98  7C 7F 1B 78 */	mr r31, r3
/* 8013D01C 00132D9C  41 82 00 10 */	beq lbl_8013D02C
/* 8013D020 00132DA0  2C 04 00 00 */	cmpwi r4, 0
/* 8013D024 00132DA4  40 81 00 08 */	ble lbl_8013D02C
/* 8013D028 00132DA8  4B EC F8 A1 */	bl __dl
lbl_8013D02C:
/* 8013D02C 00132DAC  7F E3 FB 78 */	mr r3, r31
/* 8013D030 00132DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013D034 00132DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013D038 00132DB8  7C 08 03 A6 */	mtlr r0
/* 8013D03C 00132DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8013D040 00132DC0  4E 80 00 20 */	blr 

.global ftSystem$7setCommonResourceData
ftSystem$7setCommonResourceData:
/* 8013D044 00132DC4  90 83 00 00 */	stw r4, 0(r3)
/* 8013D048 00132DC8  90 A3 00 04 */	stw r5, 4(r3)
/* 8013D04C 00132DCC  4E 80 00 20 */	blr 

.global __sinit_$3ft_system_cpp
__sinit_$3ft_system_cpp:
/* 8013D050 00132DD0  38 00 00 00 */	li r0, 0
/* 8013D054 00132DD4  38 CD BF 60 */	addi r6, r13, lbl_805A0380-_SDA_BASE_
/* 8013D058 00132DD8  3C 80 80 14 */	lis r4, ftSystem$7__dt@ha
/* 8013D05C 00132DDC  3C A0 80 4A */	lis r5, lbl_8049EA20@ha
/* 8013D060 00132DE0  90 0D BF 60 */	stw r0, lbl_805A0380-_SDA_BASE_(r13)
/* 8013D064 00132DE4  38 84 D0 04 */	addi r4, r4, ftSystem$7__dt@l
/* 8013D068 00132DE8  38 A5 EA 20 */	addi r5, r5, lbl_8049EA20@l
/* 8013D06C 00132DEC  38 6D BF 60 */	addi r3, r13, lbl_805A0380-_SDA_BASE_
/* 8013D070 00132DF0  90 06 00 04 */	stw r0, 4(r6)
/* 8013D074 00132DF4  48 2B 36 B0 */	b __register_global_object

