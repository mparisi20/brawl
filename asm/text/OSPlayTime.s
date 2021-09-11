.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global OSPlayTimeIsLimited
OSPlayTimeIsLimited:
/* 801E38A8 001D9628  80 0D C3 40 */	lwz r0, lbl_805A0760-_SDA_BASE_(r13)
/* 801E38AC 001D962C  80 6D C3 44 */	lwz r3, lbl_805A0764-_SDA_BASE_(r13)
/* 801E38B0 001D9630  7C 60 03 78 */	or r0, r3, r0
/* 801E38B4 001D9634  30 60 FF FF */	addic r3, r0, -1
/* 801E38B8 001D9638  7C 63 01 10 */	subfe r3, r3, r0
/* 801E38BC 001D963C  4E 80 00 20 */	blr 

.global __OSPlayTimeRebootCallback
__OSPlayTimeRebootCallback:
/* 801E38C0 001D9640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E38C4 001D9644  7C 08 02 A6 */	mflr r0
/* 801E38C8 001D9648  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 801E38CC 001D964C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E38D0 001D9650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E38D4 001D9654  83 E3 00 DC */	lwz r31, 0x800000DC@l(r3)
/* 801E38D8 001D9658  48 00 00 10 */	b lbl_801E38E8
lbl_801E38DC:
/* 801E38DC 001D965C  7F E3 FB 78 */	mr r3, r31
/* 801E38E0 001D9660  4B FF DD 1D */	bl OSSuspendThread
/* 801E38E4 001D9664  83 FF 02 FC */	lwz r31, 0x2fc(r31)
lbl_801E38E8:
/* 801E38E8 001D9668  2C 1F 00 00 */	cmpwi r31, 0
/* 801E38EC 001D966C  40 82 FF F0 */	bne lbl_801E38DC
/* 801E38F0 001D9670  3C 60 80 00 */	lis r3, 0x80003128@ha
/* 801E38F4 001D9674  3C 80 80 1E */	lis r4, __OSPlayTimeRebootThread@ha
/* 801E38F8 001D9678  80 63 31 28 */	lwz r3, 0x80003128@l(r3)
/* 801E38FC 001D967C  38 84 3C 18 */	addi r4, r4, __OSPlayTimeRebootThread@l
/* 801E3900 001D9680  38 A0 00 00 */	li r5, 0
/* 801E3904 001D9684  38 E0 10 00 */	li r7, 0x1000
/* 801E3908 001D9688  3B E3 EC E0 */	addi r31, r3, -4896
/* 801E390C 001D968C  39 00 00 00 */	li r8, 0
/* 801E3910 001D9690  39 20 00 00 */	li r9, 0
/* 801E3914 001D9694  7F E3 FB 78 */	mr r3, r31
/* 801E3918 001D9698  38 DF 13 20 */	addi r6, r31, 0x1320
/* 801E391C 001D969C  4B FF D3 E1 */	bl OSCreateThread
/* 801E3920 001D96A0  2C 03 00 00 */	cmpwi r3, 0
/* 801E3924 001D96A4  40 82 00 08 */	bne lbl_801E392C
/* 801E3928 001D96A8  4B FF BE 7D */	bl __OSHotResetForError
lbl_801E392C:
/* 801E392C 001D96AC  7F E3 FB 78 */	mr r3, r31
/* 801E3930 001D96B0  4B FF DA 35 */	bl OSResumeThread
/* 801E3934 001D96B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E3938 001D96B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E393C 001D96BC  7C 08 03 A6 */	mtlr r0
/* 801E3940 001D96C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3944 001D96C4  4E 80 00 20 */	blr 

