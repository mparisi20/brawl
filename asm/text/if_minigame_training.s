.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfMinigameTraining$7__dt
IfMinigameTraining$7__dt:
/* 801049E8 000FA768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801049EC 000FA76C  7C 08 02 A6 */	mflr r0
/* 801049F0 000FA770  90 01 00 24 */	stw r0, 0x24(r1)
/* 801049F4 000FA774  39 61 00 20 */	addi r11, r1, 0x20
/* 801049F8 000FA778  48 2E C9 29 */	bl _savegpr_27
/* 801049FC 000FA77C  2C 03 00 00 */	cmpwi r3, 0
/* 80104A00 000FA780  7C 7B 1B 78 */	mr r27, r3
/* 80104A04 000FA784  7C 9C 23 78 */	mr r28, r4
/* 80104A08 000FA788  41 82 00 80 */	beq lbl_80104A88
/* 80104A0C 000FA78C  3C 80 80 46 */	lis r4, lbl_8045D040@ha
/* 80104A10 000FA790  7F 7D DB 78 */	mr r29, r27
/* 80104A14 000FA794  38 84 D0 40 */	addi r4, r4, lbl_8045D040@l
/* 80104A18 000FA798  3B C0 00 00 */	li r30, 0
/* 80104A1C 000FA79C  90 83 03 00 */	stw r4, 0x300(r3)
/* 80104A20 000FA7A0  3B E0 00 00 */	li r31, 0
lbl_80104A24:
/* 80104A24 000FA7A4  80 7D 00 04 */	lwz r3, 4(r29)
/* 80104A28 000FA7A8  2C 03 00 00 */	cmpwi r3, 0
/* 80104A2C 000FA7AC  41 82 00 20 */	beq lbl_80104A4C
/* 80104A30 000FA7B0  41 82 00 18 */	beq lbl_80104A48
/* 80104A34 000FA7B4  81 83 00 5C */	lwz r12, 0x5c(r3)
/* 80104A38 000FA7B8  38 80 00 01 */	li r4, 1
/* 80104A3C 000FA7BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80104A40 000FA7C0  7D 89 03 A6 */	mtctr r12
/* 80104A44 000FA7C4  4E 80 04 21 */	bctrl 
lbl_80104A48:
/* 80104A48 000FA7C8  93 FD 00 04 */	stw r31, 4(r29)
lbl_80104A4C:
/* 80104A4C 000FA7CC  3B DE 00 01 */	addi r30, r30, 1
/* 80104A50 000FA7D0  3B BD 00 04 */	addi r29, r29, 4
/* 80104A54 000FA7D4  2C 1E 00 02 */	cmpwi r30, 2
/* 80104A58 000FA7D8  41 80 FF CC */	blt lbl_80104A24
/* 80104A5C 000FA7DC  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 80104A60 000FA7E0  2C 03 00 00 */	cmpwi r3, 0
/* 80104A64 000FA7E4  41 82 00 14 */	beq lbl_80104A78
/* 80104A68 000FA7E8  38 80 00 01 */	li r4, 1
/* 80104A6C 000FA7EC  4B FB 3F A1 */	bl MuMsg$7__dt
/* 80104A70 000FA7F0  38 00 00 00 */	li r0, 0
/* 80104A74 000FA7F4  90 1B 00 0C */	stw r0, 0xc(r27)
lbl_80104A78:
/* 80104A78 000FA7F8  2C 1C 00 00 */	cmpwi r28, 0
/* 80104A7C 000FA7FC  40 81 00 0C */	ble lbl_80104A88
/* 80104A80 000FA800  7F 63 DB 78 */	mr r3, r27
/* 80104A84 000FA804  4B F0 7E 45 */	bl __dl__FPv
lbl_80104A88:
/* 80104A88 000FA808  39 61 00 20 */	addi r11, r1, 0x20
/* 80104A8C 000FA80C  7F 63 DB 78 */	mr r3, r27
/* 80104A90 000FA810  48 2E C8 DD */	bl _restgpr_27
/* 80104A94 000FA814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80104A98 000FA818  7C 08 03 A6 */	mtlr r0
/* 80104A9C 000FA81C  38 21 00 20 */	addi r1, r1, 0x20
/* 80104AA0 000FA820  4E 80 00 20 */	blr 

