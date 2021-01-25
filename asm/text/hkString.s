.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkString$7toLower
hkString$7toLower:
/* 8028193C 002776BC  7C 60 07 74 */	extsb r0, r3
/* 80281940 002776C0  38 80 00 00 */	li r4, 0
/* 80281944 002776C4  2C 00 00 41 */	cmpwi r0, 0x41
/* 80281948 002776C8  41 80 00 10 */	blt lbl_80281958
/* 8028194C 002776CC  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80281950 002776D0  41 81 00 08 */	bgt lbl_80281958
/* 80281954 002776D4  38 80 00 01 */	li r4, 1
lbl_80281958:
/* 80281958 002776D8  2C 04 00 00 */	cmpwi r4, 0
/* 8028195C 002776DC  4D 82 00 20 */	beqlr 
/* 80281960 002776E0  38 03 00 20 */	addi r0, r3, 0x20
/* 80281964 002776E4  7C 03 07 74 */	extsb r3, r0
/* 80281968 002776E8  4E 80 00 20 */	blr 

.global hkString$7vsnprintf
hkString$7vsnprintf:
/* 8028196C 002776EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80281970 002776F0  7C 08 02 A6 */	mflr r0
/* 80281974 002776F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80281978 002776F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8028197C 002776FC  7C BF 2B 78 */	mr r31, r5
/* 80281980 00277700  38 A0 00 0C */	li r5, 0xc
/* 80281984 00277704  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80281988 00277708  7C 9E 23 78 */	mr r30, r4
/* 8028198C 0027770C  7C C4 33 78 */	mr r4, r6
/* 80281990 00277710  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80281994 00277714  7C 7D 1B 78 */	mr r29, r3
/* 80281998 00277718  38 61 00 08 */	addi r3, r1, 8
/* 8028199C 0027771C  48 00 02 21 */	bl hkString$7memCpy
/* 802819A0 00277720  7F A3 EB 78 */	mr r3, r29
/* 802819A4 00277724  7F C4 F3 78 */	mr r4, r30
/* 802819A8 00277728  7F E5 FB 78 */	mr r5, r31
/* 802819AC 0027772C  38 C1 00 08 */	addi r6, r1, 8
/* 802819B0 00277730  48 17 6E 71 */	bl vsnprintf
/* 802819B4 00277734  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802819B8 00277738  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802819BC 0027773C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802819C0 00277740  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802819C4 00277744  7C 08 03 A6 */	mtlr r0
/* 802819C8 00277748  38 21 00 30 */	addi r1, r1, 0x30
/* 802819CC 0027774C  4E 80 00 20 */	blr 

.global hkString$7snprintf
hkString$7snprintf:
/* 802819D0 00277750  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802819D4 00277754  7C 08 02 A6 */	mflr r0
/* 802819D8 00277758  90 01 00 84 */	stw r0, 0x84(r1)
/* 802819DC 0027775C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802819E0 00277760  40 86 00 24 */	bne cr1, lbl_80281A04
/* 802819E4 00277764  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 802819E8 00277768  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 802819EC 0027776C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 802819F0 00277770  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 802819F4 00277774  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 802819F8 00277778  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 802819FC 0027777C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80281A00 00277780  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80281A04:
/* 80281A04 00277784  39 61 00 88 */	addi r11, r1, 0x88
/* 80281A08 00277788  38 01 00 08 */	addi r0, r1, 8
/* 80281A0C 0027778C  3D 80 03 00 */	lis r12, 0x300
/* 80281A10 00277790  90 61 00 08 */	stw r3, 8(r1)
/* 80281A14 00277794  3B E1 00 68 */	addi r31, r1, 0x68
/* 80281A18 00277798  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80281A1C 0027779C  7F E6 FB 78 */	mr r6, r31
/* 80281A20 002777A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80281A24 002777A4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80281A28 002777A8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80281A2C 002777AC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80281A30 002777B0  91 21 00 20 */	stw r9, 0x20(r1)
/* 80281A34 002777B4  91 41 00 24 */	stw r10, 0x24(r1)
/* 80281A38 002777B8  91 81 00 68 */	stw r12, 0x68(r1)
/* 80281A3C 002777BC  91 61 00 6C */	stw r11, 0x6c(r1)
/* 80281A40 002777C0  90 01 00 70 */	stw r0, 0x70(r1)
/* 80281A44 002777C4  48 17 6D DD */	bl vsnprintf
/* 80281A48 002777C8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80281A4C 002777CC  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80281A50 002777D0  7C 08 03 A6 */	mtlr r0
/* 80281A54 002777D4  38 21 00 80 */	addi r1, r1, 0x80
/* 80281A58 002777D8  4E 80 00 20 */	blr 

