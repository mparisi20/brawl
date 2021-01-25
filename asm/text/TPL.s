.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TPLBind
TPLBind:
/* 8025BF24 00251CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025BF28 00251CA8  7C 08 02 A6 */	mflr r0
/* 8025BF2C 00251CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025BF30 00251CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025BF34 00251CB4  7C 7F 1B 78 */	mr r31, r3
/* 8025BF38 00251CB8  80 83 00 00 */	lwz r4, 0(r3)
/* 8025BF3C 00251CBC  3C 04 FF E0 */	addis r0, r4, 0xffe0
/* 8025BF40 00251CC0  28 00 AF 30 */	cmplwi r0, 0xaf30
/* 8025BF44 00251CC4  41 82 00 1C */	beq lbl_8025BF60
/* 8025BF48 00251CC8  3C A0 80 48 */	lis r5, lbl_80485278@ha
/* 8025BF4C 00251CCC  38 6D AA 18 */	addi r3, r13, lbl_8059EE38-_SDA_BASE_
/* 8025BF50 00251CD0  38 A5 52 78 */	addi r5, r5, lbl_80485278@l
/* 8025BF54 00251CD4  38 80 00 19 */	li r4, 0x19
/* 8025BF58 00251CD8  4C C6 31 82 */	crclr 6
/* 8025BF5C 00251CDC  4B F7 C7 35 */	bl OSPanic
lbl_8025BF60:
/* 8025BF60 00251CE0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8025BF64 00251CE4  38 60 00 00 */	li r3, 0
/* 8025BF68 00251CE8  38 A0 00 01 */	li r5, 1
/* 8025BF6C 00251CEC  7C 00 FA 14 */	add r0, r0, r31
/* 8025BF70 00251CF0  90 1F 00 08 */	stw r0, 8(r31)
/* 8025BF74 00251CF4  48 00 00 A0 */	b lbl_8025C014
lbl_8025BF78:
/* 8025BF78 00251CF8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8025BF7C 00251CFC  54 66 1B 78 */	rlwinm r6, r3, 3, 0xd, 0x1c
/* 8025BF80 00251D00  7C 04 30 2E */	lwzx r0, r4, r6
/* 8025BF84 00251D04  2C 00 00 00 */	cmpwi r0, 0
/* 8025BF88 00251D08  41 82 00 38 */	beq lbl_8025BFC0
/* 8025BF8C 00251D0C  7C 1F 02 14 */	add r0, r31, r0
/* 8025BF90 00251D10  7C 04 31 2E */	stwx r0, r4, r6
/* 8025BF94 00251D14  80 9F 00 08 */	lwz r4, 8(r31)
/* 8025BF98 00251D18  7C 84 30 2E */	lwzx r4, r4, r6
/* 8025BF9C 00251D1C  88 04 00 23 */	lbz r0, 0x23(r4)
/* 8025BFA0 00251D20  2C 00 00 00 */	cmpwi r0, 0
/* 8025BFA4 00251D24  40 82 00 1C */	bne lbl_8025BFC0
/* 8025BFA8 00251D28  80 04 00 08 */	lwz r0, 8(r4)
/* 8025BFAC 00251D2C  7C 1F 02 14 */	add r0, r31, r0
/* 8025BFB0 00251D30  90 04 00 08 */	stw r0, 8(r4)
/* 8025BFB4 00251D34  80 9F 00 08 */	lwz r4, 8(r31)
/* 8025BFB8 00251D38  7C 84 30 2E */	lwzx r4, r4, r6
/* 8025BFBC 00251D3C  98 A4 00 23 */	stb r5, 0x23(r4)
lbl_8025BFC0:
/* 8025BFC0 00251D40  80 1F 00 08 */	lwz r0, 8(r31)
/* 8025BFC4 00251D44  7C 80 32 14 */	add r4, r0, r6
/* 8025BFC8 00251D48  80 04 00 04 */	lwz r0, 4(r4)
/* 8025BFCC 00251D4C  2C 00 00 00 */	cmpwi r0, 0
/* 8025BFD0 00251D50  41 82 00 40 */	beq lbl_8025C010
/* 8025BFD4 00251D54  7C 1F 02 14 */	add r0, r31, r0
/* 8025BFD8 00251D58  90 04 00 04 */	stw r0, 4(r4)
/* 8025BFDC 00251D5C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8025BFE0 00251D60  7C 80 32 14 */	add r4, r0, r6
/* 8025BFE4 00251D64  80 84 00 04 */	lwz r4, 4(r4)
/* 8025BFE8 00251D68  88 04 00 02 */	lbz r0, 2(r4)
/* 8025BFEC 00251D6C  2C 00 00 00 */	cmpwi r0, 0
/* 8025BFF0 00251D70  40 82 00 20 */	bne lbl_8025C010
/* 8025BFF4 00251D74  80 04 00 08 */	lwz r0, 8(r4)
/* 8025BFF8 00251D78  7C 1F 02 14 */	add r0, r31, r0
/* 8025BFFC 00251D7C  90 04 00 08 */	stw r0, 8(r4)
/* 8025C000 00251D80  80 1F 00 08 */	lwz r0, 8(r31)
/* 8025C004 00251D84  7C 80 32 14 */	add r4, r0, r6
/* 8025C008 00251D88  80 84 00 04 */	lwz r4, 4(r4)
/* 8025C00C 00251D8C  98 A4 00 02 */	stb r5, 2(r4)
lbl_8025C010:
/* 8025C010 00251D90  38 63 00 01 */	addi r3, r3, 1
lbl_8025C014:
/* 8025C014 00251D94  80 1F 00 04 */	lwz r0, 4(r31)
/* 8025C018 00251D98  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8025C01C 00251D9C  7C 04 00 40 */	cmplw r4, r0
/* 8025C020 00251DA0  41 80 FF 58 */	blt lbl_8025BF78
/* 8025C024 00251DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C028 00251DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C02C 00251DAC  7C 08 03 A6 */	mtlr r0
/* 8025C030 00251DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C034 00251DB4  4E 80 00 20 */	blr 

