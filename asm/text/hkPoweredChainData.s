.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkPoweredChainData
finishLoadedObjecthkPoweredChainData:
/* 802DAB58 002D08D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DAB5C 002D08DC  7C 08 02 A6 */	mflr r0
/* 802DAB60 002D08E0  2C 03 00 00 */	cmpwi r3, 0
/* 802DAB64 002D08E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DAB68 002D08E8  38 00 00 01 */	li r0, 1
/* 802DAB6C 002D08EC  41 82 00 10 */	beq lbl_802DAB7C
/* 802DAB70 002D08F0  90 01 00 08 */	stw r0, 8(r1)
/* 802DAB74 002D08F4  38 81 00 08 */	addi r4, r1, 8
/* 802DAB78 002D08F8  48 00 00 71 */	bl hkPoweredChainData$7__ct
lbl_802DAB7C:
/* 802DAB7C 002D08FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DAB80 002D0900  7C 08 03 A6 */	mtlr r0
/* 802DAB84 002D0904  38 21 00 10 */	addi r1, r1, 0x10
/* 802DAB88 002D0908  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkPoweredChainData
cleanupLoadedObjecthkPoweredChainData:
/* 802DAB8C 002D090C  81 83 00 00 */	lwz r12, 0(r3)
/* 802DAB90 002D0910  38 80 FF FF */	li r4, -1
/* 802DAB94 002D0914  81 8C 00 08 */	lwz r12, 8(r12)
/* 802DAB98 002D0918  7D 89 03 A6 */	mtctr r12
/* 802DAB9C 002D091C  4E 80 04 20 */	bctr 

.global getVtablehkPoweredChainData
getVtablehkPoweredChainData:
/* 802DABA0 002D0920  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802DABA4 002D0924  7C 2C 0B 78 */	mr r12, r1
/* 802DABA8 002D0928  21 6B FF A0 */	subfic r11, r11, -96
/* 802DABAC 002D092C  7C 21 59 6E */	stwux r1, r1, r11
/* 802DABB0 002D0930  7C 08 02 A6 */	mflr r0
/* 802DABB4 002D0934  34 61 00 20 */	addic. r3, r1, 0x20
/* 802DABB8 002D0938  90 0C 00 04 */	stw r0, 4(r12)
/* 802DABBC 002D093C  38 00 00 00 */	li r0, 0
/* 802DABC0 002D0940  41 82 00 10 */	beq lbl_802DABD0
/* 802DABC4 002D0944  90 01 00 10 */	stw r0, 0x10(r1)
/* 802DABC8 002D0948  38 81 00 10 */	addi r4, r1, 0x10
/* 802DABCC 002D094C  48 00 00 1D */	bl hkPoweredChainData$7__ct
lbl_802DABD0:
/* 802DABD0 002D0950  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802DABD4 002D0954  81 41 00 00 */	lwz r10, 0(r1)
/* 802DABD8 002D0958  80 0A 00 04 */	lwz r0, 4(r10)
/* 802DABDC 002D095C  7C 08 03 A6 */	mtlr r0
/* 802DABE0 002D0960  7D 41 53 78 */	mr r1, r10
/* 802DABE4 002D0964  4E 80 00 20 */	blr 

.global hkPoweredChainData$7__ct
hkPoweredChainData$7__ct:
/* 802DABE8 002D0968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DABEC 002D096C  7C 08 02 A6 */	mflr r0
/* 802DABF0 002D0970  3C A0 80 48 */	lis r5, lbl_80487A38@ha
/* 802DABF4 002D0974  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DABF8 002D0978  38 00 00 01 */	li r0, 1
/* 802DABFC 002D097C  38 A5 7A 38 */	addi r5, r5, lbl_80487A38@l
/* 802DAC00 002D0980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DAC04 002D0984  7C 7F 1B 78 */	mr r31, r3
/* 802DAC08 002D0988  B0 03 00 06 */	sth r0, 6(r3)
/* 802DAC0C 002D098C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802DAC10 002D0990  90 A3 00 00 */	stw r5, 0(r3)
/* 802DAC14 002D0994  38 63 00 0C */	addi r3, r3, 0xc
/* 802DAC18 002D0998  4B FF E9 CD */	bl hkBridgeConstraintAtom$7init
/* 802DAC1C 002D099C  7F E4 FB 78 */	mr r4, r31
/* 802DAC20 002D09A0  38 7F 00 0C */	addi r3, r31, 0xc
/* 802DAC24 002D09A4  4B FF E9 C1 */	bl hkBridgeConstraintAtom$7init
/* 802DAC28 002D09A8  7F E3 FB 78 */	mr r3, r31
/* 802DAC2C 002D09AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DAC30 002D09B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DAC34 002D09B4  7C 08 03 A6 */	mtlr r0
/* 802DAC38 002D09B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DAC3C 002D09BC  4E 80 00 20 */	blr 

.global hkPoweredChainData$7__dt
hkPoweredChainData$7__dt:
/* 802DAC40 002D09C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DAC44 002D09C4  7C 08 02 A6 */	mflr r0
/* 802DAC48 002D09C8  2C 03 00 00 */	cmpwi r3, 0
/* 802DAC4C 002D09CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DAC50 002D09D0  BF 41 00 08 */	stmw r26, 8(r1)
/* 802DAC54 002D09D4  7C 7E 1B 78 */	mr r30, r3
/* 802DAC58 002D09D8  7C 9F 23 78 */	mr r31, r4
/* 802DAC5C 002D09DC  41 82 00 F0 */	beq lbl_802DAD4C
/* 802DAC60 002D09E0  3C 80 80 48 */	lis r4, lbl_80487A38@ha
/* 802DAC64 002D09E4  3B 60 00 00 */	li r27, 0
/* 802DAC68 002D09E8  38 84 7A 38 */	addi r4, r4, lbl_80487A38@l
/* 802DAC6C 002D09EC  3B A0 00 00 */	li r29, 0
/* 802DAC70 002D09F0  90 83 00 00 */	stw r4, 0(r3)
/* 802DAC74 002D09F4  48 00 00 74 */	b lbl_802DACE8
lbl_802DAC78:
/* 802DAC78 002D09F8  3B 40 00 00 */	li r26, 0
/* 802DAC7C 002D09FC  3B 80 00 00 */	li r28, 0
lbl_802DAC80:
/* 802DAC80 002D0A00  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802DAC84 002D0A04  7C 1C EA 14 */	add r0, r28, r29
/* 802DAC88 002D0A08  7C 63 02 14 */	add r3, r3, r0
/* 802DAC8C 002D0A0C  80 63 00 40 */	lwz r3, 0x40(r3)
/* 802DAC90 002D0A10  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 802DAC94 002D0A14  41 86 00 3C */	beq cr1, lbl_802DACD0
/* 802DAC98 002D0A18  A0 03 00 04 */	lhz r0, 4(r3)
/* 802DAC9C 002D0A1C  2C 00 00 00 */	cmpwi r0, 0
/* 802DACA0 002D0A20  41 82 00 30 */	beq lbl_802DACD0
/* 802DACA4 002D0A24  A8 83 00 06 */	lha r4, 6(r3)
/* 802DACA8 002D0A28  38 84 FF FF */	addi r4, r4, -1
/* 802DACAC 002D0A2C  7C 80 07 35 */	extsh. r0, r4
/* 802DACB0 002D0A30  B0 83 00 06 */	sth r4, 6(r3)
/* 802DACB4 002D0A34  40 82 00 1C */	bne lbl_802DACD0
/* 802DACB8 002D0A38  41 86 00 18 */	beq cr1, lbl_802DACD0
/* 802DACBC 002D0A3C  81 83 00 00 */	lwz r12, 0(r3)
/* 802DACC0 002D0A40  38 80 00 01 */	li r4, 1
/* 802DACC4 002D0A44  81 8C 00 08 */	lwz r12, 8(r12)
/* 802DACC8 002D0A48  7D 89 03 A6 */	mtctr r12
/* 802DACCC 002D0A4C  4E 80 04 21 */	bctrl 
lbl_802DACD0:
/* 802DACD0 002D0A50  3B 5A 00 01 */	addi r26, r26, 1
/* 802DACD4 002D0A54  3B 9C 00 04 */	addi r28, r28, 4
/* 802DACD8 002D0A58  2C 1A 00 03 */	cmpwi r26, 3
/* 802DACDC 002D0A5C  41 80 FF A4 */	blt lbl_802DAC80
/* 802DACE0 002D0A60  3B BD 00 50 */	addi r29, r29, 0x50
/* 802DACE4 002D0A64  3B 7B 00 01 */	addi r27, r27, 1
lbl_802DACE8:
/* 802DACE8 002D0A68  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802DACEC 002D0A6C  7C 1B 00 00 */	cmpw r27, r0
/* 802DACF0 002D0A70  41 80 FF 88 */	blt lbl_802DAC78
/* 802DACF4 002D0A74  34 1E 00 18 */	addic. r0, r30, 0x18
/* 802DACF8 002D0A78  41 82 00 2C */	beq lbl_802DAD24
/* 802DACFC 002D0A7C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802DAD00 002D0A80  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 802DAD04 002D0A84  40 82 00 20 */	bne lbl_802DAD24
/* 802DAD08 002D0A88  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802DAD0C 002D0A8C  38 C0 00 15 */	li r6, 0x15
/* 802DAD10 002D0A90  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802DAD14 002D0A94  54 00 00 BE */	clrlwi r0, r0, 2
/* 802DAD18 002D0A98  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 802DAD1C 002D0A9C  1C A0 00 50 */	mulli r5, r0, 0x50
/* 802DAD20 002D0AA0  4B FA 3D 9D */	bl hkThreadMemory$7deallocateChunk
lbl_802DAD24:
/* 802DAD24 002D0AA4  2C 1F 00 00 */	cmpwi r31, 0
/* 802DAD28 002D0AA8  40 81 00 24 */	ble lbl_802DAD4C
/* 802DAD2C 002D0AAC  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802DAD30 002D0AB0  7F C4 F3 78 */	mr r4, r30
/* 802DAD34 002D0AB4  A0 BE 00 04 */	lhz r5, 4(r30)
/* 802DAD38 002D0AB8  38 C0 00 2A */	li r6, 0x2a
/* 802DAD3C 002D0ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 802DAD40 002D0AC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DAD44 002D0AC4  7D 89 03 A6 */	mtctr r12
/* 802DAD48 002D0AC8  4E 80 04 21 */	bctrl 
lbl_802DAD4C:
/* 802DAD4C 002D0ACC  7F C3 F3 78 */	mr r3, r30
/* 802DAD50 002D0AD0  BB 41 00 08 */	lmw r26, 8(r1)
/* 802DAD54 002D0AD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DAD58 002D0AD8  7C 08 03 A6 */	mtlr r0
/* 802DAD5C 002D0ADC  38 21 00 20 */	addi r1, r1, 0x20
/* 802DAD60 002D0AE0  4E 80 00 20 */	blr 

.global hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc
hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc:
/* 802DAD64 002D0AE4  1C 04 00 50 */	mulli r0, r4, 0x50
/* 802DAD68 002D0AE8  80 63 00 00 */	lwz r3, 0(r3)
/* 802DAD6C 002D0AEC  7C 63 02 14 */	add r3, r3, r0
/* 802DAD70 002D0AF0  4E 80 00 20 */	blr 

.global hkPoweredChainData$7getType
hkPoweredChainData$7getType:
/* 802DAD74 002D0AF4  38 60 00 66 */	li r3, 0x66
/* 802DAD78 002D0AF8  4E 80 00 20 */	blr 

.global hkQuaternion$7__as
hkQuaternion$7__as:
/* 802DAD7C 002D0AFC  C0 64 00 00 */	lfs f3, 0(r4)
/* 802DAD80 002D0B00  C0 44 00 04 */	lfs f2, 4(r4)
/* 802DAD84 002D0B04  C0 24 00 08 */	lfs f1, 8(r4)
/* 802DAD88 002D0B08  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802DAD8C 002D0B0C  D0 63 00 00 */	stfs f3, 0(r3)
/* 802DAD90 002D0B10  D0 43 00 04 */	stfs f2, 4(r3)
/* 802DAD94 002D0B14  D0 23 00 08 */	stfs f1, 8(r3)
/* 802DAD98 002D0B18  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802DAD9C 002D0B1C  4E 80 00 20 */	blr 