.global hkString$7sprintf
hkString$7sprintf:
/* 80281A5C 002777DC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80281A60 002777E0  7C 08 02 A6 */	mflr r0
/* 80281A64 002777E4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80281A68 002777E8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80281A6C 002777EC  40 86 00 24 */	bne cr1, lbl_80281A90
/* 80281A70 002777F0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80281A74 002777F4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80281A78 002777F8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80281A7C 002777FC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80281A80 00277800  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80281A84 00277804  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80281A88 00277808  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80281A8C 0027780C  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80281A90:
/* 80281A90 00277810  39 61 00 88 */	addi r11, r1, 0x88
/* 80281A94 00277814  38 01 00 08 */	addi r0, r1, 8
/* 80281A98 00277818  3D 80 02 00 */	lis r12, 0x200
/* 80281A9C 0027781C  90 61 00 08 */	stw r3, 8(r1)
/* 80281AA0 00277820  3B E1 00 68 */	addi r31, r1, 0x68
/* 80281AA4 00277824  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80281AA8 00277828  7F E5 FB 78 */	mr r5, r31
/* 80281AAC 0027782C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80281AB0 00277830  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80281AB4 00277834  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80281AB8 00277838  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80281ABC 0027783C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80281AC0 00277840  91 41 00 24 */	stw r10, 0x24(r1)
/* 80281AC4 00277844  91 81 00 68 */	stw r12, 0x68(r1)
/* 80281AC8 00277848  91 61 00 6C */	stw r11, 0x6c(r1)
/* 80281ACC 0027784C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80281AD0 00277850  48 17 6D D5 */	bl vsprintf
/* 80281AD4 00277854  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80281AD8 00277858  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80281ADC 0027785C  7C 08 03 A6 */	mtlr r0
/* 80281AE0 00277860  38 21 00 80 */	addi r1, r1, 0x80
/* 80281AE4 00277864  4E 80 00 20 */	blr 

.global hkString$7strCmp
hkString$7strCmp:
/* 80281AE8 00277868  48 17 89 14 */	b strcmp

