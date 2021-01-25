.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail14StrmFileReaderFv$7__ct
nw4r3snd6detail14StrmFileReaderFv$7__ct:
/* 801CCBF8 001C2978  38 00 00 00 */	li r0, 0
/* 801CCBFC 001C297C  90 03 00 00 */	stw r0, 0(r3)
/* 801CCC00 001C2980  90 03 00 04 */	stw r0, 4(r3)
/* 801CCC04 001C2984  4E 80 00 20 */	blr 

.global nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3sn$7ReadStrmInfo
nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3sn$7ReadStrmInfo:
/* 801CCC08 001C2988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CCC0C 001C298C  7C 08 02 A6 */	mflr r0
/* 801CCC10 001C2990  80 63 00 04 */	lwz r3, 4(r3)
/* 801CCC14 001C2994  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CCC18 001C2998  38 A3 00 08 */	addi r5, r3, 8
/* 801CCC1C 001C299C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CCC20 001C29A0  7C 9F 23 78 */	mr r31, r4
/* 801CCC24 001C29A4  88 63 00 08 */	lbz r3, 8(r3)
/* 801CCC28 001C29A8  80 85 00 04 */	lwz r4, 4(r5)
/* 801CCC2C 001C29AC  48 00 6A 6D */	bl nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util$7GetDataRefAddressImpl
/* 801CCC30 001C29B0  88 03 00 00 */	lbz r0, 0(r3)
/* 801CCC34 001C29B4  98 1F 00 00 */	stb r0, 0(r31)
/* 801CCC38 001C29B8  88 03 00 01 */	lbz r0, 1(r3)
/* 801CCC3C 001C29BC  98 1F 00 01 */	stb r0, 1(r31)
/* 801CCC40 001C29C0  88 03 00 02 */	lbz r0, 2(r3)
/* 801CCC44 001C29C4  98 1F 00 02 */	stb r0, 2(r31)
/* 801CCC48 001C29C8  88 83 00 03 */	lbz r4, 3(r3)
/* 801CCC4C 001C29CC  A0 03 00 04 */	lhz r0, 4(r3)
/* 801CCC50 001C29D0  54 84 80 1E */	slwi r4, r4, 0x10
/* 801CCC54 001C29D4  7C 04 02 14 */	add r0, r4, r0
/* 801CCC58 001C29D8  90 1F 00 04 */	stw r0, 4(r31)
/* 801CCC5C 001C29DC  A0 03 00 06 */	lhz r0, 6(r3)
/* 801CCC60 001C29E0  B0 1F 00 08 */	sth r0, 8(r31)
/* 801CCC64 001C29E4  80 03 00 08 */	lwz r0, 8(r3)
/* 801CCC68 001C29E8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801CCC6C 001C29EC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801CCC70 001C29F0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801CCC74 001C29F4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801CCC78 001C29F8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801CCC7C 001C29FC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801CCC80 001C2A00  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801CCC84 001C2A04  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801CCC88 001C2A08  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801CCC8C 001C2A0C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801CCC90 001C2A10  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801CCC94 001C2A14  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801CCC98 001C2A18  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801CCC9C 001C2A1C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 801CCCA0 001C2A20  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801CCCA4 001C2A24  80 03 00 28 */	lwz r0, 0x28(r3)
/* 801CCCA8 001C2A28  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 801CCCAC 001C2A2C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 801CCCB0 001C2A30  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801CCCB4 001C2A34  80 03 00 30 */	lwz r0, 0x30(r3)
/* 801CCCB8 001C2A38  38 60 00 01 */	li r3, 1
/* 801CCCBC 001C2A3C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 801CCCC0 001C2A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CCCC4 001C2A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CCCC8 001C2A48  7C 08 03 A6 */	mtlr r0
/* 801CCCCC 001C2A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CCCD0 001C2A50  4E 80 00 20 */	blr 

