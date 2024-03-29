.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TRKNubMainLoop
TRKNubMainLoop:
/* 80400D98 003F6B18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400D9C 003F6B1C  7C 08 02 A6 */	mflr r0
/* 80400DA0 003F6B20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80400DA4 003F6B24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80400DA8 003F6B28  3B E0 00 00 */	li r31, 0
/* 80400DAC 003F6B2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80400DB0 003F6B30  3B C0 00 00 */	li r30, 0
/* 80400DB4 003F6B34  48 00 00 BC */	b lbl_80400E70
lbl_80400DB8:
/* 80400DB8 003F6B38  38 61 00 08 */	addi r3, r1, 8
/* 80400DBC 003F6B3C  48 00 01 F1 */	bl TRKGetNextEvent
/* 80400DC0 003F6B40  2C 03 00 00 */	cmpwi r3, 0
/* 80400DC4 003F6B44  41 82 00 6C */	beq lbl_80400E30
/* 80400DC8 003F6B48  80 01 00 08 */	lwz r0, 8(r1)
/* 80400DCC 003F6B4C  3B C0 00 00 */	li r30, 0
/* 80400DD0 003F6B50  2C 00 00 02 */	cmpwi r0, 2
/* 80400DD4 003F6B54  41 82 00 28 */	beq lbl_80400DFC
/* 80400DD8 003F6B58  40 80 00 14 */	bge lbl_80400DEC
/* 80400DDC 003F6B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80400DE0 003F6B60  41 82 00 44 */	beq lbl_80400E24
/* 80400DE4 003F6B64  40 80 00 28 */	bge lbl_80400E0C
/* 80400DE8 003F6B68  48 00 00 3C */	b lbl_80400E24
lbl_80400DEC:
/* 80400DEC 003F6B6C  2C 00 00 05 */	cmpwi r0, 5
/* 80400DF0 003F6B70  41 82 00 30 */	beq lbl_80400E20
/* 80400DF4 003F6B74  40 80 00 30 */	bge lbl_80400E24
/* 80400DF8 003F6B78  48 00 00 1C */	b lbl_80400E14
lbl_80400DFC:
/* 80400DFC 003F6B7C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80400E00 003F6B80  48 00 0B 3D */	bl TRKGetBuffer
/* 80400E04 003F6B84  48 00 0E D9 */	bl TRKDispatchMessage
/* 80400E08 003F6B88  48 00 00 1C */	b lbl_80400E24
lbl_80400E0C:
/* 80400E0C 003F6B8C  3B E0 00 01 */	li r31, 1
/* 80400E10 003F6B90  48 00 00 14 */	b lbl_80400E24
lbl_80400E14:
/* 80400E14 003F6B94  38 61 00 08 */	addi r3, r1, 8
/* 80400E18 003F6B98  48 00 31 85 */	bl TRKTargetInterrupt
/* 80400E1C 003F6B9C  48 00 00 08 */	b lbl_80400E24
lbl_80400E20:
/* 80400E20 003F6BA0  48 00 2D 75 */	bl TRKTargetSupportRequest
lbl_80400E24:
/* 80400E24 003F6BA4  38 61 00 08 */	addi r3, r1, 8
/* 80400E28 003F6BA8  48 00 00 69 */	bl TRKDestructEvent
/* 80400E2C 003F6BAC  48 00 00 44 */	b lbl_80400E70
lbl_80400E30:
/* 80400E30 003F6BB0  2C 1E 00 00 */	cmpwi r30, 0
/* 80400E34 003F6BB4  41 82 00 1C */	beq lbl_80400E50
/* 80400E38 003F6BB8  3C 60 80 5A */	lis r3, lbl_805A1308@ha
/* 80400E3C 003F6BBC  38 63 13 08 */	addi r3, r3, lbl_805A1308@l
/* 80400E40 003F6BC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80400E44 003F6BC4  88 03 00 00 */	lbz r0, 0(r3)
/* 80400E48 003F6BC8  28 00 00 00 */	cmplwi r0, 0
/* 80400E4C 003F6BCC  41 82 00 10 */	beq lbl_80400E5C
lbl_80400E50:
/* 80400E50 003F6BD0  3B C0 00 01 */	li r30, 1
/* 80400E54 003F6BD4  48 00 0C CD */	bl TRKGetInput
/* 80400E58 003F6BD8  48 00 00 18 */	b lbl_80400E70
lbl_80400E5C:
/* 80400E5C 003F6BDC  48 00 2D 29 */	bl TRKTargetStopped
/* 80400E60 003F6BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80400E64 003F6BE4  40 82 00 08 */	bne lbl_80400E6C
/* 80400E68 003F6BE8  48 00 50 51 */	bl TRKTargetContinue
lbl_80400E6C:
/* 80400E6C 003F6BEC  3B C0 00 00 */	li r30, 0
lbl_80400E70:
/* 80400E70 003F6BF0  2C 1F 00 00 */	cmpwi r31, 0
/* 80400E74 003F6BF4  41 82 FF 44 */	beq lbl_80400DB8
/* 80400E78 003F6BF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80400E7C 003F6BFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80400E80 003F6C00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80400E84 003F6C04  7C 08 03 A6 */	mtlr r0
/* 80400E88 003F6C08  38 21 00 20 */	addi r1, r1, 0x20
/* 80400E8C 003F6C0C  4E 80 00 20 */	blr 

