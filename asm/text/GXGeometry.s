.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __GXSetDirtyState
__GXSetDirtyState:
/* 801F0E10 001E6B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F0E14 001E6B94  7C 08 02 A6 */	mflr r0
/* 801F0E18 001E6B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F0E1C 001E6B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F0E20 001E6BA0  83 E2 A4 90 */	lwz r31, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F0E24 001E6BA4  93 C1 00 08 */	stw r30, 8(r1)
/* 801F0E28 001E6BA8  83 DF 05 FC */	lwz r30, 0x5fc(r31)
/* 801F0E2C 001E6BAC  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 801F0E30 001E6BB0  41 82 00 08 */	beq lbl_801F0E38
/* 801F0E34 001E6BB4  48 00 24 61 */	bl __GXSetSUTexRegs
lbl_801F0E38:
/* 801F0E38 001E6BB8  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 801F0E3C 001E6BBC  41 82 00 08 */	beq lbl_801F0E44
/* 801F0E40 001E6BC0  48 00 2D 05 */	bl __GXUpdateBPMask
lbl_801F0E44:
/* 801F0E44 001E6BC4  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 801F0E48 001E6BC8  41 82 00 24 */	beq lbl_801F0E6C
/* 801F0E4C 001E6BCC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F0E50 001E6BD0  38 00 00 61 */	li r0, 0x61
/* 801F0E54 001E6BD4  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801F0E58 001E6BD8  38 00 00 00 */	li r0, 0
/* 801F0E5C 001E6BDC  80 A2 A4 90 */	lwz r5, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F0E60 001E6BE0  80 65 02 54 */	lwz r3, 0x254(r5)
/* 801F0E64 001E6BE4  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801F0E68 001E6BE8  B0 05 00 02 */	sth r0, 2(r5)
lbl_801F0E6C:
/* 801F0E6C 001E6BEC  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 801F0E70 001E6BF0  41 82 00 08 */	beq lbl_801F0E78
/* 801F0E74 001E6BF4  4B FF E8 7D */	bl __GXSetVCD
lbl_801F0E78:
/* 801F0E78 001E6BF8  57 C0 06 F7 */	rlwinm. r0, r30, 0, 0x1b, 0x1b
/* 801F0E7C 001E6BFC  41 82 00 08 */	beq lbl_801F0E84
/* 801F0E80 001E6C00  4B FF F0 29 */	bl __GXSetVAT
lbl_801F0E84:
/* 801F0E84 001E6C04  57 C0 06 F9 */	rlwinm. r0, r30, 0, 0x1b, 0x1c
/* 801F0E88 001E6C08  41 82 00 08 */	beq lbl_801F0E90
/* 801F0E8C 001E6C0C  4B FF E9 15 */	bl __GXCalculateVLim
lbl_801F0E90:
/* 801F0E90 001E6C10  57 DE 00 2F */	rlwinm. r30, r30, 0, 0, 0x17
/* 801F0E94 001E6C14  41 82 01 D4 */	beq lbl_801F1068
/* 801F0E98 001E6C18  57 C4 05 2F */	rlwinm. r4, r30, 0, 0x14, 0x17
/* 801F0E9C 001E6C1C  41 82 00 94 */	beq lbl_801F0F30
/* 801F0EA0 001E6C20  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 801F0EA4 001E6C24  41 82 00 20 */	beq lbl_801F0EC4
/* 801F0EA8 001E6C28  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F0EAC 001E6C2C  38 00 00 10 */	li r0, 0x10
/* 801F0EB0 001E6C30  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F0EB4 001E6C34  38 00 10 0A */	li r0, 0x100a
/* 801F0EB8 001E6C38  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F0EBC 001E6C3C  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 801F0EC0 001E6C40  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_801F0EC4:
/* 801F0EC4 001E6C44  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801F0EC8 001E6C48  41 82 00 20 */	beq lbl_801F0EE8
/* 801F0ECC 001E6C4C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F0ED0 001E6C50  38 00 00 10 */	li r0, 0x10
/* 801F0ED4 001E6C54  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F0ED8 001E6C58  38 00 10 0B */	li r0, 0x100b
/* 801F0EDC 001E6C5C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F0EE0 001E6C60  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 801F0EE4 001E6C64  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_801F0EE8:
/* 801F0EE8 001E6C68  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 801F0EEC 001E6C6C  41 82 00 20 */	beq lbl_801F0F0C
/* 801F0EF0 001E6C70  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F0EF4 001E6C74  38 00 00 10 */	li r0, 0x10
/* 801F0EF8 001E6C78  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F0EFC 001E6C7C  38 00 10 0C */	li r0, 0x100c
/* 801F0F00 001E6C80  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F0F04 001E6C84  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 801F0F08 001E6C88  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_801F0F0C:
/* 801F0F0C 001E6C8C  54 80 05 29 */	rlwinm. r0, r4, 0, 0x14, 0x14
/* 801F0F10 001E6C90  41 82 00 20 */	beq lbl_801F0F30
/* 801F0F14 001E6C94  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F0F18 001E6C98  38 00 00 10 */	li r0, 0x10
/* 801F0F1C 001E6C9C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F0F20 001E6CA0  38 00 10 0D */	li r0, 0x100d
/* 801F0F24 001E6CA4  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F0F28 001E6CA8  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 801F0F2C 001E6CAC  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_801F0F30:
/* 801F0F30 001E6CB0  57 C7 01 CE */	rlwinm r7, r30, 0, 7, 7
/* 801F0F34 001E6CB4  53 C7 04 27 */	rlwimi. r7, r30, 0, 0x10, 0x13
/* 801F0F38 001E6CB8  41 82 00 70 */	beq lbl_801F0FA8
/* 801F0F3C 001E6CBC  54 E0 01 CF */	rlwinm. r0, r7, 0, 7, 7
/* 801F0F40 001E6CC0  38 C0 10 0E */	li r6, 0x100e
/* 801F0F44 001E6CC4  41 82 00 24 */	beq lbl_801F0F68
/* 801F0F48 001E6CC8  80 BF 02 54 */	lwz r5, 0x254(r31)
/* 801F0F4C 001E6CCC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F0F50 001E6CD0  38 80 00 10 */	li r4, 0x10
/* 801F0F54 001E6CD4  38 00 10 09 */	li r0, 0x1009
/* 801F0F58 001E6CD8  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 801F0F5C 001E6CDC  54 A4 E7 7E */	rlwinm r4, r5, 0x1c, 0x1d, 0x1f
/* 801F0F60 001E6CE0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F0F64 001E6CE4  90 83 80 00 */	stw r4, -0x8000(r3)
lbl_801F0F68:
/* 801F0F68 001E6CE8  7F E5 FB 78 */	mr r5, r31
/* 801F0F6C 001E6CEC  54 E7 A7 3E */	rlwinm r7, r7, 0x14, 0x1c, 0x1f
/* 801F0F70 001E6CF0  38 80 00 10 */	li r4, 0x10
/* 801F0F74 001E6CF4  3C 60 CC 01 */	lis r3, 0xcc01
/* 801F0F78 001E6CF8  48 00 00 28 */	b lbl_801F0FA0
lbl_801F0F7C:
/* 801F0F7C 001E6CFC  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 801F0F80 001E6D00  41 82 00 14 */	beq lbl_801F0F94
/* 801F0F84 001E6D04  98 83 80 00 */	stb r4, -0x8000(r3)
/* 801F0F88 001E6D08  90 C3 80 00 */	stw r6, -0x8000(r3)
/* 801F0F8C 001E6D0C  80 05 00 B8 */	lwz r0, 0xb8(r5)
/* 801F0F90 001E6D10  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_801F0F94:
/* 801F0F94 001E6D14  54 E7 F8 7E */	srwi r7, r7, 1
/* 801F0F98 001E6D18  38 A5 00 04 */	addi r5, r5, 4
/* 801F0F9C 001E6D1C  38 C6 00 01 */	addi r6, r6, 1
lbl_801F0FA0:
/* 801F0FA0 001E6D20  2C 07 00 00 */	cmpwi r7, 0
/* 801F0FA4 001E6D24  40 82 FF D8 */	bne lbl_801F0F7C
lbl_801F0FA8:
/* 801F0FA8 001E6D28  77 C8 02 FF */	andis. r8, r30, 0x2ff
/* 801F0FAC 001E6D2C  41 82 00 84 */	beq lbl_801F1030
/* 801F0FB0 001E6D30  55 00 01 8D */	rlwinm. r0, r8, 0, 6, 6
/* 801F0FB4 001E6D34  38 C0 10 40 */	li r6, 0x1040
/* 801F0FB8 001E6D38  41 82 00 24 */	beq lbl_801F0FDC
/* 801F0FBC 001E6D3C  80 BF 02 54 */	lwz r5, 0x254(r31)
/* 801F0FC0 001E6D40  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F0FC4 001E6D44  38 80 00 10 */	li r4, 0x10
/* 801F0FC8 001E6D48  38 00 10 3F */	li r0, 0x103f
/* 801F0FCC 001E6D4C  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 801F0FD0 001E6D50  54 A4 07 3E */	clrlwi r4, r5, 0x1c
/* 801F0FD4 001E6D54  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F0FD8 001E6D58  90 83 80 00 */	stw r4, -0x8000(r3)
lbl_801F0FDC:
/* 801F0FDC 001E6D5C  7F E7 FB 78 */	mr r7, r31
/* 801F0FE0 001E6D60  55 08 86 3E */	rlwinm r8, r8, 0x10, 0x18, 0x1f
/* 801F0FE4 001E6D64  38 80 00 10 */	li r4, 0x10
/* 801F0FE8 001E6D68  3C 60 CC 01 */	lis r3, 0xcc01
/* 801F0FEC 001E6D6C  48 00 00 3C */	b lbl_801F1028
lbl_801F0FF0:
/* 801F0FF0 001E6D70  55 00 07 FF */	clrlwi. r0, r8, 0x1f
/* 801F0FF4 001E6D74  38 A6 00 10 */	addi r5, r6, 0x10
/* 801F0FF8 001E6D78  41 82 00 24 */	beq lbl_801F101C
/* 801F0FFC 001E6D7C  98 83 80 00 */	stb r4, -0x8000(r3)
/* 801F1000 001E6D80  90 C3 80 00 */	stw r6, -0x8000(r3)
/* 801F1004 001E6D84  80 07 00 C8 */	lwz r0, 0xc8(r7)
/* 801F1008 001E6D88  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F100C 001E6D8C  98 83 80 00 */	stb r4, -0x8000(r3)
/* 801F1010 001E6D90  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 801F1014 001E6D94  80 07 00 E8 */	lwz r0, 0xe8(r7)
/* 801F1018 001E6D98  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_801F101C:
/* 801F101C 001E6D9C  55 08 F8 7E */	srwi r8, r8, 1
/* 801F1020 001E6DA0  38 C6 00 01 */	addi r6, r6, 1
/* 801F1024 001E6DA4  38 E7 00 04 */	addi r7, r7, 4
lbl_801F1028:
/* 801F1028 001E6DA8  2C 08 00 00 */	cmpwi r8, 0
/* 801F102C 001E6DAC  40 82 FF C4 */	bne lbl_801F0FF0
lbl_801F1030:
/* 801F1030 001E6DB0  57 C0 01 4B */	rlwinm. r0, r30, 0, 5, 5
/* 801F1034 001E6DB4  41 82 00 14 */	beq lbl_801F1048
/* 801F1038 001E6DB8  38 60 00 00 */	li r3, 0
/* 801F103C 001E6DBC  48 00 45 D9 */	bl __GXSetMatrixIndex
/* 801F1040 001E6DC0  38 60 00 05 */	li r3, 5
/* 801F1044 001E6DC4  48 00 45 D1 */	bl __GXSetMatrixIndex
lbl_801F1048:
/* 801F1048 001E6DC8  57 C0 00 C7 */	rlwinm. r0, r30, 0, 3, 3
/* 801F104C 001E6DCC  41 82 00 08 */	beq lbl_801F1054
/* 801F1050 001E6DD0  48 00 43 69 */	bl __GXSetViewport
lbl_801F1054:
/* 801F1054 001E6DD4  57 C0 01 09 */	rlwinm. r0, r30, 0, 4, 4
/* 801F1058 001E6DD8  41 82 00 08 */	beq lbl_801F1060
/* 801F105C 001E6DDC  48 00 40 4D */	bl __GXSetProjection
lbl_801F1060:
/* 801F1060 001E6DE0  38 00 00 01 */	li r0, 1
/* 801F1064 001E6DE4  B0 1F 00 02 */	sth r0, 2(r31)
lbl_801F1068:
/* 801F1068 001E6DE8  38 00 00 00 */	li r0, 0
/* 801F106C 001E6DEC  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 801F1070 001E6DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1074 001E6DF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F1078 001E6DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F107C 001E6DFC  7C 08 03 A6 */	mtlr r0
/* 801F1080 001E6E00  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1084 001E6E04  4E 80 00 20 */	blr 