.global hkPoweredChainData$7getConstraintInfo
hkPoweredChainData$7getConstraintInfo:
/* 802DADA0 002D0B20  38 E3 00 0C */	addi r7, r3, 0xc
/* 802DADA4 002D0B24  38 C3 00 18 */	addi r6, r3, 0x18
/* 802DADA8 002D0B28  38 A0 00 00 */	li r5, 0
/* 802DADAC 002D0B2C  38 00 00 18 */	li r0, 0x18
/* 802DADB0 002D0B30  7C C7 30 50 */	subf r6, r7, r6
/* 802DADB4 002D0B34  90 E4 00 10 */	stw r7, 0x10(r4)
/* 802DADB8 002D0B38  90 C4 00 14 */	stw r6, 0x14(r4)
/* 802DADBC 002D0B3C  90 A4 00 00 */	stw r5, 0(r4)
/* 802DADC0 002D0B40  90 A4 00 04 */	stw r5, 4(r4)
/* 802DADC4 002D0B44  90 A4 00 0C */	stw r5, 0xc(r4)
/* 802DADC8 002D0B48  90 04 00 08 */	stw r0, 8(r4)
/* 802DADCC 002D0B4C  80 E3 00 1C */	lwz r7, 0x1c(r3)
/* 802DADD0 002D0B50  38 C7 00 01 */	addi r6, r7, 1
/* 802DADD4 002D0B54  54 E3 28 34 */	slwi r3, r7, 5
/* 802DADD8 002D0B58  54 C5 28 34 */	slwi r5, r6, 5
/* 802DADDC 002D0B5C  7C 65 1A 14 */	add r3, r5, r3
/* 802DADE0 002D0B60  54 C6 10 3A */	slwi r6, r6, 2
/* 802DADE4 002D0B64  1C A7 00 4C */	mulli r5, r7, 0x4c
/* 802DADE8 002D0B68  1C 07 00 06 */	mulli r0, r7, 6
/* 802DADEC 002D0B6C  7C A6 2A 14 */	add r5, r6, r5
/* 802DADF0 002D0B70  90 04 00 0C */	stw r0, 0xc(r4)
/* 802DADF4 002D0B74  38 05 00 30 */	addi r0, r5, 0x30
/* 802DADF8 002D0B78  1C A7 00 F0 */	mulli r5, r7, 0xf0
/* 802DADFC 002D0B7C  90 04 00 08 */	stw r0, 8(r4)
/* 802DAE00 002D0B80  1C 07 03 C0 */	mulli r0, r7, 0x3c0
/* 802DAE04 002D0B84  7C 05 02 14 */	add r0, r5, r0
/* 802DAE08 002D0B88  7C 03 02 14 */	add r0, r3, r0
/* 802DAE0C 002D0B8C  90 04 00 04 */	stw r0, 4(r4)
/* 802DAE10 002D0B90  4E 80 00 20 */	blr 

.global hkPoweredChainData$7getRuntimeInfo
hkPoweredChainData$7getRuntimeInfo:
/* 802DAE14 002D0B94  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802DAE18 002D0B98  1C C3 00 06 */	mulli r6, r3, 6
/* 802DAE1C 002D0B9C  38 03 00 03 */	addi r0, r3, 3
/* 802DAE20 002D0BA0  54 63 20 36 */	slwi r3, r3, 4
/* 802DAE24 002D0BA4  54 04 00 3A */	rlwinm r4, r0, 0, 0, 0x1d
/* 802DAE28 002D0BA8  54 C0 18 38 */	slwi r0, r6, 3
/* 802DAE2C 002D0BAC  90 C5 00 04 */	stw r6, 4(r5)
/* 802DAE30 002D0BB0  7C 04 02 14 */	add r0, r4, r0
/* 802DAE34 002D0BB4  7C 03 02 14 */	add r0, r3, r0
/* 802DAE38 002D0BB8  90 05 00 00 */	stw r0, 0(r5)
/* 802DAE3C 002D0BBC  4E 80 00 20 */	blr 

.global hkPoweredChainData$7getConstraintFlags
hkPoweredChainData$7getConstraintFlags:
/* 802DAE40 002D0BC0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DAE44 002D0BC4  1C 00 00 06 */	mulli r0, r0, 6
/* 802DAE48 002D0BC8  54 00 18 38 */	slwi r0, r0, 3
/* 802DAE4C 002D0BCC  7C 64 02 14 */	add r3, r4, r0
/* 802DAE50 002D0BD0  4E 80 00 20 */	blr 

.global hkConstraintInstance$7getRuntime
hkConstraintInstance$7getRuntime:
/* 802DAE54 002D0BD4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 802DAE58 002D0BD8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802DAE5C 002D0BDC  4E 80 00 20 */	blr 

