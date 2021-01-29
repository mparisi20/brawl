.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfFileIO$7setLanguage
gfFileIO$7setLanguage:
/* 80014164 00009EE4  7F 63 DB 78 */	mr r3, r27
/* 80014168 00009EE8  48 01 08 E5 */	bl free__13gfHeapManagerFPv

.global lbl_8001416C
lbl_8001416C:
/* 8001416C 00009EEC  7F 43 D3 78 */	mr r3, r26
/* 80014170 00009EF0  48 01 08 DD */	bl free__13gfHeapManagerFPv

.global lbl_80014174
lbl_80014174:
/* 80014174 00009EF4  7F E3 FB 78 */	mr r3, r31
/* 80014178 00009EF8  48 01 08 D5 */	bl free__13gfHeapManagerFPv
/* 8001417C 00009EFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80014180 00009F00  48 3D D1 E9 */	bl _restgpr_26
/* 80014184 00009F04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80014188 00009F08  7C 08 03 A6 */	mtlr r0
/* 8001418C 00009F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80014190 00009F10  4E 80 00 20 */	blr 

.global gfArchiveEntryArray$7release_125
gfArchiveEntryArray$7release_125:
/* 80014194 00009F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014198 00009F18  7C 08 02 A6 */	mflr r0
/* 8001419C 00009F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800141A0 00009F20  54 80 20 36 */	slwi r0, r4, 4
/* 800141A4 00009F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800141A8 00009F28  7F E3 02 14 */	add r31, r3, r0
/* 800141AC 00009F2C  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 800141B0 00009F30  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800141B4 00009F34  41 82 00 20 */	beq lbl_800141D4
/* 800141B8 00009F38  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800141BC 00009F3C  48 01 08 91 */	bl free__13gfHeapManagerFPv
/* 800141C0 00009F40  38 00 00 00 */	li r0, 0
/* 800141C4 00009F44  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800141C8 00009F48  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 800141CC 00009F4C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800141D0 00009F50  98 1F 00 0D */	stb r0, 0xd(r31)
lbl_800141D4:
/* 800141D4 00009F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800141D8 00009F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800141DC 00009F5C  7C 08 03 A6 */	mtlr r0
/* 800141E0 00009F60  38 21 00 10 */	addi r1, r1, 0x10
/* 800141E4 00009F64  4E 80 00 20 */	blr 

