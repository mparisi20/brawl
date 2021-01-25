.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global phMath$7getLength
phMath$7getLength:
/* 8009BA40 000917C0  C0 63 00 00 */	lfs f3, 0(r3)
/* 8009BA44 000917C4  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 8009BA48 000917C8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8009BA4C 000917CC  21 6B FF D0 */	subfic r11, r11, -48
/* 8009BA50 000917D0  C0 43 00 04 */	lfs f2, 4(r3)
/* 8009BA54 000917D4  7C 2C 0B 78 */	mr r12, r1
/* 8009BA58 000917D8  EC C3 08 28 */	fsubs f6, f3, f1
/* 8009BA5C 000917DC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8009BA60 000917E0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8009BA64 000917E4  EC A2 00 28 */	fsubs f5, f2, f0
/* 8009BA68 000917E8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8009BA6C 000917EC  7C 21 59 6E */	stwux r1, r1, r11
/* 8009BA70 000917F0  EC 81 00 28 */	fsubs f4, f1, f0
/* 8009BA74 000917F4  C0 E3 00 0C */	lfs f7, 0xc(r3)
/* 8009BA78 000917F8  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8009BA7C 000917FC  EC 05 01 72 */	fmuls f0, f5, f5
/* 8009BA80 00091800  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 8009BA84 00091804  EC 44 01 32 */	fmuls f2, f4, f4
/* 8009BA88 00091808  EC 67 18 28 */	fsubs f3, f7, f3
/* 8009BA8C 0009180C  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 8009BA90 00091810  EC 21 00 2A */	fadds f1, f1, f0
/* 8009BA94 00091814  C0 02 8A 5C */	lfs f0, lbl_805A1D7C-_SDA2_BASE_(r2)
/* 8009BA98 00091818  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 8009BA9C 0009181C  EC E2 08 2A */	fadds f7, f2, f1
/* 8009BAA0 00091820  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8009BAA4 00091824  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 8009BAA8 00091828  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8009BAAC 0009182C  4C 40 13 82 */	cror 2, 0, 2
/* 8009BAB0 00091830  40 82 00 14 */	bne lbl_8009BAC4
/* 8009BAB4 00091834  3C 00 7F 80 */	lis r0, 0x7f80
/* 8009BAB8 00091838  90 01 00 10 */	stw r0, 0x10(r1)
/* 8009BABC 0009183C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8009BAC0 00091840  48 00 00 28 */	b lbl_8009BAE8
lbl_8009BAC4:
/* 8009BAC4 00091844  FC 20 38 34 */	frsqrte f1, f7
/* 8009BAC8 00091848  C0 42 8A 60 */	lfs f2, lbl_805A1D80-_SDA2_BASE_(r2)
/* 8009BACC 0009184C  C0 02 8A 64 */	lfs f0, lbl_805A1D84-_SDA2_BASE_(r2)
/* 8009BAD0 00091850  FC 60 08 18 */	frsp f3, f1
/* 8009BAD4 00091854  EC 27 00 F2 */	fmuls f1, f7, f3
/* 8009BAD8 00091858  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8009BADC 0009185C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8009BAE0 00091860  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009BAE4 00091864  EC 22 00 32 */	fmuls f1, f2, f0
lbl_8009BAE8:
/* 8009BAE8 00091868  C0 02 8A 58 */	lfs f0, lbl_805A1D78-_SDA2_BASE_(r2)
/* 8009BAEC 0009186C  EC 20 08 24 */	fdivs f1, f0, f1
/* 8009BAF0 00091870  81 41 00 00 */	lwz r10, 0(r1)
/* 8009BAF4 00091874  7D 41 53 78 */	mr r1, r10
/* 8009BAF8 00091878  4E 80 00 20 */	blr 

