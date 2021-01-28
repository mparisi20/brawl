.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __get_typeid
__get_typeid:
/* 803F0E84 003E6C04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0E88 003E6C08  7C 08 02 A6 */	mflr r0
/* 803F0E8C 003E6C0C  2C 03 00 00 */	cmpwi r3, 0
/* 803F0E90 003E6C10  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F0E94 003E6C14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F0E98 003E6C18  7C 9F 23 78 */	mr r31, r4
/* 803F0E9C 003E6C1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F0EA0 003E6C20  7C 7E 1B 78 */	mr r30, r3
/* 803F0EA4 003E6C24  40 82 00 2C */	bne lbl_803F0ED0
/* 803F0EA8 003E6C28  3C 80 80 49 */	lis r4, lbl_80493D38@ha
/* 803F0EAC 003E6C2C  3C 60 80 42 */	lis r3, lbl_8041F418@ha
/* 803F0EB0 003E6C30  38 84 3D 38 */	addi r4, r4, lbl_80493D38@l
/* 803F0EB4 003E6C34  3C A0 80 3F */	lis r5, std10bad_typeidFv$7__dt@ha
/* 803F0EB8 003E6C38  38 63 F4 18 */	addi r3, r3, lbl_8041F418@l
/* 803F0EBC 003E6C3C  90 81 00 08 */	stw r4, 8(r1)
/* 803F0EC0 003E6C40  38 63 00 04 */	addi r3, r3, 4
/* 803F0EC4 003E6C44  38 81 00 08 */	addi r4, r1, 8
/* 803F0EC8 003E6C48  38 A5 0F 04 */	addi r5, r5, std10bad_typeidFv$7__dt@l
/* 803F0ECC 003E6C4C  48 00 1F 81 */	bl __throw
lbl_803F0ED0:
/* 803F0ED0 003E6C50  7C 7E F8 2E */	lwzx r3, r30, r31
/* 803F0ED4 003E6C54  83 C3 00 00 */	lwz r30, 0(r3)
/* 803F0ED8 003E6C58  2C 1E 00 00 */	cmpwi r30, 0
/* 803F0EDC 003E6C5C  40 82 00 0C */	bne lbl_803F0EE8
/* 803F0EE0 003E6C60  38 6D BB 10 */	addi r3, r13, lbl_8059FF30-_SDA_BASE_
/* 803F0EE4 003E6C64  48 00 00 08 */	b lbl_803F0EEC
lbl_803F0EE8:
/* 803F0EE8 003E6C68  7F C3 F3 78 */	mr r3, r30
lbl_803F0EEC:
/* 803F0EEC 003E6C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F0EF0 003E6C70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F0EF4 003E6C74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F0EF8 003E6C78  7C 08 03 A6 */	mtlr r0
/* 803F0EFC 003E6C7C  38 21 00 20 */	addi r1, r1, 0x20
/* 803F0F00 003E6C80  4E 80 00 20 */	blr 

.global std10bad_typeidFv$7__dt
std10bad_typeidFv$7__dt:
/* 803F0F04 003E6C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F0F08 003E6C88  7C 08 02 A6 */	mflr r0
/* 803F0F0C 003E6C8C  2C 03 00 00 */	cmpwi r3, 0
/* 803F0F10 003E6C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F0F14 003E6C94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F0F18 003E6C98  7C 7F 1B 78 */	mr r31, r3
/* 803F0F1C 003E6C9C  41 82 00 10 */	beq lbl_803F0F2C
/* 803F0F20 003E6CA0  2C 04 00 00 */	cmpwi r4, 0
/* 803F0F24 003E6CA4  40 81 00 08 */	ble lbl_803F0F2C
/* 803F0F28 003E6CA8  4B C1 B9 A1 */	bl __dl__FPv
lbl_803F0F2C:
/* 803F0F2C 003E6CAC  7F E3 FB 78 */	mr r3, r31
/* 803F0F30 003E6CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F0F34 003E6CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F0F38 003E6CB8  7C 08 03 A6 */	mtlr r0
/* 803F0F3C 003E6CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F0F40 003E6CC0  4E 80 00 20 */	blr 

