.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NETGetUniversalCalendar
NETGetUniversalCalendar:
/* 8038EC6C 003849EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038EC70 003849F0  7C 08 02 A6 */	mflr r0
/* 8038EC74 003849F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038EC78 003849F8  80 0D CD 20 */	lwz r0, lbl_805A1140-_SDA_BASE_(r13)
/* 8038EC7C 003849FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038EC80 00384A00  7C 7F 1B 78 */	mr r31, r3
/* 8038EC84 00384A04  80 6D CD 24 */	lwz r3, lbl_805A1144-_SDA_BASE_(r13)
/* 8038EC88 00384A08  7C 60 03 79 */	or. r0, r3, r0
/* 8038EC8C 00384A0C  41 82 00 48 */	beq lbl_8038ECD4
/* 8038EC90 00384A10  4B E5 2E C5 */	bl __OSGetSystemTime
/* 8038EC94 00384A14  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8038EC98 00384A18  81 0D CD 24 */	lwz r8, lbl_805A1144-_SDA_BASE_(r13)
/* 8038EC9C 00384A1C  80 C5 00 F8 */	lwz r6, 0x800000F8@l(r5)
/* 8038ECA0 00384A20  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8038ECA4 00384A24  80 ED CD 20 */	lwz r7, lbl_805A1140-_SDA_BASE_(r13)
/* 8038ECA8 00384A28  38 00 00 00 */	li r0, 0
/* 8038ECAC 00384A2C  54 C3 F0 BE */	srwi r3, r6, 2
/* 8038ECB0 00384A30  1C 63 00 3C */	mulli r3, r3, 0x3c
/* 8038ECB4 00384A34  7C 68 18 14 */	addc r3, r8, r3
/* 8038ECB8 00384A38  7C 07 01 14 */	adde r0, r7, r0
/* 8038ECBC 00384A3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038ECC0 00384A40  7C 64 18 10 */	subfc r3, r4, r3
/* 8038ECC4 00384A44  7C A5 01 10 */	subfe r5, r5, r0
/* 8038ECC8 00384A48  7C A0 01 10 */	subfe r5, r0, r0
/* 8038ECCC 00384A4C  7C A5 00 D1 */	neg. r5, r5
/* 8038ECD0 00384A50  41 82 00 18 */	beq lbl_8038ECE8
lbl_8038ECD4:
/* 8038ECD4 00384A54  38 60 00 00 */	li r3, 0
/* 8038ECD8 00384A58  48 01 3A 31 */	bl NWC24iSynchronizeRtcCounter
/* 8038ECDC 00384A5C  4B E5 2E 79 */	bl __OSGetSystemTime
/* 8038ECE0 00384A60  90 8D CD 24 */	stw r4, lbl_805A1144-_SDA_BASE_(r13)
/* 8038ECE4 00384A64  90 6D CD 20 */	stw r3, lbl_805A1140-_SDA_BASE_(r13)
lbl_8038ECE8:
/* 8038ECE8 00384A68  38 61 00 08 */	addi r3, r1, 8
/* 8038ECEC 00384A6C  48 01 36 21 */	bl NWC24iGetUniversalTime
/* 8038ECF0 00384A70  2C 03 00 00 */	cmpwi r3, 0
/* 8038ECF4 00384A74  41 80 00 38 */	blt lbl_8038ED2C
/* 8038ECF8 00384A78  80 A1 00 08 */	lwz r5, 8(r1)
/* 8038ECFC 00384A7C  38 61 00 10 */	addi r3, r1, 0x10
/* 8038ED00 00384A80  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8038ED04 00384A84  48 01 26 E5 */	bl NWC24iEpochSecondsToDate
/* 8038ED08 00384A88  2C 03 00 00 */	cmpwi r3, 0
/* 8038ED0C 00384A8C  41 80 00 20 */	blt lbl_8038ED2C
/* 8038ED10 00384A90  7F E3 FB 78 */	mr r3, r31
/* 8038ED14 00384A94  38 81 00 10 */	addi r4, r1, 0x10
/* 8038ED18 00384A98  48 01 28 0D */	bl NWC24iDateToOSCalendarTime
/* 8038ED1C 00384A9C  2C 03 00 00 */	cmpwi r3, 0
/* 8038ED20 00384AA0  41 80 00 0C */	blt lbl_8038ED2C
/* 8038ED24 00384AA4  38 60 00 01 */	li r3, 1
/* 8038ED28 00384AA8  48 00 00 14 */	b lbl_8038ED3C
lbl_8038ED2C:
/* 8038ED2C 00384AAC  4B E5 2E 09 */	bl OSGetTime
/* 8038ED30 00384AB0  7F E5 FB 78 */	mr r5, r31
/* 8038ED34 00384AB4  4B E5 30 4D */	bl OSTicksToCalendarTime
/* 8038ED38 00384AB8  38 60 00 00 */	li r3, 0
lbl_8038ED3C:
/* 8038ED3C 00384ABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038ED40 00384AC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038ED44 00384AC4  7C 08 03 A6 */	mtlr r0
/* 8038ED48 00384AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8038ED4C 00384ACC  4E 80 00 20 */	blr 
