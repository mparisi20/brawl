.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3lyt19ArcResourceAccessorFv$7__ct
nw4r3lyt19ArcResourceAccessorFv$7__ct:
/* 8018BF14 00181C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018BF18 00181C98  7C 08 02 A6 */	mflr r0
/* 8018BF1C 00181C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018BF20 00181CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018BF24 00181CA4  7C 7F 1B 78 */	mr r31, r3
/* 8018BF28 00181CA8  4B FF FD C9 */	bl nw4r3lyt16ResourceAccessorFv$7__ct
/* 8018BF2C 00181CAC  38 00 00 00 */	li r0, 0
/* 8018BF30 00181CB0  3C 80 80 46 */	lis r4, lbl_804659E8@ha
/* 8018BF34 00181CB4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8018BF38 00181CB8  38 BF 00 28 */	addi r5, r31, 0x28
/* 8018BF3C 00181CBC  38 84 59 E8 */	addi r4, r4, lbl_804659E8@l
/* 8018BF40 00181CC0  7F E3 FB 78 */	mr r3, r31
/* 8018BF44 00181CC4  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8018BF48 00181CC8  90 9F 00 00 */	stw r4, 0(r31)
/* 8018BF4C 00181CCC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8018BF50 00181CD0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8018BF54 00181CD4  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8018BF58 00181CD8  90 BF 00 2C */	stw r5, 0x2c(r31)
/* 8018BF5C 00181CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018BF60 00181CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018BF64 00181CE4  7C 08 03 A6 */	mtlr r0
/* 8018BF68 00181CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8018BF6C 00181CEC  4E 80 00 20 */	blr 

.global nw4r3lyt19ArcResourceAccessorFPvPC$7Attach
nw4r3lyt19ArcResourceAccessorFPvPC$7Attach:
/* 8018BF70 00181CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018BF74 00181CF4  7C 08 02 A6 */	mflr r0
/* 8018BF78 00181CF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018BF7C 00181CFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018BF80 00181D00  7C BF 2B 78 */	mr r31, r5
/* 8018BF84 00181D04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018BF88 00181D08  7C 9E 23 78 */	mr r30, r4
/* 8018BF8C 00181D0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018BF90 00181D10  7C 7D 1B 78 */	mr r29, r3
/* 8018BF94 00181D14  7F C3 F3 78 */	mr r3, r30
/* 8018BF98 00181D18  38 9D 00 04 */	addi r4, r29, 4
/* 8018BF9C 00181D1C  48 08 47 6D */	bl ARCInitHandle
/* 8018BFA0 00181D20  2C 03 00 00 */	cmpwi r3, 0
/* 8018BFA4 00181D24  40 82 00 0C */	bne lbl_8018BFB0
/* 8018BFA8 00181D28  38 60 00 00 */	li r3, 0
/* 8018BFAC 00181D2C  48 00 00 24 */	b lbl_8018BFD0
lbl_8018BFB0:
/* 8018BFB0 00181D30  93 DD 00 20 */	stw r30, 0x20(r29)
/* 8018BFB4 00181D34  7F E4 FB 78 */	mr r4, r31
/* 8018BFB8 00181D38  38 7D 00 30 */	addi r3, r29, 0x30
/* 8018BFBC 00181D3C  38 A0 00 7F */	li r5, 0x7f
/* 8018BFC0 00181D40  48 26 E3 81 */	bl strncpy
/* 8018BFC4 00181D44  38 00 00 00 */	li r0, 0
/* 8018BFC8 00181D48  38 60 00 01 */	li r3, 1
/* 8018BFCC 00181D4C  98 1D 00 AF */	stb r0, 0xaf(r29)
lbl_8018BFD0:
/* 8018BFD0 00181D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018BFD4 00181D54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018BFD8 00181D58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018BFDC 00181D5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8018BFE0 00181D60  7C 08 03 A6 */	mtlr r0
/* 8018BFE4 00181D64  38 21 00 20 */	addi r1, r1, 0x20
/* 8018BFE8 00181D68  4E 80 00 20 */	blr 

.global nw4r3lyt19ArcResourceAccessorFUlPC$7GetResource
nw4r3lyt19ArcResourceAccessorFUlPC$7GetResource:
/* 8018BFEC 00181D6C  7C 88 23 78 */	mr r8, r4
/* 8018BFF0 00181D70  7C A0 2B 78 */	mr r0, r5
/* 8018BFF4 00181D74  7C C7 33 78 */	mr r7, r6
/* 8018BFF8 00181D78  38 83 00 30 */	addi r4, r3, 0x30
/* 8018BFFC 00181D7C  7D 05 43 78 */	mr r5, r8
/* 8018C000 00181D80  7C 06 03 78 */	mr r6, r0
/* 8018C004 00181D84  38 63 00 04 */	addi r3, r3, 4
/* 8018C008 00181D88  4B FF FD CC */	b $2unnamed$2lyt_arcResourceAccessor_cpp$2$7GetResourceSub