.global __OSPlayTimeFadeLastAIDCallback
__OSPlayTimeFadeLastAIDCallback:
/* 801E3948 001D96C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801E394C 001D96CC  7C 08 02 A6 */	mflr r0
/* 801E3950 001D96D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E3954 001D96D4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801E3958 001D96D8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801E395C 001D96DC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801E3960 001D96E0  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3964 001D96E4  81 83 04 90 */	lwz r12, 0x490(r3)
/* 801E3968 001D96E8  2C 0C 00 00 */	cmpwi r12, 0
/* 801E396C 001D96EC  41 82 00 0C */	beq lbl_801E3978
/* 801E3970 001D96F0  7D 89 03 A6 */	mtctr r12
/* 801E3974 001D96F4  4E 80 04 21 */	bctrl 
lbl_801E3978:
/* 801E3978 001D96F8  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E397C 001D96FC  80 03 04 88 */	lwz r0, 0x488(r3)
/* 801E3980 001D9700  2C 00 00 00 */	cmpwi r0, 0
/* 801E3984 001D9704  40 82 00 14 */	bne lbl_801E3998
/* 801E3988 001D9708  48 01 B3 31 */	bl AIGetDMAStartAddr
/* 801E398C 001D970C  80 8D C3 30 */	lwz r4, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3990 001D9710  3C 03 80 00 */	addis r0, r3, 0x8000
/* 801E3994 001D9714  90 04 04 84 */	stw r0, 0x484(r4)
lbl_801E3998:
/* 801E3998 001D9718  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E399C 001D971C  80 03 04 88 */	lwz r0, 0x488(r3)
/* 801E39A0 001D9720  28 00 00 01 */	cmplwi r0, 1
/* 801E39A4 001D9724  40 82 00 38 */	bne lbl_801E39DC
/* 801E39A8 001D9728  80 63 04 84 */	lwz r3, 0x484(r3)
/* 801E39AC 001D972C  38 80 00 04 */	li r4, 4
/* 801E39B0 001D9730  4B FF 3D 0D */	bl DCInvalidateRange
/* 801E39B4 001D9734  80 8D C3 30 */	lwz r4, lbl_805A0750-_SDA_BASE_(r13)
/* 801E39B8 001D9738  80 64 04 84 */	lwz r3, 0x484(r4)
/* 801E39BC 001D973C  A8 03 00 00 */	lha r0, 0(r3)
/* 801E39C0 001D9740  38 63 00 02 */	addi r3, r3, 2
/* 801E39C4 001D9744  B0 04 04 8C */	sth r0, 0x48c(r4)
/* 801E39C8 001D9748  90 64 04 84 */	stw r3, 0x484(r4)
/* 801E39CC 001D974C  80 8D C3 30 */	lwz r4, lbl_805A0750-_SDA_BASE_(r13)
/* 801E39D0 001D9750  80 64 04 84 */	lwz r3, 0x484(r4)
/* 801E39D4 001D9754  A8 03 00 00 */	lha r0, 0(r3)
/* 801E39D8 001D9758  B0 04 04 8E */	sth r0, 0x48e(r4)
lbl_801E39DC:
/* 801E39DC 001D975C  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E39E0 001D9760  80 03 04 88 */	lwz r0, 0x488(r3)
/* 801E39E4 001D9764  28 00 00 01 */	cmplwi r0, 1
/* 801E39E8 001D9768  41 80 00 F0 */	blt lbl_801E3AD8
/* 801E39EC 001D976C  80 03 04 80 */	lwz r0, 0x480(r3)
/* 801E39F0 001D9770  1C 00 02 40 */	mulli r0, r0, 0x240
/* 801E39F4 001D9774  7F E3 02 14 */	add r31, r3, r0
/* 801E39F8 001D9778  7F FE FB 78 */	mr r30, r31
/* 801E39FC 001D977C  48 01 B2 D5 */	bl AIGetDMALength
/* 801E3A00 001D9780  7C 7D 1B 78 */	mr r29, r3
/* 801E3A04 001D9784  C0 42 A4 20 */	lfs f2, lbl_805A3740-_SDA2_BASE_(r2)
/* 801E3A08 001D9788  C8 22 A4 28 */	lfd f1, lbl_805A3748-_SDA2_BASE_(r2)
/* 801E3A0C 001D978C  7F A5 EB 78 */	mr r5, r29
/* 801E3A10 001D9790  3C 80 43 30 */	lis r4, 0x4330
/* 801E3A14 001D9794  48 00 00 84 */	b lbl_801E3A98
lbl_801E3A18:
/* 801E3A18 001D9798  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3A1C 001D979C  38 A5 FF FC */	addi r5, r5, -4
/* 801E3A20 001D97A0  90 81 00 08 */	stw r4, 8(r1)
/* 801E3A24 001D97A4  A8 03 04 8C */	lha r0, 0x48c(r3)
/* 801E3A28 001D97A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 801E3A2C 001D97AC  B0 1E 00 00 */	sth r0, 0(r30)
/* 801E3A30 001D97B0  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3A34 001D97B4  A8 03 04 8E */	lha r0, 0x48e(r3)
/* 801E3A38 001D97B8  B0 1E 00 02 */	sth r0, 2(r30)
/* 801E3A3C 001D97BC  3B DE 00 04 */	addi r30, r30, 4
/* 801E3A40 001D97C0  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3A44 001D97C4  A8 03 04 8C */	lha r0, 0x48c(r3)
/* 801E3A48 001D97C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E3A4C 001D97CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E3A50 001D97D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E3A54 001D97D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E3A58 001D97D8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801E3A5C 001D97DC  FC 00 00 1E */	fctiwz f0, f0
/* 801E3A60 001D97E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801E3A64 001D97E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E3A68 001D97E8  B0 03 04 8C */	sth r0, 0x48c(r3)
/* 801E3A6C 001D97EC  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3A70 001D97F0  A8 03 04 8E */	lha r0, 0x48e(r3)
/* 801E3A74 001D97F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E3A78 001D97F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E3A7C 001D97FC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801E3A80 001D9800  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E3A84 001D9804  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801E3A88 001D9808  FC 00 00 1E */	fctiwz f0, f0
/* 801E3A8C 001D980C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801E3A90 001D9810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E3A94 001D9814  B0 03 04 8E */	sth r0, 0x48e(r3)
lbl_801E3A98:
/* 801E3A98 001D9818  2C 05 00 00 */	cmpwi r5, 0
/* 801E3A9C 001D981C  40 82 FF 7C */	bne lbl_801E3A18
/* 801E3AA0 001D9820  7F E3 FB 78 */	mr r3, r31
/* 801E3AA4 001D9824  7F A4 EB 78 */	mr r4, r29
/* 801E3AA8 001D9828  4B FF 3C 41 */	bl DCFlushRange
/* 801E3AAC 001D982C  7F E3 FB 78 */	mr r3, r31
/* 801E3AB0 001D9830  7F A4 EB 78 */	mr r4, r29
/* 801E3AB4 001D9834  48 01 B1 51 */	bl AIInitDMA
/* 801E3AB8 001D9838  80 8D C3 30 */	lwz r4, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3ABC 001D983C  80 64 04 80 */	lwz r3, 0x480(r4)
/* 801E3AC0 001D9840  38 03 00 01 */	addi r0, r3, 1
/* 801E3AC4 001D9844  90 04 04 80 */	stw r0, 0x480(r4)
/* 801E3AC8 001D9848  80 6D C3 30 */	lwz r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3ACC 001D984C  80 03 04 80 */	lwz r0, 0x480(r3)
/* 801E3AD0 001D9850  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 801E3AD4 001D9854  90 03 04 80 */	stw r0, 0x480(r3)
lbl_801E3AD8:
/* 801E3AD8 001D9858  80 8D C3 30 */	lwz r4, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3ADC 001D985C  80 64 04 88 */	lwz r3, 0x488(r4)
/* 801E3AE0 001D9860  38 03 00 01 */	addi r0, r3, 1
/* 801E3AE4 001D9864  90 04 04 88 */	stw r0, 0x488(r4)
/* 801E3AE8 001D9868  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801E3AEC 001D986C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801E3AF0 001D9870  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801E3AF4 001D9874  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801E3AF8 001D9878  7C 08 03 A6 */	mtlr r0
/* 801E3AFC 001D987C  38 21 00 40 */	addi r1, r1, 0x40
/* 801E3B00 001D9880  4E 80 00 20 */	blr 