.global IfMinigameTraining$7createModel
IfMinigameTraining$7createModel:
/* 80104AA4 000FA824  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80104AA8 000FA828  7C 08 02 A6 */	mflr r0
/* 80104AAC 000FA82C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80104AB0 000FA830  39 61 00 60 */	addi r11, r1, 0x60
/* 80104AB4 000FA834  48 2E C8 6D */	bl _savegpr_27
/* 80104AB8 000FA838  7C 80 23 78 */	mr r0, r4
/* 80104ABC 000FA83C  3C 80 80 41 */	lis r4, lbl_80409218@ha
/* 80104AC0 000FA840  7C BC 2B 78 */	mr r28, r5
/* 80104AC4 000FA844  7C DD 33 78 */	mr r29, r6
/* 80104AC8 000FA848  7C FE 3B 78 */	mr r30, r7
/* 80104ACC 000FA84C  7C 7B 1B 78 */	mr r27, r3
/* 80104AD0 000FA850  7D 1F 43 78 */	mr r31, r8
/* 80104AD4 000FA854  7C 06 03 78 */	mr r6, r0
/* 80104AD8 000FA858  38 84 92 18 */	addi r4, r4, lbl_80409218@l
/* 80104ADC 000FA85C  38 A0 00 02 */	li r5, 2
/* 80104AE0 000FA860  38 E0 00 C0 */	li r7, 0xc0
/* 80104AE4 000FA864  48 00 00 89 */	bl IfWifiprMngr$7isLoadResourceFinished
/* 80104AE8 000FA868  7F 63 DB 78 */	mr r3, r27
/* 80104AEC 000FA86C  7F 84 E3 78 */	mr r4, r28
/* 80104AF0 000FA870  48 00 01 71 */	bl IfMinigameTraining$7initMsg
/* 80104AF4 000FA874  7F E5 FB 78 */	mr r5, r31
/* 80104AF8 000FA878  7F C4 F3 78 */	mr r4, r30
/* 80104AFC 000FA87C  38 61 00 08 */	addi r3, r1, 8
/* 80104B00 000FA880  3B E0 00 00 */	li r31, 0
/* 80104B04 000FA884  4B F3 F3 19 */	bl __ct__10utRelocateFPvUl
/* 80104B08 000FA888  3C 80 80 46 */	lis r4, lbl_8045D008@ha
/* 80104B0C 000FA88C  38 61 00 08 */	addi r3, r1, 8
/* 80104B10 000FA890  38 84 D0 08 */	addi r4, r4, lbl_8045D008@l
/* 80104B14 000FA894  4B F3 F4 99 */	bl getPublicAddress__10utRelocateFPCc
/* 80104B18 000FA898  7F 64 DB 78 */	mr r4, r27
/* 80104B1C 000FA89C  48 00 00 18 */	b lbl_80104B34
lbl_80104B20:
/* 80104B20 000FA8A0  80 03 00 00 */	lwz r0, 0(r3)
/* 80104B24 000FA8A4  38 63 00 04 */	addi r3, r3, 4
/* 80104B28 000FA8A8  3B FF 00 01 */	addi r31, r31, 1
/* 80104B2C 000FA8AC  90 04 00 EC */	stw r0, 0xec(r4)
/* 80104B30 000FA8B0  38 84 00 04 */	addi r4, r4, 4
lbl_80104B34:
/* 80104B34 000FA8B4  80 03 00 00 */	lwz r0, 0(r3)
/* 80104B38 000FA8B8  2C 00 00 00 */	cmpwi r0, 0
/* 80104B3C 000FA8BC  40 80 FF E4 */	bge lbl_80104B20
/* 80104B40 000FA8C0  38 61 00 08 */	addi r3, r1, 8
/* 80104B44 000FA8C4  38 80 FF FF */	li r4, -1
/* 80104B48 000FA8C8  4B F3 F4 25 */	bl __dt__10utRelocateFv
/* 80104B4C 000FA8CC  93 FB 02 EC */	stw r31, 0x2ec(r27)
/* 80104B50 000FA8D0  39 61 00 60 */	addi r11, r1, 0x60
/* 80104B54 000FA8D4  93 BB 00 10 */	stw r29, 0x10(r27)
/* 80104B58 000FA8D8  48 2E C8 15 */	bl _restgpr_27
/* 80104B5C 000FA8DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80104B60 000FA8E0  7C 08 03 A6 */	mtlr r0
/* 80104B64 000FA8E4  38 21 00 60 */	addi r1, r1, 0x60
/* 80104B68 000FA8E8  4E 80 00 20 */	blr 
