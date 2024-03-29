.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global cmSubjectList$7update
cmSubjectList$7update:
/* 8009EC5C 000949DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009EC60 000949E0  7C 08 02 A6 */	mflr r0
/* 8009EC64 000949E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009EC68 000949E8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8009EC6C 000949EC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8009EC70 000949F0  FF E0 08 90 */	fmr f31, f1
/* 8009EC74 000949F4  C0 02 8B 10 */	lfs f0, lbl_805A1E30-_SDA2_BASE_(r2)
/* 8009EC78 000949F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009EC7C 000949FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EC80 00094A00  93 C1 00 08 */	stw r30, 8(r1)
/* 8009EC84 00094A04  40 81 00 44 */	ble lbl_8009ECC8
/* 8009EC88 00094A08  3C 60 80 4A */	lis r3, lbl_8049DEDC@ha
/* 8009EC8C 00094A0C  38 63 DE DC */	addi r3, r3, lbl_8049DEDC@l
/* 8009EC90 00094A10  83 E3 00 04 */	lwz r31, 4(r3)
/* 8009EC94 00094A14  3B C3 00 04 */	addi r30, r3, 4
/* 8009EC98 00094A18  48 00 00 28 */	b lbl_8009ECC0
lbl_8009EC9C:
/* 8009EC9C 00094A1C  7F E3 FB 78 */	mr r3, r31
/* 8009ECA0 00094A20  48 00 03 2D */	bl cmSubject$7updateDispStatus
/* 8009ECA4 00094A24  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009ECA8 00094A28  54 00 87 FF */	rlwinm. r0, r0, 0x10, 0x1f, 0x1f
/* 8009ECAC 00094A2C  41 82 00 10 */	beq lbl_8009ECBC
/* 8009ECB0 00094A30  FC 20 F8 90 */	fmr f1, f31
/* 8009ECB4 00094A34  7F E3 FB 78 */	mr r3, r31
/* 8009ECB8 00094A38  48 00 04 51 */	bl cmSubject$7shiftRange
lbl_8009ECBC:
/* 8009ECBC 00094A3C  83 FF 00 00 */	lwz r31, 0(r31)
lbl_8009ECC0:
/* 8009ECC0 00094A40  7C 1F F0 40 */	cmplw r31, r30
/* 8009ECC4 00094A44  40 82 FF D8 */	bne lbl_8009EC9C
lbl_8009ECC8:
/* 8009ECC8 00094A48  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8009ECCC 00094A4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009ECD0 00094A50  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8009ECD4 00094A54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009ECD8 00094A58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009ECDC 00094A5C  7C 08 03 A6 */	mtlr r0
/* 8009ECE0 00094A60  38 21 00 20 */	addi r1, r1, 0x20
/* 8009ECE4 00094A64  4E 80 00 20 */	blr 

.global cmSubjectList$7getSubjectByPlayerNo
cmSubjectList$7getSubjectByPlayerNo:
/* 8009ECE8 00094A68  3C A0 80 4A */	lis r5, lbl_8049DEDC@ha
/* 8009ECEC 00094A6C  38 E0 00 00 */	li r7, 0
/* 8009ECF0 00094A70  38 A5 DE DC */	addi r5, r5, lbl_8049DEDC@l
/* 8009ECF4 00094A74  80 85 00 04 */	lwz r4, 4(r5)
/* 8009ECF8 00094A78  38 05 00 04 */	addi r0, r5, 4
/* 8009ECFC 00094A7C  48 00 00 34 */	b lbl_8009ED30
lbl_8009ED00:
/* 8009ED00 00094A80  80 C4 00 08 */	lwz r6, 8(r4)
/* 8009ED04 00094A84  54 C5 37 7E */	rlwinm r5, r6, 6, 0x1d, 0x1f
/* 8009ED08 00094A88  38 A5 00 FE */	addi r5, r5, 0xfe
/* 8009ED0C 00094A8C  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 8009ED10 00094A90  28 05 00 01 */	cmplwi r5, 1
/* 8009ED14 00094A94  41 81 00 18 */	bgt lbl_8009ED2C
/* 8009ED18 00094A98  54 C5 67 7E */	rlwinm r5, r6, 0xc, 0x1d, 0x1f
/* 8009ED1C 00094A9C  7C 03 28 40 */	cmplw r3, r5
/* 8009ED20 00094AA0  40 82 00 0C */	bne lbl_8009ED2C
/* 8009ED24 00094AA4  7C 87 23 78 */	mr r7, r4
/* 8009ED28 00094AA8  48 00 00 10 */	b lbl_8009ED38
lbl_8009ED2C:
/* 8009ED2C 00094AAC  80 84 00 00 */	lwz r4, 0(r4)
lbl_8009ED30:
/* 8009ED30 00094AB0  7C 04 00 40 */	cmplw r4, r0
/* 8009ED34 00094AB4  40 82 FF CC */	bne lbl_8009ED00
lbl_8009ED38:
/* 8009ED38 00094AB8  7C E3 3B 78 */	mr r3, r7
/* 8009ED3C 00094ABC  4E 80 00 20 */	blr 