.global __OSWriteExpiredFlag
__OSWriteExpiredFlag:
/* 801E3B04 001D9884  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 801E3B08 001D9888  7C 2C 0B 78 */	mr r12, r1
/* 801E3B0C 001D988C  21 6B FF 00 */	subfic r11, r11, -256
/* 801E3B10 001D9890  7C 21 59 6E */	stwux r1, r1, r11
/* 801E3B14 001D9894  7C 08 02 A6 */	mflr r0
/* 801E3B18 001D9898  3C 60 80 47 */	lis r3, lbl_80474DC8@ha
/* 801E3B1C 001D989C  38 A0 00 00 */	li r5, 0
/* 801E3B20 001D98A0  90 0C 00 04 */	stw r0, 4(r12)
/* 801E3B24 001D98A4  38 63 4D C8 */	addi r3, r3, lbl_80474DC8@l
/* 801E3B28 001D98A8  38 80 00 3F */	li r4, 0x3f
/* 801E3B2C 001D98AC  93 EC FF FC */	stw r31, -4(r12)
/* 801E3B30 001D98B0  93 CC FF F8 */	stw r30, -8(r12)
/* 801E3B34 001D98B4  3B C0 00 00 */	li r30, 0
/* 801E3B38 001D98B8  48 02 6C 4D */	bl NANDPrivateCreate
/* 801E3B3C 001D98BC  2C 03 00 00 */	cmpwi r3, 0
/* 801E3B40 001D98C0  7C 7F 1B 78 */	mr r31, r3
/* 801E3B44 001D98C4  41 82 00 0C */	beq lbl_801E3B50
/* 801E3B48 001D98C8  2C 03 FF FA */	cmpwi r3, -6
/* 801E3B4C 001D98CC  40 82 00 8C */	bne lbl_801E3BD8
lbl_801E3B50:
/* 801E3B50 001D98D0  3C 60 80 47 */	lis r3, lbl_80474DC8@ha
/* 801E3B54 001D98D4  38 81 00 40 */	addi r4, r1, 0x40
/* 801E3B58 001D98D8  38 63 4D C8 */	addi r3, r3, lbl_80474DC8@l
/* 801E3B5C 001D98DC  38 A0 00 02 */	li r5, 2
/* 801E3B60 001D98E0  48 02 7E E9 */	bl NANDPrivateOpen
/* 801E3B64 001D98E4  2C 03 00 00 */	cmpwi r3, 0
/* 801E3B68 001D98E8  7C 7F 1B 78 */	mr r31, r3
/* 801E3B6C 001D98EC  40 82 00 6C */	bne lbl_801E3BD8
/* 801E3B70 001D98F0  3B C0 00 01 */	li r30, 1
/* 801E3B74 001D98F4  48 02 D5 0D */	bl ESP_InitLib
/* 801E3B78 001D98F8  2C 03 00 00 */	cmpwi r3, 0
/* 801E3B7C 001D98FC  7C 7F 1B 78 */	mr r31, r3
/* 801E3B80 001D9900  40 82 00 58 */	bne lbl_801E3BD8
/* 801E3B84 001D9904  38 61 00 20 */	addi r3, r1, 0x20
/* 801E3B88 001D9908  38 80 00 00 */	li r4, 0
/* 801E3B8C 001D990C  38 A0 00 20 */	li r5, 0x20
/* 801E3B90 001D9910  4B E2 08 AD */	bl memset
/* 801E3B94 001D9914  38 61 00 20 */	addi r3, r1, 0x20
/* 801E3B98 001D9918  48 02 DB 89 */	bl ESP_GetTitleId
/* 801E3B9C 001D991C  2C 03 00 00 */	cmpwi r3, 0
/* 801E3BA0 001D9920  7C 7F 1B 78 */	mr r31, r3
/* 801E3BA4 001D9924  40 82 00 34 */	bne lbl_801E3BD8
/* 801E3BA8 001D9928  38 61 00 40 */	addi r3, r1, 0x40
/* 801E3BAC 001D992C  38 81 00 20 */	addi r4, r1, 0x20
/* 801E3BB0 001D9930  38 A0 00 20 */	li r5, 0x20
/* 801E3BB4 001D9934  48 02 6F A5 */	bl NANDWrite
/* 801E3BB8 001D9938  2C 03 00 00 */	cmpwi r3, 0
/* 801E3BBC 001D993C  7C 7F 1B 78 */	mr r31, r3
/* 801E3BC0 001D9940  41 80 00 18 */	blt lbl_801E3BD8
/* 801E3BC4 001D9944  2C 03 00 20 */	cmpwi r3, 0x20
/* 801E3BC8 001D9948  41 82 00 0C */	beq lbl_801E3BD4
/* 801E3BCC 001D994C  3B E0 FF F8 */	li r31, -8
/* 801E3BD0 001D9950  48 00 00 08 */	b lbl_801E3BD8
lbl_801E3BD4:
/* 801E3BD4 001D9954  3B E0 00 00 */	li r31, 0
lbl_801E3BD8:
/* 801E3BD8 001D9958  2C 1E 00 00 */	cmpwi r30, 0
/* 801E3BDC 001D995C  41 82 00 0C */	beq lbl_801E3BE8
/* 801E3BE0 001D9960  38 61 00 40 */	addi r3, r1, 0x40
/* 801E3BE4 001D9964  48 02 80 59 */	bl NANDClose
lbl_801E3BE8:
/* 801E3BE8 001D9968  2C 1F 00 00 */	cmpwi r31, 0
/* 801E3BEC 001D996C  40 82 00 0C */	bne lbl_801E3BF8
/* 801E3BF0 001D9970  38 60 00 01 */	li r3, 1
/* 801E3BF4 001D9974  48 00 00 08 */	b lbl_801E3BFC
lbl_801E3BF8:
/* 801E3BF8 001D9978  38 60 00 00 */	li r3, 0
lbl_801E3BFC:
/* 801E3BFC 001D997C  81 41 00 00 */	lwz r10, 0(r1)
/* 801E3C00 001D9980  80 0A 00 04 */	lwz r0, 4(r10)
/* 801E3C04 001D9984  83 EA FF FC */	lwz r31, -4(r10)
/* 801E3C08 001D9988  83 CA FF F8 */	lwz r30, -8(r10)
/* 801E3C0C 001D998C  7C 08 03 A6 */	mtlr r0
/* 801E3C10 001D9990  7D 41 53 78 */	mr r1, r10
/* 801E3C14 001D9994  4E 80 00 20 */	blr 