.global hkString$7strCasecmp
hkString$7strCasecmp:
/* 80281AEC 0027786C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281AF0 00277870  7C 08 02 A6 */	mflr r0
/* 80281AF4 00277874  90 01 00 24 */	stw r0, 0x24(r1)
/* 80281AF8 00277878  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80281AFC 0027787C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80281B00 00277880  3B C0 00 00 */	li r30, 0
/* 80281B04 00277884  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80281B08 00277888  7C 9D 23 78 */	mr r29, r4
/* 80281B0C 0027788C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80281B10 00277890  7C 7C 1B 78 */	mr r28, r3
/* 80281B14 00277894  48 00 00 68 */	b lbl_80281B7C
lbl_80281B18:
/* 80281B18 00277898  7C 1D F0 AE */	lbzx r0, r29, r30
/* 80281B1C 0027789C  7C 03 07 74 */	extsb r3, r0
/* 80281B20 002778A0  4B FF FE 1D */	bl hkString$7toLower
/* 80281B24 002778A4  7C 1C F0 AE */	lbzx r0, r28, r30
/* 80281B28 002778A8  7C 7F 07 74 */	extsb r31, r3
/* 80281B2C 002778AC  7C 03 07 74 */	extsb r3, r0
/* 80281B30 002778B0  4B FF FE 0D */	bl hkString$7toLower
/* 80281B34 002778B4  7C 60 07 74 */	extsb r0, r3
/* 80281B38 002778B8  7C 00 F8 00 */	cmpw r0, r31
/* 80281B3C 002778BC  40 80 00 0C */	bge lbl_80281B48
/* 80281B40 002778C0  38 60 FF FF */	li r3, -1
/* 80281B44 002778C4  48 00 00 54 */	b lbl_80281B98
lbl_80281B48:
/* 80281B48 002778C8  7C 1D F0 AE */	lbzx r0, r29, r30
/* 80281B4C 002778CC  7C 03 07 74 */	extsb r3, r0
/* 80281B50 002778D0  4B FF FD ED */	bl hkString$7toLower
/* 80281B54 002778D4  7C 1C F0 AE */	lbzx r0, r28, r30
/* 80281B58 002778D8  7C 7F 07 74 */	extsb r31, r3
/* 80281B5C 002778DC  7C 03 07 74 */	extsb r3, r0
/* 80281B60 002778E0  4B FF FD DD */	bl hkString$7toLower
/* 80281B64 002778E4  7C 60 07 74 */	extsb r0, r3
/* 80281B68 002778E8  7C 00 F8 00 */	cmpw r0, r31
/* 80281B6C 002778EC  40 81 00 0C */	ble lbl_80281B78
/* 80281B70 002778F0  38 60 00 01 */	li r3, 1
/* 80281B74 002778F4  48 00 00 24 */	b lbl_80281B98
lbl_80281B78:
/* 80281B78 002778F8  3B DE 00 01 */	addi r30, r30, 1
lbl_80281B7C:
/* 80281B7C 002778FC  7C 1C F0 AE */	lbzx r0, r28, r30
/* 80281B80 00277900  7C 00 07 75 */	extsb. r0, r0
/* 80281B84 00277904  40 82 FF 94 */	bne lbl_80281B18
/* 80281B88 00277908  7C 1D F0 AE */	lbzx r0, r29, r30
/* 80281B8C 0027790C  7C 00 07 75 */	extsb. r0, r0
/* 80281B90 00277910  40 82 FF 88 */	bne lbl_80281B18
/* 80281B94 00277914  38 60 00 00 */	li r3, 0
lbl_80281B98:
/* 80281B98 00277918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281B9C 0027791C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80281BA0 00277920  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80281BA4 00277924  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80281BA8 00277928  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80281BAC 0027792C  7C 08 03 A6 */	mtlr r0
/* 80281BB0 00277930  38 21 00 20 */	addi r1, r1, 0x20
/* 80281BB4 00277934  4E 80 00 20 */	blr 

.global hkString$7strLen
hkString$7strLen:
/* 80281BB8 00277938  48 16 EA 88 */	b strlen

.global hkString$7memCpy
hkString$7memCpy:
/* 80281BBC 0027793C  4B D8 27 7C */	b func_80004338