.global cmSubject$7__ct
cmSubject$7__ct:
/* 8009ED40 00094AC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009ED44 00094AC4  7C 08 02 A6 */	mflr r0
/* 8009ED48 00094AC8  C1 02 8B 10 */	lfs f8, lbl_805A1E30-_SDA2_BASE_(r2)
/* 8009ED4C 00094ACC  38 C0 00 00 */	li r6, 0
/* 8009ED50 00094AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009ED54 00094AD4  28 05 00 01 */	cmplwi r5, 1
/* 8009ED58 00094AD8  C0 E2 8B 18 */	lfs f7, lbl_805A1E38-_SDA2_BASE_(r2)
/* 8009ED5C 00094ADC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8009ED60 00094AE0  7C 7F 1B 78 */	mr r31, r3
/* 8009ED64 00094AE4  C0 C2 8B 1C */	lfs f6, lbl_805A1E3C-_SDA2_BASE_(r2)
/* 8009ED68 00094AE8  80 03 00 08 */	lwz r0, 8(r3)
/* 8009ED6C 00094AEC  50 80 E8 04 */	rlwimi r0, r4, 0x1d, 0, 2
/* 8009ED70 00094AF0  C0 A2 8B 20 */	lfs f5, lbl_805A1E40-_SDA2_BASE_(r2)
/* 8009ED74 00094AF4  C0 82 8B 24 */	lfs f4, lbl_805A1E44-_SDA2_BASE_(r2)
/* 8009ED78 00094AF8  54 00 04 C4 */	rlwinm r0, r0, 0, 0x13, 2
/* 8009ED7C 00094AFC  C0 62 8B 28 */	lfs f3, lbl_805A1E48-_SDA2_BASE_(r2)
/* 8009ED80 00094B00  C0 42 8B 2C */	lfs f2, lbl_805A1E4C-_SDA2_BASE_(r2)
/* 8009ED84 00094B04  C0 22 8B 30 */	lfs f1, lbl_805A1E50-_SDA2_BASE_(r2)
/* 8009ED88 00094B08  C0 02 8B 34 */	lfs f0, lbl_805A1E54-_SDA2_BASE_(r2)
/* 8009ED8C 00094B0C  90 C3 00 00 */	stw r6, 0(r3)
/* 8009ED90 00094B10  90 C3 00 04 */	stw r6, 4(r3)
/* 8009ED94 00094B14  90 03 00 08 */	stw r0, 8(r3)
/* 8009ED98 00094B18  B0 C3 00 0C */	sth r6, 0xc(r3)
/* 8009ED9C 00094B1C  B0 C3 00 0E */	sth r6, 0xe(r3)
/* 8009EDA0 00094B20  D1 03 00 10 */	stfs f8, 0x10(r3)
/* 8009EDA4 00094B24  D1 03 00 14 */	stfs f8, 0x14(r3)
/* 8009EDA8 00094B28  D1 03 00 18 */	stfs f8, 0x18(r3)
/* 8009EDAC 00094B2C  D1 03 00 1C */	stfs f8, 0x1c(r3)
/* 8009EDB0 00094B30  D1 03 00 20 */	stfs f8, 0x20(r3)
/* 8009EDB4 00094B34  D1 03 00 24 */	stfs f8, 0x24(r3)
/* 8009EDB8 00094B38  D1 03 00 28 */	stfs f8, 0x28(r3)
/* 8009EDBC 00094B3C  D1 03 00 60 */	stfs f8, 0x60(r3)
/* 8009EDC0 00094B40  D1 03 00 64 */	stfs f8, 0x64(r3)
/* 8009EDC4 00094B44  D1 03 00 68 */	stfs f8, 0x68(r3)
/* 8009EDC8 00094B48  D0 E3 00 2C */	stfs f7, 0x2c(r3)
/* 8009EDCC 00094B4C  D0 C3 00 30 */	stfs f6, 0x30(r3)
/* 8009EDD0 00094B50  D0 C3 00 34 */	stfs f6, 0x34(r3)
/* 8009EDD4 00094B54  D0 E3 00 38 */	stfs f7, 0x38(r3)
/* 8009EDD8 00094B58  D1 03 00 4C */	stfs f8, 0x4c(r3)
/* 8009EDDC 00094B5C  D1 03 00 50 */	stfs f8, 0x50(r3)
/* 8009EDE0 00094B60  D1 03 00 54 */	stfs f8, 0x54(r3)
/* 8009EDE4 00094B64  D1 03 00 58 */	stfs f8, 0x58(r3)
/* 8009EDE8 00094B68  D0 E3 00 3C */	stfs f7, 0x3c(r3)
/* 8009EDEC 00094B6C  D0 C3 00 40 */	stfs f6, 0x40(r3)
/* 8009EDF0 00094B70  D0 C3 00 44 */	stfs f6, 0x44(r3)
/* 8009EDF4 00094B74  D0 E3 00 48 */	stfs f7, 0x48(r3)
/* 8009EDF8 00094B78  D1 03 00 5C */	stfs f8, 0x5c(r3)
/* 8009EDFC 00094B7C  D0 A3 00 6C */	stfs f5, 0x6c(r3)
/* 8009EE00 00094B80  D0 83 00 70 */	stfs f4, 0x70(r3)
/* 8009EE04 00094B84  D0 63 00 74 */	stfs f3, 0x74(r3)
/* 8009EE08 00094B88  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 8009EE0C 00094B8C  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 8009EE10 00094B90  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 8009EE14 00094B94  40 82 00 34 */	bne lbl_8009EE48
/* 8009EE18 00094B98  54 00 9F FF */	rlwinm. r0, r0, 0x13, 0x1f, 0x1f
/* 8009EE1C 00094B9C  40 82 00 2C */	bne lbl_8009EE48
/* 8009EE20 00094BA0  3C 60 80 4A */	lis r3, lbl_8049DEDC@ha
/* 8009EE24 00094BA4  7F E5 FB 78 */	mr r5, r31
/* 8009EE28 00094BA8  38 63 DE DC */	addi r3, r3, lbl_8049DEDC@l
/* 8009EE2C 00094BAC  38 81 00 08 */	addi r4, r1, 8
/* 8009EE30 00094BB0  38 03 00 04 */	addi r0, r3, 4
/* 8009EE34 00094BB4  90 01 00 08 */	stw r0, 8(r1)
/* 8009EE38 00094BB8  48 0B D5 11 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 8009EE3C 00094BBC  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009EE40 00094BC0  60 00 20 00 */	ori r0, r0, 0x2000
/* 8009EE44 00094BC4  90 1F 00 08 */	stw r0, 8(r31)
lbl_8009EE48:
/* 8009EE48 00094BC8  7F E3 FB 78 */	mr r3, r31
/* 8009EE4C 00094BCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009EE50 00094BD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009EE54 00094BD4  7C 08 03 A6 */	mtlr r0
/* 8009EE58 00094BD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8009EE5C 00094BDC  4E 80 00 20 */	blr 