.global __OSPlayTimeRebootThread
__OSPlayTimeRebootThread:
/* 801E3C18 001D9998  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 801E3C1C 001D999C  7C 2C 0B 78 */	mr r12, r1
/* 801E3C20 001D99A0  21 6B FB 20 */	subfic r11, r11, -1248
/* 801E3C24 001D99A4  7C 21 59 6E */	stwux r1, r1, r11
/* 801E3C28 001D99A8  7C 08 02 A6 */	mflr r0
/* 801E3C2C 001D99AC  38 80 00 00 */	li r4, 0
/* 801E3C30 001D99B0  38 A0 04 94 */	li r5, 0x494
/* 801E3C34 001D99B4  90 0C 00 04 */	stw r0, 4(r12)
/* 801E3C38 001D99B8  38 61 00 20 */	addi r3, r1, 0x20
/* 801E3C3C 001D99BC  93 EC FF FC */	stw r31, -4(r12)
/* 801E3C40 001D99C0  93 CC FF F8 */	stw r30, -8(r12)
/* 801E3C44 001D99C4  93 AC FF F4 */	stw r29, -0xc(r12)
/* 801E3C48 001D99C8  90 6D C3 30 */	stw r3, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3C4C 001D99CC  4B E2 07 F1 */	bl memset
/* 801E3C50 001D99D0  3C 60 80 1E */	lis r3, __OSPlayTimeFadeLastAIDCallback@ha
/* 801E3C54 001D99D4  38 63 39 48 */	addi r3, r3, __OSPlayTimeFadeLastAIDCallback@l
/* 801E3C58 001D99D8  48 01 AF 69 */	bl AIRegisterDMACallback
/* 801E3C5C 001D99DC  80 AD C3 30 */	lwz r5, lbl_805A0750-_SDA_BASE_(r13)
/* 801E3C60 001D99E0  3C 80 CC CD */	lis r4, 0xCCCCCCCD@ha
/* 801E3C64 001D99E4  3B E4 CC CD */	addi r31, r4, 0xCCCCCCCD@l
/* 801E3C68 001D99E8  3B C0 00 00 */	li r30, 0
/* 801E3C6C 001D99EC  90 65 04 90 */	stw r3, 0x490(r5)
lbl_801E3C70:
/* 801E3C70 001D99F0  7C 1F F0 16 */	mulhwu r0, r31, r30
/* 801E3C74 001D99F4  54 03 F0 BE */	srwi r3, r0, 2
/* 801E3C78 001D99F8  3B A3 00 01 */	addi r29, r3, 1
/* 801E3C7C 001D99FC  28 1D 00 07 */	cmplwi r29, 7
/* 801E3C80 001D9A00  40 81 00 08 */	ble lbl_801E3C88
/* 801E3C84 001D9A04  3B A0 00 07 */	li r29, 7
lbl_801E3C88:
/* 801E3C88 001D9A08  48 00 4C A5 */	bl VIWaitForRetrace
/* 801E3C8C 001D9A0C  7F A4 EB 78 */	mr r4, r29
/* 801E3C90 001D9A10  7F A5 EB 78 */	mr r5, r29
/* 801E3C94 001D9A14  38 60 00 01 */	li r3, 1
/* 801E3C98 001D9A18  4B FF EB 29 */	bl __OSSetVIForceDimming
/* 801E3C9C 001D9A1C  3B DE 00 01 */	addi r30, r30, 1
/* 801E3CA0 001D9A20  28 1E 00 14 */	cmplwi r30, 0x14
/* 801E3CA4 001D9A24  41 80 FF CC */	blt lbl_801E3C70
/* 801E3CA8 001D9A28  38 60 00 00 */	li r3, 0
/* 801E3CAC 001D9A2C  48 01 AF 15 */	bl AIRegisterDMACallback
/* 801E3CB0 001D9A30  38 60 00 01 */	li r3, 1
/* 801E3CB4 001D9A34  48 00 5D 7D */	bl VISetBlack
/* 801E3CB8 001D9A38  48 00 5B F9 */	bl VIFlush
/* 801E3CBC 001D9A3C  4B FF 92 55 */	bl OSDisableInterrupts
/* 801E3CC0 001D9A40  80 0D C3 34 */	lwz r0, lbl_805A0754-_SDA_BASE_(r13)
/* 801E3CC4 001D9A44  7C 7F 1B 78 */	mr r31, r3
/* 801E3CC8 001D9A48  2C 00 00 00 */	cmpwi r0, 0
/* 801E3CCC 001D9A4C  41 82 00 08 */	beq lbl_801E3CD4
/* 801E3CD0 001D9A50  4B FF FE 35 */	bl __OSWriteExpiredFlag
lbl_801E3CD4:
/* 801E3CD4 001D9A54  7F E3 FB 78 */	mr r3, r31
/* 801E3CD8 001D9A58  4B FF 92 61 */	bl OSRestoreInterrupts
/* 801E3CDC 001D9A5C  4B FF B9 29 */	bl OSReturnToMenu
/* 801E3CE0 001D9A60  38 60 00 00 */	li r3, 0
/* 801E3CE4 001D9A64  81 41 00 00 */	lwz r10, 0(r1)
/* 801E3CE8 001D9A68  83 EA FF FC */	lwz r31, -4(r10)
/* 801E3CEC 001D9A6C  83 CA FF F8 */	lwz r30, -8(r10)
/* 801E3CF0 001D9A70  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 801E3CF4 001D9A74  80 0A 00 04 */	lwz r0, 4(r10)
/* 801E3CF8 001D9A78  7C 08 03 A6 */	mtlr r0
/* 801E3CFC 001D9A7C  7D 41 53 78 */	mr r1, r10
/* 801E3D00 001D9A80  4E 80 00 20 */	blr 

