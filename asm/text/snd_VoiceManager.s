.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail12VoiceManagerFv$7GetInstance
nw4r3snd6detail12VoiceManagerFv$7GetInstance:
/* 801D2AD0 001C8850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D2AD4 001C8854  7C 08 02 A6 */	mflr r0
/* 801D2AD8 001C8858  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D2ADC 001C885C  88 0D C2 00 */	lbz r0, lbl_805A0620-_SDA_BASE_(r13)
/* 801D2AE0 001C8860  7C 00 07 75 */	extsb. r0, r0
/* 801D2AE4 001C8864  40 82 00 60 */	bne lbl_801D2B44
/* 801D2AE8 001C8868  3C C0 80 4E */	lis r6, lbl_804DD0EC@ha
/* 801D2AEC 001C886C  38 00 00 00 */	li r0, 0
/* 801D2AF0 001C8870  38 66 D0 EC */	addi r3, r6, lbl_804DD0EC@l
/* 801D2AF4 001C8874  3C 80 80 1D */	lis r4, nw4r3snd6detail12VoiceManagerFv$7__dt@ha
/* 801D2AF8 001C8878  90 03 00 08 */	stw r0, 8(r3)
/* 801D2AFC 001C887C  39 03 00 08 */	addi r8, r3, 8
/* 801D2B00 001C8880  38 E3 00 14 */	addi r7, r3, 0x14
/* 801D2B04 001C8884  3C A0 80 4E */	lis r5, lbl_804DD0E0@ha
/* 801D2B08 001C8888  90 03 00 0C */	stw r0, 0xc(r3)
/* 801D2B0C 001C888C  38 84 2B 5C */	addi r4, r4, nw4r3snd6detail12VoiceManagerFv$7__dt@l
/* 801D2B10 001C8890  38 A5 D0 E0 */	addi r5, r5, lbl_804DD0E0@l
/* 801D2B14 001C8894  90 03 00 14 */	stw r0, 0x14(r3)
/* 801D2B18 001C8898  90 03 00 18 */	stw r0, 0x18(r3)
/* 801D2B1C 001C889C  98 06 D0 EC */	stb r0, -0x2f14(r6)
/* 801D2B20 001C88A0  90 03 00 04 */	stw r0, 4(r3)
/* 801D2B24 001C88A4  91 03 00 08 */	stw r8, 8(r3)
/* 801D2B28 001C88A8  91 03 00 0C */	stw r8, 0xc(r3)
/* 801D2B2C 001C88AC  90 03 00 10 */	stw r0, 0x10(r3)
/* 801D2B30 001C88B0  90 E3 00 14 */	stw r7, 0x14(r3)
/* 801D2B34 001C88B4  90 E3 00 18 */	stw r7, 0x18(r3)
/* 801D2B38 001C88B8  48 21 DB ED */	bl __register_global_object_tmp
/* 801D2B3C 001C88BC  38 00 00 01 */	li r0, 1
/* 801D2B40 001C88C0  98 0D C2 00 */	stb r0, lbl_805A0620-_SDA_BASE_(r13)
lbl_801D2B44:
/* 801D2B44 001C88C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D2B48 001C88C8  3C 60 80 4E */	lis r3, lbl_804DD0EC@ha
/* 801D2B4C 001C88CC  38 63 D0 EC */	addi r3, r3, lbl_804DD0EC@l
/* 801D2B50 001C88D0  7C 08 03 A6 */	mtlr r0
/* 801D2B54 001C88D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D2B58 001C88D8  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFv$7__dt
nw4r3snd6detail12VoiceManagerFv$7__dt:
/* 801D2B5C 001C88DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D2B60 001C88E0  7C 08 02 A6 */	mflr r0
/* 801D2B64 001C88E4  2C 03 00 00 */	cmpwi r3, 0
/* 801D2B68 001C88E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D2B6C 001C88EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D2B70 001C88F0  7C 9F 23 78 */	mr r31, r4
/* 801D2B74 001C88F4  93 C1 00 08 */	stw r30, 8(r1)
/* 801D2B78 001C88F8  7C 7E 1B 78 */	mr r30, r3
/* 801D2B7C 001C88FC  41 82 00 34 */	beq lbl_801D2BB0
/* 801D2B80 001C8900  34 63 00 10 */	addic. r3, r3, 0x10
/* 801D2B84 001C8904  41 82 00 0C */	beq lbl_801D2B90
/* 801D2B88 001C8908  38 80 00 00 */	li r4, 0
/* 801D2B8C 001C890C  4B F8 96 AD */	bl nw4r2ut6detail12LinkListImplFv$7__dt
lbl_801D2B90:
/* 801D2B90 001C8910  34 7E 00 04 */	addic. r3, r30, 4
/* 801D2B94 001C8914  41 82 00 0C */	beq lbl_801D2BA0
/* 801D2B98 001C8918  38 80 00 00 */	li r4, 0
/* 801D2B9C 001C891C  4B F8 96 9D */	bl nw4r2ut6detail12LinkListImplFv$7__dt
lbl_801D2BA0:
/* 801D2BA0 001C8920  2C 1F 00 00 */	cmpwi r31, 0
/* 801D2BA4 001C8924  40 81 00 0C */	ble lbl_801D2BB0
/* 801D2BA8 001C8928  7F C3 F3 78 */	mr r3, r30
/* 801D2BAC 001C892C  4B E3 9D 1D */	bl __dl
lbl_801D2BB0:
/* 801D2BB0 001C8930  7F C3 F3 78 */	mr r3, r30
/* 801D2BB4 001C8934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2BB8 001C8938  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D2BBC 001C893C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D2BC0 001C8940  7C 08 03 A6 */	mtlr r0
/* 801D2BC4 001C8944  38 21 00 10 */	addi r1, r1, 0x10
/* 801D2BC8 001C8948  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFv$7GetRequiredMemSize
nw4r3snd6detail12VoiceManagerFv$7GetRequiredMemSize:
/* 801D2BCC 001C894C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D2BD0 001C8950  7C 08 02 A6 */	mflr r0
/* 801D2BD4 001C8954  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D2BD8 001C8958  48 02 F9 F5 */	bl AXGetMaxVoices
/* 801D2BDC 001C895C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D2BE0 001C8960  1C 63 01 2C */	mulli r3, r3, 0x12c
/* 801D2BE4 001C8964  7C 08 03 A6 */	mtlr r0
/* 801D2BE8 001C8968  38 21 00 10 */	addi r1, r1, 0x10
/* 801D2BEC 001C896C  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFPvUl$7Setup
nw4r3snd6detail12VoiceManagerFPvUl$7Setup:
/* 801D2BF0 001C8970  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D2BF4 001C8974  7C 08 02 A6 */	mflr r0
/* 801D2BF8 001C8978  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D2BFC 001C897C  39 61 00 30 */	addi r11, r1, 0x30
/* 801D2C00 001C8980  48 21 E7 21 */	bl _savegpr_27
/* 801D2C04 001C8984  88 03 00 00 */	lbz r0, 0(r3)
/* 801D2C08 001C8988  7C 7B 1B 78 */	mr r27, r3
/* 801D2C0C 001C898C  2C 00 00 00 */	cmpwi r0, 0
/* 801D2C10 001C8990  40 82 00 6C */	bne lbl_801D2C7C
/* 801D2C14 001C8994  3C C0 1B 4F */	lis r6, 0x1B4E81B5@ha
/* 801D2C18 001C8998  7C 9D 23 78 */	mr r29, r4
/* 801D2C1C 001C899C  38 06 81 B5 */	addi r0, r6, 0x1B4E81B5@l
/* 801D2C20 001C89A0  3B 80 00 00 */	li r28, 0
/* 801D2C24 001C89A4  7C 00 28 16 */	mulhwu r0, r0, r5
/* 801D2C28 001C89A8  54 1E D9 7F */	rlwinm. r30, r0, 0x1b, 5, 0x1f
/* 801D2C2C 001C89AC  41 82 00 48 */	beq lbl_801D2C74
/* 801D2C30 001C89B0  3B E3 00 14 */	addi r31, r3, 0x14
/* 801D2C34 001C89B4  48 00 00 38 */	b lbl_801D2C6C
lbl_801D2C38:
/* 801D2C38 001C89B8  2C 1D 00 00 */	cmpwi r29, 0
/* 801D2C3C 001C89BC  7F A5 EB 78 */	mr r5, r29
/* 801D2C40 001C89C0  41 82 00 10 */	beq lbl_801D2C50
/* 801D2C44 001C89C4  7F A3 EB 78 */	mr r3, r29
/* 801D2C48 001C89C8  4B FF D7 55 */	bl nw4r3snd6detail5VoiceFv$7__ct
/* 801D2C4C 001C89CC  7C 65 1B 78 */	mr r5, r3
lbl_801D2C50:
/* 801D2C50 001C89D0  93 E1 00 08 */	stw r31, 8(r1)
/* 801D2C54 001C89D4  38 7B 00 10 */	addi r3, r27, 0x10
/* 801D2C58 001C89D8  38 81 00 08 */	addi r4, r1, 8
/* 801D2C5C 001C89DC  38 A5 01 24 */	addi r5, r5, 0x124
/* 801D2C60 001C89E0  4B F8 96 E9 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801D2C64 001C89E4  3B BD 01 2C */	addi r29, r29, 0x12c
/* 801D2C68 001C89E8  3B 9C 00 01 */	addi r28, r28, 1
lbl_801D2C6C:
/* 801D2C6C 001C89EC  7C 1C F0 40 */	cmplw r28, r30
/* 801D2C70 001C89F0  41 80 FF C8 */	blt lbl_801D2C38
lbl_801D2C74:
/* 801D2C74 001C89F4  38 00 00 01 */	li r0, 1
/* 801D2C78 001C89F8  98 1B 00 00 */	stb r0, 0(r27)
lbl_801D2C7C:
/* 801D2C7C 001C89FC  39 61 00 30 */	addi r11, r1, 0x30
/* 801D2C80 001C8A00  48 21 E6 ED */	bl _restgpr_27
/* 801D2C84 001C8A04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D2C88 001C8A08  7C 08 03 A6 */	mtlr r0
/* 801D2C8C 001C8A0C  38 21 00 30 */	addi r1, r1, 0x30
/* 801D2C90 001C8A10  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFv$7Shutdown
nw4r3snd6detail12VoiceManagerFv$7Shutdown:
/* 801D2C94 001C8A14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D2C98 001C8A18  7C 08 02 A6 */	mflr r0
/* 801D2C9C 001C8A1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D2CA0 001C8A20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D2CA4 001C8A24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D2CA8 001C8A28  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D2CAC 001C8A2C  7C 7D 1B 78 */	mr r29, r3
/* 801D2CB0 001C8A30  88 03 00 00 */	lbz r0, 0(r3)
/* 801D2CB4 001C8A34  2C 00 00 00 */	cmpwi r0, 0
/* 801D2CB8 001C8A38  41 82 00 A0 */	beq lbl_801D2D58
/* 801D2CBC 001C8A3C  48 00 A2 55 */	bl OSDisableInterrupts
/* 801D2CC0 001C8A40  7C 7F 1B 78 */	mr r31, r3
/* 801D2CC4 001C8A44  48 00 00 3C */	b lbl_801D2D00
lbl_801D2CC8:
/* 801D2CC8 001C8A48  80 7D 00 08 */	lwz r3, 8(r29)
/* 801D2CCC 001C8A4C  3B C3 FE DC */	addi r30, r3, -292
/* 801D2CD0 001C8A50  7F C3 F3 78 */	mr r3, r30
/* 801D2CD4 001C8A54  4B FF E4 6D */	bl nw4r3snd6detail5VoiceFv$7Stop
/* 801D2CD8 001C8A58  81 9E 00 A4 */	lwz r12, 0xa4(r30)
/* 801D2CDC 001C8A5C  2C 0C 00 00 */	cmpwi r12, 0
/* 801D2CE0 001C8A60  41 82 00 18 */	beq lbl_801D2CF8
/* 801D2CE4 001C8A64  7F C3 F3 78 */	mr r3, r30
/* 801D2CE8 001C8A68  80 BE 00 A8 */	lwz r5, 0xa8(r30)
/* 801D2CEC 001C8A6C  38 80 00 01 */	li r4, 1
/* 801D2CF0 001C8A70  7D 89 03 A6 */	mtctr r12
/* 801D2CF4 001C8A74  4E 80 04 21 */	bctrl 
lbl_801D2CF8:
/* 801D2CF8 001C8A78  7F C3 F3 78 */	mr r3, r30
/* 801D2CFC 001C8A7C  4B FF E0 A9 */	bl nw4r3snd6detail5VoiceFv$7Free
lbl_801D2D00:
/* 801D2D00 001C8A80  80 1D 00 04 */	lwz r0, 4(r29)
/* 801D2D04 001C8A84  2C 00 00 00 */	cmpwi r0, 0
/* 801D2D08 001C8A88  40 82 FF C0 */	bne lbl_801D2CC8
/* 801D2D0C 001C8A8C  7F E3 FB 78 */	mr r3, r31
/* 801D2D10 001C8A90  48 00 A2 29 */	bl OSRestoreInterrupts
/* 801D2D14 001C8A94  48 00 00 30 */	b lbl_801D2D44
lbl_801D2D18:
/* 801D2D18 001C8A98  83 DD 00 14 */	lwz r30, 0x14(r29)
/* 801D2D1C 001C8A9C  38 7D 00 10 */	addi r3, r29, 0x10
/* 801D2D20 001C8AA0  38 81 00 08 */	addi r4, r1, 8
/* 801D2D24 001C8AA4  93 C1 00 08 */	stw r30, 8(r1)
/* 801D2D28 001C8AA8  4B F8 95 95 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Erase
/* 801D2D2C 001C8AAC  81 9E FE E4 */	lwz r12, -0x11c(r30)
/* 801D2D30 001C8AB0  38 7E FE DC */	addi r3, r30, -292
/* 801D2D34 001C8AB4  38 80 FF FF */	li r4, -1
/* 801D2D38 001C8AB8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D2D3C 001C8ABC  7D 89 03 A6 */	mtctr r12
/* 801D2D40 001C8AC0  4E 80 04 21 */	bctrl 
lbl_801D2D44:
/* 801D2D44 001C8AC4  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 801D2D48 001C8AC8  2C 00 00 00 */	cmpwi r0, 0
/* 801D2D4C 001C8ACC  40 82 FF CC */	bne lbl_801D2D18
/* 801D2D50 001C8AD0  38 00 00 00 */	li r0, 0
/* 801D2D54 001C8AD4  98 1D 00 00 */	stb r0, 0(r29)
lbl_801D2D58:
/* 801D2D58 001C8AD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D2D5C 001C8ADC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D2D60 001C8AE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D2D64 001C8AE4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D2D68 001C8AE8  7C 08 03 A6 */	mtlr r0
/* 801D2D6C 001C8AEC  38 21 00 20 */	addi r1, r1, 0x20
/* 801D2D70 001C8AF0  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFiiiPFPQ44nw4r3$7AllocVoice
nw4r3snd6detail12VoiceManagerFiiiPFPQ44nw4r3$7AllocVoice:
/* 801D2D74 001C8AF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D2D78 001C8AF8  7C 08 02 A6 */	mflr r0
/* 801D2D7C 001C8AFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D2D80 001C8B00  39 61 00 40 */	addi r11, r1, 0x40
/* 801D2D84 001C8B04  48 21 E5 8D */	bl _savegpr_23
/* 801D2D88 001C8B08  7C 7F 1B 78 */	mr r31, r3
/* 801D2D8C 001C8B0C  7C 97 23 78 */	mr r23, r4
/* 801D2D90 001C8B10  7C B8 2B 78 */	mr r24, r5
/* 801D2D94 001C8B14  7C D9 33 78 */	mr r25, r6
/* 801D2D98 001C8B18  7C FA 3B 78 */	mr r26, r7
/* 801D2D9C 001C8B1C  7D 1B 43 78 */	mr r27, r8
/* 801D2DA0 001C8B20  48 00 A1 71 */	bl OSDisableInterrupts
/* 801D2DA4 001C8B24  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 801D2DA8 001C8B28  7C 7E 1B 78 */	mr r30, r3
/* 801D2DAC 001C8B2C  2C 00 00 00 */	cmpwi r0, 0
/* 801D2DB0 001C8B30  40 82 00 7C */	bne lbl_801D2E2C
/* 801D2DB4 001C8B34  3B A0 00 00 */	li r29, 0
/* 801D2DB8 001C8B38  40 82 00 5C */	bne lbl_801D2E14
/* 801D2DBC 001C8B3C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D2DC0 001C8B40  80 03 FF 90 */	lwz r0, -0x70(r3)
/* 801D2DC4 001C8B44  3B 83 FE DC */	addi r28, r3, -292
/* 801D2DC8 001C8B48  7C 00 C8 00 */	cmpw r0, r25
/* 801D2DCC 001C8B4C  40 81 00 0C */	ble lbl_801D2DD8
/* 801D2DD0 001C8B50  3B A0 00 00 */	li r29, 0
/* 801D2DD4 001C8B54  48 00 00 40 */	b lbl_801D2E14
lbl_801D2DD8:
/* 801D2DD8 001C8B58  80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 801D2DDC 001C8B5C  7F 83 E3 78 */	mr r3, r28
/* 801D2DE0 001C8B60  80 1C 00 A0 */	lwz r0, 0xa0(r28)
/* 801D2DE4 001C8B64  7F A4 01 D6 */	mullw r29, r4, r0
/* 801D2DE8 001C8B68  4B FF E3 59 */	bl nw4r3snd6detail5VoiceFv$7Stop
/* 801D2DEC 001C8B6C  7F 83 E3 78 */	mr r3, r28
/* 801D2DF0 001C8B70  4B FF DF B5 */	bl nw4r3snd6detail5VoiceFv$7Free
/* 801D2DF4 001C8B74  81 9C 00 A4 */	lwz r12, 0xa4(r28)
/* 801D2DF8 001C8B78  2C 0C 00 00 */	cmpwi r12, 0
/* 801D2DFC 001C8B7C  41 82 00 18 */	beq lbl_801D2E14
/* 801D2E00 001C8B80  7F 83 E3 78 */	mr r3, r28
/* 801D2E04 001C8B84  80 BC 00 A8 */	lwz r5, 0xa8(r28)
/* 801D2E08 001C8B88  38 80 00 02 */	li r4, 2
/* 801D2E0C 001C8B8C  7D 89 03 A6 */	mtctr r12
/* 801D2E10 001C8B90  4E 80 04 21 */	bctrl 
lbl_801D2E14:
/* 801D2E14 001C8B94  2C 1D 00 00 */	cmpwi r29, 0
/* 801D2E18 001C8B98  40 82 00 14 */	bne lbl_801D2E2C
/* 801D2E1C 001C8B9C  7F C3 F3 78 */	mr r3, r30
/* 801D2E20 001C8BA0  48 00 A1 19 */	bl OSRestoreInterrupts
/* 801D2E24 001C8BA4  38 60 00 00 */	li r3, 0
/* 801D2E28 001C8BA8  48 00 00 F0 */	b lbl_801D2F18
lbl_801D2E2C:
/* 801D2E2C 001C8BAC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801D2E30 001C8BB0  7E E4 BB 78 */	mr r4, r23
/* 801D2E34 001C8BB4  7F 05 C3 78 */	mr r5, r24
/* 801D2E38 001C8BB8  7F 26 CB 78 */	mr r6, r25
/* 801D2E3C 001C8BBC  3B 83 FE DC */	addi r28, r3, -292
/* 801D2E40 001C8BC0  7F 47 D3 78 */	mr r7, r26
/* 801D2E44 001C8BC4  7F 83 E3 78 */	mr r3, r28
/* 801D2E48 001C8BC8  7F 68 DB 78 */	mr r8, r27
/* 801D2E4C 001C8BCC  4B FF DD 1D */	bl nw4r3snd6detail5VoiceFiiiPFPQ44nw4r3snd6deta$7Acquire
/* 801D2E50 001C8BD0  2C 03 00 00 */	cmpwi r3, 0
/* 801D2E54 001C8BD4  40 82 00 14 */	bne lbl_801D2E68
/* 801D2E58 001C8BD8  7F C3 F3 78 */	mr r3, r30
/* 801D2E5C 001C8BDC  48 00 A0 DD */	bl OSRestoreInterrupts
/* 801D2E60 001C8BE0  38 60 00 00 */	li r3, 0
/* 801D2E64 001C8BE4  48 00 00 B4 */	b lbl_801D2F18
lbl_801D2E68:
/* 801D2E68 001C8BE8  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 801D2E6C 001C8BEC  90 1C 00 B4 */	stw r0, 0xb4(r28)
/* 801D2E70 001C8BF0  48 00 A0 A1 */	bl OSDisableInterrupts
/* 801D2E74 001C8BF4  3B 7C 01 24 */	addi r27, r28, 0x124
/* 801D2E78 001C8BF8  7C 7D 1B 78 */	mr r29, r3
/* 801D2E7C 001C8BFC  7F 64 DB 78 */	mr r4, r27
/* 801D2E80 001C8C00  38 7F 00 10 */	addi r3, r31, 0x10
/* 801D2E84 001C8C04  4B F8 94 F1 */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 801D2E88 001C8C08  80 BF 00 08 */	lwz r5, 8(r31)
/* 801D2E8C 001C8C0C  38 7F 00 08 */	addi r3, r31, 8
/* 801D2E90 001C8C10  48 00 00 1C */	b lbl_801D2EAC
lbl_801D2E94:
/* 801D2E94 001C8C14  80 C3 00 04 */	lwz r6, 4(r3)
/* 801D2E98 001C8C18  80 1C 00 B4 */	lwz r0, 0xb4(r28)
/* 801D2E9C 001C8C1C  80 86 FF 90 */	lwz r4, -0x70(r6)
/* 801D2EA0 001C8C20  7C 04 00 00 */	cmpw r4, r0
/* 801D2EA4 001C8C24  40 81 00 10 */	ble lbl_801D2EB4
/* 801D2EA8 001C8C28  7C C3 33 78 */	mr r3, r6
lbl_801D2EAC:
/* 801D2EAC 001C8C2C  7C 03 28 40 */	cmplw r3, r5
/* 801D2EB0 001C8C30  40 82 FF E4 */	bne lbl_801D2E94
lbl_801D2EB4:
/* 801D2EB4 001C8C34  90 61 00 08 */	stw r3, 8(r1)
/* 801D2EB8 001C8C38  7F 65 DB 78 */	mr r5, r27
/* 801D2EBC 001C8C3C  38 7F 00 04 */	addi r3, r31, 4
/* 801D2EC0 001C8C40  38 81 00 08 */	addi r4, r1, 8
/* 801D2EC4 001C8C44  4B F8 94 85 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801D2EC8 001C8C48  7F A3 EB 78 */	mr r3, r29
/* 801D2ECC 001C8C4C  48 00 A0 6D */	bl OSRestoreInterrupts
/* 801D2ED0 001C8C50  3B BF 00 08 */	addi r29, r31, 8
/* 801D2ED4 001C8C54  48 00 00 24 */	b lbl_801D2EF8
lbl_801D2ED8:
/* 801D2ED8 001C8C58  80 1B FF 90 */	lwz r0, -0x70(r27)
/* 801D2EDC 001C8C5C  38 7B FE DC */	addi r3, r27, -292
/* 801D2EE0 001C8C60  2C 00 00 01 */	cmpwi r0, 1
/* 801D2EE4 001C8C64  40 81 00 1C */	ble lbl_801D2F00
/* 801D2EE8 001C8C68  2C 00 00 FF */	cmpwi r0, 0xff
/* 801D2EEC 001C8C6C  41 82 00 08 */	beq lbl_801D2EF4
/* 801D2EF0 001C8C70  4B FF E7 E1 */	bl nw4r3snd6detail5VoiceFv$7UpdateVoicesPriority
lbl_801D2EF4:
/* 801D2EF4 001C8C74  83 7B 00 00 */	lwz r27, 0(r27)
lbl_801D2EF8:
/* 801D2EF8 001C8C78  7C 1B E8 40 */	cmplw r27, r29
/* 801D2EFC 001C8C7C  40 82 FF DC */	bne lbl_801D2ED8
lbl_801D2F00:
/* 801D2F00 001C8C80  4B FE B8 BD */	bl nw4r3snd6detail22DisposeCallbackManagerFv$7GetInstance
/* 801D2F04 001C8C84  7F 84 E3 78 */	mr r4, r28
/* 801D2F08 001C8C88  4B FE B9 99 */	bl nw4r3snd6detail22DisposeCallbackManagerFPQ44$7RegisterDisposeCallback
/* 801D2F0C 001C8C8C  7F C3 F3 78 */	mr r3, r30
/* 801D2F10 001C8C90  48 00 A0 29 */	bl OSRestoreInterrupts
/* 801D2F14 001C8C94  7F 83 E3 78 */	mr r3, r28
lbl_801D2F18:
/* 801D2F18 001C8C98  39 61 00 40 */	addi r11, r1, 0x40
/* 801D2F1C 001C8C9C  48 21 E4 41 */	bl _restgpr_23
/* 801D2F20 001C8CA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D2F24 001C8CA4  7C 08 03 A6 */	mtlr r0
/* 801D2F28 001C8CA8  38 21 00 40 */	addi r1, r1, 0x40
/* 801D2F2C 001C8CAC  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFPQ44nw4r3snd6d$7FreeVoice
nw4r3snd6detail12VoiceManagerFPQ44nw4r3snd6d$7FreeVoice:
/* 801D2F30 001C8CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D2F34 001C8CB4  7C 08 02 A6 */	mflr r0
/* 801D2F38 001C8CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D2F3C 001C8CBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D2F40 001C8CC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D2F44 001C8CC4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D2F48 001C8CC8  7C 9D 23 78 */	mr r29, r4
/* 801D2F4C 001C8CCC  93 81 00 10 */	stw r28, 0x10(r1)
/* 801D2F50 001C8CD0  7C 7C 1B 78 */	mr r28, r3
/* 801D2F54 001C8CD4  48 00 9F BD */	bl OSDisableInterrupts
/* 801D2F58 001C8CD8  7C 7F 1B 78 */	mr r31, r3
/* 801D2F5C 001C8CDC  4B FE B8 61 */	bl nw4r3snd6detail22DisposeCallbackManagerFv$7GetInstance
/* 801D2F60 001C8CE0  7F A4 EB 78 */	mr r4, r29
/* 801D2F64 001C8CE4  4B FE B9 6D */	bl nw4r3snd6detail22DisposeCallbackManagerFPQ44$7UnregisterDisposeCallback
/* 801D2F68 001C8CE8  48 00 9F A9 */	bl OSDisableInterrupts
/* 801D2F6C 001C8CEC  3B BD 01 24 */	addi r29, r29, 0x124
/* 801D2F70 001C8CF0  7C 7E 1B 78 */	mr r30, r3
/* 801D2F74 001C8CF4  7F A4 EB 78 */	mr r4, r29
/* 801D2F78 001C8CF8  38 7C 00 04 */	addi r3, r28, 4
/* 801D2F7C 001C8CFC  4B F8 93 F9 */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 801D2F80 001C8D00  38 1C 00 14 */	addi r0, r28, 0x14
/* 801D2F84 001C8D04  7F A5 EB 78 */	mr r5, r29
/* 801D2F88 001C8D08  90 01 00 08 */	stw r0, 8(r1)
/* 801D2F8C 001C8D0C  38 7C 00 10 */	addi r3, r28, 0x10
/* 801D2F90 001C8D10  38 81 00 08 */	addi r4, r1, 8
/* 801D2F94 001C8D14  4B F8 93 B5 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801D2F98 001C8D18  7F C3 F3 78 */	mr r3, r30
/* 801D2F9C 001C8D1C  48 00 9F 9D */	bl OSRestoreInterrupts
/* 801D2FA0 001C8D20  7F E3 FB 78 */	mr r3, r31
/* 801D2FA4 001C8D24  48 00 9F 95 */	bl OSRestoreInterrupts
/* 801D2FA8 001C8D28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D2FAC 001C8D2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D2FB0 001C8D30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D2FB4 001C8D34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D2FB8 001C8D38  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801D2FBC 001C8D3C  7C 08 03 A6 */	mtlr r0
/* 801D2FC0 001C8D40  38 21 00 20 */	addi r1, r1, 0x20
/* 801D2FC4 001C8D44  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFv$7UpdateAllVoices
nw4r3snd6detail12VoiceManagerFv$7UpdateAllVoices:
/* 801D2FC8 001C8D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D2FCC 001C8D4C  7C 08 02 A6 */	mflr r0
/* 801D2FD0 001C8D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D2FD4 001C8D54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D2FD8 001C8D58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D2FDC 001C8D5C  3B C3 00 08 */	addi r30, r3, 8
/* 801D2FE0 001C8D60  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D2FE4 001C8D64  7C 7D 1B 78 */	mr r29, r3
/* 801D2FE8 001C8D68  83 E3 00 08 */	lwz r31, 8(r3)
/* 801D2FEC 001C8D6C  48 00 00 14 */	b lbl_801D3000
lbl_801D2FF0:
/* 801D2FF0 001C8D70  7F E3 FB 78 */	mr r3, r31
/* 801D2FF4 001C8D74  83 FF 00 00 */	lwz r31, 0(r31)
/* 801D2FF8 001C8D78  38 63 FE DC */	addi r3, r3, -292
/* 801D2FFC 001C8D7C  4B FF D5 45 */	bl nw4r3snd6detail5VoiceFv$7StopFinished
lbl_801D3000:
/* 801D3000 001C8D80  7C 1F F0 40 */	cmplw r31, r30
/* 801D3004 001C8D84  40 82 FF EC */	bne lbl_801D2FF0
/* 801D3008 001C8D88  83 DD 00 08 */	lwz r30, 8(r29)
/* 801D300C 001C8D8C  3B FD 00 08 */	addi r31, r29, 8
/* 801D3010 001C8D90  48 00 00 14 */	b lbl_801D3024
lbl_801D3014:
/* 801D3014 001C8D94  7F C3 F3 78 */	mr r3, r30
/* 801D3018 001C8D98  83 DE 00 00 */	lwz r30, 0(r30)
/* 801D301C 001C8D9C  38 63 FE DC */	addi r3, r3, -292
/* 801D3020 001C8DA0  4B FF D5 BD */	bl nw4r3snd6detail5VoiceFv$7Calc
lbl_801D3024:
/* 801D3024 001C8DA4  7C 1E F8 40 */	cmplw r30, r31
/* 801D3028 001C8DA8  40 82 FF EC */	bne lbl_801D3014
/* 801D302C 001C8DAC  48 00 9E E5 */	bl OSDisableInterrupts
/* 801D3030 001C8DB0  87 FD 00 08 */	lwzu r31, 8(r29)
/* 801D3034 001C8DB4  7C 7E 1B 78 */	mr r30, r3
/* 801D3038 001C8DB8  48 00 00 14 */	b lbl_801D304C
lbl_801D303C:
/* 801D303C 001C8DBC  7F E3 FB 78 */	mr r3, r31
/* 801D3040 001C8DC0  83 FF 00 00 */	lwz r31, 0(r31)
/* 801D3044 001C8DC4  38 63 FE DC */	addi r3, r3, -292
/* 801D3048 001C8DC8  4B FF D7 E5 */	bl nw4r3snd6detail5VoiceFv$7Update
lbl_801D304C:
/* 801D304C 001C8DCC  7C 1F E8 40 */	cmplw r31, r29
/* 801D3050 001C8DD0  40 82 FF EC */	bne lbl_801D303C
/* 801D3054 001C8DD4  7F C3 F3 78 */	mr r3, r30
/* 801D3058 001C8DD8  48 00 9E E1 */	bl OSRestoreInterrupts
/* 801D305C 001C8DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D3060 001C8DE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D3064 001C8DE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D3068 001C8DE8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D306C 001C8DEC  7C 08 03 A6 */	mtlr r0
/* 801D3070 001C8DF0  38 21 00 20 */	addi r1, r1, 0x20
/* 801D3074 001C8DF4  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFv$7NotifyVoiceUpdate
nw4r3snd6detail12VoiceManagerFv$7NotifyVoiceUpdate:
/* 801D3078 001C8DF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D307C 001C8DFC  7C 08 02 A6 */	mflr r0
/* 801D3080 001C8E00  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D3084 001C8E04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D3088 001C8E08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D308C 001C8E0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D3090 001C8E10  7C 7D 1B 78 */	mr r29, r3
/* 801D3094 001C8E14  48 00 9E 7D */	bl OSDisableInterrupts
/* 801D3098 001C8E18  87 DD 00 08 */	lwzu r30, 8(r29)
/* 801D309C 001C8E1C  7C 7F 1B 78 */	mr r31, r3
/* 801D30A0 001C8E20  48 00 00 14 */	b lbl_801D30B4
lbl_801D30A4:
/* 801D30A4 001C8E24  7F C3 F3 78 */	mr r3, r30
/* 801D30A8 001C8E28  83 DE 00 00 */	lwz r30, 0(r30)
/* 801D30AC 001C8E2C  38 63 FE DC */	addi r3, r3, -292
/* 801D30B0 001C8E30  4B FF EB 8D */	bl nw4r3snd6detail5VoiceFv$7ResetDelta
lbl_801D30B4:
/* 801D30B4 001C8E34  7C 1E E8 40 */	cmplw r30, r29
/* 801D30B8 001C8E38  40 82 FF EC */	bne lbl_801D30A4
/* 801D30BC 001C8E3C  7F E3 FB 78 */	mr r3, r31
/* 801D30C0 001C8E40  48 00 9E 79 */	bl OSRestoreInterrupts
/* 801D30C4 001C8E44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D30C8 001C8E48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D30CC 001C8E4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D30D0 001C8E50  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D30D4 001C8E54  7C 08 03 A6 */	mtlr r0
/* 801D30D8 001C8E58  38 21 00 20 */	addi r1, r1, 0x20
/* 801D30DC 001C8E5C  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFPQ44nw4r3snd6d$7ChangeVoicePriority
nw4r3snd6detail12VoiceManagerFPQ44nw4r3snd6d$7ChangeVoicePriority:
/* 801D30E0 001C8E60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D30E4 001C8E64  7C 08 02 A6 */	mflr r0
/* 801D30E8 001C8E68  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D30EC 001C8E6C  39 61 00 30 */	addi r11, r1, 0x30
/* 801D30F0 001C8E70  48 21 E2 31 */	bl _savegpr_27
/* 801D30F4 001C8E74  7C 7B 1B 78 */	mr r27, r3
/* 801D30F8 001C8E78  7C 9C 23 78 */	mr r28, r4
/* 801D30FC 001C8E7C  48 00 9E 15 */	bl OSDisableInterrupts
/* 801D3100 001C8E80  7C 7F 1B 78 */	mr r31, r3
/* 801D3104 001C8E84  48 00 9E 0D */	bl OSDisableInterrupts
/* 801D3108 001C8E88  3B BC 01 24 */	addi r29, r28, 0x124
/* 801D310C 001C8E8C  7C 7E 1B 78 */	mr r30, r3
/* 801D3110 001C8E90  7F A4 EB 78 */	mr r4, r29
/* 801D3114 001C8E94  38 7B 00 04 */	addi r3, r27, 4
/* 801D3118 001C8E98  4B F8 92 5D */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 801D311C 001C8E9C  38 1B 00 14 */	addi r0, r27, 0x14
/* 801D3120 001C8EA0  7F A5 EB 78 */	mr r5, r29
/* 801D3124 001C8EA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D3128 001C8EA8  38 7B 00 10 */	addi r3, r27, 0x10
/* 801D312C 001C8EAC  38 81 00 0C */	addi r4, r1, 0xc
/* 801D3130 001C8EB0  4B F8 92 19 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801D3134 001C8EB4  7F C3 F3 78 */	mr r3, r30
/* 801D3138 001C8EB8  48 00 9E 01 */	bl OSRestoreInterrupts
/* 801D313C 001C8EBC  48 00 9D D5 */	bl OSDisableInterrupts
/* 801D3140 001C8EC0  7C 7E 1B 78 */	mr r30, r3
/* 801D3144 001C8EC4  7F A4 EB 78 */	mr r4, r29
/* 801D3148 001C8EC8  38 7B 00 10 */	addi r3, r27, 0x10
/* 801D314C 001C8ECC  4B F8 92 29 */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 801D3150 001C8ED0  80 BB 00 08 */	lwz r5, 8(r27)
/* 801D3154 001C8ED4  38 7B 00 08 */	addi r3, r27, 8
/* 801D3158 001C8ED8  48 00 00 1C */	b lbl_801D3174
lbl_801D315C:
/* 801D315C 001C8EDC  80 C3 00 04 */	lwz r6, 4(r3)
/* 801D3160 001C8EE0  80 1C 00 B4 */	lwz r0, 0xb4(r28)
/* 801D3164 001C8EE4  80 86 FF 90 */	lwz r4, -0x70(r6)
/* 801D3168 001C8EE8  7C 04 00 00 */	cmpw r4, r0
/* 801D316C 001C8EEC  40 81 00 10 */	ble lbl_801D317C
/* 801D3170 001C8EF0  7C C3 33 78 */	mr r3, r6
lbl_801D3174:
/* 801D3174 001C8EF4  7C 03 28 40 */	cmplw r3, r5
/* 801D3178 001C8EF8  40 82 FF E4 */	bne lbl_801D315C
lbl_801D317C:
/* 801D317C 001C8EFC  90 61 00 08 */	stw r3, 8(r1)
/* 801D3180 001C8F00  7F A5 EB 78 */	mr r5, r29
/* 801D3184 001C8F04  38 7B 00 04 */	addi r3, r27, 4
/* 801D3188 001C8F08  38 81 00 08 */	addi r4, r1, 8
/* 801D318C 001C8F0C  4B F8 91 BD */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801D3190 001C8F10  7F C3 F3 78 */	mr r3, r30
/* 801D3194 001C8F14  48 00 9D A5 */	bl OSRestoreInterrupts
/* 801D3198 001C8F18  3B DB 00 08 */	addi r30, r27, 8
/* 801D319C 001C8F1C  48 00 00 24 */	b lbl_801D31C0
lbl_801D31A0:
/* 801D31A0 001C8F20  80 1D FF 90 */	lwz r0, -0x70(r29)
/* 801D31A4 001C8F24  38 7D FE DC */	addi r3, r29, -292
/* 801D31A8 001C8F28  2C 00 00 01 */	cmpwi r0, 1
/* 801D31AC 001C8F2C  40 81 00 1C */	ble lbl_801D31C8
/* 801D31B0 001C8F30  2C 00 00 FF */	cmpwi r0, 0xff
/* 801D31B4 001C8F34  41 82 00 08 */	beq lbl_801D31BC
/* 801D31B8 001C8F38  4B FF E5 19 */	bl nw4r3snd6detail5VoiceFv$7UpdateVoicesPriority
lbl_801D31BC:
/* 801D31BC 001C8F3C  83 BD 00 00 */	lwz r29, 0(r29)
lbl_801D31C0:
/* 801D31C0 001C8F40  7C 1D F0 40 */	cmplw r29, r30
/* 801D31C4 001C8F44  40 82 FF DC */	bne lbl_801D31A0
lbl_801D31C8:
/* 801D31C8 001C8F48  7F E3 FB 78 */	mr r3, r31
/* 801D31CC 001C8F4C  48 00 9D 6D */	bl OSRestoreInterrupts
/* 801D31D0 001C8F50  39 61 00 30 */	addi r11, r1, 0x30
/* 801D31D4 001C8F54  48 21 E1 99 */	bl _restgpr_27
/* 801D31D8 001C8F58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D31DC 001C8F5C  7C 08 03 A6 */	mtlr r0
/* 801D31E0 001C8F60  38 21 00 30 */	addi r1, r1, 0x30
/* 801D31E4 001C8F64  4E 80 00 20 */	blr 