.global cmSubject$7__dt
cmSubject$7__dt:
/* 8009EE60 00094BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EE64 00094BE4  7C 08 02 A6 */	mflr r0
/* 8009EE68 00094BE8  2C 03 00 00 */	cmpwi r3, 0
/* 8009EE6C 00094BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EE70 00094BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009EE74 00094BF4  7C 9F 23 78 */	mr r31, r4
/* 8009EE78 00094BF8  93 C1 00 08 */	stw r30, 8(r1)
/* 8009EE7C 00094BFC  7C 7E 1B 78 */	mr r30, r3
/* 8009EE80 00094C00  41 82 00 40 */	beq lbl_8009EEC0
/* 8009EE84 00094C04  80 03 00 08 */	lwz r0, 8(r3)
/* 8009EE88 00094C08  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 8009EE8C 00094C0C  28 00 00 01 */	cmplwi r0, 1
/* 8009EE90 00094C10  40 82 00 20 */	bne lbl_8009EEB0
/* 8009EE94 00094C14  3C 60 80 4A */	lis r3, lbl_8049DEDC@ha
/* 8009EE98 00094C18  7F C4 F3 78 */	mr r4, r30
/* 8009EE9C 00094C1C  38 63 DE DC */	addi r3, r3, lbl_8049DEDC@l
/* 8009EEA0 00094C20  48 0B D4 D5 */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 8009EEA4 00094C24  80 1E 00 08 */	lwz r0, 8(r30)
/* 8009EEA8 00094C28  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 8009EEAC 00094C2C  90 1E 00 08 */	stw r0, 8(r30)
lbl_8009EEB0:
/* 8009EEB0 00094C30  2C 1F 00 00 */	cmpwi r31, 0
/* 8009EEB4 00094C34  40 81 00 0C */	ble lbl_8009EEC0
/* 8009EEB8 00094C38  7F C3 F3 78 */	mr r3, r30
/* 8009EEBC 00094C3C  4B F6 DA 0D */	bl __dl__FPv
lbl_8009EEC0:
/* 8009EEC0 00094C40  7F C3 F3 78 */	mr r3, r30
/* 8009EEC4 00094C44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009EEC8 00094C48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009EECC 00094C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EED0 00094C50  7C 08 03 A6 */	mtlr r0
/* 8009EED4 00094C54  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EED8 00094C58  4E 80 00 20 */	blr 

.global cmSubject$7regist
cmSubject$7regist:
/* 8009EEDC 00094C5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009EEE0 00094C60  7C 08 02 A6 */	mflr r0
/* 8009EEE4 00094C64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009EEE8 00094C68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8009EEEC 00094C6C  7C 7F 1B 78 */	mr r31, r3
/* 8009EEF0 00094C70  80 03 00 08 */	lwz r0, 8(r3)
/* 8009EEF4 00094C74  54 00 9F FF */	rlwinm. r0, r0, 0x13, 0x1f, 0x1f
/* 8009EEF8 00094C78  40 82 00 2C */	bne lbl_8009EF24
/* 8009EEFC 00094C7C  3C 60 80 4A */	lis r3, lbl_8049DEDC@ha
/* 8009EF00 00094C80  7F E5 FB 78 */	mr r5, r31
/* 8009EF04 00094C84  38 63 DE DC */	addi r3, r3, lbl_8049DEDC@l
/* 8009EF08 00094C88  38 81 00 08 */	addi r4, r1, 8
/* 8009EF0C 00094C8C  38 03 00 04 */	addi r0, r3, 4
/* 8009EF10 00094C90  90 01 00 08 */	stw r0, 8(r1)
/* 8009EF14 00094C94  48 0B D4 35 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 8009EF18 00094C98  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009EF1C 00094C9C  60 00 20 00 */	ori r0, r0, 0x2000
/* 8009EF20 00094CA0  90 1F 00 08 */	stw r0, 8(r31)
lbl_8009EF24:
/* 8009EF24 00094CA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009EF28 00094CA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009EF2C 00094CAC  7C 08 03 A6 */	mtlr r0
/* 8009EF30 00094CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8009EF34 00094CB4  4E 80 00 20 */	blr 