.global __OSPlayTimeAlarmExpired
__OSPlayTimeAlarmExpired:
/* 801E3D04 001D9A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E3D08 001D9A88  7C 08 02 A6 */	mflr r0
/* 801E3D0C 001D9A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3D10 001D9A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E3D14 001D9A94  80 0D C3 38 */	lwz r0, lbl_805A0758-_SDA_BASE_(r13)
/* 801E3D18 001D9A98  2C 00 00 00 */	cmpwi r0, 0
/* 801E3D1C 001D9A9C  41 82 00 8C */	beq lbl_801E3DA8
/* 801E3D20 001D9AA0  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 801E3D24 001D9AA4  83 E3 00 DC */	lwz r31, 0x800000DC@l(r3)
/* 801E3D28 001D9AA8  48 00 00 1C */	b lbl_801E3D44
lbl_801E3D2C:
/* 801E3D2C 001D9AAC  80 0D C3 38 */	lwz r0, lbl_805A0758-_SDA_BASE_(r13)
/* 801E3D30 001D9AB0  7C 1F 00 40 */	cmplw r31, r0
/* 801E3D34 001D9AB4  41 82 00 0C */	beq lbl_801E3D40
/* 801E3D38 001D9AB8  7F E3 FB 78 */	mr r3, r31
/* 801E3D3C 001D9ABC  4B FF D8 C1 */	bl OSSuspendThread
lbl_801E3D40:
/* 801E3D40 001D9AC0  83 FF 02 FC */	lwz r31, 0x2fc(r31)
lbl_801E3D44:
/* 801E3D44 001D9AC4  2C 1F 00 00 */	cmpwi r31, 0
/* 801E3D48 001D9AC8  40 82 FF E4 */	bne lbl_801E3D2C
/* 801E3D4C 001D9ACC  3F E0 80 4E */	lis r31, lbl_804DE240@ha
/* 801E3D50 001D9AD0  38 7F E2 40 */	addi r3, r31, lbl_804DE240@l
/* 801E3D54 001D9AD4  4B FF 29 45 */	bl OSCreateAlarm
/* 801E3D58 001D9AD8  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 801E3D5C 001D9ADC  3C E0 80 1E */	lis r7, __OSPlayTimeRebootCallback@ha
/* 801E3D60 001D9AE0  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 801E3D64 001D9AE4  38 80 00 F0 */	li r4, 0xf0
/* 801E3D68 001D9AE8  38 A0 00 00 */	li r5, 0
/* 801E3D6C 001D9AEC  38 7F E2 40 */	addi r3, r31, -7616
/* 801E3D70 001D9AF0  54 06 F0 BE */	srwi r6, r0, 2
/* 801E3D74 001D9AF4  38 E7 38 C0 */	addi r7, r7, __OSPlayTimeRebootCallback@l
/* 801E3D78 001D9AF8  7C 06 20 16 */	mulhwu r0, r6, r4
/* 801E3D7C 001D9AFC  7C 85 21 D6 */	mullw r4, r5, r4
/* 801E3D80 001D9B00  1C C6 00 F0 */	mulli r6, r6, 0xf0
/* 801E3D84 001D9B04  7C A0 22 14 */	add r5, r0, r4
/* 801E3D88 001D9B08  4B FF 2B 71 */	bl OSSetAlarm
/* 801E3D8C 001D9B0C  48 00 00 08 */	b lbl_801E3D94
lbl_801E3D90:
/* 801E3D90 001D9B10  4B FF D5 D5 */	bl OSResumeThread
lbl_801E3D94:
/* 801E3D94 001D9B14  80 6D C3 38 */	lwz r3, lbl_805A0758-_SDA_BASE_(r13)
/* 801E3D98 001D9B18  80 03 02 CC */	lwz r0, 0x2cc(r3)
/* 801E3D9C 001D9B1C  2C 00 00 00 */	cmpwi r0, 0
/* 801E3DA0 001D9B20  41 81 FF F0 */	bgt lbl_801E3D90
/* 801E3DA4 001D9B24  48 00 00 68 */	b lbl_801E3E0C
lbl_801E3DA8:
/* 801E3DA8 001D9B28  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 801E3DAC 001D9B2C  83 E3 00 DC */	lwz r31, 0x800000DC@l(r3)
/* 801E3DB0 001D9B30  48 00 00 10 */	b lbl_801E3DC0
lbl_801E3DB4:
/* 801E3DB4 001D9B34  7F E3 FB 78 */	mr r3, r31
/* 801E3DB8 001D9B38  4B FF D8 45 */	bl OSSuspendThread
/* 801E3DBC 001D9B3C  83 FF 02 FC */	lwz r31, 0x2fc(r31)
lbl_801E3DC0:
/* 801E3DC0 001D9B40  2C 1F 00 00 */	cmpwi r31, 0
/* 801E3DC4 001D9B44  40 82 FF F0 */	bne lbl_801E3DB4
/* 801E3DC8 001D9B48  3C 60 80 00 */	lis r3, 0x80003128@ha
/* 801E3DCC 001D9B4C  3C 80 80 1E */	lis r4, __OSPlayTimeRebootThread@ha
/* 801E3DD0 001D9B50  80 63 31 28 */	lwz r3, 0x80003128@l(r3)
/* 801E3DD4 001D9B54  38 84 3C 18 */	addi r4, r4, __OSPlayTimeRebootThread@l
/* 801E3DD8 001D9B58  38 A0 00 00 */	li r5, 0
/* 801E3DDC 001D9B5C  38 E0 10 00 */	li r7, 0x1000
/* 801E3DE0 001D9B60  3B E3 EC E0 */	addi r31, r3, -4896
/* 801E3DE4 001D9B64  39 00 00 00 */	li r8, 0
/* 801E3DE8 001D9B68  39 20 00 00 */	li r9, 0
/* 801E3DEC 001D9B6C  7F E3 FB 78 */	mr r3, r31
/* 801E3DF0 001D9B70  38 DF 13 20 */	addi r6, r31, 0x1320
/* 801E3DF4 001D9B74  4B FF CF 09 */	bl OSCreateThread
/* 801E3DF8 001D9B78  2C 03 00 00 */	cmpwi r3, 0
/* 801E3DFC 001D9B7C  40 82 00 08 */	bne lbl_801E3E04
/* 801E3E00 001D9B80  4B FF B9 A5 */	bl __OSHotResetForError
lbl_801E3E04:
/* 801E3E04 001D9B84  7F E3 FB 78 */	mr r3, r31
/* 801E3E08 001D9B88  4B FF D5 5D */	bl OSResumeThread
lbl_801E3E0C:
/* 801E3E0C 001D9B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E3E10 001D9B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E3E14 001D9B94  7C 08 03 A6 */	mtlr r0
/* 801E3E18 001D9B98  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3E1C 001D9B9C  4E 80 00 20 */	blr 