.global phMath$7getAngleForNW2Vector
phMath$7getAngleForNW2Vector:
/* 8009BAFC 0009187C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009BB00 00091880  7C 08 02 A6 */	mflr r0
/* 8009BB04 00091884  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009BB08 00091888  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8009BB0C 0009188C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8009BB10 00091890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009BB14 00091894  7C 9F 23 78 */	mr r31, r4
/* 8009BB18 00091898  93 C1 00 08 */	stw r30, 8(r1)
/* 8009BB1C 0009189C  7C 7E 1B 78 */	mr r30, r3
/* 8009BB20 000918A0  7F C4 F3 78 */	mr r4, r30
/* 8009BB24 000918A4  48 15 14 E5 */	bl PSVECNormalize
/* 8009BB28 000918A8  7F E3 FB 78 */	mr r3, r31
/* 8009BB2C 000918AC  7F E4 FB 78 */	mr r4, r31
/* 8009BB30 000918B0  48 15 14 D9 */	bl PSVECNormalize
/* 8009BB34 000918B4  E0 7E 00 04 */	psq_l f3, 4(r30), 0, qr0
/* 8009BB38 000918B8  E0 5F 00 04 */	psq_l f2, 4(r31), 0, qr0
/* 8009BB3C 000918BC  E0 1E 80 00 */	psq_l f0, 0(r30), 1, qr0
/* 8009BB40 000918C0  10 63 00 B2 */	ps_mul f3, f3, f2
/* 8009BB44 000918C4  E0 5F 80 00 */	psq_l f2, 0(r31), 1, qr0
/* 8009BB48 000918C8  C0 22 8A 58 */	lfs f1, lbl_805A1D78-_SDA2_BASE_(r2)
/* 8009BB4C 000918CC  10 40 18 BA */	ps_madd f2, f0, f2, f3
/* 8009BB50 000918D0  13 E2 18 D4 */	ps_sum0 f31, f2, f3, f3
/* 8009BB54 000918D4  FC 00 FA 10 */	fabs f0, f31
/* 8009BB58 000918D8  FC 00 00 18 */	frsp f0, f0
/* 8009BB5C 000918DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8009BB60 000918E0  40 80 00 24 */	bge lbl_8009BB84
/* 8009BB64 000918E4  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 8009BB68 000918E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8009BB6C 000918EC  4B FA 1F 9D */	bl mtSqrtf
/* 8009BB70 000918F0  FC 40 F8 90 */	fmr f2, f31
/* 8009BB74 000918F4  48 0C 69 CD */	bl nw4r4mathFff$7Atan2FIdx
/* 8009BB78 000918F8  C0 02 8A 68 */	lfs f0, lbl_805A1D88-_SDA2_BASE_(r2)
/* 8009BB7C 000918FC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8009BB80 00091900  48 00 00 14 */	b lbl_8009BB94
lbl_8009BB84:
/* 8009BB84 00091904  C0 22 8A 5C */	lfs f1, lbl_805A1D7C-_SDA2_BASE_(r2)
/* 8009BB88 00091908  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8009BB8C 0009190C  40 80 00 08 */	bge lbl_8009BB94
/* 8009BB90 00091910  C0 22 8A 6C */	lfs f1, lbl_805A1D8C-_SDA2_BASE_(r2)
lbl_8009BB94:
/* 8009BB94 00091914  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8009BB98 00091918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009BB9C 0009191C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8009BBA0 00091920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009BBA4 00091924  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009BBA8 00091928  7C 08 03 A6 */	mtlr r0
/* 8009BBAC 0009192C  38 21 00 20 */	addi r1, r1, 0x20
/* 8009BBB0 00091930  4E 80 00 20 */	blr 

.global phMath$7getAngleForNW2VectorVerAcos
phMath$7getAngleForNW2VectorVerAcos:
/* 8009BBB4 00091934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009BBB8 00091938  7C 08 02 A6 */	mflr r0
/* 8009BBBC 0009193C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009BBC0 00091940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009BBC4 00091944  7C 9F 23 78 */	mr r31, r4
/* 8009BBC8 00091948  93 C1 00 08 */	stw r30, 8(r1)
/* 8009BBCC 0009194C  7C 7E 1B 78 */	mr r30, r3
/* 8009BBD0 00091950  7F C4 F3 78 */	mr r4, r30
/* 8009BBD4 00091954  48 15 14 35 */	bl PSVECNormalize
/* 8009BBD8 00091958  7F E3 FB 78 */	mr r3, r31
/* 8009BBDC 0009195C  7F E4 FB 78 */	mr r4, r31
/* 8009BBE0 00091960  48 15 14 29 */	bl PSVECNormalize
/* 8009BBE4 00091964  E0 7E 00 04 */	psq_l f3, 4(r30), 0, qr0
/* 8009BBE8 00091968  E0 5F 00 04 */	psq_l f2, 4(r31), 0, qr0
/* 8009BBEC 0009196C  E0 3E 80 00 */	psq_l f1, 0(r30), 1, qr0
/* 8009BBF0 00091970  10 63 00 B2 */	ps_mul f3, f3, f2
/* 8009BBF4 00091974  E0 5F 80 00 */	psq_l f2, 0(r31), 1, qr0
/* 8009BBF8 00091978  C0 02 8A 58 */	lfs f0, lbl_805A1D78-_SDA2_BASE_(r2)
/* 8009BBFC 0009197C  10 41 18 BA */	ps_madd f2, f1, f2, f3
/* 8009BC00 00091980  10 22 18 D4 */	ps_sum0 f1, f2, f3, f3
/* 8009BC04 00091984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009BC08 00091988  40 80 00 10 */	bge lbl_8009BC18
/* 8009BC0C 0009198C  48 36 4F 25 */	bl acos
/* 8009BC10 00091990  FC 20 08 18 */	frsp f1, f1
/* 8009BC14 00091994  48 00 00 08 */	b lbl_8009BC1C
lbl_8009BC18:
/* 8009BC18 00091998  C0 22 8A 5C */	lfs f1, lbl_805A1D7C-_SDA2_BASE_(r2)
lbl_8009BC1C:
/* 8009BC1C 0009199C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009BC20 000919A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009BC24 000919A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009BC28 000919A8  7C 08 03 A6 */	mtlr r0
/* 8009BC2C 000919AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8009BC30 000919B0  4E 80 00 20 */	blr 