.global cmSubject$7unRegist
cmSubject$7unRegist:
/* 8009EF38 00094CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EF3C 00094CBC  7C 08 02 A6 */	mflr r0
/* 8009EF40 00094CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EF44 00094CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009EF48 00094CC8  7C 7F 1B 78 */	mr r31, r3
/* 8009EF4C 00094CCC  80 03 00 08 */	lwz r0, 8(r3)
/* 8009EF50 00094CD0  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 8009EF54 00094CD4  28 00 00 01 */	cmplwi r0, 1
/* 8009EF58 00094CD8  40 82 00 20 */	bne lbl_8009EF78
/* 8009EF5C 00094CDC  3C 60 80 4A */	lis r3, lbl_8049DEDC@ha
/* 8009EF60 00094CE0  7F E4 FB 78 */	mr r4, r31
/* 8009EF64 00094CE4  38 63 DE DC */	addi r3, r3, lbl_8049DEDC@l
/* 8009EF68 00094CE8  48 0B D4 0D */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 8009EF6C 00094CEC  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009EF70 00094CF0  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 8009EF74 00094CF4  90 1F 00 08 */	stw r0, 8(r31)
lbl_8009EF78:
/* 8009EF78 00094CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EF7C 00094CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009EF80 00094D00  7C 08 03 A6 */	mtlr r0
/* 8009EF84 00094D04  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EF88 00094D08  4E 80 00 20 */	blr 

.global cmSubject$7setPos
cmSubject$7setPos:
/* 8009EF8C 00094D0C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8009EF90 00094D10  C0 24 00 04 */	lfs f1, 4(r4)
/* 8009EF94 00094D14  C0 04 00 08 */	lfs f0, 8(r4)
/* 8009EF98 00094D18  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8009EF9C 00094D1C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8009EFA0 00094D20  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8009EFA4 00094D24  4E 80 00 20 */	blr 

.global cmSubject$7setRange
cmSubject$7setRange:
/* 8009EFA8 00094D28  C0 64 00 00 */	lfs f3, 0(r4)
/* 8009EFAC 00094D2C  C0 44 00 04 */	lfs f2, 4(r4)
/* 8009EFB0 00094D30  C0 24 00 08 */	lfs f1, 8(r4)
/* 8009EFB4 00094D34  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8009EFB8 00094D38  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8009EFBC 00094D3C  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 8009EFC0 00094D40  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 8009EFC4 00094D44  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8009EFC8 00094D48  4E 80 00 20 */	blr 

.global cmSubject$7updateDispStatus
cmSubject$7updateDispStatus:
/* 8009EFCC 00094D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EFD0 00094D50  7C 08 02 A6 */	mflr r0
/* 8009EFD4 00094D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EFD8 00094D58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009EFDC 00094D5C  7C 7F 1B 78 */	mr r31, r3
/* 8009EFE0 00094D60  80 A3 00 08 */	lwz r5, 8(r3)
/* 8009EFE4 00094D64  54 A4 1F 7E */	srwi r4, r5, 0x1d
/* 8009EFE8 00094D68  28 04 00 01 */	cmplwi r4, 1
/* 8009EFEC 00094D6C  41 82 00 FC */	beq lbl_8009F0E8
/* 8009EFF0 00094D70  54 A0 77 FF */	rlwinm. r0, r5, 0xe, 0x1f, 0x1f
/* 8009EFF4 00094D74  40 82 00 F4 */	bne lbl_8009F0E8
/* 8009EFF8 00094D78  28 04 00 02 */	cmplwi r4, 2
/* 8009EFFC 00094D7C  40 82 00 DC */	bne lbl_8009F0D8
/* 8009F000 00094D80  A8 83 00 0C */	lha r4, 0xc(r3)
/* 8009F004 00094D84  2C 04 00 00 */	cmpwi r4, 0
/* 8009F008 00094D88  41 82 00 18 */	beq lbl_8009F020
/* 8009F00C 00094D8C  38 84 FF FF */	addi r4, r4, -1
/* 8009F010 00094D90  54 A0 04 1C */	rlwinm r0, r5, 0, 0x10, 0xe
/* 8009F014 00094D94  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8009F018 00094D98  90 03 00 08 */	stw r0, 8(r3)
/* 8009F01C 00094D9C  48 00 00 D8 */	b lbl_8009F0F4
lbl_8009F020:
/* 8009F020 00094DA0  4B FF CE 55 */	bl getInstance__16CameraControllerFv
/* 8009F024 00094DA4  C0 63 01 4C */	lfs f3, 0x14c(r3)
/* 8009F028 00094DA8  C0 03 01 48 */	lfs f0, 0x148(r3)
/* 8009F02C 00094DAC  C0 43 01 50 */	lfs f2, 0x150(r3)
/* 8009F030 00094DB0  EC 83 00 28 */	fsubs f4, f3, f0
/* 8009F034 00094DB4  C0 23 01 54 */	lfs f1, 0x154(r3)
/* 8009F038 00094DB8  C0 02 8B 38 */	lfs f0, lbl_805A1E58-_SDA2_BASE_(r2)
/* 8009F03C 00094DBC  EC A2 08 28 */	fsubs f5, f2, f1
/* 8009F040 00094DC0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8009F044 00094DC4  40 80 00 08 */	bge lbl_8009F04C
/* 8009F048 00094DC8  FC 80 00 90 */	fmr f4, f0
lbl_8009F04C:
/* 8009F04C 00094DCC  C0 02 8B 38 */	lfs f0, lbl_805A1E58-_SDA2_BASE_(r2)
/* 8009F050 00094DD0  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8009F054 00094DD4  40 80 00 08 */	bge lbl_8009F05C
/* 8009F058 00094DD8  FC A0 00 90 */	fmr f5, f0
lbl_8009F05C:
/* 8009F05C 00094DDC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8009F060 00094DE0  C0 03 01 48 */	lfs f0, 0x148(r3)
/* 8009F064 00094DE4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8009F068 00094DE8  EC 61 00 28 */	fsubs f3, f1, f0
/* 8009F06C 00094DEC  C0 03 01 54 */	lfs f0, 0x154(r3)
/* 8009F070 00094DF0  C0 22 8B 3C */	lfs f1, lbl_805A1E5C-_SDA2_BASE_(r2)
/* 8009F074 00094DF4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8009F078 00094DF8  EC 43 20 24 */	fdivs f2, f3, f4
/* 8009F07C 00094DFC  EC 60 28 24 */	fdivs f3, f0, f5
/* 8009F080 00094E00  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8009F084 00094E04  41 81 00 20 */	bgt lbl_8009F0A4
/* 8009F088 00094E08  C0 02 8B 40 */	lfs f0, lbl_805A1E60-_SDA2_BASE_(r2)
/* 8009F08C 00094E0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8009F090 00094E10  41 80 00 14 */	blt lbl_8009F0A4
/* 8009F094 00094E14  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8009F098 00094E18  41 81 00 0C */	bgt lbl_8009F0A4
/* 8009F09C 00094E1C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8009F0A0 00094E20  40 80 00 30 */	bge lbl_8009F0D0
lbl_8009F0A4:
/* 8009F0A4 00094E24  80 7F 00 08 */	lwz r3, 8(r31)
/* 8009F0A8 00094E28  54 60 7F FF */	rlwinm. r0, r3, 0xf, 0x1f, 0x1f
/* 8009F0AC 00094E2C  41 82 00 14 */	beq lbl_8009F0C0
/* 8009F0B0 00094E30  54 63 03 DA */	rlwinm r3, r3, 0, 0xf, 0xd
/* 8009F0B4 00094E34  38 00 02 58 */	li r0, 0x258
/* 8009F0B8 00094E38  90 7F 00 08 */	stw r3, 8(r31)
/* 8009F0BC 00094E3C  B0 1F 00 0C */	sth r0, 0xc(r31)
lbl_8009F0C0:
/* 8009F0C0 00094E40  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009F0C4 00094E44  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 8009F0C8 00094E48  90 1F 00 08 */	stw r0, 8(r31)
/* 8009F0CC 00094E4C  48 00 00 28 */	b lbl_8009F0F4
lbl_8009F0D0:
/* 8009F0D0 00094E50  38 00 00 00 */	li r0, 0
/* 8009F0D4 00094E54  B0 1F 00 0C */	sth r0, 0xc(r31)
lbl_8009F0D8:
/* 8009F0D8 00094E58  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009F0DC 00094E5C  64 00 00 03 */	oris r0, r0, 3
/* 8009F0E0 00094E60  90 1F 00 08 */	stw r0, 8(r31)
/* 8009F0E4 00094E64  48 00 00 10 */	b lbl_8009F0F4
lbl_8009F0E8:
/* 8009F0E8 00094E68  80 03 00 08 */	lwz r0, 8(r3)
/* 8009F0EC 00094E6C  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 8009F0F0 00094E70  90 03 00 08 */	stw r0, 8(r3)
lbl_8009F0F4:
/* 8009F0F4 00094E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009F0F8 00094E78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009F0FC 00094E7C  7C 08 03 A6 */	mtlr r0
/* 8009F100 00094E80  38 21 00 10 */	addi r1, r1, 0x10
/* 8009F104 00094E84  4E 80 00 20 */	blr 