.global hkString$7memCpy16
hkString$7memCpy16:
/* 80281BC0 00277940  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 80281BC4 00277944  38 C0 00 00 */	li r6, 0
/* 80281BC8 00277948  4C 85 00 20 */	blelr cr1
/* 80281BCC 0027794C  2C 05 00 08 */	cmpwi r5, 8
/* 80281BD0 00277950  39 05 FF F8 */	addi r8, r5, -8
/* 80281BD4 00277954  40 81 01 4C */	ble lbl_80281D20
/* 80281BD8 00277958  39 20 00 00 */	li r9, 0
/* 80281BDC 0027795C  41 84 00 18 */	blt cr1, lbl_80281BF4
/* 80281BE0 00277960  3C E0 80 00 */	lis r7, 0x7FFFFFFE@ha
/* 80281BE4 00277964  38 07 FF FE */	addi r0, r7, 0x7FFFFFFE@l
/* 80281BE8 00277968  7C 05 00 00 */	cmpw r5, r0
/* 80281BEC 0027796C  41 81 00 08 */	bgt lbl_80281BF4
/* 80281BF0 00277970  39 20 00 01 */	li r9, 1
lbl_80281BF4:
/* 80281BF4 00277974  2C 09 00 00 */	cmpwi r9, 0
/* 80281BF8 00277978  41 82 01 28 */	beq lbl_80281D20
/* 80281BFC 0027797C  38 08 00 07 */	addi r0, r8, 7
/* 80281C00 00277980  54 00 E8 FE */	srwi r0, r0, 3
/* 80281C04 00277984  7C 09 03 A6 */	mtctr r0
/* 80281C08 00277988  2C 08 00 00 */	cmpwi r8, 0
/* 80281C0C 0027798C  40 81 01 14 */	ble lbl_80281D20
lbl_80281C10:
/* 80281C10 00277990  80 E4 00 00 */	lwz r7, 0(r4)
/* 80281C14 00277994  38 C6 00 08 */	addi r6, r6, 8
/* 80281C18 00277998  80 04 00 04 */	lwz r0, 4(r4)
/* 80281C1C 0027799C  90 E3 00 00 */	stw r7, 0(r3)
/* 80281C20 002779A0  80 E4 00 08 */	lwz r7, 8(r4)
/* 80281C24 002779A4  90 03 00 04 */	stw r0, 4(r3)
/* 80281C28 002779A8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80281C2C 002779AC  90 E3 00 08 */	stw r7, 8(r3)
/* 80281C30 002779B0  80 E4 00 10 */	lwz r7, 0x10(r4)
/* 80281C34 002779B4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80281C38 002779B8  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80281C3C 002779BC  90 E3 00 10 */	stw r7, 0x10(r3)
/* 80281C40 002779C0  80 E4 00 18 */	lwz r7, 0x18(r4)
/* 80281C44 002779C4  90 03 00 14 */	stw r0, 0x14(r3)
/* 80281C48 002779C8  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80281C4C 002779CC  90 E3 00 18 */	stw r7, 0x18(r3)
/* 80281C50 002779D0  80 E4 00 20 */	lwz r7, 0x20(r4)
/* 80281C54 002779D4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80281C58 002779D8  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80281C5C 002779DC  90 E3 00 20 */	stw r7, 0x20(r3)
/* 80281C60 002779E0  80 E4 00 28 */	lwz r7, 0x28(r4)
/* 80281C64 002779E4  90 03 00 24 */	stw r0, 0x24(r3)
/* 80281C68 002779E8  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80281C6C 002779EC  90 E3 00 28 */	stw r7, 0x28(r3)
/* 80281C70 002779F0  80 E4 00 30 */	lwz r7, 0x30(r4)
/* 80281C74 002779F4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80281C78 002779F8  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80281C7C 002779FC  90 E3 00 30 */	stw r7, 0x30(r3)
/* 80281C80 00277A00  80 E4 00 38 */	lwz r7, 0x38(r4)
/* 80281C84 00277A04  90 03 00 34 */	stw r0, 0x34(r3)
/* 80281C88 00277A08  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80281C8C 00277A0C  90 E3 00 38 */	stw r7, 0x38(r3)
/* 80281C90 00277A10  80 E4 00 40 */	lwz r7, 0x40(r4)
/* 80281C94 00277A14  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80281C98 00277A18  80 04 00 44 */	lwz r0, 0x44(r4)
/* 80281C9C 00277A1C  90 E3 00 40 */	stw r7, 0x40(r3)
/* 80281CA0 00277A20  80 E4 00 48 */	lwz r7, 0x48(r4)
/* 80281CA4 00277A24  90 03 00 44 */	stw r0, 0x44(r3)
/* 80281CA8 00277A28  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 80281CAC 00277A2C  90 E3 00 48 */	stw r7, 0x48(r3)
/* 80281CB0 00277A30  80 E4 00 50 */	lwz r7, 0x50(r4)
/* 80281CB4 00277A34  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80281CB8 00277A38  80 04 00 54 */	lwz r0, 0x54(r4)
/* 80281CBC 00277A3C  90 E3 00 50 */	stw r7, 0x50(r3)
/* 80281CC0 00277A40  80 E4 00 58 */	lwz r7, 0x58(r4)
/* 80281CC4 00277A44  90 03 00 54 */	stw r0, 0x54(r3)
/* 80281CC8 00277A48  80 04 00 5C */	lwz r0, 0x5c(r4)
/* 80281CCC 00277A4C  90 E3 00 58 */	stw r7, 0x58(r3)
/* 80281CD0 00277A50  80 E4 00 60 */	lwz r7, 0x60(r4)
/* 80281CD4 00277A54  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80281CD8 00277A58  80 04 00 64 */	lwz r0, 0x64(r4)
/* 80281CDC 00277A5C  90 E3 00 60 */	stw r7, 0x60(r3)
/* 80281CE0 00277A60  80 E4 00 68 */	lwz r7, 0x68(r4)
/* 80281CE4 00277A64  90 03 00 64 */	stw r0, 0x64(r3)
/* 80281CE8 00277A68  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 80281CEC 00277A6C  90 E3 00 68 */	stw r7, 0x68(r3)
/* 80281CF0 00277A70  80 E4 00 70 */	lwz r7, 0x70(r4)
/* 80281CF4 00277A74  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80281CF8 00277A78  80 04 00 74 */	lwz r0, 0x74(r4)
/* 80281CFC 00277A7C  90 E3 00 70 */	stw r7, 0x70(r3)
/* 80281D00 00277A80  80 E4 00 78 */	lwz r7, 0x78(r4)
/* 80281D04 00277A84  90 03 00 74 */	stw r0, 0x74(r3)
/* 80281D08 00277A88  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 80281D0C 00277A8C  38 84 00 80 */	addi r4, r4, 0x80
/* 80281D10 00277A90  90 E3 00 78 */	stw r7, 0x78(r3)
/* 80281D14 00277A94  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80281D18 00277A98  38 63 00 80 */	addi r3, r3, 0x80
/* 80281D1C 00277A9C  42 00 FE F4 */	bdnz lbl_80281C10
lbl_80281D20:
/* 80281D20 00277AA0  7C 06 28 50 */	subf r0, r6, r5
/* 80281D24 00277AA4  7C 09 03 A6 */	mtctr r0
/* 80281D28 00277AA8  7C 06 28 00 */	cmpw r6, r5
/* 80281D2C 00277AAC  4C 80 00 20 */	bgelr 
lbl_80281D30:
/* 80281D30 00277AB0  80 A4 00 00 */	lwz r5, 0(r4)
/* 80281D34 00277AB4  80 04 00 04 */	lwz r0, 4(r4)
/* 80281D38 00277AB8  90 A3 00 00 */	stw r5, 0(r3)
/* 80281D3C 00277ABC  80 A4 00 08 */	lwz r5, 8(r4)
/* 80281D40 00277AC0  90 03 00 04 */	stw r0, 4(r3)
/* 80281D44 00277AC4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80281D48 00277AC8  38 84 00 10 */	addi r4, r4, 0x10
/* 80281D4C 00277ACC  90 A3 00 08 */	stw r5, 8(r3)
/* 80281D50 00277AD0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80281D54 00277AD4  38 63 00 10 */	addi r3, r3, 0x10
/* 80281D58 00277AD8  42 00 FF D8 */	bdnz lbl_80281D30
/* 80281D5C 00277ADC  4E 80 00 20 */	blr 

