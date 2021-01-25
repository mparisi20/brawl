.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TRKDestructEvent
TRKDestructEvent:
/* 80400E90 003F6C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80400E94 003F6C14  7C 08 02 A6 */	mflr r0
/* 80400E98 003F6C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80400E9C 003F6C1C  80 63 00 08 */	lwz r3, 8(r3)
/* 80400EA0 003F6C20  48 00 0A 39 */	bl TRKReleaseBuffer
/* 80400EA4 003F6C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80400EA8 003F6C28  7C 08 03 A6 */	mtlr r0
/* 80400EAC 003F6C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80400EB0 003F6C30  4E 80 00 20 */	blr 

.global TRKConstructEvent
TRKConstructEvent:
/* 80400EB4 003F6C34  90 83 00 00 */	stw r4, 0(r3)
/* 80400EB8 003F6C38  38 80 00 00 */	li r4, 0
/* 80400EBC 003F6C3C  38 00 FF FF */	li r0, -1
/* 80400EC0 003F6C40  90 83 00 04 */	stw r4, 4(r3)
/* 80400EC4 003F6C44  90 03 00 08 */	stw r0, 8(r3)
/* 80400EC8 003F6C48  4E 80 00 20 */	blr 

.global TRKPostEvent
TRKPostEvent:
/* 80400ECC 003F6C4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400ED0 003F6C50  7C 08 02 A6 */	mflr r0
/* 80400ED4 003F6C54  3C 80 80 5A */	lis r4, lbl_80599F48@ha
/* 80400ED8 003F6C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80400EDC 003F6C5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80400EE0 003F6C60  3B E0 00 00 */	li r31, 0
/* 80400EE4 003F6C64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80400EE8 003F6C68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80400EEC 003F6C6C  7C 7D 1B 78 */	mr r29, r3
/* 80400EF0 003F6C70  38 64 9F 48 */	addi r3, r4, lbl_80599F48@l
/* 80400EF4 003F6C74  48 00 26 C9 */	bl TRKAcquireMutex
/* 80400EF8 003F6C78  3C 60 80 5A */	lis r3, lbl_80599F48@ha
/* 80400EFC 003F6C7C  3B C3 9F 48 */	addi r30, r3, lbl_80599F48@l
/* 80400F00 003F6C80  80 7E 00 04 */	lwz r3, 4(r30)
/* 80400F04 003F6C84  2C 03 00 02 */	cmpwi r3, 2
/* 80400F08 003F6C88  40 82 00 0C */	bne lbl_80400F14
/* 80400F0C 003F6C8C  3B E0 01 00 */	li r31, 0x100
/* 80400F10 003F6C90  48 00 00 70 */	b lbl_80400F80
lbl_80400F14:
/* 80400F14 003F6C94  80 1E 00 08 */	lwz r0, 8(r30)
/* 80400F18 003F6C98  7F A4 EB 78 */	mr r4, r29
/* 80400F1C 003F6C9C  38 A0 00 0C */	li r5, 0xc
/* 80400F20 003F6CA0  7C 00 1A 14 */	add r0, r0, r3
/* 80400F24 003F6CA4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80400F28 003F6CA8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80400F2C 003F6CAC  7C 00 1A 78 */	xor r0, r0, r3
/* 80400F30 003F6CB0  7C 03 00 50 */	subf r0, r3, r0
/* 80400F34 003F6CB4  1F A0 00 0C */	mulli r29, r0, 0xc
/* 80400F38 003F6CB8  7C 7E EA 14 */	add r3, r30, r29
/* 80400F3C 003F6CBC  38 63 00 0C */	addi r3, r3, 0xc
/* 80400F40 003F6CC0  4B C0 35 5D */	bl func_8000449C
/* 80400F44 003F6CC4  3C 60 80 5A */	lis r3, lbl_80599F48@ha
/* 80400F48 003F6CC8  38 83 9F 48 */	addi r4, r3, lbl_80599F48@l
/* 80400F4C 003F6CCC  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80400F50 003F6CD0  7C 64 EA 14 */	add r3, r4, r29
/* 80400F54 003F6CD4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80400F58 003F6CD8  80 64 00 24 */	lwz r3, 0x24(r4)
/* 80400F5C 003F6CDC  38 03 00 01 */	addi r0, r3, 1
/* 80400F60 003F6CE0  28 00 01 00 */	cmplwi r0, 0x100
/* 80400F64 003F6CE4  90 04 00 24 */	stw r0, 0x24(r4)
/* 80400F68 003F6CE8  40 80 00 0C */	bge lbl_80400F74
/* 80400F6C 003F6CEC  38 00 01 00 */	li r0, 0x100
/* 80400F70 003F6CF0  90 04 00 24 */	stw r0, 0x24(r4)
lbl_80400F74:
/* 80400F74 003F6CF4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80400F78 003F6CF8  38 03 00 01 */	addi r0, r3, 1
/* 80400F7C 003F6CFC  90 1E 00 04 */	stw r0, 4(r30)
lbl_80400F80:
/* 80400F80 003F6D00  3C 60 80 5A */	lis r3, lbl_80599F48@ha
/* 80400F84 003F6D04  38 63 9F 48 */	addi r3, r3, lbl_80599F48@l
/* 80400F88 003F6D08  48 00 26 2D */	bl TRKReleaseMutex
/* 80400F8C 003F6D0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80400F90 003F6D10  7F E3 FB 78 */	mr r3, r31
/* 80400F94 003F6D14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80400F98 003F6D18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80400F9C 003F6D1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80400FA0 003F6D20  7C 08 03 A6 */	mtlr r0
/* 80400FA4 003F6D24  38 21 00 20 */	addi r1, r1, 0x20
/* 80400FA8 003F6D28  4E 80 00 20 */	blr 

