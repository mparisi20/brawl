.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global acAnimCmdNull$7__dt
acAnimCmdNull$7__dt:
/* 8013CF04 00132C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013CF08 00132C88  7C 08 02 A6 */	mflr r0
/* 8013CF0C 00132C8C  2C 03 00 00 */	cmpwi r3, 0
/* 8013CF10 00132C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013CF14 00132C94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013CF18 00132C98  7C 7F 1B 78 */	mr r31, r3
/* 8013CF1C 00132C9C  41 82 00 10 */	beq lbl_8013CF2C
/* 8013CF20 00132CA0  2C 04 00 00 */	cmpwi r4, 0
/* 8013CF24 00132CA4  40 81 00 08 */	ble lbl_8013CF2C
/* 8013CF28 00132CA8  4B EC F9 A1 */	bl __dl__FPv
lbl_8013CF2C:
/* 8013CF2C 00132CAC  7F E3 FB 78 */	mr r3, r31
/* 8013CF30 00132CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013CF34 00132CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013CF38 00132CB8  7C 08 03 A6 */	mtlr r0
/* 8013CF3C 00132CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8013CF40 00132CC0  4E 80 00 20 */	blr 

.global acAnimCmdNull$7getOption
acAnimCmdNull$7getOption:
/* 8013CF44 00132CC4  38 60 00 00 */	li r3, 0
/* 8013CF48 00132CC8  4E 80 00 20 */	blr 

.global acAnimCmdNull$7isValid
acAnimCmdNull$7isValid:
/* 8013CF4C 00132CCC  38 60 00 00 */	li r3, 0
/* 8013CF50 00132CD0  4E 80 00 20 */	blr 

.global acAnimCmdNull$7isArgEmpty
acAnimCmdNull$7isArgEmpty:
/* 8013CF54 00132CD4  38 60 00 01 */	li r3, 1
/* 8013CF58 00132CD8  4E 80 00 20 */	blr 

.global acAnimCmdNull$7getCmdAddress
acAnimCmdNull$7getCmdAddress:
/* 8013CF5C 00132CDC  38 60 00 00 */	li r3, 0
/* 8013CF60 00132CE0  4E 80 00 20 */	blr 

.global acAnimCmdNull$7getArg
acAnimCmdNull$7getArg:
/* 8013CF64 00132CE4  80 0D BF 50 */	lwz r0, lbl_805A0370-_SDA_BASE_(r13)
/* 8013CF68 00132CE8  38 AD BF 50 */	addi r5, r13, lbl_805A0370-_SDA_BASE_
/* 8013CF6C 00132CEC  38 60 00 00 */	li r3, 0
/* 8013CF70 00132CF0  90 04 00 00 */	stw r0, 0(r4)
/* 8013CF74 00132CF4  88 05 00 04 */	lbz r0, 4(r5)
/* 8013CF78 00132CF8  98 04 00 04 */	stb r0, 4(r4)
/* 8013CF7C 00132CFC  4E 80 00 20 */	blr 

.global acAnimCmdNull$7getArgList
acAnimCmdNull$7getArgList:
/* 8013CF80 00132D00  3C 80 80 46 */	lis r4, lbl_8045DE48@ha
/* 8013CF84 00132D04  38 00 00 00 */	li r0, 0
/* 8013CF88 00132D08  38 84 DE 48 */	addi r4, r4, lbl_8045DE48@l
/* 8013CF8C 00132D0C  90 03 00 04 */	stw r0, 4(r3)
/* 8013CF90 00132D10  90 83 00 00 */	stw r4, 0(r3)
/* 8013CF94 00132D14  90 03 00 08 */	stw r0, 8(r3)
/* 8013CF98 00132D18  90 03 00 0C */	stw r0, 0xc(r3)
/* 8013CF9C 00132D1C  4E 80 00 20 */	blr 

.global acAnimCmdNull$7getArgNum
acAnimCmdNull$7getArgNum:
/* 8013CFA0 00132D20  38 60 00 00 */	li r3, 0
/* 8013CFA4 00132D24  4E 80 00 20 */	blr 

.global acAnimCmdNull$7getType
acAnimCmdNull$7getType:
/* 8013CFA8 00132D28  38 60 FF FF */	li r3, -1
/* 8013CFAC 00132D2C  4E 80 00 20 */	blr 

.global acAnimCmdNull$7getGroup
acAnimCmdNull$7getGroup:
/* 8013CFB0 00132D30  38 60 FF FF */	li r3, -1
/* 8013CFB4 00132D34  4E 80 00 20 */	blr 

.global __sinit_$3ac_null_cpp
__sinit_$3ac_null_cpp:
/* 8013CFB8 00132D38  3C 60 80 46 */	lis r3, lbl_8045DDC4@ha
/* 8013CFBC 00132D3C  3C C0 80 46 */	lis r6, lbl_8045DF78@ha
/* 8013CFC0 00132D40  38 63 DD C4 */	addi r3, r3, lbl_8045DDC4@l
/* 8013CFC4 00132D44  39 20 00 00 */	li r9, 0
/* 8013CFC8 00132D48  90 6D BF 58 */	stw r3, lbl_805A0378-_SDA_BASE_(r13)
/* 8013CFCC 00132D4C  38 C6 DF 78 */	addi r6, r6, lbl_8045DF78@l
/* 8013CFD0 00132D50  39 0D BF 50 */	addi r8, r13, lbl_805A0370-_SDA_BASE_
/* 8013CFD4 00132D54  38 00 00 01 */	li r0, 1
/* 8013CFD8 00132D58  38 ED BF 58 */	addi r7, r13, lbl_805A0378-_SDA_BASE_
/* 8013CFDC 00132D5C  3C 80 80 14 */	lis r4, acAnimCmdNull$7__dt@ha
/* 8013CFE0 00132D60  3C A0 80 4A */	lis r5, lbl_8049EA10@ha
/* 8013CFE4 00132D64  91 2D BF 50 */	stw r9, lbl_805A0370-_SDA_BASE_(r13)
/* 8013CFE8 00132D68  38 84 CF 04 */	addi r4, r4, acAnimCmdNull$7__dt@l
/* 8013CFEC 00132D6C  38 6D BF 58 */	addi r3, r13, lbl_805A0378-_SDA_BASE_
/* 8013CFF0 00132D70  99 28 00 04 */	stb r9, 4(r8)
/* 8013CFF4 00132D74  38 A5 EA 10 */	addi r5, r5, lbl_8049EA10@l
/* 8013CFF8 00132D78  98 07 00 04 */	stb r0, 4(r7)
/* 8013CFFC 00132D7C  90 CD BF 58 */	stw r6, lbl_805A0378-_SDA_BASE_(r13)
/* 8013D000 00132D80  48 2B 37 24 */	b __register_global_object_tmp

