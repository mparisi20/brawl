.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfCoinShooter$7loadResource
IfCoinShooter$7loadResource:
/* 80107FBC 000FDD3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80107FC0 000FDD40  7C 08 02 A6 */	mflr r0
/* 80107FC4 000FDD44  2C 03 00 00 */	cmpwi r3, 0
/* 80107FC8 000FDD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80107FCC 000FDD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80107FD0 000FDD50  7C 9F 23 78 */	mr r31, r4
/* 80107FD4 000FDD54  93 C1 00 08 */	stw r30, 8(r1)
/* 80107FD8 000FDD58  7C 7E 1B 78 */	mr r30, r3
/* 80107FDC 000FDD5C  41 82 00 1C */	beq lbl_80107FF8
/* 80107FE0 000FDD60  38 80 00 00 */	li r4, 0
/* 80107FE4 000FDD64  4B F2 5A 39 */	bl gfTask$7__dt
/* 80107FE8 000FDD68  2C 1F 00 00 */	cmpwi r31, 0
/* 80107FEC 000FDD6C  40 81 00 0C */	ble lbl_80107FF8
/* 80107FF0 000FDD70  7F C3 F3 78 */	mr r3, r30
/* 80107FF4 000FDD74  4B F0 48 D5 */	bl __dl__FPv
lbl_80107FF8:
/* 80107FF8 000FDD78  7F C3 F3 78 */	mr r3, r30
/* 80107FFC 000FDD7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80108000 000FDD80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80108004 000FDD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80108008 000FDD88  7C 08 03 A6 */	mtlr r0
/* 8010800C 000FDD8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80108010 000FDD90  4E 80 00 20 */	blr 