.global hkString$7memMove
hkString$7memMove:
/* 80281D60 00277AE0  48 17 42 CC */	b memmove

.global hkString$7memSet
hkString$7memSet:
/* 80281D64 00277AE4  4B D8 26 D8 */	b func_8000443C

.global hkString3RepFv$7freeMemory
hkString3RepFv$7freeMemory:
/* 80281D68 00277AE8  7C 64 1B 78 */	mr r4, r3
/* 80281D6C 00277AEC  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80281D70 00277AF0  80 A4 00 04 */	lwz r5, 4(r4)
/* 80281D74 00277AF4  38 C0 00 14 */	li r6, 0x14
/* 80281D78 00277AF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80281D7C 00277AFC  38 A5 00 0D */	addi r5, r5, 0xd
/* 80281D80 00277B00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80281D84 00277B04  7D 89 03 A6 */	mtctr r12
/* 80281D88 00277B08  4E 80 04 20 */	bctr 

.global hkString3RepFi$7create
hkString3RepFi$7create:
/* 80281D8C 00277B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281D90 00277B10  7C 08 02 A6 */	mflr r0
/* 80281D94 00277B14  2C 03 00 33 */	cmpwi r3, 0x33
/* 80281D98 00277B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281D9C 00277B1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80281DA0 00277B20  93 C1 00 08 */	stw r30, 8(r1)
/* 80281DA4 00277B24  7C 7E 1B 78 */	mr r30, r3
/* 80281DA8 00277B28  7F DF F3 78 */	mr r31, r30
/* 80281DAC 00277B2C  40 80 00 08 */	bge lbl_80281DB4
/* 80281DB0 00277B30  3B E0 00 33 */	li r31, 0x33
lbl_80281DB4:
/* 80281DB4 00277B34  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80281DB8 00277B38  38 9F 00 0D */	addi r4, r31, 0xd
/* 80281DBC 00277B3C  38 A0 00 14 */	li r5, 0x14
/* 80281DC0 00277B40  81 83 00 00 */	lwz r12, 0(r3)
/* 80281DC4 00277B44  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80281DC8 00277B48  7D 89 03 A6 */	mtctr r12
/* 80281DCC 00277B4C  4E 80 04 21 */	bctrl 
/* 80281DD0 00277B50  93 C3 00 00 */	stw r30, 0(r3)
/* 80281DD4 00277B54  38 00 00 00 */	li r0, 0
/* 80281DD8 00277B58  93 E3 00 04 */	stw r31, 4(r3)
/* 80281DDC 00277B5C  90 03 00 08 */	stw r0, 8(r3)
/* 80281DE0 00277B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80281DE4 00277B64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80281DE8 00277B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281DEC 00277B6C  7C 08 03 A6 */	mtlr r0
/* 80281DF0 00277B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80281DF4 00277B74  4E 80 00 20 */	blr 

