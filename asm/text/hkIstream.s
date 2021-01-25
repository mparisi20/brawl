.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkIstream$7__ct
hkIstream$7__ct:
/* 80280750 002764D0  3C A0 80 48 */	lis r5, lbl_80486440@ha
/* 80280754 002764D4  38 00 00 01 */	li r0, 1
/* 80280758 002764D8  38 A5 64 40 */	addi r5, r5, lbl_80486440@l
/* 8028075C 002764DC  B0 03 00 06 */	sth r0, 6(r3)
/* 80280760 002764E0  90 A3 00 00 */	stw r5, 0(r3)
/* 80280764 002764E4  90 83 00 08 */	stw r4, 8(r3)
/* 80280768 002764E8  A0 04 00 04 */	lhz r0, 4(r4)
/* 8028076C 002764EC  2C 00 00 00 */	cmpwi r0, 0
/* 80280770 002764F0  4D 82 00 20 */	beqlr 
/* 80280774 002764F4  A8 A4 00 06 */	lha r5, 6(r4)
/* 80280778 002764F8  38 05 00 01 */	addi r0, r5, 1
/* 8028077C 002764FC  B0 04 00 06 */	sth r0, 6(r4)
/* 80280780 00276500  4E 80 00 20 */	blr 

.global hkIstream$7__dt
hkIstream$7__dt:
/* 80280784 00276504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280788 00276508  7C 08 02 A6 */	mflr r0
/* 8028078C 0027650C  2C 03 00 00 */	cmpwi r3, 0
/* 80280790 00276510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280794 00276514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280798 00276518  7C 9F 23 78 */	mr r31, r4
/* 8028079C 0027651C  93 C1 00 08 */	stw r30, 8(r1)
/* 802807A0 00276520  7C 7E 1B 78 */	mr r30, r3
/* 802807A4 00276524  41 82 00 80 */	beq lbl_80280824
/* 802807A8 00276528  80 A3 00 08 */	lwz r5, 8(r3)
/* 802807AC 0027652C  3C 80 80 48 */	lis r4, lbl_80486440@ha
/* 802807B0 00276530  38 84 64 40 */	addi r4, r4, lbl_80486440@l
/* 802807B4 00276534  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 802807B8 00276538  90 83 00 00 */	stw r4, 0(r3)
/* 802807BC 0027653C  41 86 00 40 */	beq cr1, lbl_802807FC
/* 802807C0 00276540  A0 05 00 04 */	lhz r0, 4(r5)
/* 802807C4 00276544  2C 00 00 00 */	cmpwi r0, 0
/* 802807C8 00276548  41 82 00 34 */	beq lbl_802807FC
/* 802807CC 0027654C  A8 65 00 06 */	lha r3, 6(r5)
/* 802807D0 00276550  38 63 FF FF */	addi r3, r3, -1
/* 802807D4 00276554  7C 60 07 35 */	extsh. r0, r3
/* 802807D8 00276558  B0 65 00 06 */	sth r3, 6(r5)
/* 802807DC 0027655C  40 82 00 20 */	bne lbl_802807FC
/* 802807E0 00276560  41 86 00 1C */	beq cr1, lbl_802807FC
/* 802807E4 00276564  81 85 00 00 */	lwz r12, 0(r5)
/* 802807E8 00276568  7C A3 2B 78 */	mr r3, r5
/* 802807EC 0027656C  38 80 00 01 */	li r4, 1
/* 802807F0 00276570  81 8C 00 08 */	lwz r12, 8(r12)
/* 802807F4 00276574  7D 89 03 A6 */	mtctr r12
/* 802807F8 00276578  4E 80 04 21 */	bctrl 
lbl_802807FC:
/* 802807FC 0027657C  2C 1F 00 00 */	cmpwi r31, 0
/* 80280800 00276580  40 81 00 24 */	ble lbl_80280824
/* 80280804 00276584  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80280808 00276588  7F C4 F3 78 */	mr r4, r30
/* 8028080C 0027658C  A0 BE 00 04 */	lhz r5, 4(r30)
/* 80280810 00276590  38 C0 00 18 */	li r6, 0x18
/* 80280814 00276594  81 83 00 00 */	lwz r12, 0(r3)
/* 80280818 00276598  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028081C 0027659C  7D 89 03 A6 */	mtctr r12
/* 80280820 002765A0  4E 80 04 21 */	bctrl 
lbl_80280824:
/* 80280824 002765A4  7F C3 F3 78 */	mr r3, r30
/* 80280828 002765A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028082C 002765AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280830 002765B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280834 002765B4  7C 08 03 A6 */	mtlr r0
/* 80280838 002765B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028083C 002765BC  4E 80 00 20 */	blr 