.global phMath$7getNwMtxForQuat
phMath$7getNwMtxForQuat:
/* 8009BC34 000919B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8009BC38 000919B8  7C 08 02 A6 */	mflr r0
/* 8009BC3C 000919BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8009BC40 000919C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8009BC44 000919C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8009BC48 000919C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8009BC4C 000919CC  7C BF 2B 78 */	mr r31, r5
/* 8009BC50 000919D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8009BC54 000919D4  7C 9E 23 78 */	mr r30, r4
/* 8009BC58 000919D8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8009BC5C 000919DC  7C 7D 1B 78 */	mr r29, r3
/* 8009BC60 000919E0  48 15 04 F9 */	bl PSMTXIdentity
/* 8009BC64 000919E4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8009BC68 000919E8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8009BC6C 000919EC  FC 40 0A 10 */	fabs f2, f1
/* 8009BC70 000919F0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8009BC74 000919F4  FC 60 02 10 */	fabs f3, f0
/* 8009BC78 000919F8  C8 02 8A 70 */	lfd f0, lbl_805A1D90-_SDA2_BASE_(r2)
/* 8009BC7C 000919FC  FC 80 0A 10 */	fabs f4, f1
/* 8009BC80 00091A00  FC 20 10 18 */	frsp f1, f2
/* 8009BC84 00091A04  FC 40 18 18 */	frsp f2, f3
/* 8009BC88 00091A08  FC 60 20 18 */	frsp f3, f4
/* 8009BC8C 00091A0C  EC 22 08 2A */	fadds f1, f2, f1
/* 8009BC90 00091A10  EC 23 08 2A */	fadds f1, f3, f1
/* 8009BC94 00091A14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009BC98 00091A18  4C 41 13 82 */	cror 2, 1, 2
/* 8009BC9C 00091A1C  40 82 00 84 */	bne lbl_8009BD20
/* 8009BCA0 00091A20  7F C3 F3 78 */	mr r3, r30
/* 8009BCA4 00091A24  7F C4 F3 78 */	mr r4, r30
/* 8009BCA8 00091A28  48 15 13 61 */	bl PSVECNormalize
/* 8009BCAC 00091A2C  C0 42 8A 60 */	lfs f2, lbl_805A1D80-_SDA2_BASE_(r2)
/* 8009BCB0 00091A30  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8009BCB4 00091A34  C0 02 8A 78 */	lfs f0, lbl_805A1D98-_SDA2_BASE_(r2)
/* 8009BCB8 00091A38  EC 22 00 72 */	fmuls f1, f2, f1
/* 8009BCBC 00091A3C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8009BCC0 00091A40  48 0C 66 05 */	bl nw4r4mathFf$7SinFIdx
/* 8009BCC4 00091A44  C0 62 8A 60 */	lfs f3, lbl_805A1D80-_SDA2_BASE_(r2)
/* 8009BCC8 00091A48  FF E0 08 90 */	fmr f31, f1
/* 8009BCCC 00091A4C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8009BCD0 00091A50  C0 02 8A 78 */	lfs f0, lbl_805A1D98-_SDA2_BASE_(r2)
/* 8009BCD4 00091A54  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8009BCD8 00091A58  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8009BCDC 00091A5C  48 0C 66 51 */	bl nw4r4mathFf$7CosFIdx
/* 8009BCE0 00091A60  E0 1E 00 00 */	psq_l f0, 0(r30), 0, qr0
/* 8009BCE4 00091A64  7F A3 EB 78 */	mr r3, r29
/* 8009BCE8 00091A68  38 81 00 08 */	addi r4, r1, 8
/* 8009BCEC 00091A6C  10 40 07 D8 */	ps_muls0 f2, f0, f31
/* 8009BCF0 00091A70  E0 1E 80 08 */	psq_l f0, 8(r30), 1, qr0
/* 8009BCF4 00091A74  F0 5E 00 00 */	psq_st f2, 0(r30), 0, qr0
/* 8009BCF8 00091A78  10 40 07 D8 */	ps_muls0 f2, f0, f31
/* 8009BCFC 00091A7C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8009BD00 00091A80  F0 5E 80 08 */	psq_st f2, 8(r30), 1, qr0
/* 8009BD04 00091A84  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8009BD08 00091A88  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8009BD0C 00091A8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8009BD10 00091A90  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8009BD14 00091A94  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8009BD18 00091A98  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8009BD1C 00091A9C  48 15 0C 19 */	bl PSMTXQuat
lbl_8009BD20:
/* 8009BD20 00091AA0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8009BD24 00091AA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8009BD28 00091AA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8009BD2C 00091AAC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8009BD30 00091AB0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8009BD34 00091AB4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8009BD38 00091AB8  7C 08 03 A6 */	mtlr r0
/* 8009BD3C 00091ABC  38 21 00 40 */	addi r1, r1, 0x40
/* 8009BD40 00091AC0  4E 80 00 20 */	blr 