.global nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3sn$7ReadAdpcmInfo
nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3sn$7ReadAdpcmInfo:
/* 801CCCD4 001C2A54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CCCD8 001C2A58  7C 08 02 A6 */	mflr r0
/* 801CCCDC 001C2A5C  80 C3 00 04 */	lwz r6, 4(r3)
/* 801CCCE0 001C2A60  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CCCE4 001C2A64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CCCE8 001C2A68  7C 9F 23 78 */	mr r31, r4
/* 801CCCEC 001C2A6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CCCF0 001C2A70  7C BE 2B 78 */	mr r30, r5
/* 801CCCF4 001C2A74  38 A6 00 08 */	addi r5, r6, 8
/* 801CCCF8 001C2A78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CCCFC 001C2A7C  7C 7D 1B 78 */	mr r29, r3
/* 801CCD00 001C2A80  88 66 00 08 */	lbz r3, 8(r6)
/* 801CCD04 001C2A84  80 86 00 0C */	lwz r4, 0xc(r6)
/* 801CCD08 001C2A88  48 00 69 91 */	bl nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util$7GetDataRefAddressImpl
/* 801CCD0C 001C2A8C  88 03 00 00 */	lbz r0, 0(r3)
/* 801CCD10 001C2A90  28 00 00 02 */	cmplwi r0, 2
/* 801CCD14 001C2A94  41 82 00 0C */	beq lbl_801CCD20
/* 801CCD18 001C2A98  38 60 00 00 */	li r3, 0
/* 801CCD1C 001C2A9C  48 00 01 24 */	b lbl_801CCE40
lbl_801CCD20:
/* 801CCD20 001C2AA0  80 9D 00 04 */	lwz r4, 4(r29)
/* 801CCD24 001C2AA4  88 64 00 18 */	lbz r3, 0x18(r4)
/* 801CCD28 001C2AA8  38 A4 00 08 */	addi r5, r4, 8
/* 801CCD2C 001C2AAC  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 801CCD30 001C2AB0  48 00 69 69 */	bl nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util$7GetDataRefAddressImpl
/* 801CCD34 001C2AB4  88 03 00 00 */	lbz r0, 0(r3)
/* 801CCD38 001C2AB8  7C 1E 00 00 */	cmpw r30, r0
/* 801CCD3C 001C2ABC  41 80 00 0C */	blt lbl_801CCD48
/* 801CCD40 001C2AC0  38 60 00 00 */	li r3, 0
/* 801CCD44 001C2AC4  48 00 00 FC */	b lbl_801CCE40
lbl_801CCD48:
/* 801CCD48 001C2AC8  57 C0 18 38 */	slwi r0, r30, 3
/* 801CCD4C 001C2ACC  80 9D 00 04 */	lwz r4, 4(r29)
/* 801CCD50 001C2AD0  7C C3 02 14 */	add r6, r3, r0
/* 801CCD54 001C2AD4  38 A4 00 08 */	addi r5, r4, 8
/* 801CCD58 001C2AD8  88 66 00 04 */	lbz r3, 4(r6)
/* 801CCD5C 001C2ADC  80 86 00 08 */	lwz r4, 8(r6)
/* 801CCD60 001C2AE0  48 00 69 39 */	bl nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util$7GetDataRefAddressImpl
/* 801CCD64 001C2AE4  7C 64 1B 78 */	mr r4, r3
/* 801CCD68 001C2AE8  80 BD 00 04 */	lwz r5, 4(r29)
/* 801CCD6C 001C2AEC  88 63 00 00 */	lbz r3, 0(r3)
/* 801CCD70 001C2AF0  80 84 00 04 */	lwz r4, 4(r4)
/* 801CCD74 001C2AF4  38 A5 00 08 */	addi r5, r5, 8
/* 801CCD78 001C2AF8  48 00 69 21 */	bl nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util$7GetDataRefAddressImpl
/* 801CCD7C 001C2AFC  A0 83 00 00 */	lhz r4, 0(r3)
/* 801CCD80 001C2B00  A0 03 00 02 */	lhz r0, 2(r3)
/* 801CCD84 001C2B04  B0 9F 00 00 */	sth r4, 0(r31)
/* 801CCD88 001C2B08  B0 1F 00 02 */	sth r0, 2(r31)
/* 801CCD8C 001C2B0C  A0 83 00 04 */	lhz r4, 4(r3)
/* 801CCD90 001C2B10  A0 03 00 06 */	lhz r0, 6(r3)
/* 801CCD94 001C2B14  B0 9F 00 04 */	sth r4, 4(r31)
/* 801CCD98 001C2B18  B0 1F 00 06 */	sth r0, 6(r31)
/* 801CCD9C 001C2B1C  A0 83 00 08 */	lhz r4, 8(r3)
/* 801CCDA0 001C2B20  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801CCDA4 001C2B24  B0 9F 00 08 */	sth r4, 8(r31)
/* 801CCDA8 001C2B28  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 801CCDAC 001C2B2C  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 801CCDB0 001C2B30  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 801CCDB4 001C2B34  B0 9F 00 0C */	sth r4, 0xc(r31)
/* 801CCDB8 001C2B38  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 801CCDBC 001C2B3C  A0 83 00 10 */	lhz r4, 0x10(r3)
/* 801CCDC0 001C2B40  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 801CCDC4 001C2B44  B0 9F 00 10 */	sth r4, 0x10(r31)
/* 801CCDC8 001C2B48  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 801CCDCC 001C2B4C  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 801CCDD0 001C2B50  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 801CCDD4 001C2B54  B0 9F 00 14 */	sth r4, 0x14(r31)
/* 801CCDD8 001C2B58  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 801CCDDC 001C2B5C  A0 83 00 18 */	lhz r4, 0x18(r3)
/* 801CCDE0 001C2B60  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 801CCDE4 001C2B64  B0 9F 00 18 */	sth r4, 0x18(r31)
/* 801CCDE8 001C2B68  B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 801CCDEC 001C2B6C  A0 83 00 1C */	lhz r4, 0x1c(r3)
/* 801CCDF0 001C2B70  A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 801CCDF4 001C2B74  B0 9F 00 1C */	sth r4, 0x1c(r31)
/* 801CCDF8 001C2B78  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 801CCDFC 001C2B7C  A0 83 00 20 */	lhz r4, 0x20(r3)
/* 801CCE00 001C2B80  A0 03 00 22 */	lhz r0, 0x22(r3)
/* 801CCE04 001C2B84  B0 9F 00 20 */	sth r4, 0x20(r31)
/* 801CCE08 001C2B88  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 801CCE0C 001C2B8C  A0 83 00 24 */	lhz r4, 0x24(r3)
/* 801CCE10 001C2B90  A0 03 00 26 */	lhz r0, 0x26(r3)
/* 801CCE14 001C2B94  B0 9F 00 24 */	sth r4, 0x24(r31)
/* 801CCE18 001C2B98  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 801CCE1C 001C2B9C  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 801CCE20 001C2BA0  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 801CCE24 001C2BA4  A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 801CCE28 001C2BA8  B0 1F 00 2A */	sth r0, 0x2a(r31)
/* 801CCE2C 001C2BAC  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 801CCE30 001C2BB0  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 801CCE34 001C2BB4  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 801CCE38 001C2BB8  38 60 00 01 */	li r3, 1
/* 801CCE3C 001C2BBC  B0 1F 00 2E */	sth r0, 0x2e(r31)
lbl_801CCE40:
/* 801CCE40 001C2BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CCE44 001C2BC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CCE48 001C2BC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CCE4C 001C2BCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CCE50 001C2BD0  7C 08 03 A6 */	mtlr r0
/* 801CCE54 001C2BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 801CCE58 001C2BD8  4E 80 00 20 */	blr 

