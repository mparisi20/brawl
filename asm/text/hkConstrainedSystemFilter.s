.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkConstrainedSystemFilter
finishLoadedObjecthkConstrainedSystemFilter:
/* 8032BDE4 00321B64  2C 03 00 00 */	cmpwi r3, 0
/* 8032BDE8 00321B68  4D 82 00 20 */	beqlr 
/* 8032BDEC 00321B6C  3D 00 80 49 */	lis r8, lbl_80488D58@ha
/* 8032BDF0 00321B70  38 00 00 01 */	li r0, 1
/* 8032BDF4 00321B74  39 08 8D 58 */	addi r8, r8, lbl_80488D58@l
/* 8032BDF8 00321B78  B0 03 00 06 */	sth r0, 6(r3)
/* 8032BDFC 00321B7C  38 E8 00 10 */	addi r7, r8, 0x10
/* 8032BE00 00321B80  38 C8 00 20 */	addi r6, r8, 0x20
/* 8032BE04 00321B84  38 A8 00 30 */	addi r5, r8, 0x30
/* 8032BE08 00321B88  38 88 00 40 */	addi r4, r8, 0x40
/* 8032BE0C 00321B8C  38 08 00 60 */	addi r0, r8, 0x60
/* 8032BE10 00321B90  91 03 00 00 */	stw r8, 0(r3)
/* 8032BE14 00321B94  90 E3 00 08 */	stw r7, 8(r3)
/* 8032BE18 00321B98  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8032BE1C 00321B9C  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8032BE20 00321BA0  90 83 00 14 */	stw r4, 0x14(r3)
/* 8032BE24 00321BA4  90 03 00 18 */	stw r0, 0x18(r3)
/* 8032BE28 00321BA8  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkConstrainedSystemFilter
cleanupLoadedObjecthkConstrainedSystemFilter:
/* 8032BE2C 00321BAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8032BE30 00321BB0  38 80 FF FF */	li r4, -1
/* 8032BE34 00321BB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8032BE38 00321BB8  7D 89 03 A6 */	mtctr r12
/* 8032BE3C 00321BBC  4E 80 04 20 */	bctr 