.global __dynamic_cast
__dynamic_cast:
/* 803F0F44 003E6CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0F48 003E6CC8  7C 08 02 A6 */	mflr r0
/* 803F0F4C 003E6CCC  2C 03 00 00 */	cmpwi r3, 0
/* 803F0F50 003E6CD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F0F54 003E6CD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F0F58 003E6CD8  40 82 00 0C */	bne lbl_803F0F64
/* 803F0F5C 003E6CDC  38 60 00 00 */	li r3, 0
/* 803F0F60 003E6CE0  48 00 02 2C */	b lbl_803F118C
lbl_803F0F64:
/* 803F0F64 003E6CE4  7C 83 20 2E */	lwzx r4, r3, r4
/* 803F0F68 003E6CE8  81 64 00 00 */	lwz r11, 0(r4)
/* 803F0F6C 003E6CEC  2C 0B 00 00 */	cmpwi r11, 0
/* 803F0F70 003E6CF0  41 82 01 E8 */	beq lbl_803F1158
/* 803F0F74 003E6CF4  80 04 00 04 */	lwz r0, 4(r4)
/* 803F0F78 003E6CF8  2C 05 00 00 */	cmpwi r5, 0
/* 803F0F7C 003E6CFC  7C 63 02 14 */	add r3, r3, r0
/* 803F0F80 003E6D00  41 82 02 0C */	beq lbl_803F118C
/* 803F0F84 003E6D04  80 85 00 00 */	lwz r4, 0(r5)
/* 803F0F88 003E6D08  81 2B 00 00 */	lwz r9, 0(r11)
/* 803F0F8C 003E6D0C  7C 8A 23 78 */	mr r10, r4
/* 803F0F90 003E6D10  48 00 00 1C */	b lbl_803F0FAC
lbl_803F0F94:
/* 803F0F94 003E6D14  7D 85 07 75 */	extsb. r5, r12
/* 803F0F98 003E6D18  40 82 00 0C */	bne lbl_803F0FA4
/* 803F0F9C 003E6D1C  38 A0 00 00 */	li r5, 0
/* 803F0FA0 003E6D20  48 00 00 30 */	b lbl_803F0FD0
lbl_803F0FA4:
/* 803F0FA4 003E6D24  39 29 00 01 */	addi r9, r9, 1
/* 803F0FA8 003E6D28  39 4A 00 01 */	addi r10, r10, 1
lbl_803F0FAC:
/* 803F0FAC 003E6D2C  89 89 00 00 */	lbz r12, 0(r9)
/* 803F0FB0 003E6D30  88 AA 00 00 */	lbz r5, 0(r10)
/* 803F0FB4 003E6D34  7D 88 07 74 */	extsb r8, r12
/* 803F0FB8 003E6D38  7C A5 07 74 */	extsb r5, r5
/* 803F0FBC 003E6D3C  7C 08 28 00 */	cmpw r8, r5
/* 803F0FC0 003E6D40  41 82 FF D4 */	beq lbl_803F0F94
/* 803F0FC4 003E6D44  89 0A 00 00 */	lbz r8, 0(r10)
/* 803F0FC8 003E6D48  88 A9 00 00 */	lbz r5, 0(r9)
/* 803F0FCC 003E6D4C  7C A8 28 50 */	subf r5, r8, r5
lbl_803F0FD0:
/* 803F0FD0 003E6D50  2C 05 00 00 */	cmpwi r5, 0
/* 803F0FD4 003E6D54  40 82 00 08 */	bne lbl_803F0FDC
/* 803F0FD8 003E6D58  48 00 01 B4 */	b lbl_803F118C
lbl_803F0FDC:
/* 803F0FDC 003E6D5C  80 AB 00 04 */	lwz r5, 4(r11)
/* 803F0FE0 003E6D60  2C 05 00 00 */	cmpwi r5, 0
/* 803F0FE4 003E6D64  41 82 01 74 */	beq lbl_803F1158
/* 803F0FE8 003E6D68  48 00 01 64 */	b lbl_803F114C
lbl_803F0FEC:
/* 803F0FEC 003E6D6C  81 85 00 04 */	lwz r12, 4(r5)
/* 803F0FF0 003E6D70  55 88 00 01 */	rlwinm. r8, r12, 0, 0, 0
/* 803F0FF4 003E6D74  41 82 00 FC */	beq lbl_803F10F0
/* 803F0FF8 003E6D78  55 88 00 7E */	clrlwi r8, r12, 1
/* 803F0FFC 003E6D7C  83 E5 00 08 */	lwz r31, 8(r5)
/* 803F1000 003E6D80  7D 00 42 15 */	add. r8, r0, r8
/* 803F1004 003E6D84  40 82 00 D8 */	bne lbl_803F10DC
/* 803F1008 003E6D88  81 49 00 00 */	lwz r10, 0(r9)
/* 803F100C 003E6D8C  7C 8B 23 78 */	mr r11, r4
/* 803F1010 003E6D90  48 00 00 1C */	b lbl_803F102C
lbl_803F1014:
/* 803F1014 003E6D94  7D 88 07 75 */	extsb. r8, r12
/* 803F1018 003E6D98  40 82 00 0C */	bne lbl_803F1024
/* 803F101C 003E6D9C  39 00 00 00 */	li r8, 0
/* 803F1020 003E6DA0  48 00 00 30 */	b lbl_803F1050
lbl_803F1024:
/* 803F1024 003E6DA4  39 4A 00 01 */	addi r10, r10, 1
/* 803F1028 003E6DA8  39 6B 00 01 */	addi r11, r11, 1
lbl_803F102C:
/* 803F102C 003E6DAC  89 8A 00 00 */	lbz r12, 0(r10)
/* 803F1030 003E6DB0  89 0B 00 00 */	lbz r8, 0(r11)
/* 803F1034 003E6DB4  7D 89 07 74 */	extsb r9, r12
/* 803F1038 003E6DB8  7D 08 07 74 */	extsb r8, r8
/* 803F103C 003E6DBC  7C 09 40 00 */	cmpw r9, r8
/* 803F1040 003E6DC0  41 82 FF D4 */	beq lbl_803F1014
/* 803F1044 003E6DC4  89 2B 00 00 */	lbz r9, 0(r11)
/* 803F1048 003E6DC8  89 0A 00 00 */	lbz r8, 0(r10)
/* 803F104C 003E6DCC  7D 09 40 50 */	subf r8, r9, r8
lbl_803F1050:
/* 803F1050 003E6DD0  2C 08 00 00 */	cmpwi r8, 0
/* 803F1054 003E6DD4  40 82 00 88 */	bne lbl_803F10DC
/* 803F1058 003E6DD8  39 85 00 0C */	addi r12, r5, 0xc
/* 803F105C 003E6DDC  7F E9 03 A6 */	mtctr r31
/* 803F1060 003E6DE0  2C 1F 00 00 */	cmpwi r31, 0
/* 803F1064 003E6DE4  40 81 00 F4 */	ble lbl_803F1158
lbl_803F1068:
/* 803F1068 003E6DE8  81 6C 00 04 */	lwz r11, 4(r12)
/* 803F106C 003E6DEC  7C 80 5A 15 */	add. r4, r0, r11
/* 803F1070 003E6DF0  40 82 00 60 */	bne lbl_803F10D0
/* 803F1074 003E6DF4  80 8C 00 00 */	lwz r4, 0(r12)
/* 803F1078 003E6DF8  81 26 00 00 */	lwz r9, 0(r6)
/* 803F107C 003E6DFC  81 04 00 00 */	lwz r8, 0(r4)
/* 803F1080 003E6E00  48 00 00 1C */	b lbl_803F109C
lbl_803F1084:
/* 803F1084 003E6E04  7D 44 07 75 */	extsb. r4, r10
/* 803F1088 003E6E08  40 82 00 0C */	bne lbl_803F1094
/* 803F108C 003E6E0C  38 80 00 00 */	li r4, 0
/* 803F1090 003E6E10  48 00 00 30 */	b lbl_803F10C0
lbl_803F1094:
/* 803F1094 003E6E14  39 08 00 01 */	addi r8, r8, 1
/* 803F1098 003E6E18  39 29 00 01 */	addi r9, r9, 1
lbl_803F109C:
/* 803F109C 003E6E1C  89 48 00 00 */	lbz r10, 0(r8)
/* 803F10A0 003E6E20  88 89 00 00 */	lbz r4, 0(r9)
/* 803F10A4 003E6E24  7D 45 07 74 */	extsb r5, r10
/* 803F10A8 003E6E28  7C 84 07 74 */	extsb r4, r4
/* 803F10AC 003E6E2C  7C 05 20 00 */	cmpw r5, r4
/* 803F10B0 003E6E30  41 82 FF D4 */	beq lbl_803F1084
/* 803F10B4 003E6E34  88 A9 00 00 */	lbz r5, 0(r9)
/* 803F10B8 003E6E38  88 88 00 00 */	lbz r4, 0(r8)
/* 803F10BC 003E6E3C  7C 85 20 50 */	subf r4, r5, r4
lbl_803F10C0:
/* 803F10C0 003E6E40  2C 04 00 00 */	cmpwi r4, 0
/* 803F10C4 003E6E44  40 82 00 0C */	bne lbl_803F10D0
/* 803F10C8 003E6E48  7C 63 5A 14 */	add r3, r3, r11
/* 803F10CC 003E6E4C  48 00 00 C0 */	b lbl_803F118C
lbl_803F10D0:
/* 803F10D0 003E6E50  39 8C 00 08 */	addi r12, r12, 8
/* 803F10D4 003E6E54  42 00 FF 94 */	bdnz lbl_803F1068
/* 803F10D8 003E6E58  48 00 00 80 */	b lbl_803F1158
lbl_803F10DC:
/* 803F10DC 003E6E5C  39 1F FF FF */	addi r8, r31, -1
/* 803F10E0 003E6E60  38 A5 00 0C */	addi r5, r5, 0xc
/* 803F10E4 003E6E64  55 08 18 38 */	slwi r8, r8, 3
/* 803F10E8 003E6E68  7C A5 42 14 */	add r5, r5, r8
/* 803F10EC 003E6E6C  48 00 00 5C */	b lbl_803F1148
lbl_803F10F0:
/* 803F10F0 003E6E70  81 49 00 00 */	lwz r10, 0(r9)
/* 803F10F4 003E6E74  7C 8B 23 78 */	mr r11, r4
/* 803F10F8 003E6E78  48 00 00 1C */	b lbl_803F1114
lbl_803F10FC:
/* 803F10FC 003E6E7C  7F E8 07 75 */	extsb. r8, r31
/* 803F1100 003E6E80  40 82 00 0C */	bne lbl_803F110C
/* 803F1104 003E6E84  39 00 00 00 */	li r8, 0
/* 803F1108 003E6E88  48 00 00 30 */	b lbl_803F1138
lbl_803F110C:
/* 803F110C 003E6E8C  39 4A 00 01 */	addi r10, r10, 1
/* 803F1110 003E6E90  39 6B 00 01 */	addi r11, r11, 1
lbl_803F1114:
/* 803F1114 003E6E94  8B EA 00 00 */	lbz r31, 0(r10)
/* 803F1118 003E6E98  89 0B 00 00 */	lbz r8, 0(r11)
/* 803F111C 003E6E9C  7F E9 07 74 */	extsb r9, r31
/* 803F1120 003E6EA0  7D 08 07 74 */	extsb r8, r8
/* 803F1124 003E6EA4  7C 09 40 00 */	cmpw r9, r8
/* 803F1128 003E6EA8  41 82 FF D4 */	beq lbl_803F10FC
/* 803F112C 003E6EAC  89 2B 00 00 */	lbz r9, 0(r11)
/* 803F1130 003E6EB0  89 0A 00 00 */	lbz r8, 0(r10)
/* 803F1134 003E6EB4  7D 09 40 50 */	subf r8, r9, r8
lbl_803F1138:
/* 803F1138 003E6EB8  2C 08 00 00 */	cmpwi r8, 0
/* 803F113C 003E6EBC  40 82 00 0C */	bne lbl_803F1148
/* 803F1140 003E6EC0  7C 63 62 14 */	add r3, r3, r12
/* 803F1144 003E6EC4  48 00 00 48 */	b lbl_803F118C
lbl_803F1148:
/* 803F1148 003E6EC8  38 A5 00 08 */	addi r5, r5, 8
lbl_803F114C:
/* 803F114C 003E6ECC  81 25 00 00 */	lwz r9, 0(r5)
/* 803F1150 003E6ED0  2C 09 00 00 */	cmpwi r9, 0
/* 803F1154 003E6ED4  40 82 FE 98 */	bne lbl_803F0FEC
lbl_803F1158:
/* 803F1158 003E6ED8  2C 07 00 00 */	cmpwi r7, 0
/* 803F115C 003E6EDC  41 82 00 2C */	beq lbl_803F1188
/* 803F1160 003E6EE0  3C 80 80 49 */	lis r4, lbl_80493D58@ha
/* 803F1164 003E6EE4  3C 60 80 42 */	lis r3, lbl_8041F418@ha
/* 803F1168 003E6EE8  38 84 3D 58 */	addi r4, r4, lbl_80493D58@l
/* 803F116C 003E6EEC  3C A0 80 3F */	lis r5, std8bad_castFv$7__dt@ha
/* 803F1170 003E6EF0  38 63 F4 18 */	addi r3, r3, lbl_8041F418@l
/* 803F1174 003E6EF4  90 81 00 08 */	stw r4, 8(r1)
/* 803F1178 003E6EF8  38 63 00 27 */	addi r3, r3, 0x27
/* 803F117C 003E6EFC  38 81 00 08 */	addi r4, r1, 8
/* 803F1180 003E6F00  38 A5 11 A0 */	addi r5, r5, std8bad_castFv$7__dt@l
/* 803F1184 003E6F04  48 00 1C C9 */	bl __throw
lbl_803F1188:
/* 803F1188 003E6F08  38 60 00 00 */	li r3, 0
lbl_803F118C:
/* 803F118C 003E6F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F1190 003E6F10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F1194 003E6F14  7C 08 03 A6 */	mtlr r0
/* 803F1198 003E6F18  38 21 00 20 */	addi r1, r1, 0x20
/* 803F119C 003E6F1C  4E 80 00 20 */	blr 