.global phMath$7getNWMatrixSeparation
phMath$7getNWMatrixSeparation:
/* 8009BD44 00091AC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009BD48 00091AC8  7C 08 02 A6 */	mflr r0
/* 8009BD4C 00091ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009BD50 00091AD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8009BD54 00091AD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8009BD58 00091AD8  7C BE 2B 78 */	mr r30, r5
/* 8009BD5C 00091ADC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8009BD60 00091AE0  7C 9D 23 78 */	mr r29, r4
/* 8009BD64 00091AE4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8009BD68 00091AE8  7C 7C 1B 78 */	mr r28, r3
/* 8009BD6C 00091AEC  7F A3 EB 78 */	mr r3, r29
/* 8009BD70 00091AF0  48 15 03 E9 */	bl PSMTXIdentity
/* 8009BD74 00091AF4  83 FC 00 00 */	lwz r31, 0(r28)
/* 8009BD78 00091AF8  81 9C 00 04 */	lwz r12, 4(r28)
/* 8009BD7C 00091AFC  81 7C 00 08 */	lwz r11, 8(r28)
/* 8009BD80 00091B00  81 5C 00 0C */	lwz r10, 0xc(r28)
/* 8009BD84 00091B04  81 3C 00 10 */	lwz r9, 0x10(r28)
/* 8009BD88 00091B08  81 1C 00 14 */	lwz r8, 0x14(r28)
/* 8009BD8C 00091B0C  80 FC 00 18 */	lwz r7, 0x18(r28)
/* 8009BD90 00091B10  80 DC 00 1C */	lwz r6, 0x1c(r28)
/* 8009BD94 00091B14  80 BC 00 20 */	lwz r5, 0x20(r28)
/* 8009BD98 00091B18  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8009BD9C 00091B1C  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8009BDA0 00091B20  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8009BDA4 00091B24  93 FE 00 00 */	stw r31, 0(r30)
/* 8009BDA8 00091B28  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 8009BDAC 00091B2C  91 9E 00 04 */	stw r12, 4(r30)
/* 8009BDB0 00091B30  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8009BDB4 00091B34  91 7E 00 08 */	stw r11, 8(r30)
/* 8009BDB8 00091B38  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 8009BDBC 00091B3C  91 5E 00 0C */	stw r10, 0xc(r30)
/* 8009BDC0 00091B40  C0 02 8A 5C */	lfs f0, lbl_805A1D7C-_SDA2_BASE_(r2)
/* 8009BDC4 00091B44  91 3E 00 10 */	stw r9, 0x10(r30)
/* 8009BDC8 00091B48  91 1E 00 14 */	stw r8, 0x14(r30)
/* 8009BDCC 00091B4C  90 FE 00 18 */	stw r7, 0x18(r30)
/* 8009BDD0 00091B50  90 DE 00 1C */	stw r6, 0x1c(r30)
/* 8009BDD4 00091B54  90 BE 00 20 */	stw r5, 0x20(r30)
/* 8009BDD8 00091B58  90 9E 00 24 */	stw r4, 0x24(r30)
/* 8009BDDC 00091B5C  90 7E 00 28 */	stw r3, 0x28(r30)
/* 8009BDE0 00091B60  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 8009BDE4 00091B64  D0 7D 00 0C */	stfs f3, 0xc(r29)
/* 8009BDE8 00091B68  D0 5D 00 1C */	stfs f2, 0x1c(r29)
/* 8009BDEC 00091B6C  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 8009BDF0 00091B70  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8009BDF4 00091B74  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8009BDF8 00091B78  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8009BDFC 00091B7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009BE00 00091B80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8009BE04 00091B84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8009BE08 00091B88  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8009BE0C 00091B8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009BE10 00091B90  7C 08 03 A6 */	mtlr r0
/* 8009BE14 00091B94  38 21 00 20 */	addi r1, r1, 0x20
/* 8009BE18 00091B98  4E 80 00 20 */	blr 