.global cmSubject$7shiftRange
cmSubject$7shiftRange:
/* 8009F108 00094E88  C0 63 00 3C */	lfs f3, 0x3c(r3)
/* 8009F10C 00094E8C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8009F110 00094E90  C0 42 8B 44 */	lfs f2, lbl_805A1E64-_SDA2_BASE_(r2)
/* 8009F114 00094E94  EC C3 00 28 */	fsubs f6, f3, f0
/* 8009F118 00094E98  C0 02 8B 48 */	lfs f0, lbl_805A1E68-_SDA2_BASE_(r2)
/* 8009F11C 00094E9C  EC E2 00 72 */	fmuls f7, f2, f1
/* 8009F120 00094EA0  C0 A3 00 40 */	lfs f5, 0x40(r3)
/* 8009F124 00094EA4  ED 00 00 72 */	fmuls f8, f0, f1
/* 8009F128 00094EA8  C0 83 00 30 */	lfs f4, 0x30(r3)
/* 8009F12C 00094EAC  FC 00 32 10 */	fabs f0, f6
/* 8009F130 00094EB0  C0 63 00 44 */	lfs f3, 0x44(r3)
/* 8009F134 00094EB4  EC A5 20 28 */	fsubs f5, f5, f4
/* 8009F138 00094EB8  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8009F13C 00094EBC  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8009F140 00094EC0  FC 80 00 18 */	frsp f4, f0
/* 8009F144 00094EC4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8009F148 00094EC8  EC 63 10 28 */	fsubs f3, f3, f2
/* 8009F14C 00094ECC  FC 04 38 40 */	fcmpo cr0, f4, f7
/* 8009F150 00094ED0  EC 81 00 28 */	fsubs f4, f1, f0
/* 8009F154 00094ED4  40 81 00 08 */	ble lbl_8009F15C
/* 8009F158 00094ED8  EC C6 02 32 */	fmuls f6, f6, f8
lbl_8009F15C:
/* 8009F15C 00094EDC  FC 00 2A 10 */	fabs f0, f5
/* 8009F160 00094EE0  FC 00 00 18 */	frsp f0, f0
/* 8009F164 00094EE4  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 8009F168 00094EE8  40 81 00 08 */	ble lbl_8009F170
/* 8009F16C 00094EEC  EC A5 02 32 */	fmuls f5, f5, f8
lbl_8009F170:
/* 8009F170 00094EF0  FC 00 1A 10 */	fabs f0, f3
/* 8009F174 00094EF4  FC 00 00 18 */	frsp f0, f0
/* 8009F178 00094EF8  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 8009F17C 00094EFC  40 81 00 08 */	ble lbl_8009F184
/* 8009F180 00094F00  EC 63 02 32 */	fmuls f3, f3, f8
lbl_8009F184:
/* 8009F184 00094F04  FC 00 22 10 */	fabs f0, f4
/* 8009F188 00094F08  FC 00 00 18 */	frsp f0, f0
/* 8009F18C 00094F0C  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 8009F190 00094F10  40 81 00 08 */	ble lbl_8009F198
/* 8009F194 00094F14  EC 84 02 32 */	fmuls f4, f4, f8
lbl_8009F198:
/* 8009F198 00094F18  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8009F19C 00094F1C  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 8009F1A0 00094F20  EC E1 30 2A */	fadds f7, f1, f6
/* 8009F1A4 00094F24  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 8009F1A8 00094F28  EC C2 28 2A */	fadds f6, f2, f5
/* 8009F1AC 00094F2C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8009F1B0 00094F30  EC 81 20 2A */	fadds f4, f1, f4
/* 8009F1B4 00094F34  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 8009F1B8 00094F38  EC A0 18 2A */	fadds f5, f0, f3
/* 8009F1BC 00094F3C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8009F1C0 00094F40  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 8009F1C4 00094F44  EC 42 30 28 */	fsubs f2, f2, f6
/* 8009F1C8 00094F48  EC 60 38 28 */	fsubs f3, f0, f7
/* 8009F1CC 00094F4C  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 8009F1D0 00094F50  EC 21 28 28 */	fsubs f1, f1, f5
/* 8009F1D4 00094F54  D0 E3 00 2C */	stfs f7, 0x2c(r3)
/* 8009F1D8 00094F58  EC 00 20 28 */	fsubs f0, f0, f4
/* 8009F1DC 00094F5C  D0 C3 00 30 */	stfs f6, 0x30(r3)
/* 8009F1E0 00094F60  D0 A3 00 34 */	stfs f5, 0x34(r3)
/* 8009F1E4 00094F64  D0 83 00 38 */	stfs f4, 0x38(r3)
/* 8009F1E8 00094F68  D0 63 00 4C */	stfs f3, 0x4c(r3)
/* 8009F1EC 00094F6C  D0 43 00 50 */	stfs f2, 0x50(r3)
/* 8009F1F0 00094F70  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 8009F1F4 00094F74  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8009F1F8 00094F78  4E 80 00 20 */	blr 