.global __OSGetPlayTime
__OSGetPlayTime:
/* 801E3E20 001D9BA0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 801E3E24 001D9BA4  7C 2C 0B 78 */	mr r12, r1
/* 801E3E28 001D9BA8  21 6B FE 80 */	subfic r11, r11, -384
/* 801E3E2C 001D9BAC  7C 21 59 6E */	stwux r1, r1, r11
/* 801E3E30 001D9BB0  7C 08 02 A6 */	mflr r0
/* 801E3E34 001D9BB4  90 0C 00 04 */	stw r0, 4(r12)
/* 801E3E38 001D9BB8  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 801E3E3C 001D9BBC  38 00 00 00 */	li r0, 0
/* 801E3E40 001D9BC0  93 EC FF FC */	stw r31, -4(r12)
/* 801E3E44 001D9BC4  7C BF 2B 78 */	mr r31, r5
/* 801E3E48 001D9BC8  93 CC FF F8 */	stw r30, -8(r12)
/* 801E3E4C 001D9BCC  3B C0 00 00 */	li r30, 0
/* 801E3E50 001D9BD0  93 AC FF F4 */	stw r29, -0xc(r12)
/* 801E3E54 001D9BD4  7C 9D 23 78 */	mr r29, r4
/* 801E3E58 001D9BD8  93 8C FF F0 */	stw r28, -0x10(r12)
/* 801E3E5C 001D9BDC  7C 7C 1B 78 */	mr r28, r3
/* 801E3E60 001D9BE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E3E64 001D9BE4  41 82 00 18 */	beq lbl_801E3E7C
/* 801E3E68 001D9BE8  7F 84 E3 78 */	mr r4, r28
/* 801E3E6C 001D9BEC  38 61 00 80 */	addi r3, r1, 0x80
/* 801E3E70 001D9BF0  38 A0 00 D8 */	li r5, 0xd8
/* 801E3E74 001D9BF4  4B E2 04 C5 */	bl func_80004338
/* 801E3E78 001D9BF8  3B 81 00 80 */	addi r28, r1, 0x80
lbl_801E3E7C:
/* 801E3E7C 001D9BFC  80 7C 00 04 */	lwz r3, 4(r28)
/* 801E3E80 001D9C00  38 C1 00 20 */	addi r6, r1, 0x20
/* 801E3E84 001D9C04  80 9C 00 08 */	lwz r4, 8(r28)
/* 801E3E88 001D9C08  38 A0 00 00 */	li r5, 0
/* 801E3E8C 001D9C0C  48 02 D9 2D */	bl ESP_GetConsumption
/* 801E3E90 001D9C10  2C 03 00 00 */	cmpwi r3, 0
/* 801E3E94 001D9C14  41 81 00 30 */	bgt lbl_801E3EC4
/* 801E3E98 001D9C18  41 82 00 08 */	beq lbl_801E3EA0
/* 801E3E9C 001D9C1C  48 00 00 28 */	b lbl_801E3EC4
lbl_801E3EA0:
/* 801E3EA0 001D9C20  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801E3EA4 001D9C24  2C 00 00 00 */	cmpwi r0, 0
/* 801E3EA8 001D9C28  41 82 00 1C */	beq lbl_801E3EC4
/* 801E3EAC 001D9C2C  80 7C 00 04 */	lwz r3, 4(r28)
/* 801E3EB0 001D9C30  38 A1 00 40 */	addi r5, r1, 0x40
/* 801E3EB4 001D9C34  80 9C 00 08 */	lwz r4, 8(r28)
/* 801E3EB8 001D9C38  38 C1 00 20 */	addi r6, r1, 0x20
/* 801E3EBC 001D9C3C  48 02 D8 FD */	bl ESP_GetConsumption
/* 801E3EC0 001D9C40  2C 03 00 00 */	cmpwi r3, 0
lbl_801E3EC4:
/* 801E3EC4 001D9C44  2C 03 00 00 */	cmpwi r3, 0
/* 801E3EC8 001D9C48  40 82 00 FC */	bne lbl_801E3FC4
/* 801E3ECC 001D9C4C  38 00 00 08 */	li r0, 8
/* 801E3ED0 001D9C50  38 A0 00 00 */	li r5, 0
/* 801E3ED4 001D9C54  38 80 00 00 */	li r4, 0
/* 801E3ED8 001D9C58  7C 09 03 A6 */	mtctr r0
lbl_801E3EDC:
/* 801E3EDC 001D9C5C  7C DC 22 14 */	add r6, r28, r4
/* 801E3EE0 001D9C60  80 06 00 98 */	lwz r0, 0x98(r6)
/* 801E3EE4 001D9C64  28 00 00 01 */	cmplwi r0, 1
/* 801E3EE8 001D9C68  40 82 00 54 */	bne lbl_801E3F3C
/* 801E3EEC 001D9C6C  38 00 00 01 */	li r0, 1
/* 801E3EF0 001D9C70  90 1D 00 00 */	stw r0, 0(r29)
/* 801E3EF4 001D9C74  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801E3EF8 001D9C78  2C 00 00 00 */	cmpwi r0, 0
/* 801E3EFC 001D9C7C  40 82 00 10 */	bne lbl_801E3F0C
/* 801E3F00 001D9C80  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 801E3F04 001D9C84  90 1F 00 00 */	stw r0, 0(r31)
/* 801E3F08 001D9C88  48 00 00 BC */	b lbl_801E3FC4
lbl_801E3F0C:
/* 801E3F0C 001D9C8C  38 A1 00 40 */	addi r5, r1, 0x40
/* 801E3F10 001D9C90  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 801E3F14 001D9C94  7C 85 22 14 */	add r4, r5, r4
/* 801E3F18 001D9C98  80 84 00 04 */	lwz r4, 4(r4)
/* 801E3F1C 001D9C9C  7C 04 00 40 */	cmplw r4, r0
/* 801E3F20 001D9CA0  41 80 00 10 */	blt lbl_801E3F30
/* 801E3F24 001D9CA4  38 00 00 00 */	li r0, 0
/* 801E3F28 001D9CA8  90 1F 00 00 */	stw r0, 0(r31)
/* 801E3F2C 001D9CAC  48 00 00 98 */	b lbl_801E3FC4
lbl_801E3F30:
/* 801E3F30 001D9CB0  7C 04 00 50 */	subf r0, r4, r0
/* 801E3F34 001D9CB4  90 1F 00 00 */	stw r0, 0(r31)
/* 801E3F38 001D9CB8  48 00 00 8C */	b lbl_801E3FC4
lbl_801E3F3C:
/* 801E3F3C 001D9CBC  2C 00 00 00 */	cmpwi r0, 0
/* 801E3F40 001D9CC0  41 82 00 08 */	beq lbl_801E3F48
/* 801E3F44 001D9CC4  3B C5 00 01 */	addi r30, r5, 1
lbl_801E3F48:
/* 801E3F48 001D9CC8  38 A5 00 01 */	addi r5, r5, 1
/* 801E3F4C 001D9CCC  38 84 00 08 */	addi r4, r4, 8
/* 801E3F50 001D9CD0  42 00 FF 8C */	bdnz lbl_801E3EDC
/* 801E3F54 001D9CD4  2C 1E 00 00 */	cmpwi r30, 0
/* 801E3F58 001D9CD8  40 82 00 18 */	bne lbl_801E3F70
/* 801E3F5C 001D9CDC  38 80 00 00 */	li r4, 0
/* 801E3F60 001D9CE0  38 00 FF FF */	li r0, -1
/* 801E3F64 001D9CE4  90 9D 00 00 */	stw r4, 0(r29)
/* 801E3F68 001D9CE8  90 1F 00 00 */	stw r0, 0(r31)
/* 801E3F6C 001D9CEC  48 00 00 58 */	b lbl_801E3FC4
lbl_801E3F70:
/* 801E3F70 001D9CF0  3B DE FF FF */	addi r30, r30, -1
/* 801E3F74 001D9CF4  57 C6 18 38 */	slwi r6, r30, 3
/* 801E3F78 001D9CF8  7C 9C 32 14 */	add r4, r28, r6
/* 801E3F7C 001D9CFC  80 04 00 98 */	lwz r0, 0x98(r4)
/* 801E3F80 001D9D00  28 00 00 04 */	cmplwi r0, 4
/* 801E3F84 001D9D04  40 82 00 38 */	bne lbl_801E3FBC
/* 801E3F88 001D9D08  38 00 00 04 */	li r0, 4
/* 801E3F8C 001D9D0C  90 1D 00 00 */	stw r0, 0(r29)
/* 801E3F90 001D9D10  80 A4 00 9C */	lwz r5, 0x9c(r4)
/* 801E3F94 001D9D14  90 BF 00 00 */	stw r5, 0(r31)
/* 801E3F98 001D9D18  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801E3F9C 001D9D1C  2C 00 00 00 */	cmpwi r0, 0
/* 801E3FA0 001D9D20  41 82 00 24 */	beq lbl_801E3FC4
/* 801E3FA4 001D9D24  38 01 00 40 */	addi r0, r1, 0x40
/* 801E3FA8 001D9D28  7C 80 32 14 */	add r4, r0, r6
/* 801E3FAC 001D9D2C  80 04 00 04 */	lwz r0, 4(r4)
/* 801E3FB0 001D9D30  7C 00 28 50 */	subf r0, r0, r5
/* 801E3FB4 001D9D34  90 1F 00 00 */	stw r0, 0(r31)
/* 801E3FB8 001D9D38  48 00 00 0C */	b lbl_801E3FC4
lbl_801E3FBC:
/* 801E3FBC 001D9D3C  38 00 00 09 */	li r0, 9
/* 801E3FC0 001D9D40  90 1D 00 00 */	stw r0, 0(r29)
lbl_801E3FC4:
/* 801E3FC4 001D9D44  81 41 00 00 */	lwz r10, 0(r1)
/* 801E3FC8 001D9D48  80 0A 00 04 */	lwz r0, 4(r10)
/* 801E3FCC 001D9D4C  83 EA FF FC */	lwz r31, -4(r10)
/* 801E3FD0 001D9D50  83 CA FF F8 */	lwz r30, -8(r10)
/* 801E3FD4 001D9D54  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 801E3FD8 001D9D58  83 8A FF F0 */	lwz r28, -0x10(r10)
/* 801E3FDC 001D9D5C  7C 08 03 A6 */	mtlr r0
/* 801E3FE0 001D9D60  7D 41 53 78 */	mr r1, r10
/* 801E3FE4 001D9D64  4E 80 00 20 */	blr 

