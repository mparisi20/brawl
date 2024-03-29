.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TMCC_JPEGENC_enc_block
TMCC_JPEGENC_enc_block:
/* 802698AC 0025F62C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802698B0 0025F630  7C 08 02 A6 */	mflr r0
/* 802698B4 0025F634  90 01 00 64 */	stw r0, 0x64(r1)
/* 802698B8 0025F638  BE 81 00 30 */	stmw r20, 0x30(r1)
/* 802698BC 0025F63C  3E 80 80 41 */	lis r20, lbl_8040DE60@ha
/* 802698C0 0025F640  7C 9B 23 78 */	mr r27, r4
/* 802698C4 0025F644  7C 76 1B 78 */	mr r22, r3
/* 802698C8 0025F648  7F 63 DB 78 */	mr r3, r27
/* 802698CC 0025F64C  A7 34 DE 60 */	lhzu r25, lbl_8040DE60@l(r20)
/* 802698D0 0025F650  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 802698D4 0025F654  A3 F4 00 02 */	lhz r31, 2(r20)
/* 802698D8 0025F658  A3 D4 00 04 */	lhz r30, 4(r20)
/* 802698DC 0025F65C  3B 05 00 04 */	addi r24, r5, 4
/* 802698E0 0025F660  A3 B4 00 06 */	lhz r29, 6(r20)
/* 802698E4 0025F664  A3 94 00 08 */	lhz r28, 8(r20)
/* 802698E8 0025F668  A3 54 00 0A */	lhz r26, 0xa(r20)
/* 802698EC 0025F66C  A2 F4 00 0C */	lhz r23, 0xc(r20)
/* 802698F0 0025F670  A2 B4 00 0E */	lhz r21, 0xe(r20)
/* 802698F4 0025F674  A1 94 00 10 */	lhz r12, 0x10(r20)
/* 802698F8 0025F678  A1 74 00 12 */	lhz r11, 0x12(r20)
/* 802698FC 0025F67C  A1 54 00 14 */	lhz r10, 0x14(r20)
/* 80269900 0025F680  A1 34 00 16 */	lhz r9, 0x16(r20)
/* 80269904 0025F684  A1 14 00 18 */	lhz r8, 0x18(r20)
/* 80269908 0025F688  A0 F4 00 1A */	lhz r7, 0x1a(r20)
/* 8026990C 0025F68C  A0 D4 00 1C */	lhz r6, 0x1c(r20)
/* 80269910 0025F690  A0 B4 00 1E */	lhz r5, 0x1e(r20)
/* 80269914 0025F694  A0 14 00 20 */	lhz r0, 0x20(r20)
/* 80269918 0025F698  B3 21 00 08 */	sth r25, 8(r1)
/* 8026991C 0025F69C  83 24 00 1C */	lwz r25, 0x1c(r4)
/* 80269920 0025F6A0  B3 E1 00 0A */	sth r31, 0xa(r1)
/* 80269924 0025F6A4  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 80269928 0025F6A8  B3 A1 00 0E */	sth r29, 0xe(r1)
/* 8026992C 0025F6AC  B3 81 00 10 */	sth r28, 0x10(r1)
/* 80269930 0025F6B0  B3 41 00 12 */	sth r26, 0x12(r1)
/* 80269934 0025F6B4  B2 E1 00 14 */	sth r23, 0x14(r1)
/* 80269938 0025F6B8  B2 A1 00 16 */	sth r21, 0x16(r1)
/* 8026993C 0025F6BC  B1 81 00 18 */	sth r12, 0x18(r1)
/* 80269940 0025F6C0  B1 61 00 1A */	sth r11, 0x1a(r1)
/* 80269944 0025F6C4  B1 41 00 1C */	sth r10, 0x1c(r1)
/* 80269948 0025F6C8  B1 21 00 1E */	sth r9, 0x1e(r1)
/* 8026994C 0025F6CC  B1 01 00 20 */	sth r8, 0x20(r1)
/* 80269950 0025F6D0  B0 E1 00 22 */	sth r7, 0x22(r1)
/* 80269954 0025F6D4  B0 C1 00 24 */	sth r6, 0x24(r1)
/* 80269958 0025F6D8  B0 A1 00 26 */	sth r5, 0x26(r1)
/* 8026995C 0025F6DC  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80269960 0025F6E0  4B FF FC 71 */	bl TMCC_JPEGENC_CheckPutStream
/* 80269964 0025F6E4  80 76 00 00 */	lwz r3, 0(r22)
/* 80269968 0025F6E8  82 FB 00 20 */	lwz r23, 0x20(r27)
/* 8026996C 0025F6EC  2C 03 00 00 */	cmpwi r3, 0
/* 80269970 0025F6F0  83 5B 00 14 */	lwz r26, 0x14(r27)
/* 80269974 0025F6F4  83 FB 00 10 */	lwz r31, 0x10(r27)
/* 80269978 0025F6F8  40 80 00 24 */	bge lbl_8026999C
/* 8026997C 0025F6FC  80 1A 00 00 */	lwz r0, 0(r26)
/* 80269980 0025F700  7C 63 00 D0 */	neg r3, r3
/* 80269984 0025F704  7C 60 19 D6 */	mullw r3, r0, r3
/* 80269988 0025F708  3C 63 00 01 */	addis r3, r3, 1
/* 8026998C 0025F70C  38 03 80 00 */	addi r0, r3, -32768
/* 80269990 0025F710  7C 00 86 70 */	srawi r0, r0, 0x10
/* 80269994 0025F714  7C 60 00 D0 */	neg r3, r0
/* 80269998 0025F718  48 00 00 18 */	b lbl_802699B0
lbl_8026999C:
/* 8026999C 0025F71C  80 1A 00 00 */	lwz r0, 0(r26)
/* 802699A0 0025F720  7C 60 19 D6 */	mullw r3, r0, r3
/* 802699A4 0025F724  3C 63 00 01 */	addis r3, r3, 1
/* 802699A8 0025F728  38 03 80 00 */	addi r0, r3, -32768
/* 802699AC 0025F72C  7C 03 86 70 */	srawi r3, r0, 0x10
lbl_802699B0:
/* 802699B0 0025F730  80 1B 00 08 */	lwz r0, 8(r27)
/* 802699B4 0025F734  7C E0 18 51 */	subf. r7, r0, r3
/* 802699B8 0025F738  90 7B 00 08 */	stw r3, 8(r27)
/* 802699BC 0025F73C  7C E0 3B 78 */	mr r0, r7
/* 802699C0 0025F740  40 80 00 0C */	bge lbl_802699CC
/* 802699C4 0025F744  7C 07 00 D0 */	neg r0, r7
/* 802699C8 0025F748  38 E7 FF FF */	addi r7, r7, -1
lbl_802699CC:
/* 802699CC 0025F74C  39 00 00 00 */	li r8, 0
/* 802699D0 0025F750  48 00 00 0C */	b lbl_802699DC
lbl_802699D4:
/* 802699D4 0025F754  7C 00 0E 70 */	srawi r0, r0, 1
/* 802699D8 0025F758  39 08 00 01 */	addi r8, r8, 1
lbl_802699DC:
/* 802699DC 0025F75C  2C 00 00 00 */	cmpwi r0, 0
/* 802699E0 0025F760  41 81 FF F4 */	bgt lbl_802699D4
/* 802699E4 0025F764  80 1F 00 00 */	lwz r0, 0(r31)
/* 802699E8 0025F768  7C 08 00 00 */	cmpw r8, r0
/* 802699EC 0025F76C  41 80 00 0C */	blt lbl_802699F8
/* 802699F0 0025F770  38 60 FF FE */	li r3, -2
/* 802699F4 0025F774  48 00 02 3C */	b lbl_80269C30
lbl_802699F8:
/* 802699F8 0025F778  80 7F 00 08 */	lwz r3, 8(r31)
/* 802699FC 0025F77C  55 06 10 3A */	slwi r6, r8, 2
/* 80269A00 0025F780  80 9F 00 04 */	lwz r4, 4(r31)
/* 80269A04 0025F784  55 05 08 3C */	slwi r5, r8, 1
/* 80269A08 0025F788  7C 03 30 2E */	lwzx r0, r3, r6
/* 80269A0C 0025F78C  38 61 00 08 */	addi r3, r1, 8
/* 80269A10 0025F790  7C 84 30 2E */	lwzx r4, r4, r6
/* 80269A14 0025F794  20 00 00 20 */	subfic r0, r0, 0x20
/* 80269A18 0025F798  7C 63 2A 2E */	lhzx r3, r3, r5
/* 80269A1C 0025F79C  7C 08 00 50 */	subf r0, r8, r0
/* 80269A20 0025F7A0  7C 84 40 30 */	slw r4, r4, r8
/* 80269A24 0025F7A4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80269A28 0025F7A8  7C E3 18 38 */	and r3, r7, r3
/* 80269A2C 0025F7AC  7C 84 1B 78 */	or r4, r4, r3
/* 80269A30 0025F7B0  40 80 00 20 */	bge lbl_80269A50
/* 80269A34 0025F7B4  7E EC BB 78 */	mr r12, r23
/* 80269A38 0025F7B8  7F 23 CB 78 */	mr r3, r25
/* 80269A3C 0025F7BC  20 A0 00 20 */	subfic r5, r0, 0x20
/* 80269A40 0025F7C0  7D 89 03 A6 */	mtctr r12
/* 80269A44 0025F7C4  4E 80 04 21 */	bctrl 
/* 80269A48 0025F7C8  38 80 00 00 */	li r4, 0
/* 80269A4C 0025F7CC  38 00 00 20 */	li r0, 0x20
lbl_80269A50:
/* 80269A50 0025F7D0  3A A1 00 08 */	addi r21, r1, 8
/* 80269A54 0025F7D4  3B 60 00 00 */	li r27, 0
/* 80269A58 0025F7D8  3B 80 00 01 */	li r28, 1
lbl_80269A5C:
/* 80269A5C 0025F7DC  80 78 00 00 */	lwz r3, 0(r24)
/* 80269A60 0025F7E0  3B 18 00 04 */	addi r24, r24, 4
/* 80269A64 0025F7E4  54 63 10 3A */	slwi r3, r3, 2
/* 80269A68 0025F7E8  7C B6 18 2E */	lwzx r5, r22, r3
/* 80269A6C 0025F7EC  7C DA 18 2E */	lwzx r6, r26, r3
/* 80269A70 0025F7F0  2C 05 00 00 */	cmpwi r5, 0
/* 80269A74 0025F7F4  41 81 00 20 */	bgt lbl_80269A94
/* 80269A78 0025F7F8  7C 65 00 D0 */	neg r3, r5
/* 80269A7C 0025F7FC  7C 63 31 D6 */	mullw r3, r3, r6
/* 80269A80 0025F800  3C 63 00 01 */	addis r3, r3, 1
/* 80269A84 0025F804  38 63 80 00 */	addi r3, r3, -32768
/* 80269A88 0025F808  7C 63 86 70 */	srawi r3, r3, 0x10
/* 80269A8C 0025F80C  7F C3 00 D0 */	neg r30, r3
/* 80269A90 0025F810  48 00 00 14 */	b lbl_80269AA4
lbl_80269A94:
/* 80269A94 0025F814  7C 65 31 D6 */	mullw r3, r5, r6
/* 80269A98 0025F818  3C 63 00 01 */	addis r3, r3, 1
/* 80269A9C 0025F81C  38 63 80 00 */	addi r3, r3, -32768
/* 80269AA0 0025F820  7C 7E 86 70 */	srawi r30, r3, 0x10
lbl_80269AA4:
/* 80269AA4 0025F824  2C 1E 00 00 */	cmpwi r30, 0
/* 80269AA8 0025F828  40 82 00 54 */	bne lbl_80269AFC
/* 80269AAC 0025F82C  3B 7B 00 01 */	addi r27, r27, 1
/* 80269AB0 0025F830  48 00 01 18 */	b lbl_80269BC8
/* 80269AB4 0025F834  48 00 00 48 */	b lbl_80269AFC
lbl_80269AB8:
/* 80269AB8 0025F838  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 80269ABC 0025F83C  3B 7B FF F0 */	addi r27, r27, -16
/* 80269AC0 0025F840  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80269AC4 0025F844  80 A5 03 C0 */	lwz r5, 0x3c0(r5)
/* 80269AC8 0025F848  80 63 03 C0 */	lwz r3, 0x3c0(r3)
/* 80269ACC 0025F84C  7C 05 00 50 */	subf r0, r5, r0
/* 80269AD0 0025F850  7C 84 28 30 */	slw r4, r4, r5
/* 80269AD4 0025F854  2C 00 00 10 */	cmpwi r0, 0x10
/* 80269AD8 0025F858  7C 84 1A 14 */	add r4, r4, r3
/* 80269ADC 0025F85C  40 80 00 20 */	bge lbl_80269AFC
/* 80269AE0 0025F860  7E EC BB 78 */	mr r12, r23
/* 80269AE4 0025F864  7F 23 CB 78 */	mr r3, r25
/* 80269AE8 0025F868  20 A0 00 20 */	subfic r5, r0, 0x20
/* 80269AEC 0025F86C  7D 89 03 A6 */	mtctr r12
/* 80269AF0 0025F870  4E 80 04 21 */	bctrl 
/* 80269AF4 0025F874  38 80 00 00 */	li r4, 0
/* 80269AF8 0025F878  38 00 00 20 */	li r0, 0x20
lbl_80269AFC:
/* 80269AFC 0025F87C  2C 1B 00 0F */	cmpwi r27, 0xf
/* 80269B00 0025F880  41 81 FF B8 */	bgt lbl_80269AB8
/* 80269B04 0025F884  2C 1E 00 00 */	cmpwi r30, 0
/* 80269B08 0025F888  7F C5 F3 78 */	mr r5, r30
/* 80269B0C 0025F88C  40 80 00 0C */	bge lbl_80269B18
/* 80269B10 0025F890  7C BE 00 D0 */	neg r5, r30
/* 80269B14 0025F894  3B DE FF FF */	addi r30, r30, -1
lbl_80269B18:
/* 80269B18 0025F898  3B A0 00 00 */	li r29, 0
lbl_80269B1C:
/* 80269B1C 0025F89C  3B BD 00 01 */	addi r29, r29, 1
/* 80269B20 0025F8A0  7C A3 EE 31 */	sraw. r3, r5, r29
/* 80269B24 0025F8A4  40 82 FF F8 */	bne lbl_80269B1C
/* 80269B28 0025F8A8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80269B2C 0025F8AC  7C 1D 18 00 */	cmpw r29, r3
/* 80269B30 0025F8B0  41 80 00 0C */	blt lbl_80269B3C
/* 80269B34 0025F8B4  38 60 FF FE */	li r3, -2
/* 80269B38 0025F8B8  48 00 00 F8 */	b lbl_80269C30
lbl_80269B3C:
/* 80269B3C 0025F8BC  57 63 20 36 */	slwi r3, r27, 4
/* 80269B40 0025F8C0  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 80269B44 0025F8C4  7C C3 EA 14 */	add r6, r3, r29
/* 80269B48 0025F8C8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80269B4C 0025F8CC  54 C6 10 3A */	slwi r6, r6, 2
/* 80269B50 0025F8D0  3B 60 00 00 */	li r27, 0
/* 80269B54 0025F8D4  7C A5 30 2E */	lwzx r5, r5, r6
/* 80269B58 0025F8D8  7C 63 30 2E */	lwzx r3, r3, r6
/* 80269B5C 0025F8DC  7C 05 00 50 */	subf r0, r5, r0
/* 80269B60 0025F8E0  7C 84 28 30 */	slw r4, r4, r5
/* 80269B64 0025F8E4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80269B68 0025F8E8  7C 84 1A 14 */	add r4, r4, r3
/* 80269B6C 0025F8EC  40 80 00 20 */	bge lbl_80269B8C
/* 80269B70 0025F8F0  7E EC BB 78 */	mr r12, r23
/* 80269B74 0025F8F4  7F 23 CB 78 */	mr r3, r25
/* 80269B78 0025F8F8  20 A0 00 20 */	subfic r5, r0, 0x20
/* 80269B7C 0025F8FC  7D 89 03 A6 */	mtctr r12
/* 80269B80 0025F900  4E 80 04 21 */	bctrl 
/* 80269B84 0025F904  38 80 00 00 */	li r4, 0
/* 80269B88 0025F908  38 00 00 20 */	li r0, 0x20
lbl_80269B8C:
/* 80269B8C 0025F90C  57 A3 08 3C */	slwi r3, r29, 1
/* 80269B90 0025F910  7C 1D 00 50 */	subf r0, r29, r0
/* 80269B94 0025F914  7C 75 1A 2E */	lhzx r3, r21, r3
/* 80269B98 0025F918  2C 00 00 10 */	cmpwi r0, 0x10
/* 80269B9C 0025F91C  7C 84 E8 30 */	slw r4, r4, r29
/* 80269BA0 0025F920  7F C3 18 38 */	and r3, r30, r3
/* 80269BA4 0025F924  7C 84 1B 78 */	or r4, r4, r3
/* 80269BA8 0025F928  40 80 00 20 */	bge lbl_80269BC8
/* 80269BAC 0025F92C  7E EC BB 78 */	mr r12, r23
/* 80269BB0 0025F930  7F 23 CB 78 */	mr r3, r25
/* 80269BB4 0025F934  20 A0 00 20 */	subfic r5, r0, 0x20
/* 80269BB8 0025F938  7D 89 03 A6 */	mtctr r12
/* 80269BBC 0025F93C  4E 80 04 21 */	bctrl 
/* 80269BC0 0025F940  38 80 00 00 */	li r4, 0
/* 80269BC4 0025F944  38 00 00 20 */	li r0, 0x20
lbl_80269BC8:
/* 80269BC8 0025F948  3B 9C 00 01 */	addi r28, r28, 1
/* 80269BCC 0025F94C  2C 1C 00 40 */	cmpwi r28, 0x40
/* 80269BD0 0025F950  41 80 FE 8C */	blt lbl_80269A5C
/* 80269BD4 0025F954  2C 1B 00 00 */	cmpwi r27, 0
/* 80269BD8 0025F958  40 81 00 38 */	ble lbl_80269C10
/* 80269BDC 0025F95C  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 80269BE0 0025F960  7E EC BB 78 */	mr r12, r23
/* 80269BE4 0025F964  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 80269BE8 0025F968  7F 23 CB 78 */	mr r3, r25
/* 80269BEC 0025F96C  80 C6 00 00 */	lwz r6, 0(r6)
/* 80269BF0 0025F970  80 A5 00 00 */	lwz r5, 0(r5)
/* 80269BF4 0025F974  7C 84 30 30 */	slw r4, r4, r6
/* 80269BF8 0025F978  7C 06 00 50 */	subf r0, r6, r0
/* 80269BFC 0025F97C  7C 84 2A 14 */	add r4, r4, r5
/* 80269C00 0025F980  20 A0 00 20 */	subfic r5, r0, 0x20
/* 80269C04 0025F984  7D 89 03 A6 */	mtctr r12
/* 80269C08 0025F988  4E 80 04 21 */	bctrl 
/* 80269C0C 0025F98C  48 00 00 20 */	b lbl_80269C2C
lbl_80269C10:
/* 80269C10 0025F990  2C 00 00 20 */	cmpwi r0, 0x20
/* 80269C14 0025F994  41 82 00 18 */	beq lbl_80269C2C
/* 80269C18 0025F998  7E EC BB 78 */	mr r12, r23
/* 80269C1C 0025F99C  7F 23 CB 78 */	mr r3, r25
/* 80269C20 0025F9A0  20 A0 00 20 */	subfic r5, r0, 0x20
/* 80269C24 0025F9A4  7D 89 03 A6 */	mtctr r12
/* 80269C28 0025F9A8  4E 80 04 21 */	bctrl 
lbl_80269C2C:
/* 80269C2C 0025F9AC  38 60 00 00 */	li r3, 0
lbl_80269C30:
/* 80269C30 0025F9B0  BA 81 00 30 */	lmw r20, 0x30(r1)
/* 80269C34 0025F9B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80269C38 0025F9B8  7C 08 03 A6 */	mtlr r0
/* 80269C3C 0025F9BC  38 21 00 60 */	addi r1, r1, 0x60
/* 80269C40 0025F9C0  4E 80 00 20 */	blr 