.global GXBegin
GXBegin:
/* 801F1088 001E6E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F108C 001E6E0C  7C 08 02 A6 */	mflr r0
/* 801F1090 001E6E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F1094 001E6E14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F1098 001E6E18  83 E2 A4 90 */	lwz r31, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F109C 001E6E1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F10A0 001E6E20  7C BE 2B 78 */	mr r30, r5
/* 801F10A4 001E6E24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F10A8 001E6E28  7C 9D 23 78 */	mr r29, r4
/* 801F10AC 001E6E2C  93 81 00 10 */	stw r28, 0x10(r1)
/* 801F10B0 001E6E30  7C 7C 1B 78 */	mr r28, r3
/* 801F10B4 001E6E34  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 801F10B8 001E6E38  2C 00 00 00 */	cmpwi r0, 0
/* 801F10BC 001E6E3C  41 82 00 08 */	beq lbl_801F10C4
/* 801F10C0 001E6E40  4B FF FD 51 */	bl __GXSetDirtyState
lbl_801F10C4:
/* 801F10C4 001E6E44  80 1F 00 00 */	lwz r0, 0(r31)
/* 801F10C8 001E6E48  2C 00 00 00 */	cmpwi r0, 0
/* 801F10CC 001E6E4C  40 82 00 D8 */	bne lbl_801F11A4
/* 801F10D0 001E6E50  80 E2 A4 90 */	lwz r7, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F10D4 001E6E54  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F10D8 001E6E58  38 00 00 98 */	li r0, 0x98
/* 801F10DC 001E6E5C  38 C0 00 00 */	li r6, 0
/* 801F10E0 001E6E60  A0 A7 00 04 */	lhz r5, 4(r7)
/* 801F10E4 001E6E64  A0 87 00 06 */	lhz r4, 6(r7)
/* 801F10E8 001E6E68  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F10EC 001E6E6C  7C A5 21 D7 */	mullw. r5, r5, r4
/* 801F10F0 001E6E70  A0 07 00 04 */	lhz r0, 4(r7)
/* 801F10F4 001E6E74  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 801F10F8 001E6E78  41 82 00 A4 */	beq lbl_801F119C
/* 801F10FC 001E6E7C  38 65 00 03 */	addi r3, r5, 3
/* 801F1100 001E6E80  38 E5 FF E0 */	addi r7, r5, -32
/* 801F1104 001E6E84  54 60 F0 BE */	srwi r0, r3, 2
/* 801F1108 001E6E88  28 00 00 08 */	cmplwi r0, 8
/* 801F110C 001E6E8C  40 81 00 68 */	ble lbl_801F1174
/* 801F1110 001E6E90  28 03 00 03 */	cmplwi r3, 3
/* 801F1114 001E6E94  38 00 00 00 */	li r0, 0
/* 801F1118 001E6E98  41 80 00 10 */	blt lbl_801F1128
/* 801F111C 001E6E9C  7C 05 18 40 */	cmplw r5, r3
/* 801F1120 001E6EA0  41 81 00 08 */	bgt lbl_801F1128
/* 801F1124 001E6EA4  38 00 00 01 */	li r0, 1
lbl_801F1128:
/* 801F1128 001E6EA8  2C 00 00 00 */	cmpwi r0, 0
/* 801F112C 001E6EAC  41 82 00 48 */	beq lbl_801F1174
/* 801F1130 001E6EB0  38 07 00 1F */	addi r0, r7, 0x1f
/* 801F1134 001E6EB4  38 80 00 00 */	li r4, 0
/* 801F1138 001E6EB8  54 00 D9 7E */	srwi r0, r0, 5
/* 801F113C 001E6EBC  3C 60 CC 01 */	lis r3, 0xcc01
/* 801F1140 001E6EC0  7C 09 03 A6 */	mtctr r0
/* 801F1144 001E6EC4  28 07 00 00 */	cmplwi r7, 0
/* 801F1148 001E6EC8  40 81 00 2C */	ble lbl_801F1174
lbl_801F114C:
/* 801F114C 001E6ECC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1150 001E6ED0  38 C6 00 20 */	addi r6, r6, 0x20
/* 801F1154 001E6ED4  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1158 001E6ED8  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F115C 001E6EDC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1160 001E6EE0  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1164 001E6EE4  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1168 001E6EE8  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F116C 001E6EEC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1170 001E6EF0  42 00 FF DC */	bdnz lbl_801F114C
lbl_801F1174:
/* 801F1174 001E6EF4  38 05 00 03 */	addi r0, r5, 3
/* 801F1178 001E6EF8  38 80 00 00 */	li r4, 0
/* 801F117C 001E6EFC  7C 06 00 50 */	subf r0, r6, r0
/* 801F1180 001E6F00  3C 60 CC 01 */	lis r3, 0xcc01
/* 801F1184 001E6F04  54 00 F0 BE */	srwi r0, r0, 2
/* 801F1188 001E6F08  7C 09 03 A6 */	mtctr r0
/* 801F118C 001E6F0C  7C 06 28 40 */	cmplw r6, r5
/* 801F1190 001E6F10  40 80 00 0C */	bge lbl_801F119C
lbl_801F1194:
/* 801F1194 001E6F14  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1198 001E6F18  42 00 FF FC */	bdnz lbl_801F1194
lbl_801F119C:
/* 801F119C 001E6F1C  38 00 00 01 */	li r0, 1
/* 801F11A0 001E6F20  B0 1F 00 02 */	sth r0, 2(r31)
lbl_801F11A4:
/* 801F11A4 001E6F24  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F11A8 001E6F28  7F A0 E3 78 */	or r0, r29, r28
/* 801F11AC 001E6F2C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F11B0 001E6F30  B3 C3 80 00 */	sth r30, -0x8000(r3)
/* 801F11B4 001E6F34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F11B8 001E6F38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F11BC 001E6F3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F11C0 001E6F40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F11C4 001E6F44  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801F11C8 001E6F48  7C 08 03 A6 */	mtlr r0
/* 801F11CC 001E6F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F11D0 001E6F50  4E 80 00 20 */	blr 