.global hkPoweredChainData$7buildJacobian
hkPoweredChainData$7buildJacobian:
/* 802DAE60 002D0BE0  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802DAE64 002D0BE4  7C 2C 0B 78 */	mr r12, r1
/* 802DAE68 002D0BE8  21 6B F3 A0 */	subfic r11, r11, -3168
/* 802DAE6C 002D0BEC  7C 21 59 6E */	stwux r1, r1, r11
/* 802DAE70 002D0BF0  7C 08 02 A6 */	mflr r0
/* 802DAE74 002D0BF4  90 0C 00 04 */	stw r0, 4(r12)
/* 802DAE78 002D0BF8  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802DAE7C 002D0BFC  F3 EC 0F F8 */	psq_st f31, -8(r12), 0, qr0
/* 802DAE80 002D0C00  39 6C FF F0 */	addi r11, r12, -16
/* 802DAE84 002D0C04  48 11 64 6D */	bl _savegpr_15
/* 802DAE88 002D0C08  7C 70 1B 78 */	mr r16, r3
/* 802DAE8C 002D0C0C  7C 91 23 78 */	mr r17, r4
/* 802DAE90 002D0C10  7C B2 2B 78 */	mr r18, r5
/* 802DAE94 002D0C14  38 64 00 44 */	addi r3, r4, 0x44
/* 802DAE98 002D0C18  4B FA E9 7D */	bl hkPadSpu$0Pv$1$7val
/* 802DAE9C 002D0C1C  7C 65 1B 78 */	mr r5, r3
/* 802DAEA0 002D0C20  7E 23 8B 78 */	mr r3, r17
/* 802DAEA4 002D0C24  7E 44 93 78 */	mr r4, r18
/* 802DAEA8 002D0C28  38 C0 00 08 */	li r6, 8
/* 802DAEAC 002D0C2C  4B FA DC 95 */	bl hkBeginConstraints
/* 802DAEB0 002D0C30  38 72 00 08 */	addi r3, r18, 8
/* 802DAEB4 002D0C34  4B FB A2 55 */	bl hkPadSpu$0P16hkJacobianSchema$1$7__opP16hkJacobianSchema
/* 802DAEB8 002D0C38  7C 79 1B 78 */	mr r25, r3
/* 802DAEBC 002D0C3C  7E 24 8B 78 */	mr r4, r17
/* 802DAEC0 002D0C40  38 61 01 80 */	addi r3, r1, 0x180
/* 802DAEC4 002D0C44  4B FA E7 99 */	bl hkConstraintQueryIn$7__ct
/* 802DAEC8 002D0C48  38 61 00 18 */	addi r3, r1, 0x18
/* 802DAECC 002D0C4C  38 80 00 00 */	li r4, 0
/* 802DAED0 002D0C50  48 00 0A AD */	bl hkPadSpuLong$0P20hkConstraintInstance$1$7__ct
/* 802DAED4 002D0C54  7C 64 1B 78 */	mr r4, r3
/* 802DAED8 002D0C58  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 802DAEDC 002D0C5C  48 00 0A A9 */	bl hkPadSpuLong$0P20hkConstraintInstance$1$7__as
/* 802DAEE0 002D0C60  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 802DAEE4 002D0C64  38 80 00 00 */	li r4, 0
/* 802DAEE8 002D0C68  4B FB 29 CD */	bl hkPadSpu$0Pv$1$7__as
/* 802DAEEC 002D0C6C  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 802DAEF0 002D0C70  38 80 00 00 */	li r4, 0
/* 802DAEF4 002D0C74  48 00 0A 9D */	bl hkInplaceArray$027hkVelocityAccumulatorOffset$432$1$7__ct
/* 802DAEF8 002D0C78  7E 43 93 78 */	mr r3, r18
/* 802DAEFC 002D0C7C  4B FB A2 25 */	bl hkPadSpu$0P17hkJacobianElement$1$7__opP17hkJacobianElement
/* 802DAF00 002D0C80  7C 7D 1B 78 */	mr r29, r3
/* 802DAF04 002D0C84  38 71 00 40 */	addi r3, r17, 0x40
/* 802DAF08 002D0C88  48 00 0A A5 */	bl hkPadSpu$0P20hkConstraintInstance$1$7val
/* 802DAF0C 002D0C8C  7C 77 1B 78 */	mr r23, r3
/* 802DAF10 002D0C90  48 00 06 4D */	bl hkConstraintInstance$7getEntityA
/* 802DAF14 002D0C94  7C 6F 1B 78 */	mr r15, r3
/* 802DAF18 002D0C98  38 71 00 28 */	addi r3, r17, 0x28
/* 802DAF1C 002D0C9C  48 00 0A 99 */	bl hkPadSpu$0P21hkVelocityAccumulator$1$7val
/* 802DAF20 002D0CA0  80 0F 01 B0 */	lwz r0, 0x1b0(r15)
/* 802DAF24 002D0CA4  7C 80 00 D0 */	neg r4, r0
/* 802DAF28 002D0CA8  48 00 06 3D */	bl hkVelocityAccumulator$7hkAddByteOffset$021hkVelocityAccumulator$1
/* 802DAF2C 002D0CAC  3A D7 00 2C */	addi r22, r23, 0x2c
/* 802DAF30 002D0CB0  7C 78 1B 78 */	mr r24, r3
/* 802DAF34 002D0CB4  7E C3 B3 78 */	mr r3, r22
/* 802DAF38 002D0CB8  48 00 06 35 */	bl hkArray$0P8hkEntity$1$7getSize
/* 802DAF3C 002D0CBC  3A A3 FF FF */	addi r21, r3, -1
/* 802DAF40 002D0CC0  38 61 02 6C */	addi r3, r1, 0x26c
/* 802DAF44 002D0CC4  38 80 00 00 */	li r4, 0
/* 802DAF48 002D0CC8  48 00 0A 75 */	bl hkInplaceArray$026hk3dAngularMotorSolverInfo$432$1$7__ct
/* 802DAF4C 002D0CCC  7E A4 AB 78 */	mr r4, r21
/* 802DAF50 002D0CD0  38 61 02 6C */	addi r3, r1, 0x26c
/* 802DAF54 002D0CD4  48 00 0B 19 */	bl hkArray$026hk3dAngularMotorSolverInfo$1$7setSize
/* 802DAF58 002D0CD8  7E C3 B3 78 */	mr r3, r22
/* 802DAF5C 002D0CDC  38 80 00 00 */	li r4, 0
/* 802DAF60 002D0CE0  48 00 0B 75 */	bl hkArray$0P8hkEntity$1$7__vc
/* 802DAF64 002D0CE4  81 E3 00 00 */	lwz r15, 0(r3)
/* 802DAF68 002D0CE8  7D E3 7B 78 */	mr r3, r15
/* 802DAF6C 002D0CEC  48 00 06 09 */	bl hkEntity$7getMotion
/* 802DAF70 002D0CF0  80 8F 01 B0 */	lwz r4, 0x1b0(r15)
/* 802DAF74 002D0CF4  7C 6F 1B 78 */	mr r15, r3
/* 802DAF78 002D0CF8  7F 03 C3 78 */	mr r3, r24
/* 802DAF7C 002D0CFC  48 00 05 E9 */	bl hkVelocityAccumulator$7hkAddByteOffset$021hkVelocityAccumulator$1
/* 802DAF80 002D0D00  7C 64 1B 78 */	mr r4, r3
/* 802DAF84 002D0D04  38 61 01 AC */	addi r3, r1, 0x1ac
/* 802DAF88 002D0D08  4B FB D7 D5 */	bl hkPadSpu$0P21hkVelocityAccumulator$1$7__as
/* 802DAF8C 002D0D0C  38 61 01 AC */	addi r3, r1, 0x1ac
/* 802DAF90 002D0D10  4B FB A1 81 */	bl hkPadSpu$0P21hkVelocityAccumulator$1$7__opP21hkVelocityAccumulator
/* 802DAF94 002D0D14  7C 65 1B 78 */	mr r5, r3
/* 802DAF98 002D0D18  7F 04 C3 78 */	mr r4, r24
/* 802DAF9C 002D0D1C  38 61 00 14 */	addi r3, r1, 0x14
/* 802DAFA0 002D0D20  48 00 05 DD */	bl hkVelocityAccumulatorOffset$7__ct
/* 802DAFA4 002D0D24  7C 64 1B 78 */	mr r4, r3
/* 802DAFA8 002D0D28  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 802DAFAC 002D0D2C  48 00 0B 39 */	bl hkArray$027hkVelocityAccumulatorOffset$1$7pushBackUnchecked
/* 802DAFB0 002D0D30  7D E3 7B 78 */	mr r3, r15
/* 802DAFB4 002D0D34  48 00 05 D5 */	bl hkMotion$7getTransform
/* 802DAFB8 002D0D38  7C 64 1B 78 */	mr r4, r3
/* 802DAFBC 002D0D3C  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 802DAFC0 002D0D40  48 00 0B 45 */	bl hkPadSpu$0PC11hkTransform$1$7__as
/* 802DAFC4 002D0D44  7E 44 93 78 */	mr r4, r18
/* 802DAFC8 002D0D48  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802DAFCC 002D0D4C  48 00 0B 41 */	bl hkConstraintQueryOut$7__ct
/* 802DAFD0 002D0D50  7E 43 93 78 */	mr r3, r18
/* 802DAFD4 002D0D54  48 00 05 BD */	bl hkPadSpu$0P17hkJacobianElement$1$7val
/* 802DAFD8 002D0D58  1C 95 00 90 */	mulli r4, r21, 0x90
/* 802DAFDC 002D0D5C  4B FB BE FD */	bl hkJacobianElement$7hkAddByteOffset$017hkJacobianElement$1
/* 802DAFE0 002D0D60  7C 64 1B 78 */	mr r4, r3
/* 802DAFE4 002D0D64  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802DAFE8 002D0D68  4B FB A1 51 */	bl hkPadSpu$0P17hkJacobianElement$1$7__as
/* 802DAFEC 002D0D6C  38 61 01 9C */	addi r3, r1, 0x19c
/* 802DAFF0 002D0D70  38 81 01 88 */	addi r4, r1, 0x188
/* 802DAFF4 002D0D74  48 00 0B 35 */	bl hkPadSpuf$0f$1$7__as_10505
/* 802DAFF8 002D0D78  C0 22 AF 48 */	lfs f1, lbl_805A4268-_SDA2_BASE_(r2)
/* 802DAFFC 002D0D7C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 802DB000 002D0D80  4B FB D7 3D */	bl hkPadSpuf$0f$1$7__as
/* 802DB004 002D0D84  C3 E2 AF 4C */	lfs f31, lbl_805A426C-_SDA2_BASE_(r2)
/* 802DB008 002D0D88  3B E1 01 80 */	addi r31, r1, 0x180
/* 802DB00C 002D0D8C  3A 80 00 00 */	li r20, 0
/* 802DB010 002D0D90  39 E0 00 00 */	li r15, 0
/* 802DB014 002D0D94  3B 80 00 03 */	li r28, 3
/* 802DB018 002D0D98  48 00 04 34 */	b lbl_802DB44C
lbl_802DB01C:
/* 802DB01C 002D0D9C  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 802DB020 002D0DA0  38 81 01 AC */	addi r4, r1, 0x1ac
/* 802DB024 002D0DA4  48 00 0B 11 */	bl hkPadSpu$0P21hkVelocityAccumulator$1$7__as_10506
/* 802DB028 002D0DA8  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 802DB02C 002D0DAC  38 81 01 B4 */	addi r4, r1, 0x1b4
/* 802DB030 002D0DB0  48 00 0B 11 */	bl hkPadSpu$0PC11hkTransform$1$7__as_10507
/* 802DB034 002D0DB4  7E C3 B3 78 */	mr r3, r22
/* 802DB038 002D0DB8  38 94 00 01 */	addi r4, r20, 1
/* 802DB03C 002D0DBC  48 00 0A 99 */	bl hkArray$0P8hkEntity$1$7__vc
/* 802DB040 002D0DC0  82 63 00 00 */	lwz r19, 0(r3)
/* 802DB044 002D0DC4  7E 63 9B 78 */	mr r3, r19
/* 802DB048 002D0DC8  48 00 05 2D */	bl hkEntity$7getMotion
/* 802DB04C 002D0DCC  80 93 01 B0 */	lwz r4, 0x1b0(r19)
/* 802DB050 002D0DD0  7C 73 1B 78 */	mr r19, r3
/* 802DB054 002D0DD4  7F 03 C3 78 */	mr r3, r24
/* 802DB058 002D0DD8  48 00 05 0D */	bl hkVelocityAccumulator$7hkAddByteOffset$021hkVelocityAccumulator$1
/* 802DB05C 002D0DDC  7C 64 1B 78 */	mr r4, r3
/* 802DB060 002D0DE0  38 61 01 AC */	addi r3, r1, 0x1ac
/* 802DB064 002D0DE4  4B FB D6 F9 */	bl hkPadSpu$0P21hkVelocityAccumulator$1$7__as
/* 802DB068 002D0DE8  38 61 01 AC */	addi r3, r1, 0x1ac
/* 802DB06C 002D0DEC  4B FB A0 A5 */	bl hkPadSpu$0P21hkVelocityAccumulator$1$7__opP21hkVelocityAccumulator
/* 802DB070 002D0DF0  7C 65 1B 78 */	mr r5, r3
/* 802DB074 002D0DF4  7F 04 C3 78 */	mr r4, r24
/* 802DB078 002D0DF8  38 61 00 10 */	addi r3, r1, 0x10
/* 802DB07C 002D0DFC  48 00 05 01 */	bl hkVelocityAccumulatorOffset$7__ct
/* 802DB080 002D0E00  7C 64 1B 78 */	mr r4, r3
/* 802DB084 002D0E04  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 802DB088 002D0E08  48 00 0A C5 */	bl hkArray$027hkVelocityAccumulatorOffset$1$7pushBack
/* 802DB08C 002D0E0C  7E 63 9B 78 */	mr r3, r19
/* 802DB090 002D0E10  48 00 04 F9 */	bl hkMotion$7getTransform
/* 802DB094 002D0E14  7C 64 1B 78 */	mr r4, r3
/* 802DB098 002D0E18  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 802DB09C 002D0E1C  48 00 0A 69 */	bl hkPadSpu$0PC11hkTransform$1$7__as
/* 802DB0A0 002D0E20  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802DB0A4 002D0E24  48 00 04 F5 */	bl hkVector4$7__ct
/* 802DB0A8 002D0E28  7E 84 A3 78 */	mr r4, r20
/* 802DB0AC 002D0E2C  38 70 00 18 */	addi r3, r16, 0x18
/* 802DB0B0 002D0E30  4B FF FC B5 */	bl hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc
/* 802DB0B4 002D0E34  7C 73 1B 78 */	mr r19, r3
/* 802DB0B8 002D0E38  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 802DB0BC 002D0E3C  48 00 0A FD */	bl hkPadSpu$0PC11hkTransform$1$7__opPC11hkTransform
/* 802DB0C0 002D0E40  7C 64 1B 78 */	mr r4, r3
/* 802DB0C4 002D0E44  7E 65 9B 78 */	mr r5, r19
/* 802DB0C8 002D0E48  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802DB0CC 002D0E4C  48 00 04 D1 */	bl hkVector4$7_setTransformedPos
/* 802DB0D0 002D0E50  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802DB0D4 002D0E54  48 00 04 C5 */	bl hkVector4$7__ct
/* 802DB0D8 002D0E58  7E 84 A3 78 */	mr r4, r20
/* 802DB0DC 002D0E5C  38 70 00 18 */	addi r3, r16, 0x18
/* 802DB0E0 002D0E60  4B FF FC 85 */	bl hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc
/* 802DB0E4 002D0E64  7C 73 1B 78 */	mr r19, r3
/* 802DB0E8 002D0E68  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 802DB0EC 002D0E6C  48 00 0A CD */	bl hkPadSpu$0PC11hkTransform$1$7__opPC11hkTransform
/* 802DB0F0 002D0E70  7C 64 1B 78 */	mr r4, r3
/* 802DB0F4 002D0E74  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802DB0F8 002D0E78  38 B3 00 10 */	addi r5, r19, 0x10
/* 802DB0FC 002D0E7C  48 00 04 A1 */	bl hkVector4$7_setTransformedPos
/* 802DB100 002D0E80  38 61 01 80 */	addi r3, r1, 0x180
/* 802DB104 002D0E84  4B FB 27 B9 */	bl hkLoadVelocityAccumulators
/* 802DB108 002D0E88  C0 30 00 3C */	lfs f1, 0x3c(r16)
/* 802DB10C 002D0E8C  7E 46 93 78 */	mr r6, r18
/* 802DB110 002D0E90  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802DB114 002D0E94  38 81 00 B0 */	addi r4, r1, 0xb0
/* 802DB118 002D0E98  38 A1 01 80 */	addi r5, r1, 0x180
/* 802DB11C 002D0E9C  4B FB 40 8D */	bl hkStabilizedBallSocketConstraintBuildJacobian
/* 802DB120 002D0EA0  7F 24 CB 78 */	mr r4, r25
/* 802DB124 002D0EA4  38 72 00 08 */	addi r3, r18, 8
/* 802DB128 002D0EA8  4B FB A0 19 */	bl hkPadSpu$0P16hkJacobianSchema$1$7__as
/* 802DB12C 002D0EAC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 802DB130 002D0EB0  48 00 04 F1 */	bl hkQuaternion$7__ct
/* 802DB134 002D0EB4  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 802DB138 002D0EB8  48 00 0A 89 */	bl hkPadSpu$0PC11hkTransform$1$7__rf
/* 802DB13C 002D0EBC  48 00 04 E9 */	bl hkTransform$7getRotation
/* 802DB140 002D0EC0  7C 64 1B 78 */	mr r4, r3
/* 802DB144 002D0EC4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 802DB148 002D0EC8  4B FA A7 C5 */	bl hkQuaternion$7set
/* 802DB14C 002D0ECC  38 61 00 90 */	addi r3, r1, 0x90
/* 802DB150 002D0ED0  48 00 04 D1 */	bl hkQuaternion$7__ct
/* 802DB154 002D0ED4  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 802DB158 002D0ED8  48 00 0A 69 */	bl hkPadSpu$0PC11hkTransform$1$7__rf
/* 802DB15C 002D0EDC  48 00 04 C9 */	bl hkTransform$7getRotation
/* 802DB160 002D0EE0  7C 64 1B 78 */	mr r4, r3
/* 802DB164 002D0EE4  38 61 00 90 */	addi r3, r1, 0x90
/* 802DB168 002D0EE8  4B FA A7 A5 */	bl hkQuaternion$7set
/* 802DB16C 002D0EEC  7E 84 A3 78 */	mr r4, r20
/* 802DB170 002D0EF0  38 70 00 18 */	addi r3, r16, 0x18
/* 802DB174 002D0EF4  4B FF FB F1 */	bl hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc
/* 802DB178 002D0EF8  38 63 00 4C */	addi r3, r3, 0x4c
/* 802DB17C 002D0EFC  4B FC 5A 5D */	bl hkBool$7__opb
/* 802DB180 002D0F00  2C 03 00 00 */	cmpwi r3, 0
/* 802DB184 002D0F04  41 82 00 10 */	beq lbl_802DB194
/* 802DB188 002D0F08  38 61 00 A0 */	addi r3, r1, 0xa0
/* 802DB18C 002D0F0C  38 81 00 90 */	addi r4, r1, 0x90
/* 802DB190 002D0F10  48 00 07 81 */	bl hkAlgorithm$7swap$012hkQuaternion$1
lbl_802DB194:
/* 802DB194 002D0F14  38 61 00 80 */	addi r3, r1, 0x80
/* 802DB198 002D0F18  48 00 04 89 */	bl hkQuaternion$7__ct
/* 802DB19C 002D0F1C  7E 84 A3 78 */	mr r4, r20
/* 802DB1A0 002D0F20  38 70 00 18 */	addi r3, r16, 0x18
/* 802DB1A4 002D0F24  4B FF FB C1 */	bl hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc
/* 802DB1A8 002D0F28  7C 65 1B 78 */	mr r5, r3
/* 802DB1AC 002D0F2C  38 61 00 80 */	addi r3, r1, 0x80
/* 802DB1B0 002D0F30  38 81 00 90 */	addi r4, r1, 0x90
/* 802DB1B4 002D0F34  38 A5 00 30 */	addi r5, r5, 0x30
/* 802DB1B8 002D0F38  48 00 04 71 */	bl hkQuaternion$7setMul
/* 802DB1BC 002D0F3C  38 61 00 90 */	addi r3, r1, 0x90
/* 802DB1C0 002D0F40  38 81 00 80 */	addi r4, r1, 0x80
/* 802DB1C4 002D0F44  4B FF FB B9 */	bl hkQuaternion$7__as
/* 802DB1C8 002D0F48  7E 84 A3 78 */	mr r4, r20
/* 802DB1CC 002D0F4C  38 70 00 18 */	addi r3, r16, 0x18
/* 802DB1D0 002D0F50  4B FF FB 95 */	bl hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc
/* 802DB1D4 002D0F54  3A 63 00 20 */	addi r19, r3, 0x20
/* 802DB1D8 002D0F58  38 71 00 44 */	addi r3, r17, 0x44
/* 802DB1DC 002D0F5C  48 00 09 ED */	bl hkPadSpu$0Pv$1$7__opPv
/* 802DB1E0 002D0F60  7C 64 1B 78 */	mr r4, r3
/* 802DB1E4 002D0F64  7E 03 83 78 */	mr r3, r16
/* 802DB1E8 002D0F68  48 00 04 FD */	bl hkPoweredChainData$7getMotorRuntimeQuaternions
/* 802DB1EC 002D0F6C  7F 43 7A 14 */	add r26, r3, r15
/* 802DB1F0 002D0F70  38 61 00 70 */	addi r3, r1, 0x70
/* 802DB1F4 002D0F74  48 00 04 2D */	bl hkQuaternion$7__ct
/* 802DB1F8 002D0F78  C0 3A 00 00 */	lfs f1, 0(r26)
/* 802DB1FC 002D0F7C  38 61 00 70 */	addi r3, r1, 0x70
/* 802DB200 002D0F80  C0 5A 00 04 */	lfs f2, 4(r26)
/* 802DB204 002D0F84  C0 7A 00 08 */	lfs f3, 8(r26)
/* 802DB208 002D0F88  C0 9A 00 0C */	lfs f4, 0xc(r26)
/* 802DB20C 002D0F8C  48 00 04 C5 */	bl hkVector4$7set
/* 802DB210 002D0F90  38 61 00 70 */	addi r3, r1, 0x70
/* 802DB214 002D0F94  48 00 04 F1 */	bl hkVector4$7lengthSquared4
/* 802DB218 002D0F98  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 802DB21C 002D0F9C  40 82 00 10 */	bne lbl_802DB22C
/* 802DB220 002D0FA0  7E 64 9B 78 */	mr r4, r19
/* 802DB224 002D0FA4  38 61 00 70 */	addi r3, r1, 0x70
/* 802DB228 002D0FA8  4B FF FB 55 */	bl hkQuaternion$7__as
lbl_802DB22C:
/* 802DB22C 002D0FAC  38 61 00 60 */	addi r3, r1, 0x60
/* 802DB230 002D0FB0  48 00 03 F1 */	bl hkQuaternion$7__ct
/* 802DB234 002D0FB4  7E 65 9B 78 */	mr r5, r19
/* 802DB238 002D0FB8  38 61 00 60 */	addi r3, r1, 0x60
/* 802DB23C 002D0FBC  38 81 00 A0 */	addi r4, r1, 0xa0
/* 802DB240 002D0FC0  48 00 03 E9 */	bl hkQuaternion$7setMul
/* 802DB244 002D0FC4  38 61 00 50 */	addi r3, r1, 0x50
/* 802DB248 002D0FC8  48 00 03 D9 */	bl hkQuaternion$7__ct
/* 802DB24C 002D0FCC  38 61 00 50 */	addi r3, r1, 0x50
/* 802DB250 002D0FD0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 802DB254 002D0FD4  38 A1 00 70 */	addi r5, r1, 0x70
/* 802DB258 002D0FD8  48 00 03 D1 */	bl hkQuaternion$7setMul
/* 802DB25C 002D0FDC  7E 63 9B 78 */	mr r3, r19
/* 802DB260 002D0FE0  38 80 00 00 */	li r4, 0
/* 802DB264 002D0FE4  4B FB C2 25 */	bl hkVector4$7__cl_9512
/* 802DB268 002D0FE8  C0 03 00 00 */	lfs f0, 0(r3)
/* 802DB26C 002D0FEC  7E 63 9B 78 */	mr r3, r19
/* 802DB270 002D0FF0  38 80 00 01 */	li r4, 1
/* 802DB274 002D0FF4  D0 1A 00 00 */	stfs f0, 0(r26)
/* 802DB278 002D0FF8  4B FB C2 11 */	bl hkVector4$7__cl_9512
/* 802DB27C 002D0FFC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802DB280 002D1000  7E 63 9B 78 */	mr r3, r19
/* 802DB284 002D1004  38 80 00 02 */	li r4, 2
/* 802DB288 002D1008  D0 1A 00 04 */	stfs f0, 4(r26)
/* 802DB28C 002D100C  4B FB C1 FD */	bl hkVector4$7__cl_9512
/* 802DB290 002D1010  C0 03 00 00 */	lfs f0, 0(r3)
/* 802DB294 002D1014  7E 63 9B 78 */	mr r3, r19
/* 802DB298 002D1018  38 80 00 03 */	li r4, 3
/* 802DB29C 002D101C  D0 1A 00 08 */	stfs f0, 8(r26)
/* 802DB2A0 002D1020  4B FB C1 E9 */	bl hkVector4$7__cl_9512
/* 802DB2A4 002D1024  C0 03 00 00 */	lfs f0, 0(r3)
/* 802DB2A8 002D1028  38 61 00 40 */	addi r3, r1, 0x40
/* 802DB2AC 002D102C  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 802DB2B0 002D1030  48 00 02 E9 */	bl hkVector4$7__ct
/* 802DB2B4 002D1034  38 61 00 90 */	addi r3, r1, 0x90
/* 802DB2B8 002D1038  38 81 00 60 */	addi r4, r1, 0x60
/* 802DB2BC 002D103C  38 A1 00 40 */	addi r5, r1, 0x40
/* 802DB2C0 002D1040  48 00 04 69 */	bl hkQuaternion$7estimateAngleToLs
/* 802DB2C4 002D1044  38 61 00 30 */	addi r3, r1, 0x30
/* 802DB2C8 002D1048  48 00 02 D1 */	bl hkVector4$7__ct
/* 802DB2CC 002D104C  38 61 00 90 */	addi r3, r1, 0x90
/* 802DB2D0 002D1050  38 81 00 50 */	addi r4, r1, 0x50
/* 802DB2D4 002D1054  38 A1 00 30 */	addi r5, r1, 0x30
/* 802DB2D8 002D1058  48 00 04 51 */	bl hkQuaternion$7estimateAngleToLs
/* 802DB2DC 002D105C  38 61 00 40 */	addi r3, r1, 0x40
/* 802DB2E0 002D1060  38 81 00 30 */	addi r4, r1, 0x30
/* 802DB2E4 002D1064  48 00 05 21 */	bl hkVector4$7sub4
/* 802DB2E8 002D1068  7E 84 A3 78 */	mr r4, r20
/* 802DB2EC 002D106C  38 70 00 18 */	addi r3, r16, 0x18
/* 802DB2F0 002D1070  4B FF FA 75 */	bl hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc
/* 802DB2F4 002D1074  38 63 00 4C */	addi r3, r3, 0x4c
/* 802DB2F8 002D1078  4B FC 58 E1 */	bl hkBool$7__opb
/* 802DB2FC 002D107C  2C 03 00 00 */	cmpwi r3, 0
/* 802DB300 002D1080  41 82 00 1C */	beq lbl_802DB31C
/* 802DB304 002D1084  38 61 00 40 */	addi r3, r1, 0x40
/* 802DB308 002D1088  7C 64 1B 78 */	mr r4, r3
/* 802DB30C 002D108C  48 00 05 3D */	bl hkVector4$7setNeg3
/* 802DB310 002D1090  38 61 00 30 */	addi r3, r1, 0x30
/* 802DB314 002D1094  7C 64 1B 78 */	mr r4, r3
/* 802DB318 002D1098  48 00 05 31 */	bl hkVector4$7setNeg3
lbl_802DB31C:
/* 802DB31C 002D109C  38 61 01 50 */	addi r3, r1, 0x150
/* 802DB320 002D10A0  48 00 05 59 */	bl hkRotation$7__ct
/* 802DB324 002D10A4  38 61 01 50 */	addi r3, r1, 0x150
/* 802DB328 002D10A8  38 81 00 90 */	addi r4, r1, 0x90
/* 802DB32C 002D10AC  4B FA A7 41 */	bl hkRotation$7set
/* 802DB330 002D10B0  3A 60 00 00 */	li r19, 0
/* 802DB334 002D10B4  3B 60 00 00 */	li r27, 0
/* 802DB338 002D10B8  3B 40 00 00 */	li r26, 0
lbl_802DB33C:
/* 802DB33C 002D10BC  7E 64 9B 78 */	mr r4, r19
/* 802DB340 002D10C0  38 61 01 50 */	addi r3, r1, 0x150
/* 802DB344 002D10C4  48 00 05 5D */	bl hkMatrix3$7getColumn
/* 802DB348 002D10C8  7C 64 1B 78 */	mr r4, r3
/* 802DB34C 002D10CC  38 61 00 20 */	addi r3, r1, 0x20
/* 802DB350 002D10D0  48 00 05 2D */	bl hkVector4$7__ct_10488
/* 802DB354 002D10D4  7E E3 BB 78 */	mr r3, r23
/* 802DB358 002D10D8  4B FF FA FD */	bl hkConstraintInstance$7getRuntime
/* 802DB35C 002D10DC  81 90 00 00 */	lwz r12, 0(r16)
/* 802DB360 002D10E0  7C 64 1B 78 */	mr r4, r3
/* 802DB364 002D10E4  7E 03 83 78 */	mr r3, r16
/* 802DB368 002D10E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DB36C 002D10EC  7D 89 03 A6 */	mtctr r12
/* 802DB370 002D10F0  4E 80 04 21 */	bctrl 
/* 802DB374 002D10F4  7C 7E 1B 78 */	mr r30, r3
/* 802DB378 002D10F8  38 61 00 F8 */	addi r3, r1, 0xf8
/* 802DB37C 002D10FC  48 00 08 55 */	bl hkConstraintMotorInput$7__ct
/* 802DB380 002D1100  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802DB384 002D1104  4B FB 9D 9D */	bl hkPadSpu$0P17hkJacobianElement$1$7__opP17hkJacobianElement
/* 802DB388 002D1108  7C 65 1B 78 */	mr r5, r3
/* 802DB38C 002D110C  38 61 00 20 */	addi r3, r1, 0x20
/* 802DB390 002D1110  38 81 01 80 */	addi r4, r1, 0x180
/* 802DB394 002D1114  38 C1 00 F8 */	addi r6, r1, 0xf8
/* 802DB398 002D1118  4B FA D4 11 */	bl hk1dAngularVelocityMotorBeginJacobian
/* 802DB39C 002D111C  7C 13 E2 14 */	add r0, r19, r28
/* 802DB3A0 002D1120  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 802DB3A4 002D1124  54 00 18 38 */	slwi r0, r0, 3
/* 802DB3A8 002D1128  38 61 01 00 */	addi r3, r1, 0x100
/* 802DB3AC 002D112C  7C 9E 02 14 */	add r4, r30, r0
/* 802DB3B0 002D1130  48 00 08 31 */	bl hkSolverResults$7__as
/* 802DB3B4 002D1134  7E 64 9B 78 */	mr r4, r19
/* 802DB3B8 002D1138  38 61 00 40 */	addi r3, r1, 0x40
/* 802DB3BC 002D113C  4B DB B2 E9 */	bl hkVector4$7__cl
/* 802DB3C0 002D1140  C0 03 00 00 */	lfs f0, 0(r3)
/* 802DB3C4 002D1144  7E 64 9B 78 */	mr r4, r19
/* 802DB3C8 002D1148  38 61 00 30 */	addi r3, r1, 0x30
/* 802DB3CC 002D114C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 802DB3D0 002D1150  4B DB B2 D5 */	bl hkVector4$7__cl
/* 802DB3D4 002D1154  C0 03 00 00 */	lfs f0, 0(r3)
/* 802DB3D8 002D1158  7E 84 A3 78 */	mr r4, r20
/* 802DB3DC 002D115C  38 70 00 18 */	addi r3, r16, 0x18
/* 802DB3E0 002D1160  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 802DB3E4 002D1164  4B FF F9 81 */	bl hkArray$0Q218hkPoweredChainData14ConstraintInfo$1$7__vc
/* 802DB3E8 002D1168  7C 63 DA 14 */	add r3, r3, r27
/* 802DB3EC 002D116C  38 81 00 F8 */	addi r4, r1, 0xf8
/* 802DB3F0 002D1170  80 63 00 40 */	lwz r3, 0x40(r3)
/* 802DB3F4 002D1174  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 802DB3F8 002D1178  4B FB 9D A9 */	bl hkCalcMotorData
/* 802DB3FC 002D117C  7E 84 A3 78 */	mr r4, r20
/* 802DB400 002D1180  38 61 02 6C */	addi r3, r1, 0x26c
/* 802DB404 002D1184  48 00 07 F1 */	bl hkArray$026hk3dAngularMotorSolverInfo$1$7__vc
/* 802DB408 002D1188  7C C3 D2 14 */	add r6, r3, r26
/* 802DB40C 002D118C  7F E4 FB 78 */	mr r4, r31
/* 802DB410 002D1190  38 61 00 E0 */	addi r3, r1, 0xe0
/* 802DB414 002D1194  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 802DB418 002D1198  38 C6 00 04 */	addi r6, r6, 4
/* 802DB41C 002D119C  48 00 04 99 */	bl hk1dConstraintMotorInfo$7hk1dAngularVelocityMotorCommitJacobianInMotorInfo
/* 802DB420 002D11A0  7F 24 CB 78 */	mr r4, r25
/* 802DB424 002D11A4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 802DB428 002D11A8  4B FB 9D 19 */	bl hkPadSpu$0P16hkJacobianSchema$1$7__as
/* 802DB42C 002D11AC  3A 73 00 01 */	addi r19, r19, 1
/* 802DB430 002D11B0  3B 5A 00 18 */	addi r26, r26, 0x18
/* 802DB434 002D11B4  2C 13 00 03 */	cmpwi r19, 3
/* 802DB438 002D11B8  3B 7B 00 04 */	addi r27, r27, 4
/* 802DB43C 002D11BC  41 80 FF 00 */	blt lbl_802DB33C
/* 802DB440 002D11C0  39 EF 00 10 */	addi r15, r15, 0x10
/* 802DB444 002D11C4  3B 9C 00 06 */	addi r28, r28, 6
/* 802DB448 002D11C8  3A 94 00 01 */	addi r20, r20, 1
lbl_802DB44C:
/* 802DB44C 002D11CC  7C 14 A8 00 */	cmpw r20, r21
/* 802DB450 002D11D0  41 80 FB CC */	blt lbl_802DB01C
/* 802DB454 002D11D4  7E 43 93 78 */	mr r3, r18
/* 802DB458 002D11D8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 802DB45C 002D11DC  48 00 07 A9 */	bl hkPadSpu$0P17hkJacobianElement$1$7__as_10515
/* 802DB460 002D11E0  7E E3 BB 78 */	mr r3, r23
/* 802DB464 002D11E4  4B FF F9 F1 */	bl hkConstraintInstance$7getRuntime
/* 802DB468 002D11E8  7C 64 1B 78 */	mr r4, r3
/* 802DB46C 002D11EC  7E 03 83 78 */	mr r3, r16
/* 802DB470 002D11F0  4B FF F9 D1 */	bl hkPoweredChainData$7getConstraintFlags
/* 802DB474 002D11F4  7C 74 1B 78 */	mr r20, r3
/* 802DB478 002D11F8  7C 73 1B 78 */	mr r19, r3
/* 802DB47C 002D11FC  3A C0 00 00 */	li r22, 0
/* 802DB480 002D1200  48 00 00 20 */	b lbl_802DB4A0
lbl_802DB484:
/* 802DB484 002D1204  89 F3 00 00 */	lbz r15, 0(r19)
/* 802DB488 002D1208  7E C4 B3 78 */	mr r4, r22
/* 802DB48C 002D120C  38 61 02 6C */	addi r3, r1, 0x26c
/* 802DB490 002D1210  48 00 07 65 */	bl hkArray$026hk3dAngularMotorSolverInfo$1$7__vc
/* 802DB494 002D1214  99 E3 00 00 */	stb r15, 0(r3)
/* 802DB498 002D1218  3A D6 00 01 */	addi r22, r22, 1
/* 802DB49C 002D121C  3A 73 00 01 */	addi r19, r19, 1
lbl_802DB4A0:
/* 802DB4A0 002D1220  7C 16 A8 00 */	cmpw r22, r21
/* 802DB4A4 002D1224  41 80 FF E0 */	blt lbl_802DB484
/* 802DB4A8 002D1228  92 A1 01 10 */	stw r21, 0x110(r1)
/* 802DB4AC 002D122C  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 802DB4B0 002D1230  C0 10 00 24 */	lfs f0, 0x24(r16)
/* 802DB4B4 002D1234  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 802DB4B8 002D1238  C0 10 00 28 */	lfs f0, 0x28(r16)
/* 802DB4BC 002D123C  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 802DB4C0 002D1240  C0 10 00 2C */	lfs f0, 0x2c(r16)
/* 802DB4C4 002D1244  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 802DB4C8 002D1248  C0 10 00 30 */	lfs f0, 0x30(r16)
/* 802DB4CC 002D124C  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 802DB4D0 002D1250  C0 10 00 34 */	lfs f0, 0x34(r16)
/* 802DB4D4 002D1254  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 802DB4D8 002D1258  C0 10 00 38 */	lfs f0, 0x38(r16)
/* 802DB4DC 002D125C  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 802DB4E0 002D1260  48 00 07 31 */	bl hkArray$027hkVelocityAccumulatorOffset$1$7begin
/* 802DB4E4 002D1264  90 61 01 2C */	stw r3, 0x12c(r1)
/* 802DB4E8 002D1268  38 61 02 6C */	addi r3, r1, 0x26c
/* 802DB4EC 002D126C  93 01 01 30 */	stw r24, 0x130(r1)
/* 802DB4F0 002D1270  48 00 07 29 */	bl hkArray$026hk3dAngularMotorSolverInfo$1$7begin
/* 802DB4F4 002D1274  C0 02 AF 4C */	lfs f0, lbl_805A426C-_SDA2_BASE_(r2)
/* 802DB4F8 002D1278  7E 24 8B 78 */	mr r4, r17
/* 802DB4FC 002D127C  90 61 01 34 */	stw r3, 0x134(r1)
/* 802DB500 002D1280  7E 45 93 78 */	mr r5, r18
/* 802DB504 002D1284  38 61 01 10 */	addi r3, r1, 0x110
/* 802DB508 002D1288  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 802DB50C 002D128C  92 81 01 3C */	stw r20, 0x13c(r1)
/* 802DB510 002D1290  93 A1 01 40 */	stw r29, 0x140(r1)
/* 802DB514 002D1294  4B FB 50 81 */	bl hkPoweredChainBuildJacobian
/* 802DB518 002D1298  38 61 02 6C */	addi r3, r1, 0x26c
/* 802DB51C 002D129C  38 80 FF FF */	li r4, -1
/* 802DB520 002D12A0  48 00 04 B9 */	bl hkInplaceArray$026hk3dAngularMotorSolverInfo$432$1$7__dt
/* 802DB524 002D12A4  4B FB 23 7D */	bl hkEndConstraints
/* 802DB528 002D12A8  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 802DB52C 002D12AC  38 80 FF FF */	li r4, -1
/* 802DB530 002D12B0  4B FF F5 39 */	bl hkInplaceArray$027hkVelocityAccumulatorOffset$432$1$7__dt
/* 802DB534 002D12B4  81 41 00 00 */	lwz r10, 0(r1)
/* 802DB538 002D12B8  38 00 FF F8 */	li r0, -8
/* 802DB53C 002D12BC  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802DB540 002D12C0  39 6A FF F0 */	addi r11, r10, -16
/* 802DB544 002D12C4  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802DB548 002D12C8  48 11 5D F5 */	bl _restgpr_15
/* 802DB54C 002D12CC  80 0A 00 04 */	lwz r0, 4(r10)
/* 802DB550 002D12D0  7C 08 03 A6 */	mtlr r0
/* 802DB554 002D12D4  7D 41 53 78 */	mr r1, r10
/* 802DB558 002D12D8  4E 80 00 20 */	blr 