.global getVtablehkConstrainedSystemFilter
getVtablehkConstrainedSystemFilter:
/* 8032BE40 00321BC0  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 8032BE44 00321BC4  7C 2C 0B 78 */	mr r12, r1
/* 8032BE48 00321BC8  21 6B FF D0 */	subfic r11, r11, -48
/* 8032BE4C 00321BCC  7C 21 59 6E */	stwux r1, r1, r11
/* 8032BE50 00321BD0  34 01 00 10 */	addic. r0, r1, 0x10
/* 8032BE54 00321BD4  41 82 00 40 */	beq lbl_8032BE94
/* 8032BE58 00321BD8  3C E0 80 49 */	lis r7, lbl_80488D58@ha
/* 8032BE5C 00321BDC  38 00 00 01 */	li r0, 1
/* 8032BE60 00321BE0  38 E7 8D 58 */	addi r7, r7, lbl_80488D58@l
/* 8032BE64 00321BE4  B0 01 00 16 */	sth r0, 0x16(r1)
/* 8032BE68 00321BE8  38 C7 00 10 */	addi r6, r7, 0x10
/* 8032BE6C 00321BEC  38 A7 00 20 */	addi r5, r7, 0x20
/* 8032BE70 00321BF0  38 87 00 30 */	addi r4, r7, 0x30
/* 8032BE74 00321BF4  38 67 00 40 */	addi r3, r7, 0x40
/* 8032BE78 00321BF8  38 07 00 60 */	addi r0, r7, 0x60
/* 8032BE7C 00321BFC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8032BE80 00321C00  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8032BE84 00321C04  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8032BE88 00321C08  90 81 00 20 */	stw r4, 0x20(r1)
/* 8032BE8C 00321C0C  90 61 00 24 */	stw r3, 0x24(r1)
/* 8032BE90 00321C10  90 01 00 28 */	stw r0, 0x28(r1)
lbl_8032BE94:
/* 8032BE94 00321C14  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8032BE98 00321C18  81 41 00 00 */	lwz r10, 0(r1)
/* 8032BE9C 00321C1C  7D 41 53 78 */	mr r1, r10
/* 8032BEA0 00321C20  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7__ct
hkConstrainedSystemFilter$7__ct:
/* 8032BEA4 00321C24  3D 20 80 49 */	lis r9, lbl_80488D58@ha
/* 8032BEA8 00321C28  38 00 00 01 */	li r0, 1
/* 8032BEAC 00321C2C  39 29 8D 58 */	addi r9, r9, lbl_80488D58@l
/* 8032BEB0 00321C30  B0 03 00 06 */	sth r0, 6(r3)
/* 8032BEB4 00321C34  39 09 00 10 */	addi r8, r9, 0x10
/* 8032BEB8 00321C38  2C 04 00 00 */	cmpwi r4, 0
/* 8032BEBC 00321C3C  38 E9 00 20 */	addi r7, r9, 0x20
/* 8032BEC0 00321C40  38 C9 00 30 */	addi r6, r9, 0x30
/* 8032BEC4 00321C44  38 A9 00 40 */	addi r5, r9, 0x40
/* 8032BEC8 00321C48  38 09 00 60 */	addi r0, r9, 0x60
/* 8032BECC 00321C4C  91 23 00 00 */	stw r9, 0(r3)
/* 8032BED0 00321C50  91 03 00 08 */	stw r8, 8(r3)
/* 8032BED4 00321C54  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8032BED8 00321C58  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8032BEDC 00321C5C  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8032BEE0 00321C60  90 03 00 18 */	stw r0, 0x18(r3)
/* 8032BEE4 00321C64  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8032BEE8 00321C68  4D 82 00 20 */	beqlr 
/* 8032BEEC 00321C6C  A0 04 00 04 */	lhz r0, 4(r4)
/* 8032BEF0 00321C70  2C 00 00 00 */	cmpwi r0, 0
/* 8032BEF4 00321C74  4D 82 00 20 */	beqlr 
/* 8032BEF8 00321C78  A8 A4 00 06 */	lha r5, 6(r4)
/* 8032BEFC 00321C7C  38 05 00 01 */	addi r0, r5, 1
/* 8032BF00 00321C80  B0 04 00 06 */	sth r0, 6(r4)
/* 8032BF04 00321C84  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7__dt
hkConstrainedSystemFilter$7__dt:
/* 8032BF08 00321C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BF0C 00321C8C  7C 08 02 A6 */	mflr r0
/* 8032BF10 00321C90  2C 03 00 00 */	cmpwi r3, 0
/* 8032BF14 00321C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BF18 00321C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BF1C 00321C9C  7C 9F 23 78 */	mr r31, r4
/* 8032BF20 00321CA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8032BF24 00321CA4  7C 7E 1B 78 */	mr r30, r3
/* 8032BF28 00321CA8  41 82 00 A8 */	beq lbl_8032BFD0
/* 8032BF2C 00321CAC  81 23 00 1C */	lwz r9, 0x1c(r3)
/* 8032BF30 00321CB0  3D 00 80 49 */	lis r8, lbl_80488D58@ha
/* 8032BF34 00321CB4  39 08 8D 58 */	addi r8, r8, lbl_80488D58@l
/* 8032BF38 00321CB8  38 E8 00 10 */	addi r7, r8, 0x10
/* 8032BF3C 00321CBC  2C 89 00 00 */	cmpwi cr1, r9, 0
/* 8032BF40 00321CC0  38 C8 00 20 */	addi r6, r8, 0x20
/* 8032BF44 00321CC4  38 A8 00 30 */	addi r5, r8, 0x30
/* 8032BF48 00321CC8  38 88 00 40 */	addi r4, r8, 0x40
/* 8032BF4C 00321CCC  38 08 00 60 */	addi r0, r8, 0x60
/* 8032BF50 00321CD0  91 03 00 00 */	stw r8, 0(r3)
/* 8032BF54 00321CD4  90 E3 00 08 */	stw r7, 8(r3)
/* 8032BF58 00321CD8  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8032BF5C 00321CDC  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8032BF60 00321CE0  90 83 00 14 */	stw r4, 0x14(r3)
/* 8032BF64 00321CE4  90 03 00 18 */	stw r0, 0x18(r3)
/* 8032BF68 00321CE8  41 86 00 40 */	beq cr1, lbl_8032BFA8
/* 8032BF6C 00321CEC  A0 09 00 04 */	lhz r0, 4(r9)
/* 8032BF70 00321CF0  2C 00 00 00 */	cmpwi r0, 0
/* 8032BF74 00321CF4  41 82 00 34 */	beq lbl_8032BFA8
/* 8032BF78 00321CF8  A8 69 00 06 */	lha r3, 6(r9)
/* 8032BF7C 00321CFC  38 63 FF FF */	addi r3, r3, -1
/* 8032BF80 00321D00  7C 60 07 35 */	extsh. r0, r3
/* 8032BF84 00321D04  B0 69 00 06 */	sth r3, 6(r9)
/* 8032BF88 00321D08  40 82 00 20 */	bne lbl_8032BFA8
/* 8032BF8C 00321D0C  41 86 00 1C */	beq cr1, lbl_8032BFA8
/* 8032BF90 00321D10  81 89 00 00 */	lwz r12, 0(r9)
/* 8032BF94 00321D14  7D 23 4B 78 */	mr r3, r9
/* 8032BF98 00321D18  38 80 00 01 */	li r4, 1
/* 8032BF9C 00321D1C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8032BFA0 00321D20  7D 89 03 A6 */	mtctr r12
/* 8032BFA4 00321D24  4E 80 04 21 */	bctrl 
lbl_8032BFA8:
/* 8032BFA8 00321D28  2C 1F 00 00 */	cmpwi r31, 0
/* 8032BFAC 00321D2C  40 81 00 24 */	ble lbl_8032BFD0
/* 8032BFB0 00321D30  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 8032BFB4 00321D34  7F C4 F3 78 */	mr r4, r30
/* 8032BFB8 00321D38  A0 BE 00 04 */	lhz r5, 4(r30)
/* 8032BFBC 00321D3C  38 C0 00 25 */	li r6, 0x25
/* 8032BFC0 00321D40  81 83 00 00 */	lwz r12, 0(r3)
/* 8032BFC4 00321D44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8032BFC8 00321D48  7D 89 03 A6 */	mtctr r12
/* 8032BFCC 00321D4C  4E 80 04 21 */	bctrl 
lbl_8032BFD0:
/* 8032BFD0 00321D50  7F C3 F3 78 */	mr r3, r30
/* 8032BFD4 00321D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BFD8 00321D58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8032BFDC 00321D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BFE0 00321D60  7C 08 03 A6 */	mtlr r0
/* 8032BFE4 00321D64  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BFE8 00321D68  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7isCollisionEnabled
hkConstrainedSystemFilter$7isCollisionEnabled:
/* 8032BFEC 00321D6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032BFF0 00321D70  7C 08 02 A6 */	mflr r0
/* 8032BFF4 00321D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032BFF8 00321D78  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8032BFFC 00321D7C  88 04 00 18 */	lbz r0, 0x18(r4)
/* 8032C000 00321D80  2C 00 00 01 */	cmpwi r0, 1
/* 8032C004 00321D84  40 82 00 10 */	bne lbl_8032C014
/* 8032C008 00321D88  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8032C00C 00321D8C  7F 84 02 14 */	add r28, r4, r0
/* 8032C010 00321D90  48 00 00 08 */	b lbl_8032C018
lbl_8032C014:
/* 8032C014 00321D94  3B 80 00 00 */	li r28, 0
lbl_8032C018:
/* 8032C018 00321D98  88 05 00 18 */	lbz r0, 0x18(r5)
/* 8032C01C 00321D9C  2C 00 00 01 */	cmpwi r0, 1
/* 8032C020 00321DA0  40 82 00 10 */	bne lbl_8032C030
/* 8032C024 00321DA4  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8032C028 00321DA8  7F E5 02 14 */	add r31, r5, r0
/* 8032C02C 00321DAC  48 00 00 08 */	b lbl_8032C034
lbl_8032C030:
/* 8032C030 00321DB0  3B E0 00 00 */	li r31, 0
lbl_8032C034:
/* 8032C034 00321DB4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8032C038 00321DB8  3B C0 00 00 */	li r30, 0
/* 8032C03C 00321DBC  2C 03 00 00 */	cmpwi r3, 0
/* 8032C040 00321DC0  41 82 00 24 */	beq lbl_8032C064
/* 8032C044 00321DC4  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C048 00321DC8  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8032C04C 00321DCC  7D 89 03 A6 */	mtctr r12
/* 8032C050 00321DD0  4E 80 04 21 */	bctrl 
/* 8032C054 00321DD4  54 60 46 3E */	srwi r0, r3, 0x18
/* 8032C058 00321DD8  7C 00 07 75 */	extsb. r0, r0
/* 8032C05C 00321DDC  40 82 00 08 */	bne lbl_8032C064
/* 8032C060 00321DE0  3B C0 00 01 */	li r30, 1
lbl_8032C064:
/* 8032C064 00321DE4  2C 1E 00 00 */	cmpwi r30, 0
/* 8032C068 00321DE8  41 82 00 0C */	beq lbl_8032C074
/* 8032C06C 00321DEC  38 60 00 00 */	li r3, 0
/* 8032C070 00321DF0  48 00 00 C0 */	b lbl_8032C130
lbl_8032C074:
/* 8032C074 00321DF4  2C 1C 00 00 */	cmpwi r28, 0
/* 8032C078 00321DF8  41 82 00 0C */	beq lbl_8032C084
/* 8032C07C 00321DFC  2C 1F 00 00 */	cmpwi r31, 0
/* 8032C080 00321E00  40 82 00 0C */	bne lbl_8032C08C
lbl_8032C084:
/* 8032C084 00321E04  3C 60 01 00 */	lis r3, 0x100
/* 8032C088 00321E08  48 00 00 A8 */	b lbl_8032C130
lbl_8032C08C:
/* 8032C08C 00321E0C  7F E3 FB 78 */	mr r3, r31
/* 8032C090 00321E10  4B FB 5D B1 */	bl hkEntity$7getNumConstraints
/* 8032C094 00321E14  7C 7E 1B 78 */	mr r30, r3
/* 8032C098 00321E18  7F 83 E3 78 */	mr r3, r28
/* 8032C09C 00321E1C  4B FB 5D A5 */	bl hkEntity$7getNumConstraints
/* 8032C0A0 00321E20  7C 03 F0 00 */	cmpw r3, r30
/* 8032C0A4 00321E24  40 81 00 0C */	ble lbl_8032C0B0
/* 8032C0A8 00321E28  7F FD FB 78 */	mr r29, r31
/* 8032C0AC 00321E2C  48 00 00 0C */	b lbl_8032C0B8
lbl_8032C0B0:
/* 8032C0B0 00321E30  7F 9D E3 78 */	mr r29, r28
/* 8032C0B4 00321E34  7F FC FB 78 */	mr r28, r31
lbl_8032C0B8:
/* 8032C0B8 00321E38  7F A3 EB 78 */	mr r3, r29
/* 8032C0BC 00321E3C  4B FB 5D 85 */	bl hkEntity$7getNumConstraints
/* 8032C0C0 00321E40  7C 7E 1B 78 */	mr r30, r3
/* 8032C0C4 00321E44  3B 60 00 00 */	li r27, 0
/* 8032C0C8 00321E48  48 00 00 5C */	b lbl_8032C124
lbl_8032C0CC:
/* 8032C0CC 00321E4C  7F A3 EB 78 */	mr r3, r29
/* 8032C0D0 00321E50  7F 64 DB 78 */	mr r4, r27
/* 8032C0D4 00321E54  4B FB 5D 7D */	bl hkEntity$7getConstraint
/* 8032C0D8 00321E58  2C 03 00 00 */	cmpwi r3, 0
/* 8032C0DC 00321E5C  7C 7F 1B 78 */	mr r31, r3
/* 8032C0E0 00321E60  41 82 00 40 */	beq lbl_8032C120
/* 8032C0E4 00321E64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8032C0E8 00321E68  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C0EC 00321E6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8032C0F0 00321E70  7D 89 03 A6 */	mtctr r12
/* 8032C0F4 00321E74  4E 80 04 21 */	bctrl 
/* 8032C0F8 00321E78  2C 03 00 0B */	cmpwi r3, 0xb
/* 8032C0FC 00321E7C  41 82 00 24 */	beq lbl_8032C120
/* 8032C100 00321E80  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8032C104 00321E84  7C 00 E0 40 */	cmplw r0, r28
/* 8032C108 00321E88  41 82 00 10 */	beq lbl_8032C118
/* 8032C10C 00321E8C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8032C110 00321E90  7C 00 E0 40 */	cmplw r0, r28
/* 8032C114 00321E94  40 82 00 0C */	bne lbl_8032C120
lbl_8032C118:
/* 8032C118 00321E98  38 60 00 00 */	li r3, 0
/* 8032C11C 00321E9C  48 00 00 14 */	b lbl_8032C130
lbl_8032C120:
/* 8032C120 00321EA0  3B 7B 00 01 */	addi r27, r27, 1
lbl_8032C124:
/* 8032C124 00321EA4  7C 1B F0 00 */	cmpw r27, r30
/* 8032C128 00321EA8  41 80 FF A4 */	blt lbl_8032C0CC
/* 8032C12C 00321EAC  3C 60 01 00 */	lis r3, 0x0100001C@ha
lbl_8032C130:
/* 8032C130 00321EB0  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8032C134 00321EB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032C138 00321EB8  7C 08 03 A6 */	mtlr r0
/* 8032C13C 00321EBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8032C140 00321EC0  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7isCollisionEnabled_11372
hkConstrainedSystemFilter$7isCollisionEnabled_11372:
/* 8032C144 00321EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C148 00321EC8  7C 08 02 A6 */	mflr r0
/* 8032C14C 00321ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C150 00321ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C154 00321ED4  3B E0 00 01 */	li r31, 1
/* 8032C158 00321ED8  80 63 00 1C */	lwz r3, 0x0100001C@l(r3)
/* 8032C15C 00321EDC  2C 03 00 00 */	cmpwi r3, 0
/* 8032C160 00321EE0  41 82 00 24 */	beq lbl_8032C184
/* 8032C164 00321EE4  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C168 00321EE8  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8032C16C 00321EEC  7D 89 03 A6 */	mtctr r12
/* 8032C170 00321EF0  4E 80 04 21 */	bctrl 
/* 8032C174 00321EF4  54 60 46 3E */	srwi r0, r3, 0x18
/* 8032C178 00321EF8  7C 00 07 75 */	extsb. r0, r0
/* 8032C17C 00321EFC  40 82 00 08 */	bne lbl_8032C184
/* 8032C180 00321F00  3B E0 00 00 */	li r31, 0
lbl_8032C184:
/* 8032C184 00321F04  57 E3 C0 0E */	slwi r3, r31, 0x18
/* 8032C188 00321F08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C18C 00321F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C190 00321F10  7C 08 03 A6 */	mtlr r0
/* 8032C194 00321F14  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C198 00321F18  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7isCollisionEnabled_11373
hkConstrainedSystemFilter$7isCollisionEnabled_11373:
/* 8032C19C 00321F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C1A0 00321F20  7C 08 02 A6 */	mflr r0
/* 8032C1A4 00321F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C1A8 00321F28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C1AC 00321F2C  3B E0 00 01 */	li r31, 1
/* 8032C1B0 00321F30  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8032C1B4 00321F34  2C 03 00 00 */	cmpwi r3, 0
/* 8032C1B8 00321F38  41 82 00 24 */	beq lbl_8032C1DC
/* 8032C1BC 00321F3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C1C0 00321F40  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8032C1C4 00321F44  7D 89 03 A6 */	mtctr r12
/* 8032C1C8 00321F48  4E 80 04 21 */	bctrl 
/* 8032C1CC 00321F4C  54 60 46 3E */	srwi r0, r3, 0x18
/* 8032C1D0 00321F50  7C 00 07 75 */	extsb. r0, r0
/* 8032C1D4 00321F54  40 82 00 08 */	bne lbl_8032C1DC
/* 8032C1D8 00321F58  3B E0 00 00 */	li r31, 0
lbl_8032C1DC:
/* 8032C1DC 00321F5C  57 E3 C0 0E */	slwi r3, r31, 0x18
/* 8032C1E0 00321F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C1E4 00321F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C1E8 00321F68  7C 08 03 A6 */	mtlr r0
/* 8032C1EC 00321F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C1F0 00321F70  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7isCollisionEnabled_11374
hkConstrainedSystemFilter$7isCollisionEnabled_11374:
/* 8032C1F4 00321F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C1F8 00321F78  7C 08 02 A6 */	mflr r0
/* 8032C1FC 00321F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C200 00321F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C204 00321F84  3B E0 00 01 */	li r31, 1
/* 8032C208 00321F88  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8032C20C 00321F8C  2C 03 00 00 */	cmpwi r3, 0
/* 8032C210 00321F90  41 82 00 24 */	beq lbl_8032C234
/* 8032C214 00321F94  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C218 00321F98  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8032C21C 00321F9C  7D 89 03 A6 */	mtctr r12
/* 8032C220 00321FA0  4E 80 04 21 */	bctrl 
/* 8032C224 00321FA4  54 60 46 3E */	srwi r0, r3, 0x18
/* 8032C228 00321FA8  7C 00 07 75 */	extsb. r0, r0
/* 8032C22C 00321FAC  40 82 00 08 */	bne lbl_8032C234
/* 8032C230 00321FB0  3B E0 00 00 */	li r31, 0
lbl_8032C234:
/* 8032C234 00321FB4  57 E3 C0 0E */	slwi r3, r31, 0x18
/* 8032C238 00321FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C23C 00321FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C240 00321FC0  7C 08 03 A6 */	mtlr r0
/* 8032C244 00321FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C248 00321FC8  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7constraintAddedCallback
hkConstrainedSystemFilter$7constraintAddedCallback:
/* 8032C24C 00321FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C250 00321FD0  7C 08 02 A6 */	mflr r0
/* 8032C254 00321FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C258 00321FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C25C 00321FDC  7C 9F 23 78 */	mr r31, r4
/* 8032C260 00321FE0  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8032C264 00321FE4  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C268 00321FE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8032C26C 00321FEC  7D 89 03 A6 */	mtctr r12
/* 8032C270 00321FF0  4E 80 04 21 */	bctrl 
/* 8032C274 00321FF4  2C 03 00 0B */	cmpwi r3, 0xb
/* 8032C278 00321FF8  41 82 00 24 */	beq lbl_8032C29C
/* 8032C27C 00321FFC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8032C280 00322000  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8032C284 00322004  38 63 00 1C */	addi r3, r3, 0x1c
/* 8032C288 00322008  38 84 00 1C */	addi r4, r4, 0x1c
/* 8032C28C 0032200C  4B FD 41 FD */	bl hkAgentNnMachine_FindAgent
/* 8032C290 00322010  2C 03 00 00 */	cmpwi r3, 0
/* 8032C294 00322014  41 82 00 08 */	beq lbl_8032C29C
/* 8032C298 00322018  4B FC 74 E5 */	bl hkWorldAgentUtil$7removeAgentAndItsToiEvents
lbl_8032C29C:
/* 8032C29C 0032201C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C2A0 00322020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C2A4 00322024  7C 08 03 A6 */	mtlr r0
/* 8032C2A8 00322028  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C2AC 0032202C  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7constraintRemovedCallback
hkConstrainedSystemFilter$7constraintRemovedCallback:
/* 8032C2B0 00322030  4E 80 00 20 */	blr 