.global __GXSendFlushPrim
__GXSendFlushPrim:
/* 801F11D4 001E6F54  80 C2 A4 90 */	lwz r6, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F11D8 001E6F58  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F11DC 001E6F5C  38 00 00 98 */	li r0, 0x98
/* 801F11E0 001E6F60  38 E0 00 00 */	li r7, 0
/* 801F11E4 001E6F64  A0 A6 00 04 */	lhz r5, 4(r6)
/* 801F11E8 001E6F68  A0 86 00 06 */	lhz r4, 6(r6)
/* 801F11EC 001E6F6C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F11F0 001E6F70  7D 05 21 D7 */	mullw. r8, r5, r4
/* 801F11F4 001E6F74  A0 06 00 04 */	lhz r0, 4(r6)
/* 801F11F8 001E6F78  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 801F11FC 001E6F7C  41 82 00 A4 */	beq lbl_801F12A0
/* 801F1200 001E6F80  38 68 00 03 */	addi r3, r8, 3
/* 801F1204 001E6F84  38 A8 FF E0 */	addi r5, r8, -32
/* 801F1208 001E6F88  54 60 F0 BE */	srwi r0, r3, 2
/* 801F120C 001E6F8C  28 00 00 08 */	cmplwi r0, 8
/* 801F1210 001E6F90  40 81 00 68 */	ble lbl_801F1278
/* 801F1214 001E6F94  28 03 00 03 */	cmplwi r3, 3
/* 801F1218 001E6F98  38 00 00 00 */	li r0, 0
/* 801F121C 001E6F9C  41 80 00 10 */	blt lbl_801F122C
/* 801F1220 001E6FA0  7C 08 18 40 */	cmplw r8, r3
/* 801F1224 001E6FA4  41 81 00 08 */	bgt lbl_801F122C
/* 801F1228 001E6FA8  38 00 00 01 */	li r0, 1
lbl_801F122C:
/* 801F122C 001E6FAC  2C 00 00 00 */	cmpwi r0, 0
/* 801F1230 001E6FB0  41 82 00 48 */	beq lbl_801F1278
/* 801F1234 001E6FB4  38 05 00 1F */	addi r0, r5, 0x1f
/* 801F1238 001E6FB8  38 80 00 00 */	li r4, 0
/* 801F123C 001E6FBC  54 00 D9 7E */	srwi r0, r0, 5
/* 801F1240 001E6FC0  3C 60 CC 01 */	lis r3, 0xcc01
/* 801F1244 001E6FC4  7C 09 03 A6 */	mtctr r0
/* 801F1248 001E6FC8  28 05 00 00 */	cmplwi r5, 0
/* 801F124C 001E6FCC  40 81 00 2C */	ble lbl_801F1278
lbl_801F1250:
/* 801F1250 001E6FD0  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1254 001E6FD4  38 E7 00 20 */	addi r7, r7, 0x20
/* 801F1258 001E6FD8  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F125C 001E6FDC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1260 001E6FE0  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1264 001E6FE4  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1268 001E6FE8  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F126C 001E6FEC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1270 001E6FF0  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F1274 001E6FF4  42 00 FF DC */	bdnz lbl_801F1250
lbl_801F1278:
/* 801F1278 001E6FF8  38 08 00 03 */	addi r0, r8, 3
/* 801F127C 001E6FFC  38 80 00 00 */	li r4, 0
/* 801F1280 001E7000  7C 07 00 50 */	subf r0, r7, r0
/* 801F1284 001E7004  3C 60 CC 01 */	lis r3, 0xcc01
/* 801F1288 001E7008  54 00 F0 BE */	srwi r0, r0, 2
/* 801F128C 001E700C  7C 09 03 A6 */	mtctr r0
/* 801F1290 001E7010  7C 07 40 40 */	cmplw r7, r8
/* 801F1294 001E7014  40 80 00 0C */	bge lbl_801F12A0
lbl_801F1298:
/* 801F1298 001E7018  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801F129C 001E701C  42 00 FF FC */	bdnz lbl_801F1298
lbl_801F12A0:
/* 801F12A0 001E7020  38 00 00 01 */	li r0, 1
/* 801F12A4 001E7024  B0 06 00 02 */	sth r0, 2(r6)
/* 801F12A8 001E7028  4E 80 00 20 */	blr 