.global hkConstraintInstance$7getEntityA
hkConstraintInstance$7getEntityA:
/* 802DB55C 002D12DC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802DB560 002D12E0  4E 80 00 20 */	blr 

.global hkVelocityAccumulator$7hkAddByteOffset$021hkVelocityAccumulator$1
hkVelocityAccumulator$7hkAddByteOffset$021hkVelocityAccumulator$1:
/* 802DB564 002D12E4  7C 63 22 14 */	add r3, r3, r4
/* 802DB568 002D12E8  4E 80 00 20 */	blr 

.global hkArray$0P8hkEntity$1$7getSize
hkArray$0P8hkEntity$1$7getSize:
/* 802DB56C 002D12EC  80 63 00 04 */	lwz r3, 4(r3)
/* 802DB570 002D12F0  4E 80 00 20 */	blr 

.global hkEntity$7getMotion
hkEntity$7getMotion:
/* 802DB574 002D12F4  38 63 00 A0 */	addi r3, r3, 0xa0
/* 802DB578 002D12F8  4E 80 00 20 */	blr 

.global hkVelocityAccumulatorOffset$7__ct
hkVelocityAccumulatorOffset$7__ct:
/* 802DB57C 002D12FC  7C 04 28 50 */	subf r0, r4, r5
/* 802DB580 002D1300  90 03 00 00 */	stw r0, 0(r3)
/* 802DB584 002D1304  4E 80 00 20 */	blr 