.global TRKGetNextEvent
TRKGetNextEvent:
/* 80400FAC 003F6D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400FB0 003F6D30  7C 08 02 A6 */	mflr r0
/* 80400FB4 003F6D34  3C 80 80 5A */	lis r4, lbl_80599F48@ha
/* 80400FB8 003F6D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80400FBC 003F6D3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80400FC0 003F6D40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80400FC4 003F6D44  3B C0 00 00 */	li r30, 0
/* 80400FC8 003F6D48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80400FCC 003F6D4C  7C 7D 1B 78 */	mr r29, r3
/* 80400FD0 003F6D50  38 64 9F 48 */	addi r3, r4, lbl_80599F48@l
/* 80400FD4 003F6D54  48 00 25 E9 */	bl TRKAcquireMutex
/* 80400FD8 003F6D58  3C 60 80 5A */	lis r3, lbl_80599F48@ha
/* 80400FDC 003F6D5C  3B E3 9F 48 */	addi r31, r3, lbl_80599F48@l
/* 80400FE0 003F6D60  80 1F 00 04 */	lwz r0, 4(r31)
/* 80400FE4 003F6D64  2C 00 00 00 */	cmpwi r0, 0
/* 80400FE8 003F6D68  40 81 00 4C */	ble lbl_80401034
/* 80400FEC 003F6D6C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80400FF0 003F6D70  7F A3 EB 78 */	mr r3, r29
/* 80400FF4 003F6D74  38 A0 00 0C */	li r5, 0xc
/* 80400FF8 003F6D78  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80400FFC 003F6D7C  7C 9F 02 14 */	add r4, r31, r0
/* 80401000 003F6D80  38 84 00 0C */	addi r4, r4, 0xc
/* 80401004 003F6D84  4B C0 34 99 */	bl func_8000449C
/* 80401008 003F6D88  80 7F 00 08 */	lwz r3, 8(r31)
/* 8040100C 003F6D8C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80401010 003F6D90  38 03 00 01 */	addi r0, r3, 1
/* 80401014 003F6D94  38 64 FF FF */	addi r3, r4, -1
/* 80401018 003F6D98  90 1F 00 08 */	stw r0, 8(r31)
/* 8040101C 003F6D9C  2C 00 00 02 */	cmpwi r0, 2
/* 80401020 003F6DA0  90 7F 00 04 */	stw r3, 4(r31)
/* 80401024 003F6DA4  40 82 00 0C */	bne lbl_80401030
/* 80401028 003F6DA8  38 00 00 00 */	li r0, 0
/* 8040102C 003F6DAC  90 1F 00 08 */	stw r0, 8(r31)
lbl_80401030:
/* 80401030 003F6DB0  3B C0 00 01 */	li r30, 1
lbl_80401034:
/* 80401034 003F6DB4  3C 60 80 5A */	lis r3, lbl_80599F48@ha
/* 80401038 003F6DB8  38 63 9F 48 */	addi r3, r3, lbl_80599F48@l
/* 8040103C 003F6DBC  48 00 25 79 */	bl TRKReleaseMutex
/* 80401040 003F6DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80401044 003F6DC4  7F C3 F3 78 */	mr r3, r30
/* 80401048 003F6DC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040104C 003F6DCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80401050 003F6DD0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80401054 003F6DD4  7C 08 03 A6 */	mtlr r0
/* 80401058 003F6DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8040105C 003F6DDC  4E 80 00 20 */	blr 

.global TRKInitializeEventQueue
TRKInitializeEventQueue:
/* 80401060 003F6DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80401064 003F6DE4  7C 08 02 A6 */	mflr r0
/* 80401068 003F6DE8  3C 60 80 5A */	lis r3, lbl_80599F48@ha
/* 8040106C 003F6DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80401070 003F6DF0  38 63 9F 48 */	addi r3, r3, lbl_80599F48@l
/* 80401074 003F6DF4  48 00 25 51 */	bl TRKInitializeMutex
/* 80401078 003F6DF8  3C 60 80 5A */	lis r3, lbl_80599F48@ha
/* 8040107C 003F6DFC  38 63 9F 48 */	addi r3, r3, lbl_80599F48@l
/* 80401080 003F6E00  48 00 25 3D */	bl TRKAcquireMutex
/* 80401084 003F6E04  3C 60 80 5A */	lis r3, lbl_80599F48@ha
/* 80401088 003F6E08  38 80 00 00 */	li r4, 0
/* 8040108C 003F6E0C  38 63 9F 48 */	addi r3, r3, lbl_80599F48@l
/* 80401090 003F6E10  38 00 01 00 */	li r0, 0x100
/* 80401094 003F6E14  90 83 00 04 */	stw r4, 4(r3)
/* 80401098 003F6E18  90 83 00 08 */	stw r4, 8(r3)
/* 8040109C 003F6E1C  90 03 00 24 */	stw r0, 0x24(r3)
/* 804010A0 003F6E20  48 00 25 15 */	bl TRKReleaseMutex
/* 804010A4 003F6E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804010A8 003F6E28  38 60 00 00 */	li r3, 0
/* 804010AC 003F6E2C  7C 08 03 A6 */	mtlr r0
/* 804010B0 003F6E30  38 21 00 10 */	addi r1, r1, 0x10
/* 804010B4 003F6E34  4E 80 00 20 */	blr 