.global GXSetLineWidth
GXSetLineWidth:
/* 801F12AC 001E702C  81 02 A4 90 */	lwz r8, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F12B0 001E7030  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 801F12B4 001E7034  38 C0 00 61 */	li r6, 0x61
/* 801F12B8 001E7038  38 00 00 00 */	li r0, 0
/* 801F12BC 001E703C  80 E8 00 7C */	lwz r7, 0x7c(r8)
/* 801F12C0 001E7040  50 67 06 3E */	rlwimi r7, r3, 0, 0x18, 0x1f
/* 801F12C4 001E7044  50 87 83 5E */	rlwimi r7, r4, 0x10, 0xd, 0xf
/* 801F12C8 001E7048  90 E8 00 7C */	stw r7, 0x7c(r8)
/* 801F12CC 001E704C  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 801F12D0 001E7050  80 68 00 7C */	lwz r3, 0x7c(r8)
/* 801F12D4 001E7054  90 65 80 00 */	stw r3, -0x8000(r5)
/* 801F12D8 001E7058  B0 08 00 02 */	sth r0, 2(r8)
/* 801F12DC 001E705C  4E 80 00 20 */	blr 

.global GXGetLineWidth
GXGetLineWidth:
/* 801F12E0 001E7060  80 A2 A4 90 */	lwz r5, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F12E4 001E7064  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 801F12E8 001E7068  98 03 00 00 */	stb r0, 0(r3)
/* 801F12EC 001E706C  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 801F12F0 001E7070  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 801F12F4 001E7074  90 04 00 00 */	stw r0, 0(r4)
/* 801F12F8 001E7078  4E 80 00 20 */	blr 