.global __OSInitPlayTime
__OSInitPlayTime:
/* 801E3FE8 001D9D68  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 801E3FEC 001D9D6C  7C 2C 0B 78 */	mr r12, r1
/* 801E3FF0 001D9D70  21 6B FE C0 */	subfic r11, r11, -320
/* 801E3FF4 001D9D74  7C 21 59 6E */	stwux r1, r1, r11
/* 801E3FF8 001D9D78  7C 08 02 A6 */	mflr r0
/* 801E3FFC 001D9D7C  38 60 00 00 */	li r3, 0
/* 801E4000 001D9D80  90 0C 00 04 */	stw r0, 4(r12)
/* 801E4004 001D9D84  38 00 00 01 */	li r0, 1
/* 801E4008 001D9D88  93 EC FF FC */	stw r31, -4(r12)
/* 801E400C 001D9D8C  90 6D C3 44 */	stw r3, lbl_805A0764-_SDA_BASE_(r13)
/* 801E4010 001D9D90  90 6D C3 40 */	stw r3, lbl_805A0760-_SDA_BASE_(r13)
/* 801E4014 001D9D94  90 6D C3 38 */	stw r3, lbl_805A0758-_SDA_BASE_(r13)
/* 801E4018 001D9D98  90 0D C3 34 */	stw r0, lbl_805A0754-_SDA_BASE_(r13)
/* 801E401C 001D9D9C  48 02 D0 65 */	bl ESP_InitLib
/* 801E4020 001D9DA0  2C 03 00 00 */	cmpwi r3, 0
/* 801E4024 001D9DA4  41 82 00 08 */	beq lbl_801E402C
/* 801E4028 001D9DA8  48 00 00 FC */	b lbl_801E4124
lbl_801E402C:
/* 801E402C 001D9DAC  38 81 00 40 */	addi r4, r1, 0x40
/* 801E4030 001D9DB0  38 60 00 00 */	li r3, 0
/* 801E4034 001D9DB4  48 02 D3 AD */	bl ESP_DiGetTicketView
/* 801E4038 001D9DB8  2C 03 FC 07 */	cmpwi r3, -1017
/* 801E403C 001D9DBC  41 82 00 20 */	beq lbl_801E405C
/* 801E4040 001D9DC0  2C 03 00 00 */	cmpwi r3, 0
/* 801E4044 001D9DC4  41 82 00 08 */	beq lbl_801E404C
/* 801E4048 001D9DC8  48 00 00 14 */	b lbl_801E405C
lbl_801E404C:
/* 801E404C 001D9DCC  38 61 00 40 */	addi r3, r1, 0x40
/* 801E4050 001D9DD0  38 81 00 20 */	addi r4, r1, 0x20
/* 801E4054 001D9DD4  38 A1 00 24 */	addi r5, r1, 0x24
/* 801E4058 001D9DD8  4B FF FD C9 */	bl __OSGetPlayTime
lbl_801E405C:
/* 801E405C 001D9DDC  2C 03 00 00 */	cmpwi r3, 0
/* 801E4060 001D9DE0  41 82 00 10 */	beq lbl_801E4070
/* 801E4064 001D9DE4  2C 03 FC 07 */	cmpwi r3, -1017
/* 801E4068 001D9DE8  41 82 00 BC */	beq lbl_801E4124
/* 801E406C 001D9DEC  48 00 00 B8 */	b lbl_801E4124
lbl_801E4070:
/* 801E4070 001D9DF0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801E4074 001D9DF4  2C 00 00 00 */	cmpwi r0, 0
/* 801E4078 001D9DF8  41 82 00 AC */	beq lbl_801E4124
/* 801E407C 001D9DFC  2C 00 00 01 */	cmpwi r0, 1
/* 801E4080 001D9E00  40 82 00 A4 */	bne lbl_801E4124
/* 801E4084 001D9E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E4088 001D9E08  2C 00 00 00 */	cmpwi r0, 0
/* 801E408C 001D9E0C  40 82 00 1C */	bne lbl_801E40A8
/* 801E4090 001D9E10  3C 60 80 47 */	lis r3, lbl_80474DDC@ha
/* 801E4094 001D9E14  38 80 03 07 */	li r4, 0x307
/* 801E4098 001D9E18  38 63 4D DC */	addi r3, r3, lbl_80474DDC@l
/* 801E409C 001D9E1C  38 AD A5 E8 */	addi r5, r13, lbl_8059EA08-_SDA_BASE_
/* 801E40A0 001D9E20  4C C6 31 82 */	crclr 6
/* 801E40A4 001D9E24  4B FF 45 ED */	bl OSPanic
lbl_801E40A8:
/* 801E40A8 001D9E28  3F E0 80 4E */	lis r31, lbl_804DE240@ha
/* 801E40AC 001D9E2C  38 7F E2 40 */	addi r3, r31, lbl_804DE240@l
/* 801E40B0 001D9E30  4B FF 25 E9 */	bl OSCreateAlarm
/* 801E40B4 001D9E34  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 801E40B8 001D9E38  3C E0 80 1E */	lis r7, __OSPlayTimeAlarmExpired@ha
/* 801E40BC 001D9E3C  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 801E40C0 001D9E40  38 80 00 01 */	li r4, 1
/* 801E40C4 001D9E44  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801E40C8 001D9E48  39 20 00 00 */	li r9, 0
/* 801E40CC 001D9E4C  54 06 F0 BE */	srwi r6, r0, 2
/* 801E40D0 001D9E50  38 7F E2 40 */	addi r3, r31, -7616
/* 801E40D4 001D9E54  7D 05 20 14 */	addc r8, r5, r4
/* 801E40D8 001D9E58  38 E7 3D 04 */	addi r7, r7, __OSPlayTimeAlarmExpired@l
/* 801E40DC 001D9E5C  7C 09 49 14 */	adde r0, r9, r9
/* 801E40E0 001D9E60  7C A0 31 D6 */	mullw r5, r0, r6
/* 801E40E4 001D9E64  7C 88 30 16 */	mulhwu r4, r8, r6
/* 801E40E8 001D9E68  7C 08 49 D6 */	mullw r0, r8, r9
/* 801E40EC 001D9E6C  7C 84 2A 14 */	add r4, r4, r5
/* 801E40F0 001D9E70  7C C8 31 D6 */	mullw r6, r8, r6
/* 801E40F4 001D9E74  7C A4 02 14 */	add r5, r4, r0
/* 801E40F8 001D9E78  4B FF 28 01 */	bl OSSetAlarm
/* 801E40FC 001D9E7C  38 9F E2 40 */	addi r4, r31, -7616
/* 801E4100 001D9E80  3C 60 80 47 */	lis r3, lbl_80474DEC@ha
/* 801E4104 001D9E84  80 04 00 08 */	lwz r0, 8(r4)
/* 801E4108 001D9E88  38 63 4D EC */	addi r3, r3, lbl_80474DEC@l
/* 801E410C 001D9E8C  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 801E4110 001D9E90  90 0D C3 40 */	stw r0, lbl_805A0760-_SDA_BASE_(r13)
/* 801E4114 001D9E94  80 81 00 24 */	lwz r4, 0x24(r1)
/* 801E4118 001D9E98  90 AD C3 44 */	stw r5, lbl_805A0764-_SDA_BASE_(r13)
/* 801E411C 001D9E9C  4C C6 31 82 */	crclr 6
/* 801E4120 001D9EA0  4B FF 44 E1 */	bl OSReport
lbl_801E4124:
/* 801E4124 001D9EA4  48 02 CF B1 */	bl ESP_CloseLib
/* 801E4128 001D9EA8  81 41 00 00 */	lwz r10, 0(r1)
/* 801E412C 001D9EAC  80 0A 00 04 */	lwz r0, 4(r10)
/* 801E4130 001D9EB0  83 EA FF FC */	lwz r31, -4(r10)
/* 801E4134 001D9EB4  7C 08 03 A6 */	mtlr r0
/* 801E4138 001D9EB8  7D 41 53 78 */	mr r1, r10
/* 801E413C 001D9EBC  4E 80 00 20 */	blr 