.global hkMotion$7getTransform
hkMotion$7getTransform:
/* 802DB588 002D1308  38 63 00 10 */	addi r3, r3, 0x10
/* 802DB58C 002D130C  4E 80 00 20 */	blr 

.global hkPadSpu$0P17hkJacobianElement$1$7val
hkPadSpu$0P17hkJacobianElement$1$7val:
/* 802DB590 002D1310  80 63 00 00 */	lwz r3, 0(r3)
/* 802DB594 002D1314  4E 80 00 20 */	blr 

.global hkVector4$7__ct
hkVector4$7__ct:
/* 802DB598 002D1318  4E 80 00 20 */	blr 

.global hkVector4$7_setTransformedPos
hkVector4$7_setTransformedPos:
/* 802DB59C 002D131C  C0 E5 00 04 */	lfs f7, 4(r5)
/* 802DB5A0 002D1320  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 802DB5A4 002D1324  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 802DB5A8 002D1328  EC A7 00 B2 */	fmuls f5, f7, f2
/* 802DB5AC 002D132C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802DB5B0 002D1330  EC 67 00 72 */	fmuls f3, f7, f1
/* 802DB5B4 002D1334  C0 C5 00 00 */	lfs f6, 0(r5)
/* 802DB5B8 002D1338  EC 27 00 32 */	fmuls f1, f7, f0
/* 802DB5BC 002D133C  C0 84 00 00 */	lfs f4, 0(r4)
/* 802DB5C0 002D1340  C0 44 00 04 */	lfs f2, 4(r4)
/* 802DB5C4 002D1344  EC A6 29 3A */	fmadds f5, f6, f4, f5
/* 802DB5C8 002D1348  C0 04 00 08 */	lfs f0, 8(r4)
/* 802DB5CC 002D134C  EC 66 18 BA */	fmadds f3, f6, f2, f3
/* 802DB5D0 002D1350  C0 E5 00 08 */	lfs f7, 8(r5)
/* 802DB5D4 002D1354  EC 26 08 3A */	fmadds f1, f6, f0, f1
/* 802DB5D8 002D1358  C0 84 00 20 */	lfs f4, 0x20(r4)
/* 802DB5DC 002D135C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 802DB5E0 002D1360  EC C7 29 3A */	fmadds f6, f7, f4, f5
/* 802DB5E4 002D1364  EC 87 18 BA */	fmadds f4, f7, f2, f3
/* 802DB5E8 002D1368  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 802DB5EC 002D136C  C0 A4 00 30 */	lfs f5, 0x30(r4)
/* 802DB5F0 002D1370  EC 47 08 3A */	fmadds f2, f7, f0, f1
/* 802DB5F4 002D1374  C0 64 00 34 */	lfs f3, 0x34(r4)
/* 802DB5F8 002D1378  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 802DB5FC 002D137C  EC A5 30 2A */	fadds f5, f5, f6
/* 802DB600 002D1380  C0 02 AF 4C */	lfs f0, lbl_805A426C-_SDA2_BASE_(r2)
/* 802DB604 002D1384  EC 63 20 2A */	fadds f3, f3, f4
/* 802DB608 002D1388  EC 21 10 2A */	fadds f1, f1, f2
/* 802DB60C 002D138C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802DB610 002D1390  D0 A3 00 00 */	stfs f5, 0(r3)
/* 802DB614 002D1394  D0 63 00 04 */	stfs f3, 4(r3)
/* 802DB618 002D1398  D0 23 00 08 */	stfs f1, 8(r3)
/* 802DB61C 002D139C  4E 80 00 20 */	blr 

.global hkQuaternion$7__ct
hkQuaternion$7__ct:
/* 802DB620 002D13A0  4E 80 00 20 */	blr 

.global hkTransform$7getRotation
hkTransform$7getRotation:
/* 802DB624 002D13A4  4E 80 00 20 */	blr 