.global TPLGet
TPLGet:
/* 8025C038 00251DB8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8025C03C 00251DBC  80 63 00 08 */	lwz r3, 8(r3)
/* 8025C040 00251DC0  7C 04 2B 96 */	divwu r0, r4, r5
/* 8025C044 00251DC4  7C 00 29 D6 */	mullw r0, r0, r5
/* 8025C048 00251DC8  7C 00 20 50 */	subf r0, r0, r4
/* 8025C04C 00251DCC  54 00 18 38 */	slwi r0, r0, 3
/* 8025C050 00251DD0  7C 63 02 14 */	add r3, r3, r0
/* 8025C054 00251DD4  4E 80 00 20 */	blr 

.global TPLGetGXTexObjFromPalette
TPLGetGXTexObjFromPalette:
/* 8025C058 00251DD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8025C05C 00251DDC  7C 08 02 A6 */	mflr r0
/* 8025C060 00251DE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025C064 00251DE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8025C068 00251DE8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8025C06C 00251DEC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8025C070 00251DF0  7C 9D 23 78 */	mr r29, r4
/* 8025C074 00251DF4  80 C3 00 04 */	lwz r6, 4(r3)
/* 8025C078 00251DF8  83 C3 00 08 */	lwz r30, 8(r3)
/* 8025C07C 00251DFC  7F A3 EB 78 */	mr r3, r29
/* 8025C080 00251E00  7C 05 33 96 */	divwu r0, r5, r6
/* 8025C084 00251E04  7C 00 31 D6 */	mullw r0, r0, r6
/* 8025C088 00251E08  7C 00 28 50 */	subf r0, r0, r5
/* 8025C08C 00251E0C  54 1F 18 38 */	slwi r31, r0, 3
/* 8025C090 00251E10  7D 3E F8 2E */	lwzx r9, r30, r31
/* 8025C094 00251E14  88 C9 00 21 */	lbz r6, 0x21(r9)
/* 8025C098 00251E18  88 09 00 22 */	lbz r0, 0x22(r9)
/* 8025C09C 00251E1C  80 89 00 08 */	lwz r4, 8(r9)
/* 8025C0A0 00251E20  7C A6 00 50 */	subf r5, r6, r0
/* 8025C0A4 00251E24  7C 00 30 50 */	subf r0, r0, r6
/* 8025C0A8 00251E28  7C A0 03 78 */	or r0, r5, r0
/* 8025C0AC 00251E2C  A0 A9 00 02 */	lhz r5, 2(r9)
/* 8025C0B0 00251E30  A0 C9 00 00 */	lhz r6, 0(r9)
/* 8025C0B4 00251E34  54 0A 0F FE */	srwi r10, r0, 0x1f
/* 8025C0B8 00251E38  80 E9 00 04 */	lwz r7, 4(r9)
/* 8025C0BC 00251E3C  81 09 00 0C */	lwz r8, 0xc(r9)
/* 8025C0C0 00251E40  81 29 00 10 */	lwz r9, 0x10(r9)
/* 8025C0C4 00251E44  4B F9 68 2D */	bl GXInitTexObj
/* 8025C0C8 00251E48  7C FE F8 2E */	lwzx r7, r30, r31
/* 8025C0CC 00251E4C  3C A0 43 30 */	lis r5, 0x4330
/* 8025C0D0 00251E50  90 A1 00 08 */	stw r5, 8(r1)
/* 8025C0D4 00251E54  7F A3 EB 78 */	mr r3, r29
/* 8025C0D8 00251E58  88 87 00 21 */	lbz r4, 0x21(r7)
/* 8025C0DC 00251E5C  38 C0 00 00 */	li r6, 0
/* 8025C0E0 00251E60  88 07 00 22 */	lbz r0, 0x22(r7)
/* 8025C0E4 00251E64  39 00 00 00 */	li r8, 0
/* 8025C0E8 00251E68  90 81 00 0C */	stw r4, 0xc(r1)
/* 8025C0EC 00251E6C  C8 42 A7 88 */	lfd f2, lbl_805A3AA8-_SDA2_BASE_(r2)
/* 8025C0F0 00251E70  C8 01 00 08 */	lfd f0, 8(r1)
/* 8025C0F4 00251E74  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8025C0F8 00251E78  EC 20 10 28 */	fsubs f1, f0, f2
/* 8025C0FC 00251E7C  80 87 00 14 */	lwz r4, 0x14(r7)
/* 8025C100 00251E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C104 00251E84  80 A7 00 18 */	lwz r5, 0x18(r7)
/* 8025C108 00251E88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8025C10C 00251E8C  C0 67 00 1C */	lfs f3, 0x1c(r7)
/* 8025C110 00251E90  EC 40 10 28 */	fsubs f2, f0, f2
/* 8025C114 00251E94  88 E7 00 20 */	lbz r7, 0x20(r7)
/* 8025C118 00251E98  4B F9 6A 2D */	bl GXInitTexObjLOD
/* 8025C11C 00251E9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025C120 00251EA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8025C124 00251EA4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8025C128 00251EA8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8025C12C 00251EAC  7C 08 03 A6 */	mtlr r0
/* 8025C130 00251EB0  38 21 00 30 */	addi r1, r1, 0x30
/* 8025C134 00251EB4  4E 80 00 20 */	blr 