.global nw4r3snd6detail14StrmFileLoaderFPvUl$7LoadFileHeader
nw4r3snd6detail14StrmFileLoaderFPvUl$7LoadFileHeader:
/* 801CCE5C 001C2BDC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801CCE60 001C2BE0  7C 08 02 A6 */	mflr r0
/* 801CCE64 001C2BE4  90 01 00 84 */	stw r0, 0x84(r1)
/* 801CCE68 001C2BE8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801CCE6C 001C2BEC  7C 9F 23 78 */	mr r31, r4
/* 801CCE70 001C2BF0  38 80 00 00 */	li r4, 0
/* 801CCE74 001C2BF4  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801CCE78 001C2BF8  7C 7E 1B 78 */	mr r30, r3
/* 801CCE7C 001C2BFC  93 A1 00 74 */	stw r29, 0x74(r1)
/* 801CCE80 001C2C00  93 81 00 70 */	stw r28, 0x70(r1)
/* 801CCE84 001C2C04  7C BC 2B 78 */	mr r28, r5
/* 801CCE88 001C2C08  38 A0 00 00 */	li r5, 0
/* 801CCE8C 001C2C0C  80 63 00 00 */	lwz r3, 0(r3)
/* 801CCE90 001C2C10  81 83 00 00 */	lwz r12, 0(r3)
/* 801CCE94 001C2C14  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801CCE98 001C2C18  7D 89 03 A6 */	mtctr r12
/* 801CCE9C 001C2C1C  4E 80 04 21 */	bctrl 
/* 801CCEA0 001C2C20  80 7E 00 00 */	lwz r3, 0(r30)
/* 801CCEA4 001C2C24  38 01 00 27 */	addi r0, r1, 0x27
/* 801CCEA8 001C2C28  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 801CCEAC 001C2C2C  38 A0 00 40 */	li r5, 0x40
/* 801CCEB0 001C2C30  81 83 00 00 */	lwz r12, 0(r3)
/* 801CCEB4 001C2C34  7F A4 EB 78 */	mr r4, r29
/* 801CCEB8 001C2C38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801CCEBC 001C2C3C  7D 89 03 A6 */	mtctr r12
/* 801CCEC0 001C2C40  4E 80 04 21 */	bctrl 
/* 801CCEC4 001C2C44  28 03 00 40 */	cmplwi r3, 0x40
/* 801CCEC8 001C2C48  41 82 00 0C */	beq lbl_801CCED4
/* 801CCECC 001C2C4C  38 60 00 00 */	li r3, 0
/* 801CCED0 001C2C50  48 00 01 30 */	b lbl_801CD000
lbl_801CCED4:
/* 801CCED4 001C2C54  80 7D 00 00 */	lwz r3, 0(r29)
/* 801CCED8 001C2C58  3C 03 AD AD */	addis r0, r3, 0xadad
/* 801CCEDC 001C2C5C  28 00 54 4D */	cmplwi r0, 0x544d
/* 801CCEE0 001C2C60  41 82 00 0C */	beq lbl_801CCEEC
/* 801CCEE4 001C2C64  38 00 00 00 */	li r0, 0
/* 801CCEE8 001C2C68  48 00 00 30 */	b lbl_801CCF18
lbl_801CCEEC:
/* 801CCEEC 001C2C6C  A0 9D 00 06 */	lhz r4, 6(r29)
/* 801CCEF0 001C2C70  28 04 01 00 */	cmplwi r4, 0x100
/* 801CCEF4 001C2C74  40 80 00 0C */	bge lbl_801CCF00
/* 801CCEF8 001C2C78  38 00 00 00 */	li r0, 0
/* 801CCEFC 001C2C7C  48 00 00 1C */	b lbl_801CCF18
lbl_801CCF00:
/* 801CCF00 001C2C80  20 04 01 00 */	subfic r0, r4, 0x100
/* 801CCF04 001C2C84  38 60 01 00 */	li r3, 0x100
/* 801CCF08 001C2C88  7C 63 23 38 */	orc r3, r3, r4
/* 801CCF0C 001C2C8C  54 00 F8 7E */	srwi r0, r0, 1
/* 801CCF10 001C2C90  7C 00 18 50 */	subf r0, r0, r3
/* 801CCF14 001C2C94  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_801CCF18:
/* 801CCF18 001C2C98  2C 00 00 00 */	cmpwi r0, 0
/* 801CCF1C 001C2C9C  40 82 00 0C */	bne lbl_801CCF28
/* 801CCF20 001C2CA0  38 60 00 00 */	li r3, 0
/* 801CCF24 001C2CA4  48 00 00 DC */	b lbl_801CD000
lbl_801CCF28:
/* 801CCF28 001C2CA8  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 801CCF2C 001C2CAC  7C 00 E0 40 */	cmplw r0, r28
/* 801CCF30 001C2CB0  40 81 00 0C */	ble lbl_801CCF3C
/* 801CCF34 001C2CB4  38 60 00 00 */	li r3, 0
/* 801CCF38 001C2CB8  48 00 00 C8 */	b lbl_801CD000
lbl_801CCF3C:
/* 801CCF3C 001C2CBC  80 7E 00 00 */	lwz r3, 0(r30)
/* 801CCF40 001C2CC0  38 80 00 00 */	li r4, 0
/* 801CCF44 001C2CC4  80 DD 00 10 */	lwz r6, 0x10(r29)
/* 801CCF48 001C2CC8  38 A0 00 00 */	li r5, 0
/* 801CCF4C 001C2CCC  81 83 00 00 */	lwz r12, 0(r3)
/* 801CCF50 001C2CD0  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 801CCF54 001C2CD4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801CCF58 001C2CD8  7F A6 02 14 */	add r29, r6, r0
/* 801CCF5C 001C2CDC  7D 89 03 A6 */	mtctr r12
/* 801CCF60 001C2CE0  4E 80 04 21 */	bctrl 
/* 801CCF64 001C2CE4  80 7E 00 00 */	lwz r3, 0(r30)
/* 801CCF68 001C2CE8  7F E4 FB 78 */	mr r4, r31
/* 801CCF6C 001C2CEC  7F A5 EB 78 */	mr r5, r29
/* 801CCF70 001C2CF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801CCF74 001C2CF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801CCF78 001C2CF8  7D 89 03 A6 */	mtctr r12
/* 801CCF7C 001C2CFC  4E 80 04 21 */	bctrl 
/* 801CCF80 001C2D00  7C 03 E8 40 */	cmplw r3, r29
/* 801CCF84 001C2D04  41 82 00 0C */	beq lbl_801CCF90
/* 801CCF88 001C2D08  38 60 00 00 */	li r3, 0
/* 801CCF8C 001C2D0C  48 00 00 74 */	b lbl_801CD000
lbl_801CCF90:
/* 801CCF90 001C2D10  80 7F 00 00 */	lwz r3, 0(r31)
/* 801CCF94 001C2D14  3C 03 AD AD */	addis r0, r3, 0xadad
/* 801CCF98 001C2D18  28 00 54 4D */	cmplwi r0, 0x544d
/* 801CCF9C 001C2D1C  41 82 00 0C */	beq lbl_801CCFA8
/* 801CCFA0 001C2D20  38 00 00 00 */	li r0, 0
/* 801CCFA4 001C2D24  48 00 00 30 */	b lbl_801CCFD4
lbl_801CCFA8:
/* 801CCFA8 001C2D28  A0 9F 00 06 */	lhz r4, 6(r31)
/* 801CCFAC 001C2D2C  28 04 01 00 */	cmplwi r4, 0x100
/* 801CCFB0 001C2D30  40 80 00 0C */	bge lbl_801CCFBC
/* 801CCFB4 001C2D34  38 00 00 00 */	li r0, 0
/* 801CCFB8 001C2D38  48 00 00 1C */	b lbl_801CCFD4
lbl_801CCFBC:
/* 801CCFBC 001C2D3C  20 04 01 00 */	subfic r0, r4, 0x100
/* 801CCFC0 001C2D40  38 60 01 00 */	li r3, 0x100
/* 801CCFC4 001C2D44  7C 63 23 38 */	orc r3, r3, r4
/* 801CCFC8 001C2D48  54 00 F8 7E */	srwi r0, r0, 1
/* 801CCFCC 001C2D4C  7C 00 18 50 */	subf r0, r0, r3
/* 801CCFD0 001C2D50  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_801CCFD4:
/* 801CCFD4 001C2D54  2C 00 00 00 */	cmpwi r0, 0
/* 801CCFD8 001C2D58  41 82 00 24 */	beq lbl_801CCFFC
/* 801CCFDC 001C2D5C  93 FE 00 04 */	stw r31, 4(r30)
/* 801CCFE0 001C2D60  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 801CCFE4 001C2D64  7C 60 FA 14 */	add r3, r0, r31
/* 801CCFE8 001C2D68  90 7E 00 08 */	stw r3, 8(r30)
/* 801CCFEC 001C2D6C  38 A3 00 08 */	addi r5, r3, 8
/* 801CCFF0 001C2D70  88 63 00 08 */	lbz r3, 8(r3)
/* 801CCFF4 001C2D74  80 85 00 04 */	lwz r4, 4(r5)
/* 801CCFF8 001C2D78  48 00 66 A1 */	bl nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util$7GetDataRefAddressImpl
lbl_801CCFFC:
/* 801CCFFC 001C2D7C  38 60 00 01 */	li r3, 1
lbl_801CD000:
/* 801CD000 001C2D80  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801CD004 001C2D84  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801CD008 001C2D88  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801CD00C 001C2D8C  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 801CD010 001C2D90  83 81 00 70 */	lwz r28, 0x70(r1)
/* 801CD014 001C2D94  7C 08 03 A6 */	mtlr r0
/* 801CD018 001C2D98  38 21 00 80 */	addi r1, r1, 0x80
/* 801CD01C 001C2D9C  4E 80 00 20 */	blr 

