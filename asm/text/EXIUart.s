.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ProbeBarnacle
ProbeBarnacle:
/* 801E5A88 001DB808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E5A8C 001DB80C  7C 08 02 A6 */	mflr r0
/* 801E5A90 001DB810  2C 03 00 02 */	cmpwi r3, 2
/* 801E5A94 001DB814  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E5A98 001DB818  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E5A9C 001DB81C  7C BF 2B 78 */	mr r31, r5
/* 801E5AA0 001DB820  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E5AA4 001DB824  7C 9E 23 78 */	mr r30, r4
/* 801E5AA8 001DB828  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E5AAC 001DB82C  7C 7D 1B 78 */	mr r29, r3
/* 801E5AB0 001DB830  93 81 00 10 */	stw r28, 0x10(r1)
/* 801E5AB4 001DB834  41 82 00 24 */	beq lbl_801E5AD8
/* 801E5AB8 001DB838  2C 04 00 00 */	cmpwi r4, 0
/* 801E5ABC 001DB83C  40 82 00 1C */	bne lbl_801E5AD8
/* 801E5AC0 001DB840  38 80 00 00 */	li r4, 0
/* 801E5AC4 001DB844  4B FF F0 B9 */	bl EXIAttach
/* 801E5AC8 001DB848  2C 03 00 00 */	cmpwi r3, 0
/* 801E5ACC 001DB84C  40 82 00 0C */	bne lbl_801E5AD8
/* 801E5AD0 001DB850  38 60 00 00 */	li r3, 0
/* 801E5AD4 001DB854  48 00 01 0C */	b lbl_801E5BE0
lbl_801E5AD8:
/* 801E5AD8 001DB858  7F A3 EB 78 */	mr r3, r29
/* 801E5ADC 001DB85C  7F C4 F3 78 */	mr r4, r30
/* 801E5AE0 001DB860  38 A0 00 00 */	li r5, 0
/* 801E5AE4 001DB864  4B FF F9 FD */	bl EXILock
/* 801E5AE8 001DB868  7C 60 00 34 */	cntlzw r0, r3
/* 801E5AEC 001DB86C  54 1C D9 7F */	rlwinm. r28, r0, 0x1b, 5, 0x1f
/* 801E5AF0 001DB870  40 82 00 B4 */	bne lbl_801E5BA4
/* 801E5AF4 001DB874  7F A3 EB 78 */	mr r3, r29
/* 801E5AF8 001DB878  7F C4 F3 78 */	mr r4, r30
/* 801E5AFC 001DB87C  38 A0 00 00 */	li r5, 0
/* 801E5B00 001DB880  4B FF F2 4D */	bl EXISelect
/* 801E5B04 001DB884  7C 60 00 34 */	cntlzw r0, r3
/* 801E5B08 001DB888  54 1C D9 7F */	rlwinm. r28, r0, 0x1b, 5, 0x1f
/* 801E5B0C 001DB88C  40 82 00 90 */	bne lbl_801E5B9C
/* 801E5B10 001DB890  3C 80 20 01 */	lis r4, 0x20011300@ha
/* 801E5B14 001DB894  7F A3 EB 78 */	mr r3, r29
/* 801E5B18 001DB898  38 04 13 00 */	addi r0, r4, 0x20011300@l
/* 801E5B1C 001DB89C  38 A0 00 04 */	li r5, 4
/* 801E5B20 001DB8A0  90 01 00 08 */	stw r0, 8(r1)
/* 801E5B24 001DB8A4  38 81 00 08 */	addi r4, r1, 8
/* 801E5B28 001DB8A8  38 C0 00 01 */	li r6, 1
/* 801E5B2C 001DB8AC  38 E0 00 00 */	li r7, 0
/* 801E5B30 001DB8B0  4B FF E7 B5 */	bl EXIImm
/* 801E5B34 001DB8B4  7C 60 00 34 */	cntlzw r0, r3
/* 801E5B38 001DB8B8  7F A3 EB 78 */	mr r3, r29
/* 801E5B3C 001DB8BC  54 1C D9 7E */	srwi r28, r0, 5
/* 801E5B40 001DB8C0  4B FF EB BD */	bl EXISync
/* 801E5B44 001DB8C4  7C 60 00 34 */	cntlzw r0, r3
/* 801E5B48 001DB8C8  7F A3 EB 78 */	mr r3, r29
/* 801E5B4C 001DB8CC  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5B50 001DB8D0  7F E4 FB 78 */	mr r4, r31
/* 801E5B54 001DB8D4  7F 9C 03 78 */	or r28, r28, r0
/* 801E5B58 001DB8D8  38 A0 00 04 */	li r5, 4
/* 801E5B5C 001DB8DC  38 C0 00 00 */	li r6, 0
/* 801E5B60 001DB8E0  38 E0 00 00 */	li r7, 0
/* 801E5B64 001DB8E4  4B FF E7 81 */	bl EXIImm
/* 801E5B68 001DB8E8  7C 60 00 34 */	cntlzw r0, r3
/* 801E5B6C 001DB8EC  7F A3 EB 78 */	mr r3, r29
/* 801E5B70 001DB8F0  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5B74 001DB8F4  7F 9C 03 78 */	or r28, r28, r0
/* 801E5B78 001DB8F8  4B FF EB 85 */	bl EXISync
/* 801E5B7C 001DB8FC  7C 60 00 34 */	cntlzw r0, r3
/* 801E5B80 001DB900  7F A3 EB 78 */	mr r3, r29
/* 801E5B84 001DB904  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5B88 001DB908  7F 9C 03 78 */	or r28, r28, r0
/* 801E5B8C 001DB90C  4B FF F2 F1 */	bl EXIDeselect
/* 801E5B90 001DB910  7C 60 00 34 */	cntlzw r0, r3
/* 801E5B94 001DB914  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5B98 001DB918  7F 9C 03 78 */	or r28, r28, r0
lbl_801E5B9C:
/* 801E5B9C 001DB91C  7F A3 EB 78 */	mr r3, r29
/* 801E5BA0 001DB920  4B FF FA 3D */	bl EXIUnlock
lbl_801E5BA4:
/* 801E5BA4 001DB924  2C 1D 00 02 */	cmpwi r29, 2
/* 801E5BA8 001DB928  41 82 00 14 */	beq lbl_801E5BBC
/* 801E5BAC 001DB92C  2C 1E 00 00 */	cmpwi r30, 0
/* 801E5BB0 001DB930  40 82 00 0C */	bne lbl_801E5BBC
/* 801E5BB4 001DB934  7F A3 EB 78 */	mr r3, r29
/* 801E5BB8 001DB938  4B FF F0 DD */	bl EXIDetach
lbl_801E5BBC:
/* 801E5BBC 001DB93C  2C 1C 00 00 */	cmpwi r28, 0
/* 801E5BC0 001DB940  41 82 00 0C */	beq lbl_801E5BCC
/* 801E5BC4 001DB944  38 60 00 00 */	li r3, 0
/* 801E5BC8 001DB948  48 00 00 18 */	b lbl_801E5BE0
lbl_801E5BCC:
/* 801E5BCC 001DB94C  80 9F 00 00 */	lwz r4, 0(r31)
/* 801E5BD0 001DB950  20 64 FF FF */	subfic r3, r4, -1
/* 801E5BD4 001DB954  38 04 00 01 */	addi r0, r4, 1
/* 801E5BD8 001DB958  7C 60 03 78 */	or r0, r3, r0
/* 801E5BDC 001DB95C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801E5BE0:
/* 801E5BE0 001DB960  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E5BE4 001DB964  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E5BE8 001DB968  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E5BEC 001DB96C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E5BF0 001DB970  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801E5BF4 001DB974  7C 08 03 A6 */	mtlr r0
/* 801E5BF8 001DB978  38 21 00 20 */	addi r1, r1, 0x20
/* 801E5BFC 001DB97C  4E 80 00 20 */	blr 

