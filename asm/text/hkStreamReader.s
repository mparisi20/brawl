.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkStreamReader$7skip
hkStreamReader$7skip:
/* 80280C20 002769A0  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 80280C24 002769A4  7C 08 02 A6 */	mflr r0
/* 80280C28 002769A8  90 01 02 24 */	stw r0, 0x224(r1)
/* 80280C2C 002769AC  93 E1 02 1C */	stw r31, 0x21c(r1)
/* 80280C30 002769B0  93 C1 02 18 */	stw r30, 0x218(r1)
/* 80280C34 002769B4  7C 9E 23 78 */	mr r30, r4
/* 80280C38 002769B8  7F DF F3 78 */	mr r31, r30
/* 80280C3C 002769BC  93 A1 02 14 */	stw r29, 0x214(r1)
/* 80280C40 002769C0  7C 7D 1B 78 */	mr r29, r3
/* 80280C44 002769C4  48 00 00 38 */	b lbl_80280C7C
lbl_80280C48:
/* 80280C48 002769C8  2C 1F 02 00 */	cmpwi r31, 0x200
/* 80280C4C 002769CC  7F A3 EB 78 */	mr r3, r29
/* 80280C50 002769D0  38 81 00 08 */	addi r4, r1, 8
/* 80280C54 002769D4  38 A0 02 00 */	li r5, 0x200
/* 80280C58 002769D8  41 81 00 08 */	bgt lbl_80280C60
/* 80280C5C 002769DC  7F E5 FB 78 */	mr r5, r31
lbl_80280C60:
/* 80280C60 002769E0  81 83 00 00 */	lwz r12, 0(r3)
/* 80280C64 002769E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80280C68 002769E8  7D 89 03 A6 */	mtctr r12
/* 80280C6C 002769EC  4E 80 04 21 */	bctrl 
/* 80280C70 002769F0  2C 03 00 00 */	cmpwi r3, 0
/* 80280C74 002769F4  41 82 00 10 */	beq lbl_80280C84
/* 80280C78 002769F8  7F E3 F8 50 */	subf r31, r3, r31
lbl_80280C7C:
/* 80280C7C 002769FC  2C 1F 00 00 */	cmpwi r31, 0
/* 80280C80 00276A00  40 82 FF C8 */	bne lbl_80280C48
lbl_80280C84:
/* 80280C84 00276A04  7C 7F F0 50 */	subf r3, r31, r30
/* 80280C88 00276A08  83 E1 02 1C */	lwz r31, 0x21c(r1)
/* 80280C8C 00276A0C  83 C1 02 18 */	lwz r30, 0x218(r1)
/* 80280C90 00276A10  83 A1 02 14 */	lwz r29, 0x214(r1)
/* 80280C94 00276A14  80 01 02 24 */	lwz r0, 0x224(r1)
/* 80280C98 00276A18  7C 08 03 A6 */	mtlr r0
/* 80280C9C 00276A1C  38 21 02 20 */	addi r1, r1, 0x220
/* 80280CA0 00276A20  4E 80 00 20 */	blr 

.global hkStreamReader$7markSupported
hkStreamReader$7markSupported:
/* 80280CA4 00276A24  38 60 00 00 */	li r3, 0
/* 80280CA8 00276A28  4E 80 00 20 */	blr 

.global hkStreamReader$7setMark
hkStreamReader$7setMark:
/* 80280CAC 00276A2C  38 60 00 01 */	li r3, 1
/* 80280CB0 00276A30  4E 80 00 20 */	blr 

.global hkStreamReader$7rewindToMark
hkStreamReader$7rewindToMark:
/* 80280CB4 00276A34  38 60 00 01 */	li r3, 1
/* 80280CB8 00276A38  4E 80 00 20 */	blr 

.global hkStreamReader$7seekTellSupported
hkStreamReader$7seekTellSupported:
/* 80280CBC 00276A3C  38 60 00 00 */	li r3, 0
/* 80280CC0 00276A40  4E 80 00 20 */	blr 

.global hkStreamReader$7seek
hkStreamReader$7seek:
/* 80280CC4 00276A44  38 60 00 01 */	li r3, 1
/* 80280CC8 00276A48  4E 80 00 20 */	blr 

.global hkStreamReader$7tell
hkStreamReader$7tell:
/* 80280CCC 00276A4C  38 60 FF FF */	li r3, -1
/* 80280CD0 00276A50  4E 80 00 20 */	blr 