.global cmSubject$7clear
cmSubject$7clear:
/* 8009F1FC 00094F7C  80 03 00 08 */	lwz r0, 8(r3)
/* 8009F200 00094F80  38 80 00 00 */	li r4, 0
/* 8009F204 00094F84  C0 82 8B 10 */	lfs f4, lbl_805A1E30-_SDA2_BASE_(r2)
/* 8009F208 00094F88  C0 62 8B 4C */	lfs f3, lbl_805A1E6C-_SDA2_BASE_(r2)
/* 8009F20C 00094F8C  54 00 03 D6 */	rlwinm r0, r0, 0, 0xf, 0xb
/* 8009F210 00094F90  C0 42 8B 50 */	lfs f2, lbl_805A1E70-_SDA2_BASE_(r2)
/* 8009F214 00094F94  C0 22 8B 54 */	lfs f1, lbl_805A1E74-_SDA2_BASE_(r2)
/* 8009F218 00094F98  C0 02 8B 34 */	lfs f0, lbl_805A1E54-_SDA2_BASE_(r2)
/* 8009F21C 00094F9C  90 03 00 08 */	stw r0, 8(r3)
/* 8009F220 00094FA0  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8009F224 00094FA4  D0 83 00 18 */	stfs f4, 0x18(r3)
/* 8009F228 00094FA8  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 8009F22C 00094FAC  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 8009F230 00094FB0  D0 83 00 24 */	stfs f4, 0x24(r3)
/* 8009F234 00094FB4  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 8009F238 00094FB8  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 8009F23C 00094FBC  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 8009F240 00094FC0  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8009F244 00094FC4  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 8009F248 00094FC8  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 8009F24C 00094FCC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8009F250 00094FD0  D0 63 00 3C */	stfs f3, 0x3c(r3)
/* 8009F254 00094FD4  D0 43 00 40 */	stfs f2, 0x40(r3)
/* 8009F258 00094FD8  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 8009F25C 00094FDC  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8009F260 00094FE0  D0 63 00 4C */	stfs f3, 0x4c(r3)
/* 8009F264 00094FE4  D0 43 00 50 */	stfs f2, 0x50(r3)
/* 8009F268 00094FE8  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 8009F26C 00094FEC  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8009F270 00094FF0  D0 83 00 5C */	stfs f4, 0x5c(r3)
/* 8009F274 00094FF4  4E 80 00 20 */	blr 