.global __OSEnableBarnacle
__OSEnableBarnacle:
/* 801E5C00 001DB980  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E5C04 001DB984  7C 08 02 A6 */	mflr r0
/* 801E5C08 001DB988  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E5C0C 001DB98C  38 A1 00 08 */	addi r5, r1, 8
/* 801E5C10 001DB990  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E5C14 001DB994  7C 9F 23 78 */	mr r31, r4
/* 801E5C18 001DB998  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E5C1C 001DB99C  7C 7E 1B 78 */	mr r30, r3
/* 801E5C20 001DB9A0  4B FF FA BD */	bl EXIGetID
/* 801E5C24 001DB9A4  2C 03 00 00 */	cmpwi r3, 0
/* 801E5C28 001DB9A8  41 82 01 7C */	beq lbl_801E5DA4
/* 801E5C2C 001DB9AC  80 81 00 08 */	lwz r4, 8(r1)
/* 801E5C30 001DB9B0  3C 00 01 02 */	lis r0, 0x102
/* 801E5C34 001DB9B4  7C 04 00 00 */	cmpw r4, r0
/* 801E5C38 001DB9B8  41 82 01 6C */	beq lbl_801E5DA4
/* 801E5C3C 001DB9BC  40 80 00 94 */	bge lbl_801E5CD0
/* 801E5C40 001DB9C0  2C 04 00 04 */	cmpwi r4, 4
/* 801E5C44 001DB9C4  41 82 01 60 */	beq lbl_801E5DA4
/* 801E5C48 001DB9C8  40 80 00 54 */	bge lbl_801E5C9C
/* 801E5C4C 001DB9CC  3C 60 80 00 */	lis r3, 0x80000010@ha
/* 801E5C50 001DB9D0  38 03 00 10 */	addi r0, r3, 0x80000010@l
/* 801E5C54 001DB9D4  7C 04 00 00 */	cmpw r4, r0
/* 801E5C58 001DB9D8  41 82 01 4C */	beq lbl_801E5DA4
/* 801E5C5C 001DB9DC  40 80 00 24 */	bge lbl_801E5C80
/* 801E5C60 001DB9E0  38 03 00 08 */	addi r0, r3, 8
/* 801E5C64 001DB9E4  7C 04 00 00 */	cmpw r4, r0
/* 801E5C68 001DB9E8  41 82 01 3C */	beq lbl_801E5DA4
/* 801E5C6C 001DB9EC  40 80 01 08 */	bge lbl_801E5D74
/* 801E5C70 001DB9F0  38 03 00 04 */	addi r0, r3, 4
/* 801E5C74 001DB9F4  7C 04 00 00 */	cmpw r4, r0
/* 801E5C78 001DB9F8  41 82 01 2C */	beq lbl_801E5DA4
/* 801E5C7C 001DB9FC  48 00 00 F8 */	b lbl_801E5D74
lbl_801E5C80:
/* 801E5C80 001DBA00  2C 04 FF FF */	cmpwi r4, -1
/* 801E5C84 001DBA04  41 82 01 20 */	beq lbl_801E5DA4
/* 801E5C88 001DBA08  40 80 00 EC */	bge lbl_801E5D74
/* 801E5C8C 001DBA0C  38 03 00 20 */	addi r0, r3, 0x20
/* 801E5C90 001DBA10  7C 04 00 00 */	cmpw r4, r0
/* 801E5C94 001DBA14  41 82 01 10 */	beq lbl_801E5DA4
/* 801E5C98 001DBA18  48 00 00 DC */	b lbl_801E5D74
lbl_801E5C9C:
/* 801E5C9C 001DBA1C  2C 04 00 20 */	cmpwi r4, 0x20
/* 801E5CA0 001DBA20  41 82 01 04 */	beq lbl_801E5DA4
/* 801E5CA4 001DBA24  40 80 00 1C */	bge lbl_801E5CC0
/* 801E5CA8 001DBA28  2C 04 00 10 */	cmpwi r4, 0x10
/* 801E5CAC 001DBA2C  41 82 00 F8 */	beq lbl_801E5DA4
/* 801E5CB0 001DBA30  40 80 00 C4 */	bge lbl_801E5D74
/* 801E5CB4 001DBA34  2C 04 00 08 */	cmpwi r4, 8
/* 801E5CB8 001DBA38  41 82 00 EC */	beq lbl_801E5DA4
/* 801E5CBC 001DBA3C  48 00 00 B8 */	b lbl_801E5D74
lbl_801E5CC0:
/* 801E5CC0 001DBA40  3C 00 01 01 */	lis r0, 0x101
/* 801E5CC4 001DBA44  7C 04 00 00 */	cmpw r4, r0
/* 801E5CC8 001DBA48  41 82 00 DC */	beq lbl_801E5DA4
/* 801E5CCC 001DBA4C  48 00 00 A8 */	b lbl_801E5D74
lbl_801E5CD0:
/* 801E5CD0 001DBA50  3C 60 04 04 */	lis r3, 0x04040404@ha
/* 801E5CD4 001DBA54  38 03 04 04 */	addi r0, r3, 0x04040404@l
/* 801E5CD8 001DBA58  7C 04 00 00 */	cmpw r4, r0
/* 801E5CDC 001DBA5C  41 82 00 C8 */	beq lbl_801E5DA4
/* 801E5CE0 001DBA60  40 80 00 58 */	bge lbl_801E5D38
/* 801E5CE4 001DBA64  3C 60 04 02 */	lis r3, 0x04020100@ha
/* 801E5CE8 001DBA68  38 03 01 00 */	addi r0, r3, 0x04020100@l
/* 801E5CEC 001DBA6C  7C 04 00 00 */	cmpw r4, r0
/* 801E5CF0 001DBA70  41 82 00 B4 */	beq lbl_801E5DA4
/* 801E5CF4 001DBA74  40 80 00 24 */	bge lbl_801E5D18
/* 801E5CF8 001DBA78  3C 00 03 01 */	lis r0, 0x301
/* 801E5CFC 001DBA7C  7C 04 00 00 */	cmpw r4, r0
/* 801E5D00 001DBA80  41 82 00 A4 */	beq lbl_801E5DA4
/* 801E5D04 001DBA84  40 80 00 70 */	bge lbl_801E5D74
/* 801E5D08 001DBA88  3C 00 02 02 */	lis r0, 0x202
/* 801E5D0C 001DBA8C  7C 04 00 00 */	cmpw r4, r0
/* 801E5D10 001DBA90  41 82 00 94 */	beq lbl_801E5DA4
/* 801E5D14 001DBA94  48 00 00 60 */	b lbl_801E5D74
lbl_801E5D18:
/* 801E5D18 001DBA98  38 03 03 00 */	addi r0, r3, 0x300
/* 801E5D1C 001DBA9C  7C 04 00 00 */	cmpw r4, r0
/* 801E5D20 001DBAA0  41 82 00 84 */	beq lbl_801E5DA4
/* 801E5D24 001DBAA4  40 80 00 50 */	bge lbl_801E5D74
/* 801E5D28 001DBAA8  38 03 02 00 */	addi r0, r3, 0x200
/* 801E5D2C 001DBAAC  7C 04 00 00 */	cmpw r4, r0
/* 801E5D30 001DBAB0  41 82 00 74 */	beq lbl_801E5DA4
/* 801E5D34 001DBAB4  48 00 00 40 */	b lbl_801E5D74
lbl_801E5D38:
/* 801E5D38 001DBAB8  3C 00 04 13 */	lis r0, 0x413
/* 801E5D3C 001DBABC  7C 04 00 00 */	cmpw r4, r0
/* 801E5D40 001DBAC0  41 82 00 64 */	beq lbl_801E5DA4
/* 801E5D44 001DBAC4  40 80 00 24 */	bge lbl_801E5D68
/* 801E5D48 001DBAC8  3C 00 04 12 */	lis r0, 0x412
/* 801E5D4C 001DBACC  7C 04 00 00 */	cmpw r4, r0
/* 801E5D50 001DBAD0  41 82 00 54 */	beq lbl_801E5DA4
/* 801E5D54 001DBAD4  40 80 00 20 */	bge lbl_801E5D74
/* 801E5D58 001DBAD8  3C 00 04 06 */	lis r0, 0x406
/* 801E5D5C 001DBADC  7C 04 00 00 */	cmpw r4, r0
/* 801E5D60 001DBAE0  41 82 00 44 */	beq lbl_801E5DA4
/* 801E5D64 001DBAE4  48 00 00 10 */	b lbl_801E5D74
lbl_801E5D68:
/* 801E5D68 001DBAE8  3C 00 04 22 */	lis r0, 0x422
/* 801E5D6C 001DBAEC  7C 04 00 00 */	cmpw r4, r0
/* 801E5D70 001DBAF0  41 82 00 34 */	beq lbl_801E5DA4
lbl_801E5D74:
/* 801E5D74 001DBAF4  7F C3 F3 78 */	mr r3, r30
/* 801E5D78 001DBAF8  7F E4 FB 78 */	mr r4, r31
/* 801E5D7C 001DBAFC  38 A1 00 08 */	addi r5, r1, 8
/* 801E5D80 001DBB00  4B FF FD 09 */	bl ProbeBarnacle
/* 801E5D84 001DBB04  2C 03 00 00 */	cmpwi r3, 0
/* 801E5D88 001DBB08  41 82 00 1C */	beq lbl_801E5DA4
/* 801E5D8C 001DBB0C  3C 60 A5 FF */	lis r3, 0xA5FF005A@ha
/* 801E5D90 001DBB10  93 CD C3 5C */	stw r30, lbl_805A077C-_SDA_BASE_(r13)
/* 801E5D94 001DBB14  38 03 00 5A */	addi r0, r3, 0xA5FF005A@l
/* 801E5D98 001DBB18  93 ED C3 58 */	stw r31, lbl_805A0778-_SDA_BASE_(r13)
/* 801E5D9C 001DBB1C  90 0D C3 54 */	stw r0, lbl_805A0774-_SDA_BASE_(r13)
/* 801E5DA0 001DBB20  90 0D C3 50 */	stw r0, lbl_805A0770-_SDA_BASE_(r13)
lbl_801E5DA4:
/* 801E5DA4 001DBB24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E5DA8 001DBB28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E5DAC 001DBB2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E5DB0 001DBB30  7C 08 03 A6 */	mtlr r0
/* 801E5DB4 001DBB34  38 21 00 20 */	addi r1, r1, 0x20
/* 801E5DB8 001DBB38  4E 80 00 20 */	blr 