.global hkQuaternion$7setMul
hkQuaternion$7setMul:
/* 802DB628 002D13A8  C1 44 00 08 */	lfs f10, 8(r4)
/* 802DB62C 002D13AC  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802DB630 002D13B0  C1 25 00 04 */	lfs f9, 4(r5)
/* 802DB634 002D13B4  21 6B FF E0 */	subfic r11, r11, -32
/* 802DB638 002D13B8  C1 04 00 04 */	lfs f8, 4(r4)
/* 802DB63C 002D13BC  7C 2C 0B 78 */	mr r12, r1
/* 802DB640 002D13C0  C0 45 00 00 */	lfs f2, 0(r5)
/* 802DB644 002D13C4  EC AA 02 72 */	fmuls f5, f10, f9
/* 802DB648 002D13C8  C0 E5 00 08 */	lfs f7, 8(r5)
/* 802DB64C 002D13CC  EC 08 02 72 */	fmuls f0, f8, f9
/* 802DB650 002D13D0  C0 C4 00 00 */	lfs f6, 0(r4)
/* 802DB654 002D13D4  EC 28 00 B2 */	fmuls f1, f8, f2
/* 802DB658 002D13D8  ED 88 29 F8 */	fmsubs f12, f8, f7, f5
/* 802DB65C 002D13DC  EC 66 01 F2 */	fmuls f3, f6, f7
/* 802DB660 002D13E0  C0 82 AF 4C */	lfs f4, lbl_805A426C-_SDA2_BASE_(r2)
/* 802DB664 002D13E4  EC 26 0A 78 */	fmsubs f1, f6, f9, f1
/* 802DB668 002D13E8  C1 A4 00 0C */	lfs f13, 0xc(r4)
/* 802DB66C 002D13EC  C0 A5 00 0C */	lfs f5, 0xc(r5)
/* 802DB670 002D13F0  ED 6A 18 B8 */	fmsubs f11, f10, f2, f3
/* 802DB674 002D13F4  EC 6D 60 BA */	fmadds f3, f13, f2, f12
/* 802DB678 002D13F8  7C 21 59 6E */	stwux r1, r1, r11
/* 802DB67C 002D13FC  EC 06 00 BA */	fmadds f0, f6, f2, f0
/* 802DB680 002D1400  EC 2D 09 FA */	fmadds f1, f13, f7, f1
/* 802DB684 002D1404  EC 65 19 BA */	fmadds f3, f5, f6, f3
/* 802DB688 002D1408  EC 4D 5A 7A */	fmadds f2, f13, f9, f11
/* 802DB68C 002D140C  EC 25 0A BA */	fmadds f1, f5, f10, f1
/* 802DB690 002D1410  EC 8D 21 7A */	fmadds f4, f13, f5, f4
/* 802DB694 002D1414  D0 63 00 00 */	stfs f3, 0(r3)
/* 802DB698 002D1418  EC 45 12 3A */	fmadds f2, f5, f8, f2
/* 802DB69C 002D141C  EC EA 01 FA */	fmadds f7, f10, f7, f0
/* 802DB6A0 002D1420  D0 23 00 08 */	stfs f1, 8(r3)
/* 802DB6A4 002D1424  EC 05 23 7A */	fmadds f0, f5, f13, f4
/* 802DB6A8 002D1428  D0 43 00 04 */	stfs f2, 4(r3)
/* 802DB6AC 002D142C  EC 8D 39 78 */	fmsubs f4, f13, f5, f7
/* 802DB6B0 002D1430  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 802DB6B4 002D1434  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 802DB6B8 002D1438  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802DB6BC 002D143C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802DB6C0 002D1440  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802DB6C4 002D1444  81 41 00 00 */	lwz r10, 0(r1)
/* 802DB6C8 002D1448  7D 41 53 78 */	mr r1, r10
/* 802DB6CC 002D144C  4E 80 00 20 */	blr 

.global hkVector4$7set
hkVector4$7set:
/* 802DB6D0 002D1450  D0 23 00 00 */	stfs f1, 0(r3)
/* 802DB6D4 002D1454  D0 43 00 04 */	stfs f2, 4(r3)
/* 802DB6D8 002D1458  D0 63 00 08 */	stfs f3, 8(r3)
/* 802DB6DC 002D145C  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 802DB6E0 002D1460  4E 80 00 20 */	blr 

.global hkPoweredChainData$7getMotorRuntimeQuaternions
hkPoweredChainData$7getMotorRuntimeQuaternions:
/* 802DB6E4 002D1464  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802DB6E8 002D1468  1C A3 00 06 */	mulli r5, r3, 6
/* 802DB6EC 002D146C  38 03 00 03 */	addi r0, r3, 3
/* 802DB6F0 002D1470  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 802DB6F4 002D1474  54 A0 18 38 */	slwi r0, r5, 3
/* 802DB6F8 002D1478  7C 04 02 14 */	add r0, r4, r0
/* 802DB6FC 002D147C  7C 63 02 14 */	add r3, r3, r0
/* 802DB700 002D1480  4E 80 00 20 */	blr 

.global hkVector4$7lengthSquared4
hkVector4$7lengthSquared4:
/* 802DB704 002D1484  C0 03 00 04 */	lfs f0, 4(r3)
/* 802DB708 002D1488  C0 43 00 00 */	lfs f2, 0(r3)
/* 802DB70C 002D148C  EC 60 00 32 */	fmuls f3, f0, f0
/* 802DB710 002D1490  C0 23 00 08 */	lfs f1, 8(r3)
/* 802DB714 002D1494  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802DB718 002D1498  EC 42 18 BA */	fmadds f2, f2, f2, f3
/* 802DB71C 002D149C  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 802DB720 002D14A0  EC 20 08 3A */	fmadds f1, f0, f0, f1
/* 802DB724 002D14A4  4E 80 00 20 */	blr 

.global hkQuaternion$7estimateAngleToLs
hkQuaternion$7estimateAngleToLs:
/* 802DB728 002D14A8  C1 43 00 08 */	lfs f10, 8(r3)
/* 802DB72C 002D14AC  C1 24 00 04 */	lfs f9, 4(r4)
/* 802DB730 002D14B0  C0 83 00 04 */	lfs f4, 4(r3)
/* 802DB734 002D14B4  C0 E4 00 00 */	lfs f7, 0(r4)
/* 802DB738 002D14B8  EC AA 02 72 */	fmuls f5, f10, f9
/* 802DB73C 002D14BC  C1 04 00 08 */	lfs f8, 8(r4)
/* 802DB740 002D14C0  EC 09 01 32 */	fmuls f0, f9, f4
/* 802DB744 002D14C4  C0 63 00 00 */	lfs f3, 0(r3)
/* 802DB748 002D14C8  EC 24 01 F2 */	fmuls f1, f4, f7
/* 802DB74C 002D14CC  ED 64 2A 38 */	fmsubs f11, f4, f8, f5
/* 802DB750 002D14D0  EC 43 02 32 */	fmuls f2, f3, f8
/* 802DB754 002D14D4  C0 C2 AF 4C */	lfs f6, lbl_805A426C-_SDA2_BASE_(r2)
/* 802DB758 002D14D8  EC 07 00 FA */	fmadds f0, f7, f3, f0
/* 802DB75C 002D14DC  C1 84 00 0C */	lfs f12, 0xc(r4)
/* 802DB760 002D14E0  EC 23 0A 78 */	fmsubs f1, f3, f9, f1
/* 802DB764 002D14E4  EC 4A 11 F8 */	fmsubs f2, f10, f7, f2
/* 802DB768 002D14E8  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 802DB76C 002D14EC  EC 6C 58 FA */	fmadds f3, f12, f3, f11
/* 802DB770 002D14F0  EC 2C 0A BA */	fmadds f1, f12, f10, f1
/* 802DB774 002D14F4  EC 4C 11 3A */	fmadds f2, f12, f4, f2
/* 802DB778 002D14F8  EC 8C 31 7A */	fmadds f4, f12, f5, f6
/* 802DB77C 002D14FC  EC 65 19 FC */	fnmsubs f3, f5, f7, f3
/* 802DB780 002D1500  EC 45 12 7C */	fnmsubs f2, f5, f9, f2
/* 802DB784 002D1504  EC 25 0A 3C */	fnmsubs f1, f5, f8, f1
/* 802DB788 002D1508  EC 63 18 2A */	fadds f3, f3, f3
/* 802DB78C 002D150C  EC 42 10 2A */	fadds f2, f2, f2
/* 802DB790 002D1510  EC 21 08 2A */	fadds f1, f1, f1
/* 802DB794 002D1514  EC 08 02 BA */	fmadds f0, f8, f10, f0
/* 802DB798 002D1518  D0 65 00 00 */	stfs f3, 0(r5)
/* 802DB79C 002D151C  EC 85 23 3C */	fnmsubs f4, f5, f12, f4
/* 802DB7A0 002D1520  D0 45 00 04 */	stfs f2, 4(r5)
/* 802DB7A4 002D1524  EC AC 01 7A */	fmadds f5, f12, f5, f0
/* 802DB7A8 002D1528  EC 04 20 2A */	fadds f0, f4, f4
/* 802DB7AC 002D152C  D0 25 00 08 */	stfs f1, 8(r5)
/* 802DB7B0 002D1530  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 802DB7B4 002D1534  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 802DB7B8 002D1538  40 80 00 0C */	bge lbl_802DB7C4
/* 802DB7BC 002D153C  38 00 00 08 */	li r0, 8
/* 802DB7C0 002D1540  48 00 00 08 */	b lbl_802DB7C8
lbl_802DB7C4:
/* 802DB7C4 002D1544  38 00 00 00 */	li r0, 0
lbl_802DB7C8:
/* 802DB7C8 002D1548  2C 00 00 00 */	cmpwi r0, 0
/* 802DB7CC 002D154C  4D 82 00 20 */	beqlr 
/* 802DB7D0 002D1550  C0 05 00 00 */	lfs f0, 0(r5)
/* 802DB7D4 002D1554  C0 45 00 04 */	lfs f2, 4(r5)
/* 802DB7D8 002D1558  FC 60 00 50 */	fneg f3, f0
/* 802DB7DC 002D155C  C0 25 00 08 */	lfs f1, 8(r5)
/* 802DB7E0 002D1560  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 802DB7E4 002D1564  FC 40 10 50 */	fneg f2, f2
/* 802DB7E8 002D1568  FC 20 08 50 */	fneg f1, f1
/* 802DB7EC 002D156C  FC 00 00 50 */	fneg f0, f0
/* 802DB7F0 002D1570  D0 65 00 00 */	stfs f3, 0(r5)
/* 802DB7F4 002D1574  D0 45 00 04 */	stfs f2, 4(r5)
/* 802DB7F8 002D1578  D0 25 00 08 */	stfs f1, 8(r5)
/* 802DB7FC 002D157C  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 802DB800 002D1580  4E 80 00 20 */	blr 

.global hkVector4$7sub4
hkVector4$7sub4:
/* 802DB804 002D1584  C0 63 00 00 */	lfs f3, 0(r3)
/* 802DB808 002D1588  C0 44 00 00 */	lfs f2, 0(r4)
/* 802DB80C 002D158C  C0 23 00 04 */	lfs f1, 4(r3)
/* 802DB810 002D1590  EC A3 10 28 */	fsubs f5, f3, f2
/* 802DB814 002D1594  C0 04 00 04 */	lfs f0, 4(r4)
/* 802DB818 002D1598  C0 63 00 08 */	lfs f3, 8(r3)
/* 802DB81C 002D159C  EC 81 00 28 */	fsubs f4, f1, f0
/* 802DB820 002D15A0  C0 44 00 08 */	lfs f2, 8(r4)
/* 802DB824 002D15A4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802DB828 002D15A8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802DB82C 002D15AC  EC 43 10 28 */	fsubs f2, f3, f2
/* 802DB830 002D15B0  D0 A3 00 00 */	stfs f5, 0(r3)
/* 802DB834 002D15B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 802DB838 002D15B8  D0 83 00 04 */	stfs f4, 4(r3)
/* 802DB83C 002D15BC  D0 43 00 08 */	stfs f2, 8(r3)
/* 802DB840 002D15C0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802DB844 002D15C4  4E 80 00 20 */	blr 

