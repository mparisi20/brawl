.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail11TaskManagerFv$7GetInstance
nw4r3snd6detail11TaskManagerFv$7GetInstance:
/* 801CFA14 001C5794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CFA18 001C5798  7C 08 02 A6 */	mflr r0
/* 801CFA1C 001C579C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CFA20 001C57A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CFA24 001C57A4  88 0D C1 F8 */	lbz r0, lbl_805A0618-_SDA_BASE_(r13)
/* 801CFA28 001C57A8  7C 00 07 75 */	extsb. r0, r0
/* 801CFA2C 001C57AC  40 82 00 68 */	bne lbl_801CFA94
/* 801CFA30 001C57B0  3F E0 80 4E */	lis r31, lbl_804DD0A4@ha
/* 801CFA34 001C57B4  3C 80 80 1D */	lis r4, nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__ct@ha
/* 801CFA38 001C57B8  3B FF D0 A4 */	addi r31, r31, lbl_804DD0A4@l
/* 801CFA3C 001C57BC  3C A0 80 1D */	lis r5, nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__dt@ha
/* 801CFA40 001C57C0  7F E3 FB 78 */	mr r3, r31
/* 801CFA44 001C57C4  38 84 FB 6C */	addi r4, r4, nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__ct@l
/* 801CFA48 001C57C8  38 A5 FB 14 */	addi r5, r5, nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__dt@l
/* 801CFA4C 001C57CC  38 C0 00 0C */	li r6, 0xc
/* 801CFA50 001C57D0  38 E0 00 03 */	li r7, 3
/* 801CFA54 001C57D4  48 22 11 89 */	bl __construct_array
/* 801CFA58 001C57D8  38 00 00 00 */	li r0, 0
/* 801CFA5C 001C57DC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 801CFA60 001C57E0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801CFA64 001C57E4  98 1F 00 28 */	stb r0, 0x28(r31)
/* 801CFA68 001C57E8  48 01 0C 9D */	bl OSInitThreadQueue
/* 801CFA6C 001C57EC  38 7F 00 34 */	addi r3, r31, 0x34
/* 801CFA70 001C57F0  48 01 0C 95 */	bl OSInitThreadQueue
/* 801CFA74 001C57F4  3C 80 80 1D */	lis r4, nw4r3snd6detail11TaskManagerFv$7__dt@ha
/* 801CFA78 001C57F8  3C A0 80 4E */	lis r5, lbl_804DD098@ha
/* 801CFA7C 001C57FC  7F E3 FB 78 */	mr r3, r31
/* 801CFA80 001C5800  38 84 FA B0 */	addi r4, r4, nw4r3snd6detail11TaskManagerFv$7__dt@l
/* 801CFA84 001C5804  38 A5 D0 98 */	addi r5, r5, lbl_804DD098@l
/* 801CFA88 001C5808  48 22 0C 9D */	bl __register_global_object_tmp
/* 801CFA8C 001C580C  38 00 00 01 */	li r0, 1
/* 801CFA90 001C5810  98 0D C1 F8 */	stb r0, lbl_805A0618-_SDA_BASE_(r13)
lbl_801CFA94:
/* 801CFA94 001C5814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CFA98 001C5818  3C 60 80 4E */	lis r3, lbl_804DD0A4@ha
/* 801CFA9C 001C581C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CFAA0 001C5820  38 63 D0 A4 */	addi r3, r3, lbl_804DD0A4@l
/* 801CFAA4 001C5824  7C 08 03 A6 */	mtlr r0
/* 801CFAA8 001C5828  38 21 00 10 */	addi r1, r1, 0x10
/* 801CFAAC 001C582C  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFv$7__dt
nw4r3snd6detail11TaskManagerFv$7__dt:
/* 801CFAB0 001C5830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CFAB4 001C5834  7C 08 02 A6 */	mflr r0
/* 801CFAB8 001C5838  2C 03 00 00 */	cmpwi r3, 0
/* 801CFABC 001C583C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CFAC0 001C5840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CFAC4 001C5844  7C 9F 23 78 */	mr r31, r4
/* 801CFAC8 001C5848  93 C1 00 08 */	stw r30, 8(r1)
/* 801CFACC 001C584C  7C 7E 1B 78 */	mr r30, r3
/* 801CFAD0 001C5850  41 82 00 28 */	beq lbl_801CFAF8
/* 801CFAD4 001C5854  3C 80 80 1D */	lis r4, nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__dt@ha
/* 801CFAD8 001C5858  38 A0 00 0C */	li r5, 0xc
/* 801CFADC 001C585C  38 84 FB 14 */	addi r4, r4, nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__dt@l
/* 801CFAE0 001C5860  38 C0 00 03 */	li r6, 3
/* 801CFAE4 001C5864  48 22 11 F1 */	bl __destroy_arr
/* 801CFAE8 001C5868  2C 1F 00 00 */	cmpwi r31, 0
/* 801CFAEC 001C586C  40 81 00 0C */	ble lbl_801CFAF8
/* 801CFAF0 001C5870  7F C3 F3 78 */	mr r3, r30
/* 801CFAF4 001C5874  4B E3 CD D5 */	bl __dl__FPv
lbl_801CFAF8:
/* 801CFAF8 001C5878  7F C3 F3 78 */	mr r3, r30
/* 801CFAFC 001C587C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CFB00 001C5880  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CFB04 001C5884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CFB08 001C5888  7C 08 03 A6 */	mtlr r0
/* 801CFB0C 001C588C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CFB10 001C5890  4E 80 00 20 */	blr 

