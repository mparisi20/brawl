.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NtOffline$7__ct
NtOffline$7__ct:
/* 8014C004 00141D84  3C 80 80 46 */	lis r4, lbl_80460D40@ha
/* 8014C008 00141D88  38 00 00 00 */	li r0, 0
/* 8014C00C 00141D8C  38 84 0D 40 */	addi r4, r4, lbl_80460D40@l
/* 8014C010 00141D90  90 03 00 04 */	stw r0, 4(r3)
/* 8014C014 00141D94  90 83 00 00 */	stw r4, 0(r3)
/* 8014C018 00141D98  4E 80 00 20 */	blr 

.global NtOffline$7__dt
NtOffline$7__dt:
/* 8014C01C 00141D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C020 00141DA0  7C 08 02 A6 */	mflr r0
/* 8014C024 00141DA4  2C 03 00 00 */	cmpwi r3, 0
/* 8014C028 00141DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C02C 00141DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C030 00141DB0  7C 7F 1B 78 */	mr r31, r3
/* 8014C034 00141DB4  41 82 00 10 */	beq lbl_8014C044
/* 8014C038 00141DB8  2C 04 00 00 */	cmpwi r4, 0
/* 8014C03C 00141DBC  40 81 00 08 */	ble lbl_8014C044
/* 8014C040 00141DC0  4B EC 08 89 */	bl __dl__FPv
lbl_8014C044:
/* 8014C044 00141DC4  7F E3 FB 78 */	mr r3, r31
/* 8014C048 00141DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C04C 00141DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C050 00141DD0  7C 08 03 A6 */	mtlr r0
/* 8014C054 00141DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C058 00141DD8  4E 80 00 20 */	blr 