.global hkVector4$7setNeg3
hkVector4$7setNeg3:
/* 802DB848 002D15C8  C0 44 00 00 */	lfs f2, 0(r4)
/* 802DB84C 002D15CC  C0 24 00 08 */	lfs f1, 8(r4)
/* 802DB850 002D15D0  FC 60 10 50 */	fneg f3, f2
/* 802DB854 002D15D4  C0 04 00 04 */	lfs f0, 4(r4)
/* 802DB858 002D15D8  FC 20 08 50 */	fneg f1, f1
/* 802DB85C 002D15DC  FC 40 00 50 */	fneg f2, f0
/* 802DB860 002D15E0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802DB864 002D15E4  D0 63 00 00 */	stfs f3, 0(r3)
/* 802DB868 002D15E8  D0 43 00 04 */	stfs f2, 4(r3)
/* 802DB86C 002D15EC  D0 23 00 08 */	stfs f1, 8(r3)
/* 802DB870 002D15F0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802DB874 002D15F4  4E 80 00 20 */	blr 

.global hkRotation$7__ct
hkRotation$7__ct:
/* 802DB878 002D15F8  4E 80 00 20 */	blr 

.global hkVector4$7__ct_10488
hkVector4$7__ct_10488:
/* 802DB87C 002D15FC  C0 64 00 00 */	lfs f3, 0(r4)
/* 802DB880 002D1600  C0 44 00 04 */	lfs f2, 4(r4)
/* 802DB884 002D1604  C0 24 00 08 */	lfs f1, 8(r4)
/* 802DB888 002D1608  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802DB88C 002D160C  D0 63 00 00 */	stfs f3, 0(r3)
/* 802DB890 002D1610  D0 43 00 04 */	stfs f2, 4(r3)
/* 802DB894 002D1614  D0 23 00 08 */	stfs f1, 8(r3)
/* 802DB898 002D1618  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802DB89C 002D161C  4E 80 00 20 */	blr 

.global hkMatrix3$7getColumn
hkMatrix3$7getColumn:
/* 802DB8A0 002D1620  54 80 20 36 */	slwi r0, r4, 4
/* 802DB8A4 002D1624  7C 63 02 14 */	add r3, r3, r0
/* 802DB8A8 002D1628  4E 80 00 20 */	blr 

.global hkPoweredChainData$7getSolverResults
hkPoweredChainData$7getSolverResults:
/* 802DB8AC 002D162C  7C 83 23 78 */	mr r3, r4
/* 802DB8B0 002D1630  4E 80 00 20 */	blr 

.global hk1dConstraintMotorInfo$7hk1dAngularVelocityMotorCommitJacobianInMotorInfo
hk1dConstraintMotorInfo$7hk1dAngularVelocityMotorCommitJacobianInMotorInfo:
/* 802DB8B4 002D1634  C0 44 00 04 */	lfs f2, 4(r4)
/* 802DB8B8 002D1638  C0 03 00 08 */	lfs f0, 8(r3)
/* 802DB8BC 002D163C  80 E5 00 00 */	lwz r7, 0(r5)
/* 802DB8C0 002D1640  EC 20 00 B2 */	fmuls f1, f0, f2
/* 802DB8C4 002D1644  C0 02 AF 48 */	lfs f0, lbl_805A4268-_SDA2_BASE_(r2)
/* 802DB8C8 002D1648  C0 64 00 08 */	lfs f3, 8(r4)
/* 802DB8CC 002D164C  38 07 00 20 */	addi r0, r7, 0x20
/* 802DB8D0 002D1650  D0 26 00 04 */	stfs f1, 4(r6)
/* 802DB8D4 002D1654  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802DB8D8 002D1658  EC 21 00 B2 */	fmuls f1, f1, f2
/* 802DB8DC 002D165C  D0 26 00 08 */	stfs f1, 8(r6)
/* 802DB8E0 002D1660  C0 23 00 04 */	lfs f1, 4(r3)
/* 802DB8E4 002D1664  D0 26 00 0C */	stfs f1, 0xc(r6)
/* 802DB8E8 002D1668  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802DB8EC 002D166C  D0 26 00 10 */	stfs f1, 0x10(r6)
/* 802DB8F0 002D1670  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 802DB8F4 002D1674  D0 26 00 14 */	stfs f1, 0x14(r6)
/* 802DB8F8 002D1678  D0 06 00 00 */	stfs f0, 0(r6)
/* 802DB8FC 002D167C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802DB900 002D1680  EC 00 00 F2 */	fmuls f0, f0, f3
/* 802DB904 002D1684  D0 07 00 1C */	stfs f0, 0x1c(r7)
/* 802DB908 002D1688  90 05 00 00 */	stw r0, 0(r5)
/* 802DB90C 002D168C  4E 80 00 20 */	blr 

.global hkAlgorithm$7swap$012hkQuaternion$1
hkAlgorithm$7swap$012hkQuaternion$1:
/* 802DB910 002D1690  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802DB914 002D1694  7C 2C 0B 78 */	mr r12, r1
/* 802DB918 002D1698  21 6B FF E0 */	subfic r11, r11, -32
/* 802DB91C 002D169C  7C 21 59 6E */	stwux r1, r1, r11
/* 802DB920 002D16A0  C0 83 00 00 */	lfs f4, 0(r3)
/* 802DB924 002D16A4  C0 04 00 00 */	lfs f0, 0(r4)
/* 802DB928 002D16A8  C0 63 00 04 */	lfs f3, 4(r3)
/* 802DB92C 002D16AC  D0 03 00 00 */	stfs f0, 0(r3)
/* 802DB930 002D16B0  C0 43 00 08 */	lfs f2, 8(r3)
/* 802DB934 002D16B4  C0 04 00 04 */	lfs f0, 4(r4)
/* 802DB938 002D16B8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802DB93C 002D16BC  D0 03 00 04 */	stfs f0, 4(r3)
/* 802DB940 002D16C0  C0 04 00 08 */	lfs f0, 8(r4)
/* 802DB944 002D16C4  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 802DB948 002D16C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 802DB94C 002D16CC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802DB950 002D16D0  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 802DB954 002D16D4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802DB958 002D16D8  D0 84 00 00 */	stfs f4, 0(r4)
/* 802DB95C 002D16DC  D0 64 00 04 */	stfs f3, 4(r4)
/* 802DB960 002D16E0  D0 44 00 08 */	stfs f2, 8(r4)
/* 802DB964 002D16E4  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 802DB968 002D16E8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802DB96C 002D16EC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 802DB970 002D16F0  81 41 00 00 */	lwz r10, 0(r1)
/* 802DB974 002D16F4  7D 41 53 78 */	mr r1, r10
/* 802DB978 002D16F8  4E 80 00 20 */	blr 

.global hkPadSpuLong$0P20hkConstraintInstance$1$7__ct
hkPadSpuLong$0P20hkConstraintInstance$1$7__ct:
/* 802DB97C 002D16FC  90 83 00 00 */	stw r4, 0(r3)
/* 802DB980 002D1700  4E 80 00 20 */	blr 

.global hkPadSpuLong$0P20hkConstraintInstance$1$7__as
hkPadSpuLong$0P20hkConstraintInstance$1$7__as:
/* 802DB984 002D1704  80 04 00 00 */	lwz r0, 0(r4)
/* 802DB988 002D1708  90 03 00 00 */	stw r0, 0(r3)
/* 802DB98C 002D170C  4E 80 00 20 */	blr 

.global hkInplaceArray$027hkVelocityAccumulatorOffset$432$1$7__ct
hkInplaceArray$027hkVelocityAccumulatorOffset$432$1$7__ct:
/* 802DB990 002D1710  3C A0 80 00 */	lis r5, 0x80000020@ha
/* 802DB994 002D1714  38 C3 00 0C */	addi r6, r3, 0xc
/* 802DB998 002D1718  38 05 00 20 */	addi r0, r5, 0x80000020@l
/* 802DB99C 002D171C  90 C3 00 00 */	stw r6, 0(r3)
/* 802DB9A0 002D1720  90 83 00 04 */	stw r4, 4(r3)
/* 802DB9A4 002D1724  90 03 00 08 */	stw r0, 8(r3)
/* 802DB9A8 002D1728  4E 80 00 20 */	blr 

.global hkPadSpu$0P20hkConstraintInstance$1$7val
hkPadSpu$0P20hkConstraintInstance$1$7val:
/* 802DB9AC 002D172C  80 63 00 00 */	lwz r3, 0(r3)
/* 802DB9B0 002D1730  4E 80 00 20 */	blr 

.global hkPadSpu$0P21hkVelocityAccumulator$1$7val
hkPadSpu$0P21hkVelocityAccumulator$1$7val:
/* 802DB9B4 002D1734  80 63 00 00 */	lwz r3, 0(r3)
/* 802DB9B8 002D1738  4E 80 00 20 */	blr 

.global hkInplaceArray$026hk3dAngularMotorSolverInfo$432$1$7__ct
hkInplaceArray$026hk3dAngularMotorSolverInfo$432$1$7__ct:
/* 802DB9BC 002D173C  3C A0 80 00 */	lis r5, 0x80000020@ha
/* 802DB9C0 002D1740  38 C3 00 0C */	addi r6, r3, 0xc
/* 802DB9C4 002D1744  38 05 00 20 */	addi r0, r5, 0x80000020@l
/* 802DB9C8 002D1748  90 C3 00 00 */	stw r6, 0(r3)
/* 802DB9CC 002D174C  90 83 00 04 */	stw r4, 4(r3)
/* 802DB9D0 002D1750  90 03 00 08 */	stw r0, 8(r3)
/* 802DB9D4 002D1754  4E 80 00 20 */	blr 

.global hkInplaceArray$026hk3dAngularMotorSolverInfo$432$1$7__dt
hkInplaceArray$026hk3dAngularMotorSolverInfo$432$1$7__dt:
/* 802DB9D8 002D1758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB9DC 002D175C  7C 08 02 A6 */	mflr r0
/* 802DB9E0 002D1760  2C 03 00 00 */	cmpwi r3, 0
/* 802DB9E4 002D1764  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB9E8 002D1768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB9EC 002D176C  7C 9F 23 78 */	mr r31, r4
/* 802DB9F0 002D1770  93 C1 00 08 */	stw r30, 8(r1)
/* 802DB9F4 002D1774  7C 7E 1B 78 */	mr r30, r3
/* 802DB9F8 002D1778  41 82 00 58 */	beq lbl_802DBA50
/* 802DB9FC 002D177C  41 82 00 2C */	beq lbl_802DBA28
/* 802DBA00 002D1780  80 03 00 08 */	lwz r0, 8(r3)
/* 802DBA04 002D1784  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 802DBA08 002D1788  40 82 00 20 */	bne lbl_802DBA28
/* 802DBA0C 002D178C  80 1E 00 08 */	lwz r0, 8(r30)
/* 802DBA10 002D1790  38 C0 00 15 */	li r6, 0x15
/* 802DBA14 002D1794  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802DBA18 002D1798  54 00 00 BE */	clrlwi r0, r0, 2
/* 802DBA1C 002D179C  80 9E 00 00 */	lwz r4, 0(r30)
/* 802DBA20 002D17A0  1C A0 00 4C */	mulli r5, r0, 0x4c
/* 802DBA24 002D17A4  4B FA 30 99 */	bl hkThreadMemory$7deallocateChunk
lbl_802DBA28:
/* 802DBA28 002D17A8  2C 1F 00 00 */	cmpwi r31, 0
/* 802DBA2C 002D17AC  40 81 00 24 */	ble lbl_802DBA50
/* 802DBA30 002D17B0  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802DBA34 002D17B4  7F C4 F3 78 */	mr r4, r30
/* 802DBA38 002D17B8  38 A0 09 8C */	li r5, 0x98c
/* 802DBA3C 002D17BC  38 C0 00 15 */	li r6, 0x15
/* 802DBA40 002D17C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802DBA44 002D17C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DBA48 002D17C8  7D 89 03 A6 */	mtctr r12
/* 802DBA4C 002D17CC  4E 80 04 21 */	bctrl 
lbl_802DBA50:
/* 802DBA50 002D17D0  7F C3 F3 78 */	mr r3, r30
/* 802DBA54 002D17D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DBA58 002D17D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DBA5C 002D17DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBA60 002D17E0  7C 08 03 A6 */	mtlr r0
/* 802DBA64 002D17E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBA68 002D17E8  4E 80 00 20 */	blr 