.global nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__dt
nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__dt:
/* 801CFB14 001C5894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CFB18 001C5898  7C 08 02 A6 */	mflr r0
/* 801CFB1C 001C589C  2C 03 00 00 */	cmpwi r3, 0
/* 801CFB20 001C58A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CFB24 001C58A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CFB28 001C58A8  7C 9F 23 78 */	mr r31, r4
/* 801CFB2C 001C58AC  93 C1 00 08 */	stw r30, 8(r1)
/* 801CFB30 001C58B0  7C 7E 1B 78 */	mr r30, r3
/* 801CFB34 001C58B4  41 82 00 1C */	beq lbl_801CFB50
/* 801CFB38 001C58B8  38 80 00 00 */	li r4, 0
/* 801CFB3C 001C58BC  4B F8 C6 FD */	bl nw4r2ut6detail12LinkListImplFv$7__dt
/* 801CFB40 001C58C0  2C 1F 00 00 */	cmpwi r31, 0
/* 801CFB44 001C58C4  40 81 00 0C */	ble lbl_801CFB50
/* 801CFB48 001C58C8  7F C3 F3 78 */	mr r3, r30
/* 801CFB4C 001C58CC  4B E3 CD 7D */	bl __dl__FPv
lbl_801CFB50:
/* 801CFB50 001C58D0  7F C3 F3 78 */	mr r3, r30
/* 801CFB54 001C58D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CFB58 001C58D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CFB5C 001C58DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CFB60 001C58E0  7C 08 03 A6 */	mtlr r0
/* 801CFB64 001C58E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801CFB68 001C58E8  4E 80 00 20 */	blr 