.global NtOffline$7getFriendIndexHaveWiiID
NtOffline$7getFriendIndexHaveWiiID:
/* 8014C05C 00141DDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C060 00141DE0  7C 08 02 A6 */	mflr r0
/* 8014C064 00141DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C068 00141DE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014C06C 00141DEC  7C BF 2B 78 */	mr r31, r5
/* 8014C070 00141DF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014C074 00141DF4  7C DE 33 78 */	mr r30, r6
/* 8014C078 00141DF8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014C07C 00141DFC  48 00 08 51 */	bl ntFriendInfo$7getInstance
/* 8014C080 00141E00  48 00 0A A5 */	bl ntFriendInfo$7getFriendInfo
/* 8014C084 00141E04  38 C0 00 40 */	li r6, 0x40
/* 8014C088 00141E08  38 A0 00 00 */	li r5, 0
/* 8014C08C 00141E0C  7C 64 1B 78 */	mr r4, r3
/* 8014C090 00141E10  38 00 00 00 */	li r0, 0
/* 8014C094 00141E14  7C C9 03 A6 */	mtctr r6
lbl_8014C098:
/* 8014C098 00141E18  88 C3 03 50 */	lbz r6, 0x350(r3)
/* 8014C09C 00141E1C  2C 06 00 00 */	cmpwi r6, 0
/* 8014C0A0 00141E20  41 82 00 B0 */	beq lbl_8014C150
/* 8014C0A4 00141E24  88 C3 03 51 */	lbz r6, 0x351(r3)
/* 8014C0A8 00141E28  2C 06 00 00 */	cmpwi r6, 0
/* 8014C0AC 00141E2C  41 82 00 A4 */	beq lbl_8014C150
/* 8014C0B0 00141E30  89 64 05 B8 */	lbz r11, 0x5b8(r4)
/* 8014C0B4 00141E34  39 20 00 00 */	li r9, 0
/* 8014C0B8 00141E38  89 04 05 B7 */	lbz r8, 0x5b7(r4)
/* 8014C0BC 00141E3C  38 E0 00 00 */	li r7, 0
/* 8014C0C0 00141E40  89 84 05 B9 */	lbz r12, 0x5b9(r4)
/* 8014C0C4 00141E44  55 6A 80 1E */	slwi r10, r11, 0x10
/* 8014C0C8 00141E48  55 06 C0 0E */	slwi r6, r8, 0x18
/* 8014C0CC 00141E4C  51 69 84 3E */	rlwimi r9, r11, 0x10, 0x10, 0x1f
/* 8014C0D0 00141E50  51 07 C2 3E */	rlwimi r7, r8, 0x18, 8, 0x1f
/* 8014C0D4 00141E54  55 8B 40 2E */	slwi r11, r12, 8
/* 8014C0D8 00141E58  7C CA 30 14 */	addc r6, r10, r6
/* 8014C0DC 00141E5C  39 40 00 00 */	li r10, 0
/* 8014C0E0 00141E60  7C E9 39 14 */	adde r7, r9, r7
/* 8014C0E4 00141E64  8B A4 05 BA */	lbz r29, 0x5ba(r4)
/* 8014C0E8 00141E68  7C CB 30 14 */	addc r6, r11, r6
/* 8014C0EC 00141E6C  51 8A 46 3E */	rlwimi r10, r12, 8, 0x18, 0x1f
/* 8014C0F0 00141E70  7D 2A 39 14 */	adde r9, r10, r7
/* 8014C0F4 00141E74  89 04 05 B5 */	lbz r8, 0x5b5(r4)
/* 8014C0F8 00141E78  7F A6 E8 14 */	addc r29, r6, r29
/* 8014C0FC 00141E7C  88 C4 05 B4 */	lbz r6, 0x5b4(r4)
/* 8014C100 00141E80  7D 89 01 94 */	addze r12, r9
/* 8014C104 00141E84  89 64 05 B6 */	lbz r11, 0x5b6(r4)
/* 8014C108 00141E88  88 E4 05 B3 */	lbz r7, 0x5b3(r4)
/* 8014C10C 00141E8C  55 09 40 2E */	slwi r9, r8, 8
/* 8014C110 00141E90  7D 40 00 14 */	addc r10, r0, r0
/* 8014C114 00141E94  54 C6 80 1E */	slwi r6, r6, 0x10
/* 8014C118 00141E98  7D 2B 49 14 */	adde r9, r11, r9
/* 8014C11C 00141E9C  54 E8 C0 0E */	slwi r8, r7, 0x18
/* 8014C120 00141EA0  7C E0 00 14 */	addc r7, r0, r0
/* 8014C124 00141EA4  7C C8 31 14 */	adde r6, r8, r6
/* 8014C128 00141EA8  7C EA 38 14 */	addc r7, r10, r7
/* 8014C12C 00141EAC  7C C9 31 14 */	adde r6, r9, r6
/* 8014C130 00141EB0  7C FD 38 14 */	addc r7, r29, r7
/* 8014C134 00141EB4  7C CC 31 14 */	adde r6, r12, r6
/* 8014C138 00141EB8  7C E7 F2 78 */	xor r7, r7, r30
/* 8014C13C 00141EBC  7C C6 FA 78 */	xor r6, r6, r31
/* 8014C140 00141EC0  7C E6 33 79 */	or. r6, r7, r6
/* 8014C144 00141EC4  40 82 00 0C */	bne lbl_8014C150
/* 8014C148 00141EC8  7C A3 2B 78 */	mr r3, r5
/* 8014C14C 00141ECC  48 00 00 18 */	b lbl_8014C164
lbl_8014C150:
/* 8014C150 00141ED0  38 63 00 04 */	addi r3, r3, 4
/* 8014C154 00141ED4  38 84 00 89 */	addi r4, r4, 0x89
/* 8014C158 00141ED8  38 A5 00 01 */	addi r5, r5, 1
/* 8014C15C 00141EDC  42 00 FF 3C */	bdnz lbl_8014C098
/* 8014C160 00141EE0  38 60 00 FF */	li r3, 0xff
lbl_8014C164:
/* 8014C164 00141EE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C168 00141EE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014C16C 00141EEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014C170 00141EF0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014C174 00141EF4  7C 08 03 A6 */	mtlr r0
/* 8014C178 00141EF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C17C 00141EFC  4E 80 00 20 */	blr 