.global nw4r3snd6detail12VoiceManagerFUl$7UpdateAllVoicesSync
nw4r3snd6detail12VoiceManagerFUl$7UpdateAllVoicesSync:
/* 801D31E8 001C8F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D31EC 001C8F6C  7C 08 02 A6 */	mflr r0
/* 801D31F0 001C8F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D31F4 001C8F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D31F8 001C8F78  7C 9F 23 78 */	mr r31, r4
/* 801D31FC 001C8F7C  93 C1 00 08 */	stw r30, 8(r1)
/* 801D3200 001C8F80  7C 7E 1B 78 */	mr r30, r3
/* 801D3204 001C8F84  48 00 9D 0D */	bl OSDisableInterrupts
/* 801D3208 001C8F88  80 9E 00 08 */	lwz r4, 8(r30)
/* 801D320C 001C8F8C  38 1E 00 08 */	addi r0, r30, 8
/* 801D3210 001C8F90  48 00 00 24 */	b lbl_801D3234
lbl_801D3214:
/* 801D3214 001C8F94  7C 86 23 78 */	mr r6, r4
/* 801D3218 001C8F98  80 84 00 00 */	lwz r4, 0(r4)
/* 801D321C 001C8F9C  88 A6 FF 88 */	lbz r5, -0x78(r6)
/* 801D3220 001C8FA0  2C 05 00 00 */	cmpwi r5, 0
/* 801D3224 001C8FA4  41 82 00 10 */	beq lbl_801D3234
/* 801D3228 001C8FA8  88 A6 FF 8D */	lbz r5, -0x73(r6)
/* 801D322C 001C8FAC  7C A5 FB 78 */	or r5, r5, r31
/* 801D3230 001C8FB0  98 A6 FF 8D */	stb r5, -0x73(r6)
lbl_801D3234:
/* 801D3234 001C8FB4  7C 04 00 40 */	cmplw r4, r0
/* 801D3238 001C8FB8  40 82 FF DC */	bne lbl_801D3214
/* 801D323C 001C8FBC  48 00 9C FD */	bl OSRestoreInterrupts
/* 801D3240 001C8FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D3244 001C8FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D3248 001C8FC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D324C 001C8FCC  7C 08 03 A6 */	mtlr r0
/* 801D3250 001C8FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D3254 001C8FD4  4E 80 00 20 */	blr 