.global __sinit_$3hkConstrainedSystemFilter_cpp
__sinit_$3hkConstrainedSystemFilter_cpp:
/* 8032C2B4 00322034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C2B8 00322038  7C 08 02 A6 */	mflr r0
/* 8032C2BC 0032203C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C2C0 00322040  4B FF FB 81 */	bl getVtablehkConstrainedSystemFilter
/* 8032C2C4 00322044  3D 00 80 41 */	lis r8, lbl_804146C0@ha
/* 8032C2C8 00322048  3C E0 80 53 */	lis r7, lbl_80533300@ha
/* 8032C2CC 0032204C  3C C0 80 33 */	lis r6, finishLoadedObjecthkConstrainedSystemFilter@ha
/* 8032C2D0 00322050  3C 80 80 33 */	lis r4, cleanupLoadedObjecthkConstrainedSystemFilter@ha
/* 8032C2D4 00322054  39 08 46 C0 */	addi r8, r8, lbl_804146C0@l
/* 8032C2D8 00322058  38 A7 33 00 */	addi r5, r7, lbl_80533300@l
/* 8032C2DC 0032205C  38 C6 BD E4 */	addi r6, r6, finishLoadedObjecthkConstrainedSystemFilter@l
/* 8032C2E0 00322060  38 84 BE 2C */	addi r4, r4, cleanupLoadedObjecthkConstrainedSystemFilter@l
/* 8032C2E4 00322064  91 07 33 00 */	stw r8, 0x3300(r7)
/* 8032C2E8 00322068  90 C5 00 04 */	stw r6, 4(r5)
/* 8032C2EC 0032206C  90 85 00 08 */	stw r4, 8(r5)
/* 8032C2F0 00322070  90 65 00 0C */	stw r3, 0xc(r5)
/* 8032C2F4 00322074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C2F8 00322078  7C 08 03 A6 */	mtlr r0
/* 8032C2FC 0032207C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C300 00322080  4E 80 00 20 */	blr 

