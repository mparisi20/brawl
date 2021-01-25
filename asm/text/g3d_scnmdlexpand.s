.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d12ScnMdlExpandFP12MEMAlloc$7Construct
nw4r3g3d12ScnMdlExpandFP12MEMAlloc$7Construct:
/* 801B4AF4 001AA874  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B4AF8 001AA878  7C 08 02 A6 */	mflr r0
/* 801B4AFC 001AA87C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B4B00 001AA880  39 61 00 20 */	addi r11, r1, 0x20
/* 801B4B04 001AA884  48 23 C8 1D */	bl _savegpr_27
/* 801B4B08 001AA888  54 A7 10 3A */	slwi r7, r5, 2
/* 801B4B0C 001AA88C  2C 04 00 00 */	cmpwi r4, 0
/* 801B4B10 001AA890  38 07 00 F3 */	addi r0, r7, 0xf3
/* 801B4B14 001AA894  7C BD 2B 78 */	mr r29, r5
/* 801B4B18 001AA898  54 1C 00 3A */	rlwinm r28, r0, 0, 0, 0x1d
/* 801B4B1C 001AA89C  7C 7B 1B 78 */	mr r27, r3
/* 801B4B20 001AA8A0  7C BC 3A 14 */	add r5, r28, r7
/* 801B4B24 001AA8A4  7C DE 33 78 */	mr r30, r6
/* 801B4B28 001AA8A8  38 05 00 03 */	addi r0, r5, 3
/* 801B4B2C 001AA8AC  3B E0 00 00 */	li r31, 0
/* 801B4B30 001AA8B0  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 801B4B34 001AA8B4  41 82 00 08 */	beq lbl_801B4B3C
/* 801B4B38 001AA8B8  90 04 00 00 */	stw r0, 0(r4)
lbl_801B4B3C:
/* 801B4B3C 001AA8BC  2C 03 00 00 */	cmpwi r3, 0
/* 801B4B40 001AA8C0  41 82 01 54 */	beq lbl_801B4C94
/* 801B4B44 001AA8C4  7F 63 DB 78 */	mr r3, r27
/* 801B4B48 001AA8C8  7C 04 03 78 */	mr r4, r0
/* 801B4B4C 001AA8CC  48 05 03 11 */	bl MEMAllocFromAllocator
/* 801B4B50 001AA8D0  2C 03 00 00 */	cmpwi r3, 0
/* 801B4B54 001AA8D4  7C 7F 1B 78 */	mr r31, r3
/* 801B4B58 001AA8D8  40 82 00 0C */	bne lbl_801B4B64
/* 801B4B5C 001AA8DC  38 60 00 00 */	li r3, 0
/* 801B4B60 001AA8E0  48 00 01 38 */	b lbl_801B4C98
lbl_801B4B64:
/* 801B4B64 001AA8E4  41 82 01 30 */	beq lbl_801B4C94
/* 801B4B68 001AA8E8  7F 64 DB 78 */	mr r4, r27
/* 801B4B6C 001AA8EC  7F A6 EB 78 */	mr r6, r29
/* 801B4B70 001AA8F0  38 A3 00 F0 */	addi r5, r3, 0xf0
/* 801B4B74 001AA8F4  4B FF 75 C9 */	bl nw4r3g3d8ScnGroupFP12MEMAllocatorP$7__ct
/* 801B4B78 001AA8F8  3C 60 80 46 */	lis r3, lbl_804664F8@ha
/* 801B4B7C 001AA8FC  2C 1D 00 00 */	cmpwi r29, 0
/* 801B4B80 001AA900  38 63 64 F8 */	addi r3, r3, lbl_804664F8@l
/* 801B4B84 001AA904  7C 1F E2 14 */	add r0, r31, r28
/* 801B4B88 001AA908  90 7F 00 00 */	stw r3, 0(r31)
/* 801B4B8C 001AA90C  38 60 00 00 */	li r3, 0
/* 801B4B90 001AA910  93 DF 00 E8 */	stw r30, 0xe8(r31)
/* 801B4B94 001AA914  90 1F 00 EC */	stw r0, 0xec(r31)
/* 801B4B98 001AA918  41 82 00 D8 */	beq lbl_801B4C70
/* 801B4B9C 001AA91C  28 1D 00 08 */	cmplwi r29, 8
/* 801B4BA0 001AA920  38 BD FF F8 */	addi r5, r29, -8
/* 801B4BA4 001AA924  40 81 00 A4 */	ble lbl_801B4C48
/* 801B4BA8 001AA928  38 05 00 07 */	addi r0, r5, 7
/* 801B4BAC 001AA92C  38 80 00 00 */	li r4, 0
/* 801B4BB0 001AA930  54 00 E8 FE */	srwi r0, r0, 3
/* 801B4BB4 001AA934  7C 09 03 A6 */	mtctr r0
/* 801B4BB8 001AA938  28 05 00 00 */	cmplwi r5, 0
/* 801B4BBC 001AA93C  40 81 00 8C */	ble lbl_801B4C48
lbl_801B4BC0:
/* 801B4BC0 001AA940  80 0D A5 30 */	lwz r0, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4BC4 001AA944  38 63 00 08 */	addi r3, r3, 8
/* 801B4BC8 001AA948  80 BF 00 EC */	lwz r5, 0xec(r31)
/* 801B4BCC 001AA94C  7C 05 21 2E */	stwx r0, r5, r4
/* 801B4BD0 001AA950  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 801B4BD4 001AA954  80 CD A5 30 */	lwz r6, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4BD8 001AA958  7C A0 22 14 */	add r5, r0, r4
/* 801B4BDC 001AA95C  90 C5 00 04 */	stw r6, 4(r5)
/* 801B4BE0 001AA960  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 801B4BE4 001AA964  80 CD A5 30 */	lwz r6, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4BE8 001AA968  7C A0 22 14 */	add r5, r0, r4
/* 801B4BEC 001AA96C  90 C5 00 08 */	stw r6, 8(r5)
/* 801B4BF0 001AA970  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 801B4BF4 001AA974  80 CD A5 30 */	lwz r6, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4BF8 001AA978  7C A0 22 14 */	add r5, r0, r4
/* 801B4BFC 001AA97C  90 C5 00 0C */	stw r6, 0xc(r5)
/* 801B4C00 001AA980  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 801B4C04 001AA984  80 CD A5 30 */	lwz r6, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4C08 001AA988  7C A0 22 14 */	add r5, r0, r4
/* 801B4C0C 001AA98C  90 C5 00 10 */	stw r6, 0x10(r5)
/* 801B4C10 001AA990  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 801B4C14 001AA994  80 CD A5 30 */	lwz r6, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4C18 001AA998  7C A0 22 14 */	add r5, r0, r4
/* 801B4C1C 001AA99C  90 C5 00 14 */	stw r6, 0x14(r5)
/* 801B4C20 001AA9A0  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 801B4C24 001AA9A4  80 CD A5 30 */	lwz r6, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4C28 001AA9A8  7C A0 22 14 */	add r5, r0, r4
/* 801B4C2C 001AA9AC  90 C5 00 18 */	stw r6, 0x18(r5)
/* 801B4C30 001AA9B0  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 801B4C34 001AA9B4  80 CD A5 30 */	lwz r6, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4C38 001AA9B8  7C A0 22 14 */	add r5, r0, r4
/* 801B4C3C 001AA9BC  38 84 00 20 */	addi r4, r4, 0x20
/* 801B4C40 001AA9C0  90 C5 00 1C */	stw r6, 0x1c(r5)
/* 801B4C44 001AA9C4  42 00 FF 7C */	bdnz lbl_801B4BC0
lbl_801B4C48:
/* 801B4C48 001AA9C8  7C 03 E8 50 */	subf r0, r3, r29
/* 801B4C4C 001AA9CC  54 64 10 3A */	slwi r4, r3, 2
/* 801B4C50 001AA9D0  7C 09 03 A6 */	mtctr r0
/* 801B4C54 001AA9D4  7C 03 E8 40 */	cmplw r3, r29
/* 801B4C58 001AA9D8  40 80 00 18 */	bge lbl_801B4C70
lbl_801B4C5C:
/* 801B4C5C 001AA9DC  80 0D A5 30 */	lwz r0, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4C60 001AA9E0  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 801B4C64 001AA9E4  7C 03 21 2E */	stwx r0, r3, r4
/* 801B4C68 001AA9E8  38 84 00 04 */	addi r4, r4, 4
/* 801B4C6C 001AA9EC  42 00 FF F0 */	bdnz lbl_801B4C5C
lbl_801B4C70:
/* 801B4C70 001AA9F0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B4C74 001AA9F4  3C 80 00 01 */	lis r4, 0x00010002@ha
/* 801B4C78 001AA9F8  7F C3 F3 78 */	mr r3, r30
/* 801B4C7C 001AA9FC  7F E6 FB 78 */	mr r6, r31
/* 801B4C80 001AAA00  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B4C84 001AAA04  38 84 00 02 */	addi r4, r4, 0x00010002@l
/* 801B4C88 001AAA08  38 A0 00 00 */	li r5, 0
/* 801B4C8C 001AAA0C  7D 89 03 A6 */	mtctr r12
/* 801B4C90 001AAA10  4E 80 04 21 */	bctrl 
lbl_801B4C94:
/* 801B4C94 001AAA14  7F E3 FB 78 */	mr r3, r31
lbl_801B4C98:
/* 801B4C98 001AAA18  39 61 00 20 */	addi r11, r1, 0x20
/* 801B4C9C 001AAA1C  48 23 C6 D1 */	bl _restgpr_27
/* 801B4CA0 001AAA20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B4CA4 001AAA24  7C 08 03 A6 */	mtlr r0
/* 801B4CA8 001AAA28  38 21 00 20 */	addi r1, r1, 0x20
/* 801B4CAC 001AAA2C  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3$7PushBack
nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3$7PushBack:
/* 801B4CB0 001AAA30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B4CB4 001AAA34  7C 08 02 A6 */	mflr r0
/* 801B4CB8 001AAA38  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B4CBC 001AAA3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B4CC0 001AAA40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B4CC4 001AAA44  7C BE 2B 78 */	mr r30, r5
/* 801B4CC8 001AAA48  7C 85 23 78 */	mr r5, r4
/* 801B4CCC 001AAA4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B4CD0 001AAA50  7C 7D 1B 78 */	mr r29, r3
/* 801B4CD4 001AAA54  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4CD8 001AAA58  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 801B4CDC 001AAA5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801B4CE0 001AAA60  7D 89 03 A6 */	mtctr r12
/* 801B4CE4 001AAA64  4E 80 04 21 */	bctrl 
/* 801B4CE8 001AAA68  2C 03 00 00 */	cmpwi r3, 0
/* 801B4CEC 001AAA6C  40 82 00 0C */	bne lbl_801B4CF8
/* 801B4CF0 001AAA70  38 60 00 00 */	li r3, 0
/* 801B4CF4 001AAA74  48 00 00 84 */	b lbl_801B4D78
lbl_801B4CF8:
/* 801B4CF8 001AAA78  80 9D 00 E8 */	lwz r4, 0xe8(r29)
/* 801B4CFC 001AAA7C  38 61 00 08 */	addi r3, r1, 8
/* 801B4D00 001AAA80  80 BD 00 E4 */	lwz r5, 0xe4(r29)
/* 801B4D04 001AAA84  80 04 00 E8 */	lwz r0, 0xe8(r4)
/* 801B4D08 001AAA88  3B E5 FF FF */	addi r31, r5, -1
/* 801B4D0C 001AAA8C  90 01 00 08 */	stw r0, 8(r1)
/* 801B4D10 001AAA90  4B FD A1 3D */	bl nw4r3g3d6ResMdlCFv$7GetResNodeNumEntries
/* 801B4D14 001AAA94  7C 1E 18 40 */	cmplw r30, r3
/* 801B4D18 001AAA98  40 80 00 24 */	bge lbl_801B4D3C
/* 801B4D1C 001AAA9C  80 1D 00 E4 */	lwz r0, 0xe4(r29)
/* 801B4D20 001AAAA0  7C 1F 00 40 */	cmplw r31, r0
/* 801B4D24 001AAAA4  40 80 00 18 */	bge lbl_801B4D3C
/* 801B4D28 001AAAA8  80 7D 00 EC */	lwz r3, 0xec(r29)
/* 801B4D2C 001AAAAC  57 E0 10 3A */	slwi r0, r31, 2
/* 801B4D30 001AAAB0  38 80 00 01 */	li r4, 1
/* 801B4D34 001AAAB4  7F C3 01 2E */	stwx r30, r3, r0
/* 801B4D38 001AAAB8  48 00 00 08 */	b lbl_801B4D40
lbl_801B4D3C:
/* 801B4D3C 001AAABC  38 80 00 00 */	li r4, 0
lbl_801B4D40:
/* 801B4D40 001AAAC0  2C 04 00 00 */	cmpwi r4, 0
/* 801B4D44 001AAAC4  40 82 00 30 */	bne lbl_801B4D74
/* 801B4D48 001AAAC8  80 9D 00 E4 */	lwz r4, 0xe4(r29)
/* 801B4D4C 001AAACC  2C 04 00 00 */	cmpwi r4, 0
/* 801B4D50 001AAAD0  41 82 00 1C */	beq lbl_801B4D6C
/* 801B4D54 001AAAD4  81 9D 00 00 */	lwz r12, 0(r29)
/* 801B4D58 001AAAD8  7F A3 EB 78 */	mr r3, r29
/* 801B4D5C 001AAADC  38 84 FF FF */	addi r4, r4, -1
/* 801B4D60 001AAAE0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801B4D64 001AAAE4  7D 89 03 A6 */	mtctr r12
/* 801B4D68 001AAAE8  4E 80 04 21 */	bctrl 
lbl_801B4D6C:
/* 801B4D6C 001AAAEC  38 60 00 00 */	li r3, 0
/* 801B4D70 001AAAF0  48 00 00 08 */	b lbl_801B4D78
lbl_801B4D74:
/* 801B4D74 001AAAF4  38 60 00 01 */	li r3, 1
lbl_801B4D78:
/* 801B4D78 001AAAF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B4D7C 001AAAFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B4D80 001AAB00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B4D84 001AAB04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801B4D88 001AAB08  7C 08 03 A6 */	mtlr r0
/* 801B4D8C 001AAB0C  38 21 00 20 */	addi r1, r1, 0x20
/* 801B4D90 001AAB10  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3$7PushBack_5854
nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3$7PushBack_5854:
/* 801B4D94 001AAB14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B4D98 001AAB18  7C 08 02 A6 */	mflr r0
/* 801B4D9C 001AAB1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B4DA0 001AAB20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B4DA4 001AAB24  7C 9F 23 78 */	mr r31, r4
/* 801B4DA8 001AAB28  7C A4 2B 78 */	mr r4, r5
/* 801B4DAC 001AAB2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B4DB0 001AAB30  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B4DB4 001AAB34  7C 7D 1B 78 */	mr r29, r3
/* 801B4DB8 001AAB38  80 C3 00 E8 */	lwz r6, 0xe8(r3)
/* 801B4DBC 001AAB3C  38 61 00 0C */	addi r3, r1, 0xc
/* 801B4DC0 001AAB40  80 06 00 E8 */	lwz r0, 0xe8(r6)
/* 801B4DC4 001AAB44  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B4DC8 001AAB48  4B FD 9F 49 */	bl nw4r3g3d6ResMdlCFPCc$7GetResNode
/* 801B4DCC 001AAB4C  2C 03 00 00 */	cmpwi r3, 0
/* 801B4DD0 001AAB50  41 82 00 18 */	beq lbl_801B4DE8
/* 801B4DD4 001AAB54  41 82 00 0C */	beq lbl_801B4DE0
/* 801B4DD8 001AAB58  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 801B4DDC 001AAB5C  48 00 00 10 */	b lbl_801B4DEC
lbl_801B4DE0:
/* 801B4DE0 001AAB60  3B C0 00 00 */	li r30, 0
/* 801B4DE4 001AAB64  48 00 00 08 */	b lbl_801B4DEC
lbl_801B4DE8:
/* 801B4DE8 001AAB68  83 CD A5 30 */	lwz r30, lbl_8059E950-_SDA_BASE_(r13)
lbl_801B4DEC:
/* 801B4DEC 001AAB6C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801B4DF0 001AAB70  7F A3 EB 78 */	mr r3, r29
/* 801B4DF4 001AAB74  7F E5 FB 78 */	mr r5, r31
/* 801B4DF8 001AAB78  80 9D 00 E4 */	lwz r4, 0xe4(r29)
/* 801B4DFC 001AAB7C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801B4E00 001AAB80  7D 89 03 A6 */	mtctr r12
/* 801B4E04 001AAB84  4E 80 04 21 */	bctrl 
/* 801B4E08 001AAB88  2C 03 00 00 */	cmpwi r3, 0
/* 801B4E0C 001AAB8C  40 82 00 0C */	bne lbl_801B4E18
/* 801B4E10 001AAB90  38 60 00 00 */	li r3, 0
/* 801B4E14 001AAB94  48 00 00 84 */	b lbl_801B4E98
lbl_801B4E18:
/* 801B4E18 001AAB98  80 9D 00 E8 */	lwz r4, 0xe8(r29)
/* 801B4E1C 001AAB9C  38 61 00 08 */	addi r3, r1, 8
/* 801B4E20 001AABA0  80 BD 00 E4 */	lwz r5, 0xe4(r29)
/* 801B4E24 001AABA4  80 04 00 E8 */	lwz r0, 0xe8(r4)
/* 801B4E28 001AABA8  3B E5 FF FF */	addi r31, r5, -1
/* 801B4E2C 001AABAC  90 01 00 08 */	stw r0, 8(r1)
/* 801B4E30 001AABB0  4B FD A0 1D */	bl nw4r3g3d6ResMdlCFv$7GetResNodeNumEntries
/* 801B4E34 001AABB4  7C 1E 18 40 */	cmplw r30, r3
/* 801B4E38 001AABB8  40 80 00 24 */	bge lbl_801B4E5C
/* 801B4E3C 001AABBC  80 1D 00 E4 */	lwz r0, 0xe4(r29)
/* 801B4E40 001AABC0  7C 1F 00 40 */	cmplw r31, r0
/* 801B4E44 001AABC4  40 80 00 18 */	bge lbl_801B4E5C
/* 801B4E48 001AABC8  80 7D 00 EC */	lwz r3, 0xec(r29)
/* 801B4E4C 001AABCC  57 E0 10 3A */	slwi r0, r31, 2
/* 801B4E50 001AABD0  38 80 00 01 */	li r4, 1
/* 801B4E54 001AABD4  7F C3 01 2E */	stwx r30, r3, r0
/* 801B4E58 001AABD8  48 00 00 08 */	b lbl_801B4E60
lbl_801B4E5C:
/* 801B4E5C 001AABDC  38 80 00 00 */	li r4, 0
lbl_801B4E60:
/* 801B4E60 001AABE0  2C 04 00 00 */	cmpwi r4, 0
/* 801B4E64 001AABE4  40 82 00 30 */	bne lbl_801B4E94
/* 801B4E68 001AABE8  80 9D 00 E4 */	lwz r4, 0xe4(r29)
/* 801B4E6C 001AABEC  2C 04 00 00 */	cmpwi r4, 0
/* 801B4E70 001AABF0  41 82 00 1C */	beq lbl_801B4E8C
/* 801B4E74 001AABF4  81 9D 00 00 */	lwz r12, 0(r29)
/* 801B4E78 001AABF8  7F A3 EB 78 */	mr r3, r29
/* 801B4E7C 001AABFC  38 84 FF FF */	addi r4, r4, -1
/* 801B4E80 001AAC00  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801B4E84 001AAC04  7D 89 03 A6 */	mtctr r12
/* 801B4E88 001AAC08  4E 80 04 21 */	bctrl 
lbl_801B4E8C:
/* 801B4E8C 001AAC0C  38 60 00 00 */	li r3, 0
/* 801B4E90 001AAC10  48 00 00 08 */	b lbl_801B4E98
lbl_801B4E94:
/* 801B4E94 001AAC14  38 60 00 01 */	li r3, 1
lbl_801B4E98:
/* 801B4E98 001AAC18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B4E9C 001AAC1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B4EA0 001AAC20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B4EA4 001AAC24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801B4EA8 001AAC28  7C 08 03 A6 */	mtlr r0
/* 801B4EAC 001AAC2C  38 21 00 20 */	addi r1, r1, 0x20
/* 801B4EB0 001AAC30  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandFUlPQ34nw4r3$7Insert
nw4r3g3d12ScnMdlExpandFUlPQ34nw4r3$7Insert:
/* 801B4EB4 001AAC34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B4EB8 001AAC38  7C 08 02 A6 */	mflr r0
/* 801B4EBC 001AAC3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B4EC0 001AAC40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B4EC4 001AAC44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B4EC8 001AAC48  7C 9E 23 78 */	mr r30, r4
/* 801B4ECC 001AAC4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B4ED0 001AAC50  7C 7D 1B 78 */	mr r29, r3
/* 801B4ED4 001AAC54  83 ED A5 30 */	lwz r31, lbl_8059E950-_SDA_BASE_(r13)
/* 801B4ED8 001AAC58  4B FF 6F 99 */	bl nw4r3g3d8ScnGroupFUlPQ34nw4r3g3d6S$7Insert
/* 801B4EDC 001AAC5C  2C 03 00 00 */	cmpwi r3, 0
/* 801B4EE0 001AAC60  41 82 01 08 */	beq lbl_801B4FE8
/* 801B4EE4 001AAC64  80 9D 00 E4 */	lwz r4, 0xe4(r29)
/* 801B4EE8 001AAC68  38 84 FF FF */	addi r4, r4, -1
/* 801B4EEC 001AAC6C  7C 84 F0 40 */	cmplw cr1, r4, r30
/* 801B4EF0 001AAC70  40 85 00 EC */	ble cr1, lbl_801B4FDC
/* 801B4EF4 001AAC74  7C 1E 20 50 */	subf r0, r30, r4
/* 801B4EF8 001AAC78  38 BE 00 08 */	addi r5, r30, 8
/* 801B4EFC 001AAC7C  28 00 00 08 */	cmplwi r0, 8
/* 801B4F00 001AAC80  40 81 00 B0 */	ble lbl_801B4FB0
/* 801B4F04 001AAC84  41 84 00 AC */	blt cr1, lbl_801B4FB0
/* 801B4F08 001AAC88  38 04 00 07 */	addi r0, r4, 7
/* 801B4F0C 001AAC8C  54 86 10 3A */	slwi r6, r4, 2
/* 801B4F10 001AAC90  7C 05 00 50 */	subf r0, r5, r0
/* 801B4F14 001AAC94  54 00 E8 FE */	srwi r0, r0, 3
/* 801B4F18 001AAC98  7C 09 03 A6 */	mtctr r0
/* 801B4F1C 001AAC9C  7C 04 28 40 */	cmplw r4, r5
/* 801B4F20 001AACA0  40 81 00 90 */	ble lbl_801B4FB0
lbl_801B4F24:
/* 801B4F24 001AACA4  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4F28 001AACA8  38 84 FF F8 */	addi r4, r4, -8
/* 801B4F2C 001AACAC  7C A0 32 14 */	add r5, r0, r6
/* 801B4F30 001AACB0  80 05 FF FC */	lwz r0, -4(r5)
/* 801B4F34 001AACB4  90 05 00 00 */	stw r0, 0(r5)
/* 801B4F38 001AACB8  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4F3C 001AACBC  7C A0 32 14 */	add r5, r0, r6
/* 801B4F40 001AACC0  80 05 FF F8 */	lwz r0, -8(r5)
/* 801B4F44 001AACC4  90 05 FF FC */	stw r0, -4(r5)
/* 801B4F48 001AACC8  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4F4C 001AACCC  7C A0 32 14 */	add r5, r0, r6
/* 801B4F50 001AACD0  80 05 FF F4 */	lwz r0, -0xc(r5)
/* 801B4F54 001AACD4  90 05 FF F8 */	stw r0, -8(r5)
/* 801B4F58 001AACD8  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4F5C 001AACDC  7C A0 32 14 */	add r5, r0, r6
/* 801B4F60 001AACE0  80 05 FF F0 */	lwz r0, -0x10(r5)
/* 801B4F64 001AACE4  90 05 FF F4 */	stw r0, -0xc(r5)
/* 801B4F68 001AACE8  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4F6C 001AACEC  7C A0 32 14 */	add r5, r0, r6
/* 801B4F70 001AACF0  80 05 FF EC */	lwz r0, -0x14(r5)
/* 801B4F74 001AACF4  90 05 FF F0 */	stw r0, -0x10(r5)
/* 801B4F78 001AACF8  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4F7C 001AACFC  7C A0 32 14 */	add r5, r0, r6
/* 801B4F80 001AAD00  80 05 FF E8 */	lwz r0, -0x18(r5)
/* 801B4F84 001AAD04  90 05 FF EC */	stw r0, -0x14(r5)
/* 801B4F88 001AAD08  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4F8C 001AAD0C  7C A0 32 14 */	add r5, r0, r6
/* 801B4F90 001AAD10  80 05 FF E4 */	lwz r0, -0x1c(r5)
/* 801B4F94 001AAD14  90 05 FF E8 */	stw r0, -0x18(r5)
/* 801B4F98 001AAD18  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4F9C 001AAD1C  7C A0 32 14 */	add r5, r0, r6
/* 801B4FA0 001AAD20  38 C6 FF E0 */	addi r6, r6, -32
/* 801B4FA4 001AAD24  80 05 FF E0 */	lwz r0, -0x20(r5)
/* 801B4FA8 001AAD28  90 05 FF E4 */	stw r0, -0x1c(r5)
/* 801B4FAC 001AAD2C  42 00 FF 78 */	bdnz lbl_801B4F24
lbl_801B4FB0:
/* 801B4FB0 001AAD30  7C 1E 20 50 */	subf r0, r30, r4
/* 801B4FB4 001AAD34  54 85 10 3A */	slwi r5, r4, 2
/* 801B4FB8 001AAD38  7C 09 03 A6 */	mtctr r0
/* 801B4FBC 001AAD3C  7C 04 F0 40 */	cmplw r4, r30
/* 801B4FC0 001AAD40  40 81 00 1C */	ble lbl_801B4FDC
lbl_801B4FC4:
/* 801B4FC4 001AAD44  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 801B4FC8 001AAD48  7C 80 2A 14 */	add r4, r0, r5
/* 801B4FCC 001AAD4C  38 A5 FF FC */	addi r5, r5, -4
/* 801B4FD0 001AAD50  80 04 FF FC */	lwz r0, -4(r4)
/* 801B4FD4 001AAD54  90 04 00 00 */	stw r0, 0(r4)
/* 801B4FD8 001AAD58  42 00 FF EC */	bdnz lbl_801B4FC4
lbl_801B4FDC:
/* 801B4FDC 001AAD5C  80 9D 00 EC */	lwz r4, 0xec(r29)
/* 801B4FE0 001AAD60  57 C0 10 3A */	slwi r0, r30, 2
/* 801B4FE4 001AAD64  7F E4 01 2E */	stwx r31, r4, r0
lbl_801B4FE8:
/* 801B4FE8 001AAD68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B4FEC 001AAD6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B4FF0 001AAD70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B4FF4 001AAD74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801B4FF8 001AAD78  7C 08 03 A6 */	mtlr r0
/* 801B4FFC 001AAD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 801B5000 001AAD80  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandFUl$7Remove
nw4r3g3d12ScnMdlExpandFUl$7Remove:
/* 801B5004 001AAD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5008 001AAD88  7C 08 02 A6 */	mflr r0
/* 801B500C 001AAD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5010 001AAD90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5014 001AAD94  7C 9F 23 78 */	mr r31, r4
/* 801B5018 001AAD98  93 C1 00 08 */	stw r30, 8(r1)
/* 801B501C 001AAD9C  7C 7E 1B 78 */	mr r30, r3
/* 801B5020 001AADA0  4B FF 6F DD */	bl nw4r3g3d8ScnGroupFUl$7Remove
/* 801B5024 001AADA4  2C 03 00 00 */	cmpwi r3, 0
/* 801B5028 001AADA8  41 82 00 F8 */	beq lbl_801B5120
/* 801B502C 001AADAC  80 9E 00 E4 */	lwz r4, 0xe4(r30)
/* 801B5030 001AADB0  7C 9F 20 40 */	cmplw cr1, r31, r4
/* 801B5034 001AADB4  40 84 00 EC */	bge cr1, lbl_801B5120
/* 801B5038 001AADB8  7C 1F 20 50 */	subf r0, r31, r4
/* 801B503C 001AADBC  38 A4 FF F8 */	addi r5, r4, -8
/* 801B5040 001AADC0  28 00 00 08 */	cmplwi r0, 8
/* 801B5044 001AADC4  40 81 00 B0 */	ble lbl_801B50F4
/* 801B5048 001AADC8  41 85 00 AC */	bgt cr1, lbl_801B50F4
/* 801B504C 001AADCC  38 05 00 07 */	addi r0, r5, 7
/* 801B5050 001AADD0  57 E6 10 3A */	slwi r6, r31, 2
/* 801B5054 001AADD4  7C 1F 00 50 */	subf r0, r31, r0
/* 801B5058 001AADD8  54 00 E8 FE */	srwi r0, r0, 3
/* 801B505C 001AADDC  7C 09 03 A6 */	mtctr r0
/* 801B5060 001AADE0  7C 1F 28 40 */	cmplw r31, r5
/* 801B5064 001AADE4  40 80 00 90 */	bge lbl_801B50F4
lbl_801B5068:
/* 801B5068 001AADE8  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B506C 001AADEC  3B FF 00 08 */	addi r31, r31, 8
/* 801B5070 001AADF0  7C A0 32 14 */	add r5, r0, r6
/* 801B5074 001AADF4  80 05 00 04 */	lwz r0, 4(r5)
/* 801B5078 001AADF8  90 05 00 00 */	stw r0, 0(r5)
/* 801B507C 001AADFC  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B5080 001AAE00  7C A0 32 14 */	add r5, r0, r6
/* 801B5084 001AAE04  80 05 00 08 */	lwz r0, 8(r5)
/* 801B5088 001AAE08  90 05 00 04 */	stw r0, 4(r5)
/* 801B508C 001AAE0C  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B5090 001AAE10  7C A0 32 14 */	add r5, r0, r6
/* 801B5094 001AAE14  80 05 00 0C */	lwz r0, 0xc(r5)
/* 801B5098 001AAE18  90 05 00 08 */	stw r0, 8(r5)
/* 801B509C 001AAE1C  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B50A0 001AAE20  7C A0 32 14 */	add r5, r0, r6
/* 801B50A4 001AAE24  80 05 00 10 */	lwz r0, 0x10(r5)
/* 801B50A8 001AAE28  90 05 00 0C */	stw r0, 0xc(r5)
/* 801B50AC 001AAE2C  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B50B0 001AAE30  7C A0 32 14 */	add r5, r0, r6
/* 801B50B4 001AAE34  80 05 00 14 */	lwz r0, 0x14(r5)
/* 801B50B8 001AAE38  90 05 00 10 */	stw r0, 0x10(r5)
/* 801B50BC 001AAE3C  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B50C0 001AAE40  7C A0 32 14 */	add r5, r0, r6
/* 801B50C4 001AAE44  80 05 00 18 */	lwz r0, 0x18(r5)
/* 801B50C8 001AAE48  90 05 00 14 */	stw r0, 0x14(r5)
/* 801B50CC 001AAE4C  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B50D0 001AAE50  7C A0 32 14 */	add r5, r0, r6
/* 801B50D4 001AAE54  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 801B50D8 001AAE58  90 05 00 18 */	stw r0, 0x18(r5)
/* 801B50DC 001AAE5C  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B50E0 001AAE60  7C A0 32 14 */	add r5, r0, r6
/* 801B50E4 001AAE64  38 C6 00 20 */	addi r6, r6, 0x20
/* 801B50E8 001AAE68  80 05 00 20 */	lwz r0, 0x20(r5)
/* 801B50EC 001AAE6C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 801B50F0 001AAE70  42 00 FF 78 */	bdnz lbl_801B5068
lbl_801B50F4:
/* 801B50F4 001AAE74  7C 1F 20 50 */	subf r0, r31, r4
/* 801B50F8 001AAE78  57 E5 10 3A */	slwi r5, r31, 2
/* 801B50FC 001AAE7C  7C 09 03 A6 */	mtctr r0
/* 801B5100 001AAE80  7C 1F 20 40 */	cmplw r31, r4
/* 801B5104 001AAE84  40 80 00 1C */	bge lbl_801B5120
lbl_801B5108:
/* 801B5108 001AAE88  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 801B510C 001AAE8C  7C 80 2A 14 */	add r4, r0, r5
/* 801B5110 001AAE90  38 A5 00 04 */	addi r5, r5, 4
/* 801B5114 001AAE94  80 04 00 04 */	lwz r0, 4(r4)
/* 801B5118 001AAE98  90 04 00 00 */	stw r0, 0(r4)
/* 801B511C 001AAE9C  42 00 FF EC */	bdnz lbl_801B5108
lbl_801B5120:
/* 801B5120 001AAEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5124 001AAEA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5128 001AAEA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B512C 001AAEAC  7C 08 03 A6 */	mtlr r0
/* 801B5130 001AAEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5134 001AAEB4  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3$7Remove
nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3$7Remove:
/* 801B5138 001AAEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B513C 001AAEBC  7C 08 02 A6 */	mflr r0
/* 801B5140 001AAEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5144 001AAEC4  80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 801B5148 001AAEC8  80 C3 00 DC */	lwz r6, 0xdc(r3)
/* 801B514C 001AAECC  54 00 10 3A */	slwi r0, r0, 2
/* 801B5150 001AAED0  7C C5 33 78 */	mr r5, r6
/* 801B5154 001AAED4  7C E6 02 14 */	add r7, r6, r0
/* 801B5158 001AAED8  48 00 00 08 */	b lbl_801B5160
lbl_801B515C:
/* 801B515C 001AAEDC  38 A5 00 04 */	addi r5, r5, 4
lbl_801B5160:
/* 801B5160 001AAEE0  7C 05 38 40 */	cmplw r5, r7
/* 801B5164 001AAEE4  41 82 00 10 */	beq lbl_801B5174
/* 801B5168 001AAEE8  80 05 00 00 */	lwz r0, 0(r5)
/* 801B516C 001AAEEC  7C 00 20 40 */	cmplw r0, r4
/* 801B5170 001AAEF0  40 82 FF EC */	bne lbl_801B515C
lbl_801B5174:
/* 801B5174 001AAEF4  7C 05 38 40 */	cmplw r5, r7
/* 801B5178 001AAEF8  40 82 00 0C */	bne lbl_801B5184
/* 801B517C 001AAEFC  38 60 00 00 */	li r3, 0
/* 801B5180 001AAF00  48 00 00 2C */	b lbl_801B51AC
lbl_801B5184:
/* 801B5184 001AAF04  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5188 001AAF08  7C 06 28 50 */	subf r0, r6, r5
/* 801B518C 001AAF0C  7C 00 16 70 */	srawi r0, r0, 2
/* 801B5190 001AAF10  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801B5194 001AAF14  7C 80 01 94 */	addze r4, r0
/* 801B5198 001AAF18  7D 89 03 A6 */	mtctr r12
/* 801B519C 001AAF1C  4E 80 04 21 */	bctrl 
/* 801B51A0 001AAF20  7C 03 00 D0 */	neg r0, r3
/* 801B51A4 001AAF24  7C 00 1B 78 */	or r0, r0, r3
/* 801B51A8 001AAF28  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801B51AC:
/* 801B51AC 001AAF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B51B0 001AAF30  7C 08 03 A6 */	mtlr r0
/* 801B51B4 001AAF34  38 21 00 10 */	addi r1, r1, 0x10
/* 801B51B8 001AAF38  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandFUlUlPv$7G3dProc
nw4r3g3d12ScnMdlExpandFUlUlPv$7G3dProc:
/* 801B51BC 001AAF3C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801B51C0 001AAF40  7C 08 02 A6 */	mflr r0
/* 801B51C4 001AAF44  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B51C8 001AAF48  39 61 00 60 */	addi r11, r1, 0x60
/* 801B51CC 001AAF4C  48 23 C1 49 */	bl _savegpr_24
/* 801B51D0 001AAF50  28 04 00 09 */	cmplwi r4, 9
/* 801B51D4 001AAF54  90 A1 00 08 */	stw r5, 8(r1)
/* 801B51D8 001AAF58  7C 7D 1B 78 */	mr r29, r3
/* 801B51DC 001AAF5C  7C 9E 23 78 */	mr r30, r4
/* 801B51E0 001AAF60  7C A0 2B 78 */	mr r0, r5
/* 801B51E4 001AAF64  7C DF 33 78 */	mr r31, r6
/* 801B51E8 001AAF68  40 80 00 24 */	bge lbl_801B520C
/* 801B51EC 001AAF6C  38 E4 FF FF */	addi r7, r4, -1
/* 801B51F0 001AAF70  39 00 00 01 */	li r8, 1
/* 801B51F4 001AAF74  80 A3 00 CC */	lwz r5, 0xcc(r3)
/* 801B51F8 001AAF78  7D 07 38 30 */	slw r7, r8, r7
/* 801B51FC 001AAF7C  7C E5 28 39 */	and. r5, r7, r5
/* 801B5200 001AAF80  41 82 00 0C */	beq lbl_801B520C
/* 801B5204 001AAF84  38 A0 00 01 */	li r5, 1
/* 801B5208 001AAF88  48 00 00 08 */	b lbl_801B5210
lbl_801B520C:
/* 801B520C 001AAF8C  38 A0 00 00 */	li r5, 0
lbl_801B5210:
/* 801B5210 001AAF90  2C 05 00 00 */	cmpwi r5, 0
/* 801B5214 001AAF94  40 82 02 78 */	bne lbl_801B548C
/* 801B5218 001AAF98  3C A0 00 01 */	lis r5, 0x00010001@ha
/* 801B521C 001AAF9C  38 E5 00 01 */	addi r7, r5, 0x00010001@l
/* 801B5220 001AAFA0  7C 04 38 00 */	cmpw r4, r7
/* 801B5224 001AAFA4  41 82 01 E0 */	beq lbl_801B5404
/* 801B5228 001AAFA8  40 80 00 10 */	bge lbl_801B5238
/* 801B522C 001AAFAC  2C 04 00 01 */	cmpwi r4, 1
/* 801B5230 001AAFB0  41 82 00 18 */	beq lbl_801B5248
/* 801B5234 001AAFB4  48 00 02 1C */	b lbl_801B5450
lbl_801B5238:
/* 801B5238 001AAFB8  38 A5 00 04 */	addi r5, r5, 4
/* 801B523C 001AAFBC  7C 04 28 00 */	cmpw r4, r5
/* 801B5240 001AAFC0  40 80 02 10 */	bge lbl_801B5450
/* 801B5244 001AAFC4  48 00 01 A8 */	b lbl_801B53EC
lbl_801B5248:
/* 801B5248 001AAFC8  80 A3 00 D4 */	lwz r5, 0xd4(r3)
/* 801B524C 001AAFCC  2C 05 00 00 */	cmpwi r5, 0
/* 801B5250 001AAFD0  41 82 00 40 */	beq lbl_801B5290
/* 801B5254 001AAFD4  A0 83 00 DA */	lhz r4, 0xda(r3)
/* 801B5258 001AAFD8  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 801B525C 001AAFDC  41 82 00 34 */	beq lbl_801B5290
/* 801B5260 001AAFE0  88 63 00 D8 */	lbz r3, 0xd8(r3)
/* 801B5264 001AAFE4  54 63 07 FF */	clrlwi. r3, r3, 0x1f
/* 801B5268 001AAFE8  41 82 00 28 */	beq lbl_801B5290
/* 801B526C 001AAFEC  7C A3 2B 78 */	mr r3, r5
/* 801B5270 001AAFF0  7F A5 EB 78 */	mr r5, r29
/* 801B5274 001AAFF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5278 001AAFF8  7C 06 03 78 */	mr r6, r0
/* 801B527C 001AAFFC  7F E7 FB 78 */	mr r7, r31
/* 801B5280 001AB000  38 80 00 01 */	li r4, 1
/* 801B5284 001AB004  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B5288 001AB008  7D 89 03 A6 */	mtctr r12
/* 801B528C 001AB00C  4E 80 04 21 */	bctrl 
lbl_801B5290:
/* 801B5290 001AB010  81 9D 00 00 */	lwz r12, 0(r29)
/* 801B5294 001AB014  7F A3 EB 78 */	mr r3, r29
/* 801B5298 001AB018  7F E4 FB 78 */	mr r4, r31
/* 801B529C 001AB01C  38 A1 00 08 */	addi r5, r1, 8
/* 801B52A0 001AB020  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801B52A4 001AB024  7D 89 03 A6 */	mtctr r12
/* 801B52A8 001AB028  4E 80 04 21 */	bctrl 
/* 801B52AC 001AB02C  80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 801B52B0 001AB030  80 C1 00 08 */	lwz r6, 8(r1)
/* 801B52B4 001AB034  2C 03 00 00 */	cmpwi r3, 0
/* 801B52B8 001AB038  41 82 00 38 */	beq lbl_801B52F0
/* 801B52BC 001AB03C  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 801B52C0 001AB040  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801B52C4 001AB044  41 82 00 2C */	beq lbl_801B52F0
/* 801B52C8 001AB048  88 1D 00 D8 */	lbz r0, 0xd8(r29)
/* 801B52CC 001AB04C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801B52D0 001AB050  41 82 00 20 */	beq lbl_801B52F0
/* 801B52D4 001AB054  81 83 00 00 */	lwz r12, 0(r3)
/* 801B52D8 001AB058  7F A5 EB 78 */	mr r5, r29
/* 801B52DC 001AB05C  7F E7 FB 78 */	mr r7, r31
/* 801B52E0 001AB060  38 80 00 02 */	li r4, 2
/* 801B52E4 001AB064  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B52E8 001AB068  7D 89 03 A6 */	mtctr r12
/* 801B52EC 001AB06C  4E 80 04 21 */	bctrl 
lbl_801B52F0:
/* 801B52F0 001AB070  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 801B52F4 001AB074  2C 03 00 00 */	cmpwi r3, 0
/* 801B52F8 001AB078  41 82 00 20 */	beq lbl_801B5318
/* 801B52FC 001AB07C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5300 001AB080  7F C4 F3 78 */	mr r4, r30
/* 801B5304 001AB084  38 DD 00 3C */	addi r6, r29, 0x3c
/* 801B5308 001AB088  80 A1 00 08 */	lwz r5, 8(r1)
/* 801B530C 001AB08C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B5310 001AB090  7D 89 03 A6 */	mtctr r12
/* 801B5314 001AB094  4E 80 04 21 */	bctrl 
lbl_801B5318:
/* 801B5318 001AB098  83 5D 00 E4 */	lwz r26, 0xe4(r29)
/* 801B531C 001AB09C  3B 20 00 00 */	li r25, 0
/* 801B5320 001AB0A0  3B 60 00 00 */	li r27, 0
/* 801B5324 001AB0A4  48 00 00 78 */	b lbl_801B539C
lbl_801B5328:
/* 801B5328 001AB0A8  80 7D 00 EC */	lwz r3, 0xec(r29)
/* 801B532C 001AB0AC  80 0D A5 30 */	lwz r0, lbl_8059E950-_SDA_BASE_(r13)
/* 801B5330 001AB0B0  7C C3 D8 2E */	lwzx r6, r3, r27
/* 801B5334 001AB0B4  83 01 00 08 */	lwz r24, 8(r1)
/* 801B5338 001AB0B8  7C 06 00 40 */	cmplw r6, r0
/* 801B533C 001AB0BC  41 82 00 58 */	beq lbl_801B5394
/* 801B5340 001AB0C0  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 801B5344 001AB0C4  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 801B5348 001AB0C8  2C 03 00 00 */	cmpwi r3, 0
/* 801B534C 001AB0CC  7F 84 D8 2E */	lwzx r28, r4, r27
/* 801B5350 001AB0D0  41 82 00 20 */	beq lbl_801B5370
/* 801B5354 001AB0D4  38 81 00 10 */	addi r4, r1, 0x10
/* 801B5358 001AB0D8  38 A0 00 01 */	li r5, 1
/* 801B535C 001AB0DC  4B FF 9C 25 */	bl nw4r3g3d12ScnMdlSimpleCFPQ34nw4r4m$7GetScnMtxPos
/* 801B5360 001AB0E0  2C 03 00 00 */	cmpwi r3, 0
/* 801B5364 001AB0E4  40 82 00 10 */	bne lbl_801B5374
/* 801B5368 001AB0E8  63 18 00 01 */	ori r24, r24, 1
/* 801B536C 001AB0EC  48 00 00 08 */	b lbl_801B5374
lbl_801B5370:
/* 801B5370 001AB0F0  63 18 00 01 */	ori r24, r24, 1
lbl_801B5374:
/* 801B5374 001AB0F4  81 9C 00 00 */	lwz r12, 0(r28)
/* 801B5378 001AB0F8  7F 83 E3 78 */	mr r3, r28
/* 801B537C 001AB0FC  7F C4 F3 78 */	mr r4, r30
/* 801B5380 001AB100  7F 05 C3 78 */	mr r5, r24
/* 801B5384 001AB104  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B5388 001AB108  38 C1 00 10 */	addi r6, r1, 0x10
/* 801B538C 001AB10C  7D 89 03 A6 */	mtctr r12
/* 801B5390 001AB110  4E 80 04 21 */	bctrl 
lbl_801B5394:
/* 801B5394 001AB114  3B 7B 00 04 */	addi r27, r27, 4
/* 801B5398 001AB118  3B 39 00 01 */	addi r25, r25, 1
lbl_801B539C:
/* 801B539C 001AB11C  7C 19 D0 40 */	cmplw r25, r26
/* 801B53A0 001AB120  41 80 FF 88 */	blt lbl_801B5328
/* 801B53A4 001AB124  80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 801B53A8 001AB128  80 C1 00 08 */	lwz r6, 8(r1)
/* 801B53AC 001AB12C  2C 03 00 00 */	cmpwi r3, 0
/* 801B53B0 001AB130  41 82 00 DC */	beq lbl_801B548C
/* 801B53B4 001AB134  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 801B53B8 001AB138  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801B53BC 001AB13C  41 82 00 D0 */	beq lbl_801B548C
/* 801B53C0 001AB140  88 1D 00 D8 */	lbz r0, 0xd8(r29)
/* 801B53C4 001AB144  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801B53C8 001AB148  41 82 00 C4 */	beq lbl_801B548C
/* 801B53CC 001AB14C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B53D0 001AB150  7F A5 EB 78 */	mr r5, r29
/* 801B53D4 001AB154  7F E7 FB 78 */	mr r7, r31
/* 801B53D8 001AB158  38 80 00 04 */	li r4, 4
/* 801B53DC 001AB15C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B53E0 001AB160  7D 89 03 A6 */	mtctr r12
/* 801B53E4 001AB164  4E 80 04 21 */	bctrl 
/* 801B53E8 001AB168  48 00 00 A4 */	b lbl_801B548C
lbl_801B53EC:
/* 801B53EC 001AB16C  7F A3 EB 78 */	mr r3, r29
/* 801B53F0 001AB170  7F C4 F3 78 */	mr r4, r30
/* 801B53F4 001AB174  7C 05 03 78 */	mr r5, r0
/* 801B53F8 001AB178  7F E6 FB 78 */	mr r6, r31
/* 801B53FC 001AB17C  4B FF 66 19 */	bl nw4r3g3d8ScnGroupFUlUlPv$7DefG3dProcScnGroup
/* 801B5400 001AB180  48 00 00 8C */	b lbl_801B548C
lbl_801B5404:
/* 801B5404 001AB184  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 801B5408 001AB188  7C 06 18 40 */	cmplw r6, r3
/* 801B540C 001AB18C  40 82 00 2C */	bne lbl_801B5438
/* 801B5410 001AB190  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5414 001AB194  38 85 00 03 */	addi r4, r5, 3
/* 801B5418 001AB198  7F A6 EB 78 */	mr r6, r29
/* 801B541C 001AB19C  38 A0 00 00 */	li r5, 0
/* 801B5420 001AB1A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B5424 001AB1A4  7D 89 03 A6 */	mtctr r12
/* 801B5428 001AB1A8  4E 80 04 21 */	bctrl 
/* 801B542C 001AB1AC  38 00 00 00 */	li r0, 0
/* 801B5430 001AB1B0  90 1D 00 E8 */	stw r0, 0xe8(r29)
/* 801B5434 001AB1B4  48 00 00 58 */	b lbl_801B548C
lbl_801B5438:
/* 801B5438 001AB1B8  7F A3 EB 78 */	mr r3, r29
/* 801B543C 001AB1BC  7F C4 F3 78 */	mr r4, r30
/* 801B5440 001AB1C0  7C 05 03 78 */	mr r5, r0
/* 801B5444 001AB1C4  7F E6 FB 78 */	mr r6, r31
/* 801B5448 001AB1C8  4B FF 65 CD */	bl nw4r3g3d8ScnGroupFUlUlPv$7DefG3dProcScnGroup
/* 801B544C 001AB1CC  48 00 00 40 */	b lbl_801B548C
lbl_801B5450:
/* 801B5450 001AB1D0  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 801B5454 001AB1D4  2C 03 00 00 */	cmpwi r3, 0
/* 801B5458 001AB1D8  41 82 00 20 */	beq lbl_801B5478
/* 801B545C 001AB1DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5460 001AB1E0  7F C4 F3 78 */	mr r4, r30
/* 801B5464 001AB1E4  7C 05 03 78 */	mr r5, r0
/* 801B5468 001AB1E8  7F E6 FB 78 */	mr r6, r31
/* 801B546C 001AB1EC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B5470 001AB1F0  7D 89 03 A6 */	mtctr r12
/* 801B5474 001AB1F4  4E 80 04 21 */	bctrl 
lbl_801B5478:
/* 801B5478 001AB1F8  80 A1 00 08 */	lwz r5, 8(r1)
/* 801B547C 001AB1FC  7F A3 EB 78 */	mr r3, r29
/* 801B5480 001AB200  7F C4 F3 78 */	mr r4, r30
/* 801B5484 001AB204  7F E6 FB 78 */	mr r6, r31
/* 801B5488 001AB208  4B FF 65 8D */	bl nw4r3g3d8ScnGroupFUlUlPv$7DefG3dProcScnGroup
lbl_801B548C:
/* 801B548C 001AB20C  39 61 00 60 */	addi r11, r1, 0x60
/* 801B5490 001AB210  48 23 BE D1 */	bl _restgpr_24
/* 801B5494 001AB214  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801B5498 001AB218  7C 08 03 A6 */	mtlr r0
/* 801B549C 001AB21C  38 21 00 60 */	addi r1, r1, 0x60
/* 801B54A0 001AB220  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandFv$7__dt
nw4r3g3d12ScnMdlExpandFv$7__dt:
/* 801B54A4 001AB224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B54A8 001AB228  7C 08 02 A6 */	mflr r0
/* 801B54AC 001AB22C  2C 03 00 00 */	cmpwi r3, 0
/* 801B54B0 001AB230  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B54B4 001AB234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B54B8 001AB238  7C 7F 1B 78 */	mr r31, r3
/* 801B54BC 001AB23C  41 82 00 4C */	beq lbl_801B5508
/* 801B54C0 001AB240  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 801B54C4 001AB244  3C 80 80 46 */	lis r4, lbl_804664F8@ha
/* 801B54C8 001AB248  38 84 64 F8 */	addi r4, r4, lbl_804664F8@l
/* 801B54CC 001AB24C  2C 00 00 00 */	cmpwi r0, 0
/* 801B54D0 001AB250  90 83 00 00 */	stw r4, 0(r3)
/* 801B54D4 001AB254  41 82 00 28 */	beq lbl_801B54FC
/* 801B54D8 001AB258  7C 03 03 78 */	mr r3, r0
/* 801B54DC 001AB25C  3C 80 00 01 */	lis r4, 0x00010003@ha
/* 801B54E0 001AB260  81 83 00 00 */	lwz r12, 0(r3)
/* 801B54E4 001AB264  7F E6 FB 78 */	mr r6, r31
/* 801B54E8 001AB268  38 84 00 03 */	addi r4, r4, 0x00010003@l
/* 801B54EC 001AB26C  38 A0 00 00 */	li r5, 0
/* 801B54F0 001AB270  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B54F4 001AB274  7D 89 03 A6 */	mtctr r12
/* 801B54F8 001AB278  4E 80 04 21 */	bctrl 
lbl_801B54FC:
/* 801B54FC 001AB27C  7F E3 FB 78 */	mr r3, r31
/* 801B5500 001AB280  38 80 00 00 */	li r4, 0
/* 801B5504 001AB284  4B FF 6C A9 */	bl nw4r3g3d8ScnGroupFv$7__dt
lbl_801B5508:
/* 801B5508 001AB288  7F E3 FB 78 */	mr r3, r31
/* 801B550C 001AB28C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5510 001AB290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5514 001AB294  7C 08 03 A6 */	mtlr r0
/* 801B5518 001AB298  38 21 00 10 */	addi r1, r1, 0x10
/* 801B551C 001AB29C  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandCFQ44nw4r3g3$7IsDerivedFrom
nw4r3g3d12ScnMdlExpandCFQ44nw4r3g3$7IsDerivedFrom:
/* 801B5520 001AB2A0  3C 60 80 41 */	lis r3, lbl_8040AC08@ha
/* 801B5524 001AB2A4  80 04 00 00 */	lwz r0, 0(r4)
/* 801B5528 001AB2A8  38 63 AC 08 */	addi r3, r3, lbl_8040AC08@l
/* 801B552C 001AB2AC  7C 00 18 40 */	cmplw r0, r3
/* 801B5530 001AB2B0  40 82 00 0C */	bne lbl_801B553C
/* 801B5534 001AB2B4  38 60 00 01 */	li r3, 1
/* 801B5538 001AB2B8  4E 80 00 20 */	blr 
lbl_801B553C:
/* 801B553C 001AB2BC  3C 60 80 41 */	lis r3, lbl_8040ABA0@ha
/* 801B5540 001AB2C0  80 04 00 00 */	lwz r0, 0(r4)
/* 801B5544 001AB2C4  38 63 AB A0 */	addi r3, r3, lbl_8040ABA0@l
/* 801B5548 001AB2C8  7C 00 18 40 */	cmplw r0, r3
/* 801B554C 001AB2CC  40 82 00 0C */	bne lbl_801B5558
/* 801B5550 001AB2D0  38 60 00 01 */	li r3, 1
/* 801B5554 001AB2D4  4E 80 00 20 */	blr 
lbl_801B5558:
/* 801B5558 001AB2D8  3C 60 80 41 */	lis r3, lbl_8040AB80@ha
/* 801B555C 001AB2DC  38 63 AB 80 */	addi r3, r3, lbl_8040AB80@l
/* 801B5560 001AB2E0  7C 00 18 40 */	cmplw r0, r3
/* 801B5564 001AB2E4  40 82 00 0C */	bne lbl_801B5570
/* 801B5568 001AB2E8  38 60 00 01 */	li r3, 1
/* 801B556C 001AB2EC  4E 80 00 20 */	blr 
lbl_801B5570:
/* 801B5570 001AB2F0  3C 60 80 41 */	lis r3, lbl_8040AA68@ha
/* 801B5574 001AB2F4  38 63 AA 68 */	addi r3, r3, lbl_8040AA68@l
/* 801B5578 001AB2F8  7C 00 18 50 */	subf r0, r0, r3
/* 801B557C 001AB2FC  7C 00 00 34 */	cntlzw r0, r0
/* 801B5580 001AB300  54 03 D9 7E */	srwi r3, r0, 5
/* 801B5584 001AB304  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandCFv$7GetTypeName
nw4r3g3d12ScnMdlExpandCFv$7GetTypeName:
/* 801B5588 001AB308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B558C 001AB30C  7C 08 02 A6 */	mflr r0
/* 801B5590 001AB310  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5594 001AB314  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5598 001AB318  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B559C 001AB31C  7D 89 03 A6 */	mtctr r12
/* 801B55A0 001AB320  4E 80 04 21 */	bctrl 
/* 801B55A4 001AB324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B55A8 001AB328  38 63 00 04 */	addi r3, r3, 4
/* 801B55AC 001AB32C  7C 08 03 A6 */	mtlr r0
/* 801B55B0 001AB330  38 21 00 10 */	addi r1, r1, 0x10
/* 801B55B4 001AB334  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlExpandCFv$7GetTypeObj
nw4r3g3d12ScnMdlExpandCFv$7GetTypeObj:
/* 801B55B8 001AB338  3C 60 80 41 */	lis r3, lbl_8040AC08@ha
/* 801B55BC 001AB33C  38 63 AC 08 */	addi r3, r3, lbl_8040AC08@l
/* 801B55C0 001AB340  4E 80 00 20 */	blr 