.global nw4r3lyt19ArcResourceAccessorFPCc$7GetFont
nw4r3lyt19ArcResourceAccessorFPCc$7GetFont:
/* 8018C00C 00181D8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018C010 00181D90  7C 08 02 A6 */	mflr r0
/* 8018C014 00181D94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018C018 00181D98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018C01C 00181D9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018C020 00181DA0  3B C3 00 28 */	addi r30, r3, 0x28
/* 8018C024 00181DA4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018C028 00181DA8  7C 9D 23 78 */	mr r29, r4
/* 8018C02C 00181DAC  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 8018C030 00181DB0  48 00 00 24 */	b lbl_8018C054
lbl_8018C034:
/* 8018C034 00181DB4  7F A3 EB 78 */	mr r3, r29
/* 8018C038 00181DB8  38 9F 00 08 */	addi r4, r31, 8
/* 8018C03C 00181DBC  48 26 E3 C1 */	bl strcmp
/* 8018C040 00181DC0  2C 03 00 00 */	cmpwi r3, 0
/* 8018C044 00181DC4  40 82 00 0C */	bne lbl_8018C050
/* 8018C048 00181DC8  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 8018C04C 00181DCC  48 00 00 14 */	b lbl_8018C060
lbl_8018C050:
/* 8018C050 00181DD0  83 FF 00 00 */	lwz r31, 0(r31)
lbl_8018C054:
/* 8018C054 00181DD4  7C 1F F0 40 */	cmplw r31, r30
/* 8018C058 00181DD8  40 82 FF DC */	bne lbl_8018C034
/* 8018C05C 00181DDC  38 60 00 00 */	li r3, 0
lbl_8018C060:
/* 8018C060 00181DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018C064 00181DE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018C068 00181DE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018C06C 00181DEC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8018C070 00181DF0  7C 08 03 A6 */	mtlr r0
/* 8018C074 00181DF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8018C078 00181DF8  4E 80 00 20 */	blr 

.global nw4r3lyt19ArcResourceAccessorFv$7__dt
nw4r3lyt19ArcResourceAccessorFv$7__dt:
/* 8018C07C 00181DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018C080 00181E00  7C 08 02 A6 */	mflr r0
/* 8018C084 00181E04  2C 03 00 00 */	cmpwi r3, 0
/* 8018C088 00181E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018C08C 00181E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018C090 00181E10  7C 9F 23 78 */	mr r31, r4
/* 8018C094 00181E14  93 C1 00 08 */	stw r30, 8(r1)
/* 8018C098 00181E18  7C 7E 1B 78 */	mr r30, r3
/* 8018C09C 00181E1C  41 82 00 30 */	beq lbl_8018C0CC
/* 8018C0A0 00181E20  34 63 00 24 */	addic. r3, r3, 0x24
/* 8018C0A4 00181E24  41 82 00 0C */	beq lbl_8018C0B0
/* 8018C0A8 00181E28  38 80 00 00 */	li r4, 0
/* 8018C0AC 00181E2C  4B FD 01 8D */	bl nw4r2ut6detail12LinkListImplFv$7__dt
lbl_8018C0B0:
/* 8018C0B0 00181E30  7F C3 F3 78 */	mr r3, r30
/* 8018C0B4 00181E34  38 80 00 00 */	li r4, 0
/* 8018C0B8 00181E38  4B FF FB F9 */	bl nw4r3lyt16ResourceAccessorFv$7__dt
/* 8018C0BC 00181E3C  2C 1F 00 00 */	cmpwi r31, 0
/* 8018C0C0 00181E40  40 81 00 0C */	ble lbl_8018C0CC
/* 8018C0C4 00181E44  7F C3 F3 78 */	mr r3, r30
/* 8018C0C8 00181E48  4B E8 08 01 */	bl __dl
lbl_8018C0CC:
/* 8018C0CC 00181E4C  7F C3 F3 78 */	mr r3, r30
/* 8018C0D0 00181E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018C0D4 00181E54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018C0D8 00181E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018C0DC 00181E5C  7C 08 03 A6 */	mtlr r0
/* 8018C0E0 00181E60  38 21 00 10 */	addi r1, r1, 0x10
/* 8018C0E4 00181E64  4E 80 00 20 */	blr 