.global hkConstrainedSystemFilter$7$28$2isCollisionEnabled
hkConstrainedSystemFilter$7$28$2isCollisionEnabled:
/* 8032C304 00322084  38 63 FF F8 */	addi r3, r3, -8
/* 8032C308 00322088  4B FF FC E4 */	b hkConstrainedSystemFilter$7isCollisionEnabled

.global hkConstrainedSystemFilter$7$28$2
hkConstrainedSystemFilter$7$28$2:
/* 8032C30C 0032208C  38 63 FF F8 */	addi r3, r3, -8
/* 8032C310 00322090  4B FF FB F8 */	b hkConstrainedSystemFilter$7__dt

.global hkConstrainedSystemFilter$7$212$2
hkConstrainedSystemFilter$7$212$2:
/* 8032C314 00322094  38 63 FF F4 */	addi r3, r3, -12
/* 8032C318 00322098  4B FF FB F0 */	b hkConstrainedSystemFilter$7__dt

.global hkConstrainedSystemFilter$7$212$2isCollisionEnabled
hkConstrainedSystemFilter$7$212$2isCollisionEnabled:
/* 8032C31C 0032209C  38 63 FF F4 */	addi r3, r3, -12
/* 8032C320 003220A0  4B FF FE 24 */	b hkConstrainedSystemFilter$7isCollisionEnabled_11372