.global GXSetPointSize
GXSetPointSize:
/* 801F12FC 001E707C  81 02 A4 90 */	lwz r8, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F1300 001E7080  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 801F1304 001E7084  38 C0 00 61 */	li r6, 0x61
/* 801F1308 001E7088  38 00 00 00 */	li r0, 0
/* 801F130C 001E708C  80 E8 00 7C */	lwz r7, 0x7c(r8)
/* 801F1310 001E7090  50 67 44 2E */	rlwimi r7, r3, 8, 0x10, 0x17
/* 801F1314 001E7094  50 87 9A 98 */	rlwimi r7, r4, 0x13, 0xa, 0xc
/* 801F1318 001E7098  90 E8 00 7C */	stw r7, 0x7c(r8)
/* 801F131C 001E709C  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 801F1320 001E70A0  80 68 00 7C */	lwz r3, 0x7c(r8)
/* 801F1324 001E70A4  90 65 80 00 */	stw r3, -0x8000(r5)
/* 801F1328 001E70A8  B0 08 00 02 */	sth r0, 2(r8)
/* 801F132C 001E70AC  4E 80 00 20 */	blr 

.global GXEnableTexOffsets
GXEnableTexOffsets:
/* 801F1330 001E70B0  81 22 A4 90 */	lwz r9, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F1334 001E70B4  54 60 10 3A */	slwi r0, r3, 2
/* 801F1338 001E70B8  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 801F133C 001E70BC  38 60 00 61 */	li r3, 0x61
/* 801F1340 001E70C0  7D 09 02 14 */	add r8, r9, r0
/* 801F1344 001E70C4  38 00 00 00 */	li r0, 0
/* 801F1348 001E70C8  80 E8 01 08 */	lwz r7, 0x108(r8)
/* 801F134C 001E70CC  50 87 93 5A */	rlwimi r7, r4, 0x12, 0xd, 0xd
/* 801F1350 001E70D0  50 A7 9B 18 */	rlwimi r7, r5, 0x13, 0xc, 0xc
/* 801F1354 001E70D4  90 E8 01 08 */	stw r7, 0x108(r8)
/* 801F1358 001E70D8  98 66 80 00 */	stb r3, 0xCC008000@l(r6)
/* 801F135C 001E70DC  80 68 01 08 */	lwz r3, 0x108(r8)
/* 801F1360 001E70E0  90 66 80 00 */	stw r3, -0x8000(r6)
/* 801F1364 001E70E4  B0 09 00 02 */	sth r0, 2(r9)
/* 801F1368 001E70E8  4E 80 00 20 */	blr 