.global nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__ct
nw4r2ut35LinkList$0Q44nw4r3snd6deta$7__ct:
/* 801CFB6C 001C58EC  38 00 00 00 */	li r0, 0
/* 801CFB70 001C58F0  38 83 00 04 */	addi r4, r3, 4
/* 801CFB74 001C58F4  90 03 00 04 */	stw r0, 4(r3)
/* 801CFB78 001C58F8  90 03 00 08 */	stw r0, 8(r3)
/* 801CFB7C 001C58FC  90 03 00 00 */	stw r0, 0(r3)
/* 801CFB80 001C5900  90 83 00 04 */	stw r4, 4(r3)
/* 801CFB84 001C5904  90 83 00 08 */	stw r4, 8(r3)
/* 801CFB88 001C5908  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6de$7AppendTask
nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6de$7AppendTask:
/* 801CFB8C 001C590C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CFB90 001C5910  7C 08 02 A6 */	mflr r0
/* 801CFB94 001C5914  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CFB98 001C5918  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CFB9C 001C591C  7C BF 2B 78 */	mr r31, r5
/* 801CFBA0 001C5920  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CFBA4 001C5924  7C 9E 23 78 */	mr r30, r4
/* 801CFBA8 001C5928  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CFBAC 001C592C  7C 7D 1B 78 */	mr r29, r3
/* 801CFBB0 001C5930  48 00 D3 61 */	bl OSDisableInterrupts
/* 801CFBB4 001C5934  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 801CFBB8 001C5938  38 80 00 01 */	li r4, 1
/* 801CFBBC 001C593C  98 9E 00 0C */	stb r4, 0xc(r30)
/* 801CFBC0 001C5940  7C 7F 1B 78 */	mr r31, r3
/* 801CFBC4 001C5944  38 81 00 08 */	addi r4, r1, 8
/* 801CFBC8 001C5948  7C 7D 02 14 */	add r3, r29, r0
/* 801CFBCC 001C594C  38 03 00 04 */	addi r0, r3, 4
/* 801CFBD0 001C5950  38 BE 00 04 */	addi r5, r30, 4
/* 801CFBD4 001C5954  90 01 00 08 */	stw r0, 8(r1)
/* 801CFBD8 001C5958  4B F8 C7 71 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801CFBDC 001C595C  38 7D 00 2C */	addi r3, r29, 0x2c
/* 801CFBE0 001C5960  48 01 1C 9D */	bl OSWakeupThread
/* 801CFBE4 001C5964  7F E3 FB 78 */	mr r3, r31
/* 801CFBE8 001C5968  48 00 D3 51 */	bl OSRestoreInterrupts
/* 801CFBEC 001C596C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CFBF0 001C5970  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CFBF4 001C5974  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CFBF8 001C5978  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CFBFC 001C597C  7C 08 03 A6 */	mtlr r0
/* 801CFC00 001C5980  38 21 00 20 */	addi r1, r1, 0x20
/* 801CFC04 001C5984  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFv$7PopTask
nw4r3snd6detail11TaskManagerFv$7PopTask:
/* 801CFC08 001C5988  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CFC0C 001C598C  7C 08 02 A6 */	mflr r0
/* 801CFC10 001C5990  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CFC14 001C5994  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801CFC18 001C5998  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801CFC1C 001C599C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801CFC20 001C59A0  93 81 00 20 */	stw r28, 0x20(r1)
/* 801CFC24 001C59A4  7C 7C 1B 78 */	mr r28, r3
/* 801CFC28 001C59A8  48 00 D2 E9 */	bl OSDisableInterrupts
/* 801CFC2C 001C59AC  7C 7F 1B 78 */	mr r31, r3
/* 801CFC30 001C59B0  48 00 D2 E1 */	bl OSDisableInterrupts
/* 801CFC34 001C59B4  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 801CFC38 001C59B8  7C 7E 1B 78 */	mr r30, r3
/* 801CFC3C 001C59BC  2C 00 00 00 */	cmpwi r0, 0
/* 801CFC40 001C59C0  40 82 00 10 */	bne lbl_801CFC50
/* 801CFC44 001C59C4  48 00 D2 F5 */	bl OSRestoreInterrupts
/* 801CFC48 001C59C8  3B C0 00 00 */	li r30, 0
/* 801CFC4C 001C59CC  48 00 00 24 */	b lbl_801CFC70
lbl_801CFC50:
/* 801CFC50 001C59D0  83 BC 00 1C */	lwz r29, 0x1c(r28)
/* 801CFC54 001C59D4  38 7C 00 18 */	addi r3, r28, 0x18
/* 801CFC58 001C59D8  38 81 00 10 */	addi r4, r1, 0x10
/* 801CFC5C 001C59DC  93 A1 00 10 */	stw r29, 0x10(r1)
/* 801CFC60 001C59E0  4B F8 C6 5D */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Erase
/* 801CFC64 001C59E4  7F C3 F3 78 */	mr r3, r30
/* 801CFC68 001C59E8  48 00 D2 D1 */	bl OSRestoreInterrupts
/* 801CFC6C 001C59EC  3B DD FF FC */	addi r30, r29, -4
lbl_801CFC70:
/* 801CFC70 001C59F0  2C 1E 00 00 */	cmpwi r30, 0
/* 801CFC74 001C59F4  41 82 00 14 */	beq lbl_801CFC88
/* 801CFC78 001C59F8  7F E3 FB 78 */	mr r3, r31
/* 801CFC7C 001C59FC  48 00 D2 BD */	bl OSRestoreInterrupts
/* 801CFC80 001C5A00  7F C3 F3 78 */	mr r3, r30
/* 801CFC84 001C5A04  48 00 00 C0 */	b lbl_801CFD44
lbl_801CFC88:
/* 801CFC88 001C5A08  48 00 D2 89 */	bl OSDisableInterrupts
/* 801CFC8C 001C5A0C  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 801CFC90 001C5A10  7C 7E 1B 78 */	mr r30, r3
/* 801CFC94 001C5A14  2C 00 00 00 */	cmpwi r0, 0
/* 801CFC98 001C5A18  40 82 00 10 */	bne lbl_801CFCA8
/* 801CFC9C 001C5A1C  48 00 D2 9D */	bl OSRestoreInterrupts
/* 801CFCA0 001C5A20  3B C0 00 00 */	li r30, 0
/* 801CFCA4 001C5A24  48 00 00 24 */	b lbl_801CFCC8
lbl_801CFCA8:
/* 801CFCA8 001C5A28  83 BC 00 10 */	lwz r29, 0x10(r28)
/* 801CFCAC 001C5A2C  38 7C 00 0C */	addi r3, r28, 0xc
/* 801CFCB0 001C5A30  38 81 00 0C */	addi r4, r1, 0xc
/* 801CFCB4 001C5A34  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801CFCB8 001C5A38  4B F8 C6 05 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Erase
/* 801CFCBC 001C5A3C  7F C3 F3 78 */	mr r3, r30
/* 801CFCC0 001C5A40  48 00 D2 79 */	bl OSRestoreInterrupts
/* 801CFCC4 001C5A44  3B DD FF FC */	addi r30, r29, -4
lbl_801CFCC8:
/* 801CFCC8 001C5A48  2C 1E 00 00 */	cmpwi r30, 0
/* 801CFCCC 001C5A4C  41 82 00 14 */	beq lbl_801CFCE0
/* 801CFCD0 001C5A50  7F E3 FB 78 */	mr r3, r31
/* 801CFCD4 001C5A54  48 00 D2 65 */	bl OSRestoreInterrupts
/* 801CFCD8 001C5A58  7F C3 F3 78 */	mr r3, r30
/* 801CFCDC 001C5A5C  48 00 00 68 */	b lbl_801CFD44
lbl_801CFCE0:
/* 801CFCE0 001C5A60  48 00 D2 31 */	bl OSDisableInterrupts
/* 801CFCE4 001C5A64  80 1C 00 00 */	lwz r0, 0(r28)
/* 801CFCE8 001C5A68  7C 7E 1B 78 */	mr r30, r3
/* 801CFCEC 001C5A6C  2C 00 00 00 */	cmpwi r0, 0
/* 801CFCF0 001C5A70  40 82 00 10 */	bne lbl_801CFD00
/* 801CFCF4 001C5A74  48 00 D2 45 */	bl OSRestoreInterrupts
/* 801CFCF8 001C5A78  3B C0 00 00 */	li r30, 0
/* 801CFCFC 001C5A7C  48 00 00 24 */	b lbl_801CFD20
lbl_801CFD00:
/* 801CFD00 001C5A80  83 BC 00 04 */	lwz r29, 4(r28)
/* 801CFD04 001C5A84  7F 83 E3 78 */	mr r3, r28
/* 801CFD08 001C5A88  38 81 00 08 */	addi r4, r1, 8
/* 801CFD0C 001C5A8C  93 A1 00 08 */	stw r29, 8(r1)
/* 801CFD10 001C5A90  4B F8 C5 AD */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Erase
/* 801CFD14 001C5A94  7F C3 F3 78 */	mr r3, r30
/* 801CFD18 001C5A98  48 00 D2 21 */	bl OSRestoreInterrupts
/* 801CFD1C 001C5A9C  3B DD FF FC */	addi r30, r29, -4
lbl_801CFD20:
/* 801CFD20 001C5AA0  2C 1E 00 00 */	cmpwi r30, 0
/* 801CFD24 001C5AA4  41 82 00 14 */	beq lbl_801CFD38
/* 801CFD28 001C5AA8  7F E3 FB 78 */	mr r3, r31
/* 801CFD2C 001C5AAC  48 00 D2 0D */	bl OSRestoreInterrupts
/* 801CFD30 001C5AB0  7F C3 F3 78 */	mr r3, r30
/* 801CFD34 001C5AB4  48 00 00 10 */	b lbl_801CFD44
lbl_801CFD38:
/* 801CFD38 001C5AB8  7F E3 FB 78 */	mr r3, r31
/* 801CFD3C 001C5ABC  48 00 D1 FD */	bl OSRestoreInterrupts
/* 801CFD40 001C5AC0  38 60 00 00 */	li r3, 0
lbl_801CFD44:
/* 801CFD44 001C5AC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CFD48 001C5AC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801CFD4C 001C5ACC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801CFD50 001C5AD0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801CFD54 001C5AD4  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801CFD58 001C5AD8  7C 08 03 A6 */	mtlr r0
/* 801CFD5C 001C5ADC  38 21 00 30 */	addi r1, r1, 0x30
/* 801CFD60 001C5AE0  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFv$7GetNextTask
nw4r3snd6detail11TaskManagerFv$7GetNextTask:
/* 801CFD64 001C5AE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CFD68 001C5AE8  7C 08 02 A6 */	mflr r0
/* 801CFD6C 001C5AEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CFD70 001C5AF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CFD74 001C5AF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CFD78 001C5AF8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CFD7C 001C5AFC  7C 7D 1B 78 */	mr r29, r3
/* 801CFD80 001C5B00  48 00 D1 91 */	bl OSDisableInterrupts
/* 801CFD84 001C5B04  7C 7F 1B 78 */	mr r31, r3
/* 801CFD88 001C5B08  48 00 D1 89 */	bl OSDisableInterrupts
/* 801CFD8C 001C5B0C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 801CFD90 001C5B10  2C 00 00 00 */	cmpwi r0, 0
/* 801CFD94 001C5B14  40 82 00 10 */	bne lbl_801CFDA4
/* 801CFD98 001C5B18  48 00 D1 A1 */	bl OSRestoreInterrupts
/* 801CFD9C 001C5B1C  3B C0 00 00 */	li r30, 0
/* 801CFDA0 001C5B20  48 00 00 10 */	b lbl_801CFDB0
lbl_801CFDA4:
/* 801CFDA4 001C5B24  83 DD 00 1C */	lwz r30, 0x1c(r29)
/* 801CFDA8 001C5B28  48 00 D1 91 */	bl OSRestoreInterrupts
/* 801CFDAC 001C5B2C  3B DE FF FC */	addi r30, r30, -4
lbl_801CFDB0:
/* 801CFDB0 001C5B30  2C 1E 00 00 */	cmpwi r30, 0
/* 801CFDB4 001C5B34  41 82 00 14 */	beq lbl_801CFDC8
/* 801CFDB8 001C5B38  7F E3 FB 78 */	mr r3, r31
/* 801CFDBC 001C5B3C  48 00 D1 7D */	bl OSRestoreInterrupts
/* 801CFDC0 001C5B40  7F C3 F3 78 */	mr r3, r30
/* 801CFDC4 001C5B44  48 00 00 90 */	b lbl_801CFE54
lbl_801CFDC8:
/* 801CFDC8 001C5B48  48 00 D1 49 */	bl OSDisableInterrupts
/* 801CFDCC 001C5B4C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 801CFDD0 001C5B50  2C 00 00 00 */	cmpwi r0, 0
/* 801CFDD4 001C5B54  40 82 00 10 */	bne lbl_801CFDE4
/* 801CFDD8 001C5B58  48 00 D1 61 */	bl OSRestoreInterrupts
/* 801CFDDC 001C5B5C  3B C0 00 00 */	li r30, 0
/* 801CFDE0 001C5B60  48 00 00 10 */	b lbl_801CFDF0
lbl_801CFDE4:
/* 801CFDE4 001C5B64  83 DD 00 10 */	lwz r30, 0x10(r29)
/* 801CFDE8 001C5B68  48 00 D1 51 */	bl OSRestoreInterrupts
/* 801CFDEC 001C5B6C  3B DE FF FC */	addi r30, r30, -4
lbl_801CFDF0:
/* 801CFDF0 001C5B70  2C 1E 00 00 */	cmpwi r30, 0
/* 801CFDF4 001C5B74  41 82 00 14 */	beq lbl_801CFE08
/* 801CFDF8 001C5B78  7F E3 FB 78 */	mr r3, r31
/* 801CFDFC 001C5B7C  48 00 D1 3D */	bl OSRestoreInterrupts
/* 801CFE00 001C5B80  7F C3 F3 78 */	mr r3, r30
/* 801CFE04 001C5B84  48 00 00 50 */	b lbl_801CFE54
lbl_801CFE08:
/* 801CFE08 001C5B88  48 00 D1 09 */	bl OSDisableInterrupts
/* 801CFE0C 001C5B8C  80 1D 00 00 */	lwz r0, 0(r29)
/* 801CFE10 001C5B90  2C 00 00 00 */	cmpwi r0, 0
/* 801CFE14 001C5B94  40 82 00 10 */	bne lbl_801CFE24
/* 801CFE18 001C5B98  48 00 D1 21 */	bl OSRestoreInterrupts
/* 801CFE1C 001C5B9C  3B C0 00 00 */	li r30, 0
/* 801CFE20 001C5BA0  48 00 00 10 */	b lbl_801CFE30
lbl_801CFE24:
/* 801CFE24 001C5BA4  83 DD 00 04 */	lwz r30, 4(r29)
/* 801CFE28 001C5BA8  48 00 D1 11 */	bl OSRestoreInterrupts
/* 801CFE2C 001C5BAC  3B DE FF FC */	addi r30, r30, -4
lbl_801CFE30:
/* 801CFE30 001C5BB0  2C 1E 00 00 */	cmpwi r30, 0
/* 801CFE34 001C5BB4  41 82 00 14 */	beq lbl_801CFE48
/* 801CFE38 001C5BB8  7F E3 FB 78 */	mr r3, r31
/* 801CFE3C 001C5BBC  48 00 D0 FD */	bl OSRestoreInterrupts
/* 801CFE40 001C5BC0  7F C3 F3 78 */	mr r3, r30
/* 801CFE44 001C5BC4  48 00 00 10 */	b lbl_801CFE54
lbl_801CFE48:
/* 801CFE48 001C5BC8  7F E3 FB 78 */	mr r3, r31
/* 801CFE4C 001C5BCC  48 00 D0 ED */	bl OSRestoreInterrupts
/* 801CFE50 001C5BD0  38 60 00 00 */	li r3, 0
lbl_801CFE54:
/* 801CFE54 001C5BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CFE58 001C5BD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CFE5C 001C5BDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CFE60 001C5BE0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CFE64 001C5BE4  7C 08 03 A6 */	mtlr r0
/* 801CFE68 001C5BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 801CFE6C 001C5BEC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFv$7ExecuteTask
nw4r3snd6detail11TaskManagerFv$7ExecuteTask:
/* 801CFE70 001C5BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CFE74 001C5BF4  7C 08 02 A6 */	mflr r0
/* 801CFE78 001C5BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CFE7C 001C5BFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CFE80 001C5C00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CFE84 001C5C04  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CFE88 001C5C08  7C 7D 1B 78 */	mr r29, r3
/* 801CFE8C 001C5C0C  4B FF FD 7D */	bl nw4r3snd6detail11TaskManagerFv$7PopTask
/* 801CFE90 001C5C10  2C 03 00 00 */	cmpwi r3, 0
/* 801CFE94 001C5C14  7C 7E 1B 78 */	mr r30, r3
/* 801CFE98 001C5C18  40 82 00 0C */	bne lbl_801CFEA4
/* 801CFE9C 001C5C1C  38 60 00 00 */	li r3, 0
/* 801CFEA0 001C5C20  48 00 00 30 */	b lbl_801CFED0
lbl_801CFEA4:
/* 801CFEA4 001C5C24  90 7D 00 24 */	stw r3, 0x24(r29)
/* 801CFEA8 001C5C28  3B E0 00 00 */	li r31, 0
/* 801CFEAC 001C5C2C  9B E3 00 0C */	stb r31, 0xc(r3)
/* 801CFEB0 001C5C30  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFEB4 001C5C34  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801CFEB8 001C5C38  7D 89 03 A6 */	mtctr r12
/* 801CFEBC 001C5C3C  4E 80 04 21 */	bctrl 
/* 801CFEC0 001C5C40  93 FD 00 24 */	stw r31, 0x24(r29)
/* 801CFEC4 001C5C44  38 7D 00 34 */	addi r3, r29, 0x34
/* 801CFEC8 001C5C48  48 01 19 B5 */	bl OSWakeupThread
/* 801CFECC 001C5C4C  7F C3 F3 78 */	mr r3, r30
lbl_801CFED0:
/* 801CFED0 001C5C50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CFED4 001C5C54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CFED8 001C5C58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CFEDC 001C5C5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CFEE0 001C5C60  7C 08 03 A6 */	mtlr r0
/* 801CFEE4 001C5C64  38 21 00 20 */	addi r1, r1, 0x20
/* 801CFEE8 001C5C68  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6de$7CancelTask
nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6de$7CancelTask:
/* 801CFEEC 001C5C6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CFEF0 001C5C70  7C 08 02 A6 */	mflr r0
/* 801CFEF4 001C5C74  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CFEF8 001C5C78  39 61 00 30 */	addi r11, r1, 0x30
/* 801CFEFC 001C5C7C  48 22 14 1D */	bl _savegpr_25
/* 801CFF00 001C5C80  7C 79 1B 78 */	mr r25, r3
/* 801CFF04 001C5C84  7C 9A 23 78 */	mr r26, r4
/* 801CFF08 001C5C88  48 00 D0 09 */	bl OSDisableInterrupts
/* 801CFF0C 001C5C8C  80 19 00 24 */	lwz r0, 0x24(r25)
/* 801CFF10 001C5C90  7C 7E 1B 78 */	mr r30, r3
/* 801CFF14 001C5C94  7C 1A 00 40 */	cmplw r26, r0
/* 801CFF18 001C5C98  40 82 00 34 */	bne lbl_801CFF4C
/* 801CFF1C 001C5C9C  81 9A 00 00 */	lwz r12, 0(r26)
/* 801CFF20 001C5CA0  7F 43 D3 78 */	mr r3, r26
/* 801CFF24 001C5CA4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801CFF28 001C5CA8  7D 89 03 A6 */	mtctr r12
/* 801CFF2C 001C5CAC  4E 80 04 21 */	bctrl 
/* 801CFF30 001C5CB0  48 00 00 0C */	b lbl_801CFF3C
lbl_801CFF34:
/* 801CFF34 001C5CB4  38 79 00 34 */	addi r3, r25, 0x34
/* 801CFF38 001C5CB8  48 01 18 59 */	bl OSSleepThread
lbl_801CFF3C:
/* 801CFF3C 001C5CBC  80 19 00 24 */	lwz r0, 0x24(r25)
/* 801CFF40 001C5CC0  7C 1A 00 40 */	cmplw r26, r0
/* 801CFF44 001C5CC4  41 82 FF F0 */	beq lbl_801CFF34
/* 801CFF48 001C5CC8  48 00 00 74 */	b lbl_801CFFBC
lbl_801CFF4C:
/* 801CFF4C 001C5CCC  3B 60 00 00 */	li r27, 0
/* 801CFF50 001C5CD0  3B E0 00 00 */	li r31, 0
/* 801CFF54 001C5CD4  3B A0 00 00 */	li r29, 0
lbl_801CFF58:
/* 801CFF58 001C5CD8  7C 79 FA 14 */	add r3, r25, r31
/* 801CFF5C 001C5CDC  80 83 00 04 */	lwz r4, 4(r3)
/* 801CFF60 001C5CE0  38 03 00 04 */	addi r0, r3, 4
/* 801CFF64 001C5CE4  48 00 00 40 */	b lbl_801CFFA4
lbl_801CFF68:
/* 801CFF68 001C5CE8  7C 9C 23 78 */	mr r28, r4
/* 801CFF6C 001C5CEC  80 84 00 00 */	lwz r4, 0(r4)
/* 801CFF70 001C5CF0  38 BC FF FC */	addi r5, r28, -4
/* 801CFF74 001C5CF4  7C 05 D0 40 */	cmplw r5, r26
/* 801CFF78 001C5CF8  40 82 00 2C */	bne lbl_801CFFA4
/* 801CFF7C 001C5CFC  93 81 00 08 */	stw r28, 8(r1)
/* 801CFF80 001C5D00  38 81 00 08 */	addi r4, r1, 8
/* 801CFF84 001C5D04  4B F8 C3 39 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Erase
/* 801CFF88 001C5D08  9B BC 00 08 */	stb r29, 8(r28)
/* 801CFF8C 001C5D0C  38 7C FF FC */	addi r3, r28, -4
/* 801CFF90 001C5D10  81 9C FF FC */	lwz r12, -4(r28)
/* 801CFF94 001C5D14  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801CFF98 001C5D18  7D 89 03 A6 */	mtctr r12
/* 801CFF9C 001C5D1C  4E 80 04 21 */	bctrl 
/* 801CFFA0 001C5D20  48 00 00 0C */	b lbl_801CFFAC
lbl_801CFFA4:
/* 801CFFA4 001C5D24  7C 04 00 40 */	cmplw r4, r0
/* 801CFFA8 001C5D28  40 82 FF C0 */	bne lbl_801CFF68
lbl_801CFFAC:
/* 801CFFAC 001C5D2C  3B 7B 00 01 */	addi r27, r27, 1
/* 801CFFB0 001C5D30  3B FF 00 0C */	addi r31, r31, 0xc
/* 801CFFB4 001C5D34  2C 1B 00 03 */	cmpwi r27, 3
/* 801CFFB8 001C5D38  41 80 FF A0 */	blt lbl_801CFF58
lbl_801CFFBC:
/* 801CFFBC 001C5D3C  7F C3 F3 78 */	mr r3, r30
/* 801CFFC0 001C5D40  48 00 CF 79 */	bl OSRestoreInterrupts
/* 801CFFC4 001C5D44  39 61 00 30 */	addi r11, r1, 0x30
/* 801CFFC8 001C5D48  48 22 13 9D */	bl _restgpr_25
/* 801CFFCC 001C5D4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CFFD0 001C5D50  7C 08 03 A6 */	mtlr r0
/* 801CFFD4 001C5D54  38 21 00 30 */	addi r1, r1, 0x30
/* 801CFFD8 001C5D58  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFv$7CancelAllTask
nw4r3snd6detail11TaskManagerFv$7CancelAllTask:
/* 801CFFDC 001C5D5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CFFE0 001C5D60  7C 08 02 A6 */	mflr r0
/* 801CFFE4 001C5D64  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CFFE8 001C5D68  39 61 00 30 */	addi r11, r1, 0x30
/* 801CFFEC 001C5D6C  48 22 13 2D */	bl _savegpr_25
/* 801CFFF0 001C5D70  7C 79 1B 78 */	mr r25, r3
/* 801CFFF4 001C5D74  48 00 CF 1D */	bl OSDisableInterrupts
/* 801CFFF8 001C5D78  7C 7E 1B 78 */	mr r30, r3
/* 801CFFFC 001C5D7C  3B 60 00 00 */	li r27, 0
/* 801D0000 001C5D80  3B E0 00 00 */	li r31, 0
/* 801D0004 001C5D84  3B A0 00 00 */	li r29, 0
lbl_801D0008:
/* 801D0008 001C5D88  7C 19 F8 2E */	lwzx r0, r25, r31
/* 801D000C 001C5D8C  7F 59 FA 14 */	add r26, r25, r31
/* 801D0010 001C5D90  2C 00 00 00 */	cmpwi r0, 0
/* 801D0014 001C5D94  41 82 00 44 */	beq lbl_801D0058
/* 801D0018 001C5D98  48 00 00 34 */	b lbl_801D004C
lbl_801D001C:
/* 801D001C 001C5D9C  80 BA 00 08 */	lwz r5, 8(r26)
/* 801D0020 001C5DA0  7F 43 D3 78 */	mr r3, r26
/* 801D0024 001C5DA4  38 81 00 08 */	addi r4, r1, 8
/* 801D0028 001C5DA8  90 A1 00 08 */	stw r5, 8(r1)
/* 801D002C 001C5DAC  3B 85 FF FC */	addi r28, r5, -4
/* 801D0030 001C5DB0  4B F8 C2 8D */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Erase
/* 801D0034 001C5DB4  9B BC 00 0C */	stb r29, 0xc(r28)
/* 801D0038 001C5DB8  7F 83 E3 78 */	mr r3, r28
/* 801D003C 001C5DBC  81 9C 00 00 */	lwz r12, 0(r28)
/* 801D0040 001C5DC0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801D0044 001C5DC4  7D 89 03 A6 */	mtctr r12
/* 801D0048 001C5DC8  4E 80 04 21 */	bctrl 
lbl_801D004C:
/* 801D004C 001C5DCC  80 1A 00 00 */	lwz r0, 0(r26)
/* 801D0050 001C5DD0  2C 00 00 00 */	cmpwi r0, 0
/* 801D0054 001C5DD4  40 82 FF C8 */	bne lbl_801D001C
lbl_801D0058:
/* 801D0058 001C5DD8  3B 7B 00 01 */	addi r27, r27, 1
/* 801D005C 001C5DDC  3B FF 00 0C */	addi r31, r31, 0xc
/* 801D0060 001C5DE0  2C 1B 00 03 */	cmpwi r27, 3
/* 801D0064 001C5DE4  41 80 FF A4 */	blt lbl_801D0008
/* 801D0068 001C5DE8  80 19 00 24 */	lwz r0, 0x24(r25)
/* 801D006C 001C5DEC  2C 00 00 00 */	cmpwi r0, 0
/* 801D0070 001C5DF0  41 82 00 30 */	beq lbl_801D00A0
/* 801D0074 001C5DF4  80 79 00 24 */	lwz r3, 0x24(r25)
/* 801D0078 001C5DF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D007C 001C5DFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801D0080 001C5E00  7D 89 03 A6 */	mtctr r12
/* 801D0084 001C5E04  4E 80 04 21 */	bctrl 
/* 801D0088 001C5E08  48 00 00 0C */	b lbl_801D0094
lbl_801D008C:
/* 801D008C 001C5E0C  38 79 00 34 */	addi r3, r25, 0x34
/* 801D0090 001C5E10  48 01 17 01 */	bl OSSleepThread
lbl_801D0094:
/* 801D0094 001C5E14  80 19 00 24 */	lwz r0, 0x24(r25)
/* 801D0098 001C5E18  2C 00 00 00 */	cmpwi r0, 0
/* 801D009C 001C5E1C  40 82 FF F0 */	bne lbl_801D008C
lbl_801D00A0:
/* 801D00A0 001C5E20  7F C3 F3 78 */	mr r3, r30
/* 801D00A4 001C5E24  48 00 CE 95 */	bl OSRestoreInterrupts
/* 801D00A8 001C5E28  39 61 00 30 */	addi r11, r1, 0x30
/* 801D00AC 001C5E2C  48 22 12 B9 */	bl _restgpr_25
/* 801D00B0 001C5E30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D00B4 001C5E34  7C 08 03 A6 */	mtlr r0
/* 801D00B8 001C5E38  38 21 00 30 */	addi r1, r1, 0x30
/* 801D00BC 001C5E3C  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFv$7WaitTask
nw4r3snd6detail11TaskManagerFv$7WaitTask:
/* 801D00C0 001C5E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D00C4 001C5E44  7C 08 02 A6 */	mflr r0
/* 801D00C8 001C5E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D00CC 001C5E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D00D0 001C5E50  93 C1 00 08 */	stw r30, 8(r1)
/* 801D00D4 001C5E54  7C 7E 1B 78 */	mr r30, r3
/* 801D00D8 001C5E58  48 00 CE 39 */	bl OSDisableInterrupts
/* 801D00DC 001C5E5C  38 00 00 00 */	li r0, 0
/* 801D00E0 001C5E60  7C 7F 1B 78 */	mr r31, r3
/* 801D00E4 001C5E64  98 1E 00 28 */	stb r0, 0x28(r30)
/* 801D00E8 001C5E68  48 00 00 0C */	b lbl_801D00F4
lbl_801D00EC:
/* 801D00EC 001C5E6C  38 7E 00 2C */	addi r3, r30, 0x2c
/* 801D00F0 001C5E70  48 01 16 A1 */	bl OSSleepThread
lbl_801D00F4:
/* 801D00F4 001C5E74  7F C3 F3 78 */	mr r3, r30
/* 801D00F8 001C5E78  4B FF FC 6D */	bl nw4r3snd6detail11TaskManagerFv$7GetNextTask
/* 801D00FC 001C5E7C  2C 03 00 00 */	cmpwi r3, 0
/* 801D0100 001C5E80  40 82 00 10 */	bne lbl_801D0110
/* 801D0104 001C5E84  88 1E 00 28 */	lbz r0, 0x28(r30)
/* 801D0108 001C5E88  2C 00 00 00 */	cmpwi r0, 0
/* 801D010C 001C5E8C  41 82 FF E0 */	beq lbl_801D00EC
lbl_801D0110:
/* 801D0110 001C5E90  7F E3 FB 78 */	mr r3, r31
/* 801D0114 001C5E94  48 00 CE 25 */	bl OSRestoreInterrupts
/* 801D0118 001C5E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D011C 001C5E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D0120 001C5EA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D0124 001C5EA4  7C 08 03 A6 */	mtlr r0
/* 801D0128 001C5EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D012C 001C5EAC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11TaskManagerFv$7CancelWaitTask
nw4r3snd6detail11TaskManagerFv$7CancelWaitTask:
/* 801D0130 001C5EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D0134 001C5EB4  7C 08 02 A6 */	mflr r0
/* 801D0138 001C5EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D013C 001C5EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D0140 001C5EC0  93 C1 00 08 */	stw r30, 8(r1)
/* 801D0144 001C5EC4  7C 7E 1B 78 */	mr r30, r3
/* 801D0148 001C5EC8  48 00 CD C9 */	bl OSDisableInterrupts
/* 801D014C 001C5ECC  38 00 00 01 */	li r0, 1
/* 801D0150 001C5ED0  7C 7F 1B 78 */	mr r31, r3
/* 801D0154 001C5ED4  98 1E 00 28 */	stb r0, 0x28(r30)
/* 801D0158 001C5ED8  38 7E 00 2C */	addi r3, r30, 0x2c
/* 801D015C 001C5EDC  48 01 17 21 */	bl OSWakeupThread
/* 801D0160 001C5EE0  7F E3 FB 78 */	mr r3, r31
/* 801D0164 001C5EE4  48 00 CD D5 */	bl OSRestoreInterrupts
/* 801D0168 001C5EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D016C 001C5EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D0170 001C5EF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D0174 001C5EF4  7C 08 03 A6 */	mtlr r0
/* 801D0178 001C5EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D017C 001C5EFC  4E 80 00 20 */	blr 