.global hkString$7beginsWith
hkString$7beginsWith:
/* 80281DF8 00277B78  38 E0 00 00 */	li r7, 0
/* 80281DFC 00277B7C  48 00 00 38 */	b lbl_80281E34
lbl_80281E00:
/* 80281E00 00277B80  80 A3 00 00 */	lwz r5, 0(r3)
/* 80281E04 00277B84  80 05 FF F4 */	lwz r0, -0xc(r5)
/* 80281E08 00277B88  7C 07 00 00 */	cmpw r7, r0
/* 80281E0C 00277B8C  40 80 00 18 */	bge lbl_80281E24
/* 80281E10 00277B90  7C A5 38 AE */	lbzx r5, r5, r7
/* 80281E14 00277B94  7C C0 07 74 */	extsb r0, r6
/* 80281E18 00277B98  7C A5 07 74 */	extsb r5, r5
/* 80281E1C 00277B9C  7C 05 00 00 */	cmpw r5, r0
/* 80281E20 00277BA0  41 82 00 0C */	beq lbl_80281E2C
lbl_80281E24:
/* 80281E24 00277BA4  38 60 00 00 */	li r3, 0
/* 80281E28 00277BA8  4E 80 00 20 */	blr 
lbl_80281E2C:
/* 80281E2C 00277BAC  38 E7 00 01 */	addi r7, r7, 1
/* 80281E30 00277BB0  38 84 00 01 */	addi r4, r4, 1
lbl_80281E34:
/* 80281E34 00277BB4  88 C4 00 00 */	lbz r6, 0(r4)
/* 80281E38 00277BB8  7C C0 07 75 */	extsb. r0, r6
/* 80281E3C 00277BBC  40 82 FF C4 */	bne lbl_80281E00
/* 80281E40 00277BC0  3C 60 01 00 */	lis r3, 0x100
/* 80281E44 00277BC4  4E 80 00 20 */	blr 