.global GXSetCullMode
GXSetCullMode:
/* 801F136C 001E70EC  80 82 A4 90 */	lwz r4, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F1370 001E70F0  54 65 FF FE */	rlwinm r5, r3, 0x1f, 0x1f, 0x1f
/* 801F1374 001E70F4  50 65 0F BC */	rlwimi r5, r3, 1, 0x1e, 0x1e
/* 801F1378 001E70F8  80 04 02 54 */	lwz r0, 0x254(r4)
/* 801F137C 001E70FC  50 A0 74 22 */	rlwimi r0, r5, 0xe, 0x10, 0x11
/* 801F1380 001E7100  90 04 02 54 */	stw r0, 0x254(r4)
/* 801F1384 001E7104  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 801F1388 001E7108  60 00 00 04 */	ori r0, r0, 4
/* 801F138C 001E710C  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 801F1390 001E7110  4E 80 00 20 */	blr 

.global GXSetCoPlanar
GXSetCoPlanar:
/* 801F1394 001E7114  80 E2 A4 90 */	lwz r7, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F1398 001E7118  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F139C 001E711C  38 A0 00 61 */	li r5, 0x61
/* 801F13A0 001E7120  3C 00 FE 08 */	lis r0, 0xfe08
/* 801F13A4 001E7124  80 C7 02 54 */	lwz r6, 0x254(r7)
/* 801F13A8 001E7128  50 66 9B 18 */	rlwimi r6, r3, 0x13, 0xc, 0xc
/* 801F13AC 001E712C  90 C7 02 54 */	stw r6, 0x254(r7)
/* 801F13B0 001E7130  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 801F13B4 001E7134  90 04 80 00 */	stw r0, -0x8000(r4)
/* 801F13B8 001E7138  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801F13BC 001E713C  80 07 02 54 */	lwz r0, 0x254(r7)
/* 801F13C0 001E7140  90 04 80 00 */	stw r0, -0x8000(r4)
/* 801F13C4 001E7144  4E 80 00 20 */	blr 

.global __GXSetGenMode
__GXSetGenMode:
/* 801F13C8 001E7148  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F13CC 001E714C  38 00 00 61 */	li r0, 0x61
/* 801F13D0 001E7150  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801F13D4 001E7154  38 00 00 00 */	li r0, 0
/* 801F13D8 001E7158  80 A2 A4 90 */	lwz r5, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F13DC 001E715C  80 65 02 54 */	lwz r3, 0x254(r5)
/* 801F13E0 001E7160  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801F13E4 001E7164  B0 05 00 02 */	sth r0, 2(r5)
/* 801F13E8 001E7168  4E 80 00 20 */	blr 