.global nw4r3snd6detail14StrmFileLoaderFPUsPUsii$7ReadAdpcBlockData
nw4r3snd6detail14StrmFileLoaderFPUsPUsii$7ReadAdpcBlockData:
/* 801CD020 001C2DA0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 801CD024 001C2DA4  7C 2C 0B 78 */	mr r12, r1
/* 801CD028 001C2DA8  21 6B FF A0 */	subfic r11, r11, -96
/* 801CD02C 001C2DAC  7C 21 59 6E */	stwux r1, r1, r11
/* 801CD030 001C2DB0  7C 08 02 A6 */	mflr r0
/* 801CD034 001C2DB4  90 0C 00 04 */	stw r0, 4(r12)
/* 801CD038 001C2DB8  93 EC FF FC */	stw r31, -4(r12)
/* 801CD03C 001C2DBC  7C FF 3B 78 */	mr r31, r7
/* 801CD040 001C2DC0  93 CC FF F8 */	stw r30, -8(r12)
/* 801CD044 001C2DC4  7C BE 2B 78 */	mr r30, r5
/* 801CD048 001C2DC8  93 AC FF F4 */	stw r29, -0xc(r12)
/* 801CD04C 001C2DCC  7C 9D 23 78 */	mr r29, r4
/* 801CD050 001C2DD0  93 8C FF F0 */	stw r28, -0x10(r12)
/* 801CD054 001C2DD4  7C 7C 1B 78 */	mr r28, r3
/* 801CD058 001C2DD8  81 03 00 04 */	lwz r8, 4(r3)
/* 801CD05C 001C2DDC  7C 08 00 D0 */	neg r0, r8
/* 801CD060 001C2DE0  7C 00 43 78 */	or r0, r0, r8
/* 801CD064 001C2DE4  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 801CD068 001C2DE8  40 82 00 0C */	bne lbl_801CD074
/* 801CD06C 001C2DEC  38 60 00 00 */	li r3, 0
/* 801CD070 001C2DF0  48 00 01 30 */	b lbl_801CD1A0
lbl_801CD074:
/* 801CD074 001C2DF4  41 82 00 0C */	beq lbl_801CD080
/* 801CD078 001C2DF8  80 88 00 18 */	lwz r4, 0x18(r8)
/* 801CD07C 001C2DFC  48 00 00 08 */	b lbl_801CD084
lbl_801CD080:
/* 801CD080 001C2E00  38 80 00 00 */	li r4, 0
lbl_801CD084:
/* 801CD084 001C2E04  7C 06 39 D6 */	mullw r0, r6, r7
/* 801CD088 001C2E08  80 63 00 00 */	lwz r3, 0(r3)
/* 801CD08C 001C2E0C  38 A0 00 00 */	li r5, 0
/* 801CD090 001C2E10  81 83 00 00 */	lwz r12, 0(r3)
/* 801CD094 001C2E14  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801CD098 001C2E18  54 00 10 3A */	slwi r0, r0, 2
/* 801CD09C 001C2E1C  7C 84 02 14 */	add r4, r4, r0
/* 801CD0A0 001C2E20  38 84 00 08 */	addi r4, r4, 8
/* 801CD0A4 001C2E24  7D 89 03 A6 */	mtctr r12
/* 801CD0A8 001C2E28  4E 80 04 21 */	bctrl 
/* 801CD0AC 001C2E2C  80 7C 00 00 */	lwz r3, 0(r28)
/* 801CD0B0 001C2E30  38 81 00 20 */	addi r4, r1, 0x20
/* 801CD0B4 001C2E34  38 A0 00 20 */	li r5, 0x20
/* 801CD0B8 001C2E38  81 83 00 00 */	lwz r12, 0(r3)
/* 801CD0BC 001C2E3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801CD0C0 001C2E40  7D 89 03 A6 */	mtctr r12
/* 801CD0C4 001C2E44  4E 80 04 21 */	bctrl 
/* 801CD0C8 001C2E48  2C 1F 00 00 */	cmpwi r31, 0
/* 801CD0CC 001C2E4C  38 C1 00 20 */	addi r6, r1, 0x20
/* 801CD0D0 001C2E50  38 60 00 00 */	li r3, 0
/* 801CD0D4 001C2E54  38 80 00 00 */	li r4, 0
/* 801CD0D8 001C2E58  40 81 00 C4 */	ble lbl_801CD19C
/* 801CD0DC 001C2E5C  57 E0 F0 BF */	rlwinm. r0, r31, 0x1e, 2, 0x1f
/* 801CD0E0 001C2E60  7C 09 03 A6 */	mtctr r0
/* 801CD0E4 001C2E64  41 82 00 90 */	beq lbl_801CD174
lbl_801CD0E8:
/* 801CD0E8 001C2E68  7C A6 1A 2E */	lhzx r5, r6, r3
/* 801CD0EC 001C2E6C  38 04 00 01 */	addi r0, r4, 1
/* 801CD0F0 001C2E70  54 00 08 3C */	slwi r0, r0, 1
/* 801CD0F4 001C2E74  38 63 00 04 */	addi r3, r3, 4
/* 801CD0F8 001C2E78  7C BD 23 2E */	sthx r5, r29, r4
/* 801CD0FC 001C2E7C  7C 06 02 2E */	lhzx r0, r6, r0
/* 801CD100 001C2E80  7C 1E 23 2E */	sthx r0, r30, r4
/* 801CD104 001C2E84  38 04 00 03 */	addi r0, r4, 3
/* 801CD108 001C2E88  38 84 00 02 */	addi r4, r4, 2
/* 801CD10C 001C2E8C  7C A6 1A 2E */	lhzx r5, r6, r3
/* 801CD110 001C2E90  54 00 08 3C */	slwi r0, r0, 1
/* 801CD114 001C2E94  38 63 00 04 */	addi r3, r3, 4
/* 801CD118 001C2E98  7C BD 23 2E */	sthx r5, r29, r4
/* 801CD11C 001C2E9C  7C 06 02 2E */	lhzx r0, r6, r0
/* 801CD120 001C2EA0  7C 1E 23 2E */	sthx r0, r30, r4
/* 801CD124 001C2EA4  38 04 00 03 */	addi r0, r4, 3
/* 801CD128 001C2EA8  38 84 00 02 */	addi r4, r4, 2
/* 801CD12C 001C2EAC  7C A6 1A 2E */	lhzx r5, r6, r3
/* 801CD130 001C2EB0  54 00 08 3C */	slwi r0, r0, 1
/* 801CD134 001C2EB4  38 63 00 04 */	addi r3, r3, 4
/* 801CD138 001C2EB8  7C BD 23 2E */	sthx r5, r29, r4
/* 801CD13C 001C2EBC  7C 06 02 2E */	lhzx r0, r6, r0
/* 801CD140 001C2EC0  7C 1E 23 2E */	sthx r0, r30, r4
/* 801CD144 001C2EC4  38 04 00 03 */	addi r0, r4, 3
/* 801CD148 001C2EC8  38 84 00 02 */	addi r4, r4, 2
/* 801CD14C 001C2ECC  7C A6 1A 2E */	lhzx r5, r6, r3
/* 801CD150 001C2ED0  54 00 08 3C */	slwi r0, r0, 1
/* 801CD154 001C2ED4  38 63 00 04 */	addi r3, r3, 4
/* 801CD158 001C2ED8  7C BD 23 2E */	sthx r5, r29, r4
/* 801CD15C 001C2EDC  7C 06 02 2E */	lhzx r0, r6, r0
/* 801CD160 001C2EE0  7C 1E 23 2E */	sthx r0, r30, r4
/* 801CD164 001C2EE4  38 84 00 02 */	addi r4, r4, 2
/* 801CD168 001C2EE8  42 00 FF 80 */	bdnz lbl_801CD0E8
/* 801CD16C 001C2EEC  73 FF 00 03 */	andi. r31, r31, 3
/* 801CD170 001C2EF0  41 82 00 2C */	beq lbl_801CD19C
lbl_801CD174:
/* 801CD174 001C2EF4  7F E9 03 A6 */	mtctr r31
lbl_801CD178:
/* 801CD178 001C2EF8  7C A6 1A 2E */	lhzx r5, r6, r3
/* 801CD17C 001C2EFC  38 04 00 01 */	addi r0, r4, 1
/* 801CD180 001C2F00  54 00 08 3C */	slwi r0, r0, 1
/* 801CD184 001C2F04  38 63 00 04 */	addi r3, r3, 4
/* 801CD188 001C2F08  7C BD 23 2E */	sthx r5, r29, r4
/* 801CD18C 001C2F0C  7C 06 02 2E */	lhzx r0, r6, r0
/* 801CD190 001C2F10  7C 1E 23 2E */	sthx r0, r30, r4
/* 801CD194 001C2F14  38 84 00 02 */	addi r4, r4, 2
/* 801CD198 001C2F18  42 00 FF E0 */	bdnz lbl_801CD178
lbl_801CD19C:
/* 801CD19C 001C2F1C  38 60 00 01 */	li r3, 1
lbl_801CD1A0:
/* 801CD1A0 001C2F20  81 41 00 00 */	lwz r10, 0(r1)
/* 801CD1A4 001C2F24  80 0A 00 04 */	lwz r0, 4(r10)
/* 801CD1A8 001C2F28  83 EA FF FC */	lwz r31, -4(r10)
/* 801CD1AC 001C2F2C  83 CA FF F8 */	lwz r30, -8(r10)
/* 801CD1B0 001C2F30  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 801CD1B4 001C2F34  83 8A FF F0 */	lwz r28, -0x10(r10)
/* 801CD1B8 001C2F38  7C 08 03 A6 */	mtlr r0
/* 801CD1BC 001C2F3C  7D 41 53 78 */	mr r1, r10
/* 801CD1C0 001C2F40  4E 80 00 20 */	blr 