.global hkConstrainedSystemFilter$7$216$2
hkConstrainedSystemFilter$7$216$2:
/* 8032C324 003220A4  38 63 FF F0 */	addi r3, r3, -16
/* 8032C328 003220A8  4B FF FB E0 */	b hkConstrainedSystemFilter$7__dt

.global hkConstrainedSystemFilter$7$216$2isCollisionEnabled
hkConstrainedSystemFilter$7$216$2isCollisionEnabled:
/* 8032C32C 003220AC  38 63 FF F0 */	addi r3, r3, -16
/* 8032C330 003220B0  4B FF FE 6C */	b hkConstrainedSystemFilter$7isCollisionEnabled_11373

.global hkConstrainedSystemFilter$7$220$2isCollisionEnabled
hkConstrainedSystemFilter$7$220$2isCollisionEnabled:
/* 8032C334 003220B4  38 63 FF EC */	addi r3, r3, -20
/* 8032C338 003220B8  4B FF FE BC */	b hkConstrainedSystemFilter$7isCollisionEnabled_11374

.global hkConstrainedSystemFilter$7$220$2
hkConstrainedSystemFilter$7$220$2:
/* 8032C33C 003220BC  38 63 FF EC */	addi r3, r3, -20
/* 8032C340 003220C0  4B FF FB C8 */	b hkConstrainedSystemFilter$7__dt

.global hkConstrainedSystemFilter$7$224$2constraintRemovedCallback
hkConstrainedSystemFilter$7$224$2constraintRemovedCallback:
/* 8032C344 003220C4  38 63 FF E8 */	addi r3, r3, -24
/* 8032C348 003220C8  4B FF FF 68 */	b hkConstrainedSystemFilter$7constraintRemovedCallback

.global hkConstrainedSystemFilter$7$224$2constraintAddedCallback
hkConstrainedSystemFilter$7$224$2constraintAddedCallback:
/* 8032C34C 003220CC  38 63 FF E8 */	addi r3, r3, -24
/* 8032C350 003220D0  4B FF FE FC */	b hkConstrainedSystemFilter$7constraintAddedCallback

.global hkConstrainedSystemFilter$7$224$2
hkConstrainedSystemFilter$7$224$2:
/* 8032C354 003220D4  38 63 FF E8 */	addi r3, r3, -24
/* 8032C358 003220D8  4B FF FB B0 */	b hkConstrainedSystemFilter$7__dt