.global hkArray$026hk3dAngularMotorSolverInfo$1$7setSize
hkArray$026hk3dAngularMotorSolverInfo$1$7setSize:
/* 802DBA6C 002D17EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBA70 002D17F0  7C 08 02 A6 */	mflr r0
/* 802DBA74 002D17F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBA78 002D17F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DBA7C 002D17FC  7C 9F 23 78 */	mr r31, r4
/* 802DBA80 002D1800  93 C1 00 08 */	stw r30, 8(r1)
/* 802DBA84 002D1804  7C 7E 1B 78 */	mr r30, r3
/* 802DBA88 002D1808  80 03 00 08 */	lwz r0, 8(r3)
/* 802DBA8C 002D180C  54 00 00 BE */	clrlwi r0, r0, 2
/* 802DBA90 002D1810  7C 00 20 00 */	cmpw r0, r4
/* 802DBA94 002D1814  40 80 00 24 */	bge lbl_802DBAB8
/* 802DBA98 002D1818  54 05 08 3C */	slwi r5, r0, 1
/* 802DBA9C 002D181C  7F E0 FB 78 */	mr r0, r31
/* 802DBAA0 002D1820  7C 04 28 00 */	cmpw r4, r5
/* 802DBAA4 002D1824  40 80 00 08 */	bge lbl_802DBAAC
/* 802DBAA8 002D1828  7C A0 2B 78 */	mr r0, r5
lbl_802DBAAC:
/* 802DBAAC 002D182C  7C 04 03 78 */	mr r4, r0
/* 802DBAB0 002D1830  38 A0 00 4C */	li r5, 0x4c
/* 802DBAB4 002D1834  4B FA 12 E1 */	bl hkArrayUtil$7_reserve
lbl_802DBAB8:
/* 802DBAB8 002D1838  93 FE 00 04 */	stw r31, 4(r30)
/* 802DBABC 002D183C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DBAC0 002D1840  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DBAC4 002D1844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBAC8 002D1848  7C 08 03 A6 */	mtlr r0
/* 802DBACC 002D184C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBAD0 002D1850  4E 80 00 20 */	blr 

.global hkArray$0P8hkEntity$1$7__vc
hkArray$0P8hkEntity$1$7__vc:
/* 802DBAD4 002D1854  80 63 00 00 */	lwz r3, 0(r3)
/* 802DBAD8 002D1858  54 80 10 3A */	slwi r0, r4, 2
/* 802DBADC 002D185C  7C 63 02 14 */	add r3, r3, r0
/* 802DBAE0 002D1860  4E 80 00 20 */	blr 

.global hkArray$027hkVelocityAccumulatorOffset$1$7pushBackUnchecked
hkArray$027hkVelocityAccumulatorOffset$1$7pushBackUnchecked:
/* 802DBAE4 002D1864  80 C3 00 04 */	lwz r6, 4(r3)
/* 802DBAE8 002D1868  80 E3 00 00 */	lwz r7, 0(r3)
/* 802DBAEC 002D186C  38 A6 00 01 */	addi r5, r6, 1
/* 802DBAF0 002D1870  80 04 00 00 */	lwz r0, 0(r4)
/* 802DBAF4 002D1874  90 A3 00 04 */	stw r5, 4(r3)
/* 802DBAF8 002D1878  54 C3 10 3A */	slwi r3, r6, 2
/* 802DBAFC 002D187C  7C 07 19 2E */	stwx r0, r7, r3
/* 802DBB00 002D1880  4E 80 00 20 */	blr 

.global hkPadSpu$0PC11hkTransform$1$7__as
hkPadSpu$0PC11hkTransform$1$7__as:
/* 802DBB04 002D1884  90 83 00 00 */	stw r4, 0(r3)
/* 802DBB08 002D1888  4E 80 00 20 */	blr 

.global hkConstraintQueryOut$7__ct
hkConstraintQueryOut$7__ct:
/* 802DBB0C 002D188C  80 C4 00 00 */	lwz r6, 0(r4)
/* 802DBB10 002D1890  80 A4 00 04 */	lwz r5, 4(r4)
/* 802DBB14 002D1894  80 04 00 08 */	lwz r0, 8(r4)
/* 802DBB18 002D1898  90 C3 00 00 */	stw r6, 0(r3)
/* 802DBB1C 002D189C  90 A3 00 04 */	stw r5, 4(r3)
/* 802DBB20 002D18A0  90 03 00 08 */	stw r0, 8(r3)
/* 802DBB24 002D18A4  4E 80 00 20 */	blr 

.global hkPadSpuf$0f$1$7__as_10505
hkPadSpuf$0f$1$7__as_10505:
/* 802DBB28 002D18A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 802DBB2C 002D18AC  D0 03 00 00 */	stfs f0, 0(r3)
/* 802DBB30 002D18B0  4E 80 00 20 */	blr 

.global hkPadSpu$0P21hkVelocityAccumulator$1$7__as_10506
hkPadSpu$0P21hkVelocityAccumulator$1$7__as_10506:
/* 802DBB34 002D18B4  80 04 00 00 */	lwz r0, 0(r4)
/* 802DBB38 002D18B8  90 03 00 00 */	stw r0, 0(r3)
/* 802DBB3C 002D18BC  4E 80 00 20 */	blr 

.global hkPadSpu$0PC11hkTransform$1$7__as_10507
hkPadSpu$0PC11hkTransform$1$7__as_10507:
/* 802DBB40 002D18C0  80 04 00 00 */	lwz r0, 0(r4)
/* 802DBB44 002D18C4  90 03 00 00 */	stw r0, 0(r3)
/* 802DBB48 002D18C8  4E 80 00 20 */	blr 

.global hkArray$027hkVelocityAccumulatorOffset$1$7pushBack
hkArray$027hkVelocityAccumulatorOffset$1$7pushBack:
/* 802DBB4C 002D18CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBB50 002D18D0  7C 08 02 A6 */	mflr r0
/* 802DBB54 002D18D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBB58 002D18D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DBB5C 002D18DC  7C 9F 23 78 */	mr r31, r4
/* 802DBB60 002D18E0  93 C1 00 08 */	stw r30, 8(r1)
/* 802DBB64 002D18E4  7C 7E 1B 78 */	mr r30, r3
/* 802DBB68 002D18E8  80 03 00 08 */	lwz r0, 8(r3)
/* 802DBB6C 002D18EC  80 A3 00 04 */	lwz r5, 4(r3)
/* 802DBB70 002D18F0  54 00 00 BE */	clrlwi r0, r0, 2
/* 802DBB74 002D18F4  7C 05 00 00 */	cmpw r5, r0
/* 802DBB78 002D18F8  40 82 00 0C */	bne lbl_802DBB84
/* 802DBB7C 002D18FC  38 80 00 04 */	li r4, 4
/* 802DBB80 002D1900  4B FA 12 BD */	bl hkArrayUtil$7_reserveMore
lbl_802DBB84:
/* 802DBB84 002D1904  80 9E 00 04 */	lwz r4, 4(r30)
/* 802DBB88 002D1908  80 BE 00 00 */	lwz r5, 0(r30)
/* 802DBB8C 002D190C  38 64 00 01 */	addi r3, r4, 1
/* 802DBB90 002D1910  80 1F 00 00 */	lwz r0, 0(r31)
/* 802DBB94 002D1914  90 7E 00 04 */	stw r3, 4(r30)
/* 802DBB98 002D1918  54 83 10 3A */	slwi r3, r4, 2
/* 802DBB9C 002D191C  7C 05 19 2E */	stwx r0, r5, r3
/* 802DBBA0 002D1920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DBBA4 002D1924  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DBBA8 002D1928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBBAC 002D192C  7C 08 03 A6 */	mtlr r0
/* 802DBBB0 002D1930  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBBB4 002D1934  4E 80 00 20 */	blr 

.global hkPadSpu$0PC11hkTransform$1$7__opPC11hkTransform
hkPadSpu$0PC11hkTransform$1$7__opPC11hkTransform:
/* 802DBBB8 002D1938  80 63 00 00 */	lwz r3, 0(r3)
/* 802DBBBC 002D193C  4E 80 00 20 */	blr 

.global hkPadSpu$0PC11hkTransform$1$7__rf
hkPadSpu$0PC11hkTransform$1$7__rf:
/* 802DBBC0 002D1940  80 63 00 00 */	lwz r3, 0(r3)
/* 802DBBC4 002D1944  4E 80 00 20 */	blr 

.global hkPadSpu$0Pv$1$7__opPv
hkPadSpu$0Pv$1$7__opPv:
/* 802DBBC8 002D1948  80 63 00 00 */	lwz r3, 0(r3)
/* 802DBBCC 002D194C  4E 80 00 20 */	blr 

.global hkConstraintMotorInput$7__ct
hkConstraintMotorInput$7__ct:
/* 802DBBD0 002D1950  C0 02 AF 4C */	lfs f0, lbl_805A426C-_SDA2_BASE_(r2)
/* 802DBBD4 002D1954  D0 03 00 08 */	stfs f0, 8(r3)
/* 802DBBD8 002D1958  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802DBBDC 002D195C  4E 80 00 20 */	blr 

.global hkSolverResults$7__as
hkSolverResults$7__as:
/* 802DBBE0 002D1960  C0 24 00 00 */	lfs f1, 0(r4)
/* 802DBBE4 002D1964  C0 04 00 04 */	lfs f0, 4(r4)
/* 802DBBE8 002D1968  D0 23 00 00 */	stfs f1, 0(r3)
/* 802DBBEC 002D196C  D0 03 00 04 */	stfs f0, 4(r3)
/* 802DBBF0 002D1970  4E 80 00 20 */	blr 

.global hkArray$026hk3dAngularMotorSolverInfo$1$7__vc
hkArray$026hk3dAngularMotorSolverInfo$1$7__vc:
/* 802DBBF4 002D1974  1C 04 00 4C */	mulli r0, r4, 0x4c
/* 802DBBF8 002D1978  80 63 00 00 */	lwz r3, 0(r3)
/* 802DBBFC 002D197C  7C 63 02 14 */	add r3, r3, r0
/* 802DBC00 002D1980  4E 80 00 20 */	blr 

.global hkPadSpu$0P17hkJacobianElement$1$7__as_10515
hkPadSpu$0P17hkJacobianElement$1$7__as_10515:
/* 802DBC04 002D1984  80 04 00 00 */	lwz r0, 0(r4)
/* 802DBC08 002D1988  90 03 00 00 */	stw r0, 0(r3)
/* 802DBC0C 002D198C  4E 80 00 20 */	blr 

.global hkArray$027hkVelocityAccumulatorOffset$1$7begin
hkArray$027hkVelocityAccumulatorOffset$1$7begin:
/* 802DBC10 002D1990  80 63 00 00 */	lwz r3, 0(r3)
/* 802DBC14 002D1994  4E 80 00 20 */	blr 

.global hkArray$026hk3dAngularMotorSolverInfo$1$7begin
hkArray$026hk3dAngularMotorSolverInfo$1$7begin:
/* 802DBC18 002D1998  80 63 00 00 */	lwz r3, 0(r3)
/* 802DBC1C 002D199C  4E 80 00 20 */	blr 

.global hkPoweredChainData$7getNumConstraintInfos
hkPoweredChainData$7getNumConstraintInfos:
/* 802DBC20 002D19A0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802DBC24 002D19A4  4E 80 00 20 */	blr 

.global hkPoweredChainData$7isValid
hkPoweredChainData$7isValid:
/* 802DBC28 002D19A8  3C 60 01 00 */	lis r3, 0x100
/* 802DBC2C 002D19AC  4E 80 00 20 */	blr 

.global __sinit_$3hkPoweredChainData_cpp
__sinit_$3hkPoweredChainData_cpp:
/* 802DBC30 002D19B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBC34 002D19B4  7C 08 02 A6 */	mflr r0
/* 802DBC38 002D19B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBC3C 002D19BC  4B FF EF 65 */	bl getVtablehkPoweredChainData
/* 802DBC40 002D19C0  3D 00 80 41 */	lis r8, lbl_804121F0@ha
/* 802DBC44 002D19C4  3C E0 80 53 */	lis r7, lbl_80532E50@ha
/* 802DBC48 002D19C8  3C C0 80 2E */	lis r6, finishLoadedObjecthkPoweredChainData@ha
/* 802DBC4C 002D19CC  3C 80 80 2E */	lis r4, cleanupLoadedObjecthkPoweredChainData@ha
/* 802DBC50 002D19D0  39 08 21 F0 */	addi r8, r8, lbl_804121F0@l
/* 802DBC54 002D19D4  38 A7 2E 50 */	addi r5, r7, lbl_80532E50@l
/* 802DBC58 002D19D8  38 C6 AB 58 */	addi r6, r6, finishLoadedObjecthkPoweredChainData@l
/* 802DBC5C 002D19DC  38 84 AB 8C */	addi r4, r4, cleanupLoadedObjecthkPoweredChainData@l
/* 802DBC60 002D19E0  91 07 2E 50 */	stw r8, 0x2e50(r7)
/* 802DBC64 002D19E4  90 C5 00 04 */	stw r6, 4(r5)
/* 802DBC68 002D19E8  90 85 00 08 */	stw r4, 8(r5)
/* 802DBC6C 002D19EC  90 65 00 0C */	stw r3, 0xc(r5)
/* 802DBC70 002D19F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBC74 002D19F4  7C 08 03 A6 */	mtlr r0
/* 802DBC78 002D19F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBC7C 002D19FC  4E 80 00 20 */	blr 