.global std8bad_castFv$7__dt
std8bad_castFv$7__dt:
/* 803F11A0 003E6F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F11A4 003E6F24  7C 08 02 A6 */	mflr r0
/* 803F11A8 003E6F28  2C 03 00 00 */	cmpwi r3, 0
/* 803F11AC 003E6F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F11B0 003E6F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F11B4 003E6F34  7C 7F 1B 78 */	mr r31, r3
/* 803F11B8 003E6F38  41 82 00 10 */	beq lbl_803F11C8
/* 803F11BC 003E6F3C  2C 04 00 00 */	cmpwi r4, 0
/* 803F11C0 003E6F40  40 81 00 08 */	ble lbl_803F11C8
/* 803F11C4 003E6F44  4B C1 B7 05 */	bl __dl__FPv
lbl_803F11C8:
/* 803F11C8 003E6F48  7F E3 FB 78 */	mr r3, r31
/* 803F11CC 003E6F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F11D0 003E6F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F11D4 003E6F54  7C 08 03 A6 */	mtlr r0
/* 803F11D8 003E6F58  38 21 00 10 */	addi r1, r1, 0x10
/* 803F11DC 003E6F5C  4E 80 00 20 */	blr 

.global std8bad_castCFv$7what
std8bad_castCFv$7what:
/* 803F11E0 003E6F60  3C 60 80 49 */	lis r3, lbl_80493D80@ha
/* 803F11E4 003E6F64  38 63 3D 80 */	addi r3, r3, lbl_80493D80@l
/* 803F11E8 003E6F68  4E 80 00 20 */	blr 

.global std10bad_typeidCFv$7what
std10bad_typeidCFv$7what:
/* 803F11EC 003E6F6C  3C 60 80 49 */	lis r3, lbl_80493D74@ha
/* 803F11F0 003E6F70  38 63 3D 74 */	addi r3, r3, lbl_80493D74@l
/* 803F11F4 003E6F74  4E 80 00 20 */	blr 