.global cmSubject$7draw
cmSubject$7draw:
/* 8009F278 00094FF8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8009F27C 00094FFC  7C 08 02 A6 */	mflr r0
/* 8009F280 00095000  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8009F284 00095004  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8009F288 00095008  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 8009F28C 0009500C  FF E0 08 90 */	fmr f31, f1
/* 8009F290 00095010  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8009F294 00095014  7C 7F 1B 78 */	mr r31, r3
/* 8009F298 00095018  4B F7 AD 0D */	bl gfCameraManager$7getManager
/* 8009F29C 0009501C  4B F7 AD 09 */	bl gfCameraManager$7getManager
/* 8009F2A0 00095020  4B F7 9B 45 */	bl gfCamera$7setGX
/* 8009F2A4 00095024  C0 22 8B 1C */	lfs f1, lbl_805A1E3C-_SDA2_BASE_(r2)
/* 8009F2A8 00095028  C0 02 8B 58 */	lfs f0, lbl_805A1E78-_SDA2_BASE_(r2)
/* 8009F2AC 0009502C  EC 3F 08 28 */	fsubs f1, f31, f1
/* 8009F2B0 00095030  FC 20 0A 10 */	fabs f1, f1
/* 8009F2B4 00095034  FC 20 08 18 */	frsp f1, f1
/* 8009F2B8 00095038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F2BC 0009503C  40 81 00 AC */	ble lbl_8009F368
/* 8009F2C0 00095040  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8009F2C4 00095044  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8009F2C8 00095048  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8009F2CC 0009504C  EC C0 07 F2 */	fmuls f6, f0, f31
/* 8009F2D0 00095050  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8009F2D4 00095054  EC 82 07 F2 */	fmuls f4, f2, f31
/* 8009F2D8 00095058  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8009F2DC 0009505C  C0 42 8B 10 */	lfs f2, lbl_805A1E30-_SDA2_BASE_(r2)
/* 8009F2E0 00095060  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 8009F2E4 00095064  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8009F2E8 00095068  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8009F2EC 0009506C  EC C5 30 2A */	fadds f6, f5, f6
/* 8009F2F0 00095070  EC 83 20 2A */	fadds f4, f3, f4
/* 8009F2F4 00095074  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8009F2F8 00095078  EC 25 08 2A */	fadds f1, f5, f1
/* 8009F2FC 0009507C  EC 03 00 2A */	fadds f0, f3, f0
/* 8009F300 00095080  D0 C1 00 90 */	stfs f6, 0x90(r1)
/* 8009F304 00095084  D0 81 00 8C */	stfs f4, 0x8c(r1)
/* 8009F308 00095088  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 8009F30C 0009508C  D0 C1 00 9C */	stfs f6, 0x9c(r1)
/* 8009F310 00095090  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8009F314 00095094  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 8009F318 00095098  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8009F31C 0009509C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8009F320 000950A0  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 8009F324 000950A4  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8009F328 000950A8  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8009F32C 000950AC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8009F330 000950B0  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8009F334 000950B4  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 8009F338 000950B8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8009F33C 000950BC  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 8009F340 000950C0  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 8009F344 000950C4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8009F348 000950C8  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 8009F34C 000950CC  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8009F350 000950D0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8009F354 000950D4  D0 C1 00 C0 */	stfs f6, 0xc0(r1)
/* 8009F358 000950D8  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 8009F35C 000950DC  D0 81 00 C8 */	stfs f4, 0xc8(r1)
/* 8009F360 000950E0  D0 C1 00 CC */	stfs f6, 0xcc(r1)
/* 8009F364 000950E4  D0 41 00 D0 */	stfs f2, 0xd0(r1)
lbl_8009F368:
/* 8009F368 000950E8  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8009F36C 000950EC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8009F370 000950F0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8009F374 000950F4  EC A3 08 2A */	fadds f5, f3, f1
/* 8009F378 000950F8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8009F37C 000950FC  EC C3 00 2A */	fadds f6, f3, f0
/* 8009F380 00095100  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8009F384 00095104  ED 03 08 2A */	fadds f8, f3, f1
/* 8009F388 00095108  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8009F38C 0009510C  C0 42 8B 10 */	lfs f2, lbl_805A1E30-_SDA2_BASE_(r2)
/* 8009F390 00095110  ED 23 00 2A */	fadds f9, f3, f0
/* 8009F394 00095114  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8009F398 00095118  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8009F39C 0009511C  EC 83 08 2A */	fadds f4, f3, f1
/* 8009F3A0 00095120  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8009F3A4 00095124  EC E3 00 2A */	fadds f7, f3, f0
/* 8009F3A8 00095128  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8009F3AC 0009512C  EC 23 08 2A */	fadds f1, f3, f1
/* 8009F3B0 00095130  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 8009F3B4 00095134  EC 03 00 2A */	fadds f0, f3, f0
/* 8009F3B8 00095138  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8009F3BC 0009513C  D0 81 00 5C */	stfs f4, 0x5c(r1)
/* 8009F3C0 00095140  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 8009F3C4 00095144  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8009F3C8 00095148  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 8009F3CC 0009514C  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 8009F3D0 00095150  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8009F3D4 00095154  D0 E1 00 44 */	stfs f7, 0x44(r1)
/* 8009F3D8 00095158  D0 C1 00 48 */	stfs f6, 0x48(r1)
/* 8009F3DC 0009515C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8009F3E0 00095160  D0 E1 00 38 */	stfs f7, 0x38(r1)
/* 8009F3E4 00095164  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8009F3E8 00095168  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8009F3EC 0009516C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8009F3F0 00095170  D1 01 00 30 */	stfs f8, 0x30(r1)
/* 8009F3F4 00095174  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8009F3F8 00095178  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8009F3FC 0009517C  D1 01 00 9C */	stfs f8, 0x9c(r1)
/* 8009F400 00095180  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8009F404 00095184  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8009F408 00095188  D1 21 00 24 */	stfs f9, 0x24(r1)
/* 8009F40C 0009518C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8009F410 00095190  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8009F414 00095194  D1 21 00 A8 */	stfs f9, 0xa8(r1)
/* 8009F418 00095198  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8009F41C 0009519C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8009F420 000951A0  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 8009F424 000951A4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8009F428 000951A8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8009F42C 000951AC  D1 21 00 B4 */	stfs f9, 0xb4(r1)
/* 8009F430 000951B0  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 8009F434 000951B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8009F438 000951B8  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 8009F43C 000951BC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8009F440 000951C0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8009F444 000951C4  D1 01 00 C0 */	stfs f8, 0xc0(r1)
/* 8009F448 000951C8  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 8009F44C 000951CC  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 8009F450 000951D0  D1 01 00 CC */	stfs f8, 0xcc(r1)
/* 8009F454 000951D4  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 8009F458 000951D8  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 8009F45C 000951DC  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8009F460 000951E0  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8009F464 000951E4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8009F468 000951E8  7C 08 03 A6 */	mtlr r0
/* 8009F46C 000951EC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8009F470 000951F0  4E 80 00 20 */	blr 

.global srHeapType$7cmSubjectGetStruct
srHeapType$7cmSubjectGetStruct:
/* 8009F474 000951F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009F478 000951F8  7C 08 02 A6 */	mflr r0
/* 8009F47C 000951FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009F480 00095200  7C 60 1B 78 */	mr r0, r3
/* 8009F484 00095204  38 60 00 84 */	li r3, 0x84
/* 8009F488 00095208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009F48C 0009520C  7C BF 2B 78 */	mr r31, r5
/* 8009F490 00095210  93 C1 00 08 */	stw r30, 8(r1)
/* 8009F494 00095214  7C 9E 23 78 */	mr r30, r4
/* 8009F498 00095218  7C 04 03 78 */	mr r4, r0
/* 8009F49C 0009521C  4B F6 D4 1D */	bl __nw__10srHeapTypeFUlUl
/* 8009F4A0 00095220  2C 03 00 00 */	cmpwi r3, 0
/* 8009F4A4 00095224  41 82 00 10 */	beq lbl_8009F4B4
/* 8009F4A8 00095228  7F C4 F3 78 */	mr r4, r30
/* 8009F4AC 0009522C  7F E5 FB 78 */	mr r5, r31
/* 8009F4B0 00095230  4B FF F8 91 */	bl cmSubject$7__ct
lbl_8009F4B4:
/* 8009F4B4 00095234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009F4B8 00095238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009F4BC 0009523C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009F4C0 00095240  7C 08 03 A6 */	mtlr r0
/* 8009F4C4 00095244  38 21 00 10 */	addi r1, r1, 0x10
/* 8009F4C8 00095248  4E 80 00 20 */	blr 

.global __sinit_$3cm_subject_cpp
__sinit_$3cm_subject_cpp:
/* 8009F4CC 0009524C  3C C0 80 4A */	lis r6, lbl_8049DEDC@ha
/* 8009F4D0 00095250  38 00 00 00 */	li r0, 0
/* 8009F4D4 00095254  38 66 DE DC */	addi r3, r6, lbl_8049DEDC@l
/* 8009F4D8 00095258  3C 80 80 0A */	lis r4, cmSubjectList$7__dt@ha
/* 8009F4DC 0009525C  90 03 00 04 */	stw r0, 4(r3)
/* 8009F4E0 00095260  38 E3 00 04 */	addi r7, r3, 4
/* 8009F4E4 00095264  3C A0 80 4A */	lis r5, lbl_8049DED0@ha
/* 8009F4E8 00095268  38 84 F5 04 */	addi r4, r4, cmSubjectList$7__dt@l
/* 8009F4EC 0009526C  90 03 00 08 */	stw r0, 8(r3)
/* 8009F4F0 00095270  38 A5 DE D0 */	addi r5, r5, lbl_8049DED0@l
/* 8009F4F4 00095274  90 06 DE DC */	stw r0, -0x2124(r6)
/* 8009F4F8 00095278  90 E3 00 04 */	stw r7, 4(r3)
/* 8009F4FC 0009527C  90 E3 00 08 */	stw r7, 8(r3)
/* 8009F500 00095280  48 35 12 24 */	b __register_global_object_tmp

.global cmSubjectList$7__dt
cmSubjectList$7__dt:
/* 8009F504 00095284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009F508 00095288  7C 08 02 A6 */	mflr r0
/* 8009F50C 0009528C  2C 03 00 00 */	cmpwi r3, 0
/* 8009F510 00095290  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009F514 00095294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009F518 00095298  7C 9F 23 78 */	mr r31, r4
/* 8009F51C 0009529C  93 C1 00 08 */	stw r30, 8(r1)
/* 8009F520 000952A0  7C 7E 1B 78 */	mr r30, r3
/* 8009F524 000952A4  41 82 00 20 */	beq lbl_8009F544
/* 8009F528 000952A8  41 82 00 0C */	beq lbl_8009F534
/* 8009F52C 000952AC  38 80 00 00 */	li r4, 0
/* 8009F530 000952B0  48 0B CD 09 */	bl nw4r2ut6detail12LinkListImplFv$7__dt
lbl_8009F534:
/* 8009F534 000952B4  2C 1F 00 00 */	cmpwi r31, 0
/* 8009F538 000952B8  40 81 00 0C */	ble lbl_8009F544
/* 8009F53C 000952BC  7F C3 F3 78 */	mr r3, r30
/* 8009F540 000952C0  4B F6 D3 89 */	bl __dl__FPv
lbl_8009F544:
/* 8009F544 000952C4  7F C3 F3 78 */	mr r3, r30
/* 8009F548 000952C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009F54C 000952CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009F550 000952D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009F554 000952D4  7C 08 03 A6 */	mtlr r0
/* 8009F558 000952D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009F55C 000952DC  4E 80 00 20 */	blr 

