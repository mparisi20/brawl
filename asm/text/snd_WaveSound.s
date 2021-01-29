.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detai$7__ct
nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detai$7__ct:
/* 801D38FC 001C967C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D3900 001C9680  7C 08 02 A6 */	mflr r0
/* 801D3904 001C9684  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D3908 001C9688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D390C 001C968C  7C 9F 23 78 */	mr r31, r4
/* 801D3910 001C9690  93 C1 00 08 */	stw r30, 8(r1)
/* 801D3914 001C9694  7C 7E 1B 78 */	mr r30, r3
/* 801D3918 001C9698  4B FE 8B A9 */	bl nw4r3snd6detail10BasicSoundFv$7__ct
/* 801D391C 001C969C  3C 80 80 46 */	lis r4, lbl_80466D60@ha
/* 801D3920 001C96A0  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 801D3924 001C96A4  38 84 6D 60 */	addi r4, r4, lbl_80466D60@l
/* 801D3928 001C96A8  90 9E 00 00 */	stw r4, 0(r30)
/* 801D392C 001C96AC  48 00 06 A9 */	bl nw4r3snd6detail9WsdPlayerFv$7__ct
/* 801D3930 001C96B0  38 00 00 00 */	li r0, 0
/* 801D3934 001C96B4  93 FE 01 B4 */	stw r31, 0x1b4(r30)
/* 801D3938 001C96B8  7F C3 F3 78 */	mr r3, r30
/* 801D393C 001C96BC  90 1E 01 B0 */	stw r0, 0x1b0(r30)
/* 801D3940 001C96C0  98 1E 01 B8 */	stb r0, 0x1b8(r30)
/* 801D3944 001C96C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D3948 001C96C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D394C 001C96CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D3950 001C96D0  7C 08 03 A6 */	mtlr r0
/* 801D3954 001C96D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D3958 001C96D8  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WsdPlayerFv$7__dt
nw4r3snd6detail9WsdPlayerFv$7__dt:
/* 801D395C 001C96DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D3960 001C96E0  7C 08 02 A6 */	mflr r0
/* 801D3964 001C96E4  2C 03 00 00 */	cmpwi r3, 0
/* 801D3968 001C96E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D396C 001C96EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D3970 001C96F0  7C 7F 1B 78 */	mr r31, r3
/* 801D3974 001C96F4  41 82 00 10 */	beq lbl_801D3984
/* 801D3978 001C96F8  2C 04 00 00 */	cmpwi r4, 0
/* 801D397C 001C96FC  40 81 00 08 */	ble lbl_801D3984
/* 801D3980 001C9700  4B E3 8F 49 */	bl __dl__FPv
lbl_801D3984:
/* 801D3984 001C9704  7F E3 FB 78 */	mr r3, r31
/* 801D3988 001C9708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D398C 001C970C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D3990 001C9710  7C 08 03 A6 */	mtlr r0
/* 801D3994 001C9714  38 21 00 10 */	addi r1, r1, 0x10
/* 801D3998 001C9718  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundFPCvlQ54nw4r3snd6de$7Prepare
nw4r3snd6detail9WaveSoundFPCvlQ54nw4r3snd6de$7Prepare:
/* 801D399C 001C971C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D39A0 001C9720  7C 08 02 A6 */	mflr r0
/* 801D39A4 001C9724  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D39A8 001C9728  39 61 00 30 */	addi r11, r1, 0x30
/* 801D39AC 001C972C  48 21 D9 69 */	bl _savegpr_24
/* 801D39B0 001C9730  81 83 00 00 */	lwz r12, 0(r3)
/* 801D39B4 001C9734  7C 78 1B 78 */	mr r24, r3
/* 801D39B8 001C9738  7C 99 23 78 */	mr r25, r4
/* 801D39BC 001C973C  7C BA 2B 78 */	mr r26, r5
/* 801D39C0 001C9740  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801D39C4 001C9744  7C DB 33 78 */	mr r27, r6
/* 801D39C8 001C9748  7C FC 3B 78 */	mr r28, r7
/* 801D39CC 001C974C  7D 1D 43 78 */	mr r29, r8
/* 801D39D0 001C9750  7D 3E 4B 78 */	mr r30, r9
/* 801D39D4 001C9754  7D 5F 53 78 */	mr r31, r10
/* 801D39D8 001C9758  7D 89 03 A6 */	mtctr r12
/* 801D39DC 001C975C  4E 80 04 21 */	bctrl 
/* 801D39E0 001C9760  7F 24 CB 78 */	mr r4, r25
/* 801D39E4 001C9764  7F 45 D3 78 */	mr r5, r26
/* 801D39E8 001C9768  7F 66 DB 78 */	mr r6, r27
/* 801D39EC 001C976C  7F 87 E3 78 */	mr r7, r28
/* 801D39F0 001C9770  7F A8 EB 78 */	mr r8, r29
/* 801D39F4 001C9774  7F C9 F3 78 */	mr r9, r30
/* 801D39F8 001C9778  7F EA FB 78 */	mr r10, r31
/* 801D39FC 001C977C  38 78 00 D8 */	addi r3, r24, 0xd8
/* 801D3A00 001C9780  48 00 06 E9 */	bl nw4r3snd6detail9WsdPlayerFPCviQ54nw4r3snd6de$7Prepare
/* 801D3A04 001C9784  2C 03 00 00 */	cmpwi r3, 0
/* 801D3A08 001C9788  40 82 00 0C */	bne lbl_801D3A14
/* 801D3A0C 001C978C  38 60 00 00 */	li r3, 0
/* 801D3A10 001C9790  48 00 00 10 */	b lbl_801D3A20
lbl_801D3A14:
/* 801D3A14 001C9794  38 00 00 01 */	li r0, 1
/* 801D3A18 001C9798  38 60 00 01 */	li r3, 1
/* 801D3A1C 001C979C  98 18 01 B8 */	stb r0, 0x1b8(r24)
lbl_801D3A20:
/* 801D3A20 001C97A0  39 61 00 30 */	addi r11, r1, 0x30
/* 801D3A24 001C97A4  48 21 D9 3D */	bl _restgpr_24
/* 801D3A28 001C97A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D3A2C 001C97AC  7C 08 03 A6 */	mtlr r0
/* 801D3A30 001C97B0  38 21 00 30 */	addi r1, r1, 0x30
/* 801D3A34 001C97B4  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundFv$7Shutdown
nw4r3snd6detail9WaveSoundFv$7Shutdown:
/* 801D3A38 001C97B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D3A3C 001C97BC  7C 08 02 A6 */	mflr r0
/* 801D3A40 001C97C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D3A44 001C97C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D3A48 001C97C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D3A4C 001C97CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D3A50 001C97D0  7C 7D 1B 78 */	mr r29, r3
/* 801D3A54 001C97D4  4B FE 97 05 */	bl nw4r3snd6detail10BasicSoundFv$7Shutdown
/* 801D3A58 001C97D8  83 DD 01 B4 */	lwz r30, 0x1b4(r29)
/* 801D3A5C 001C97DC  3B FE 00 10 */	addi r31, r30, 0x10
/* 801D3A60 001C97E0  7F E3 FB 78 */	mr r3, r31
/* 801D3A64 001C97E4  48 00 B1 51 */	bl OSLockMutex
/* 801D3A68 001C97E8  80 1E 00 04 */	lwz r0, 4(r30)
/* 801D3A6C 001C97EC  2C 00 00 00 */	cmpwi r0, 0
/* 801D3A70 001C97F0  40 82 00 10 */	bne lbl_801D3A80
/* 801D3A74 001C97F4  7F E3 FB 78 */	mr r3, r31
/* 801D3A78 001C97F8  48 00 B2 19 */	bl OSUnlockMutex
/* 801D3A7C 001C97FC  48 00 00 3C */	b lbl_801D3AB8
lbl_801D3A80:
/* 801D3A80 001C9800  38 7E 00 04 */	addi r3, r30, 4
/* 801D3A84 001C9804  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 801D3A88 001C9808  4B F8 88 ED */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 801D3A8C 001C980C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801D3A90 001C9810  7F A3 EB 78 */	mr r3, r29
/* 801D3A94 001C9814  38 80 FF FF */	li r4, -1
/* 801D3A98 001C9818  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D3A9C 001C981C  7D 89 03 A6 */	mtctr r12
/* 801D3AA0 001C9820  4E 80 04 21 */	bctrl 
/* 801D3AA4 001C9824  7F C3 F3 78 */	mr r3, r30
/* 801D3AA8 001C9828  7F A4 EB 78 */	mr r4, r29
/* 801D3AAC 001C982C  4B FE CF BD */	bl nw4r3snd6detail8PoolImplFPv$7FreeImpl
/* 801D3AB0 001C9830  7F E3 FB 78 */	mr r3, r31
/* 801D3AB4 001C9834  48 00 B1 DD */	bl OSUnlockMutex
lbl_801D3AB8:
/* 801D3AB8 001C9838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D3ABC 001C983C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D3AC0 001C9840  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D3AC4 001C9844  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D3AC8 001C9848  7C 08 03 A6 */	mtlr r0
/* 801D3ACC 001C984C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D3AD0 001C9850  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundFv$7__dt
nw4r3snd6detail9WaveSoundFv$7__dt:
/* 801D3AD4 001C9854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D3AD8 001C9858  7C 08 02 A6 */	mflr r0
/* 801D3ADC 001C985C  2C 03 00 00 */	cmpwi r3, 0
/* 801D3AE0 001C9860  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D3AE4 001C9864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D3AE8 001C9868  7C 7F 1B 78 */	mr r31, r3
/* 801D3AEC 001C986C  41 82 00 10 */	beq lbl_801D3AFC
/* 801D3AF0 001C9870  2C 04 00 00 */	cmpwi r4, 0
/* 801D3AF4 001C9874  40 81 00 08 */	ble lbl_801D3AFC
/* 801D3AF8 001C9878  4B E3 8D D1 */	bl __dl__FPv
lbl_801D3AFC:
/* 801D3AFC 001C987C  7F E3 FB 78 */	mr r3, r31
/* 801D3B00 001C9880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D3B04 001C9884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D3B08 001C9888  7C 08 03 A6 */	mtlr r0
/* 801D3B0C 001C988C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D3B10 001C9890  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundFi$7SetChannelPriority
nw4r3snd6detail9WaveSoundFi$7SetChannelPriority:
/* 801D3B14 001C9894  38 63 00 D8 */	addi r3, r3, 0xd8
/* 801D3B18 001C9898  48 00 09 B8 */	b nw4r3snd6detail9WsdPlayerFi$7SetChannelPriority

.global nw4r3snd6detail9WaveSoundFb$7SetReleasePriorityFix
nw4r3snd6detail9WaveSoundFb$7SetReleasePriorityFix:
/* 801D3B1C 001C989C  38 63 00 D8 */	addi r3, r3, 0xd8
/* 801D3B20 001C98A0  48 00 09 B8 */	b nw4r3snd6detail9WsdPlayerFb$7SetReleasePriorityFix

.global nw4r3snd6detail9WaveSoundFi$7SetPlayerPriority
nw4r3snd6detail9WaveSoundFi$7SetPlayerPriority:
/* 801D3B24 001C98A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D3B28 001C98A8  7C 08 02 A6 */	mflr r0
/* 801D3B2C 001C98AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D3B30 001C98B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D3B34 001C98B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D3B38 001C98B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D3B3C 001C98BC  93 81 00 10 */	stw r28, 0x10(r1)
/* 801D3B40 001C98C0  7C 7C 1B 78 */	mr r28, r3
/* 801D3B44 001C98C4  4B FE 97 A9 */	bl nw4r3snd6detail10BasicSoundFi$7SetPlayerPriority
/* 801D3B48 001C98C8  88 7C 00 74 */	lbz r3, 0x74(r28)
/* 801D3B4C 001C98CC  80 1C 00 40 */	lwz r0, 0x40(r28)
/* 801D3B50 001C98D0  7C 63 02 14 */	add r3, r3, r0
/* 801D3B54 001C98D4  2C 03 00 7F */	cmpwi r3, 0x7f
/* 801D3B58 001C98D8  40 81 00 0C */	ble lbl_801D3B64
/* 801D3B5C 001C98DC  3B A0 00 7F */	li r29, 0x7f
/* 801D3B60 001C98E0  48 00 00 0C */	b lbl_801D3B6C
lbl_801D3B64:
/* 801D3B64 001C98E4  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 801D3B68 001C98E8  7C 7D 00 78 */	andc r29, r3, r0
lbl_801D3B6C:
/* 801D3B6C 001C98EC  83 DC 01 B4 */	lwz r30, 0x1b4(r28)
/* 801D3B70 001C98F0  3B FE 00 10 */	addi r31, r30, 0x10
/* 801D3B74 001C98F4  7F E3 FB 78 */	mr r3, r31
/* 801D3B78 001C98F8  48 00 B0 3D */	bl OSLockMutex
/* 801D3B7C 001C98FC  3B 9C 00 B8 */	addi r28, r28, 0xb8
/* 801D3B80 001C9900  38 7E 00 04 */	addi r3, r30, 4
/* 801D3B84 001C9904  7F 84 E3 78 */	mr r4, r28
/* 801D3B88 001C9908  4B F8 87 ED */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 801D3B8C 001C990C  80 7E 00 08 */	lwz r3, 8(r30)
/* 801D3B90 001C9910  38 1E 00 08 */	addi r0, r30, 8
/* 801D3B94 001C9914  48 00 00 34 */	b lbl_801D3BC8
lbl_801D3B98:
/* 801D3B98 001C9918  88 A3 FF BC */	lbz r5, -0x44(r3)
/* 801D3B9C 001C991C  80 83 FF 88 */	lwz r4, -0x78(r3)
/* 801D3BA0 001C9920  7C A5 22 14 */	add r5, r5, r4
/* 801D3BA4 001C9924  2C 05 00 7F */	cmpwi r5, 0x7f
/* 801D3BA8 001C9928  40 81 00 0C */	ble lbl_801D3BB4
/* 801D3BAC 001C992C  38 80 00 7F */	li r4, 0x7f
/* 801D3BB0 001C9930  48 00 00 0C */	b lbl_801D3BBC
lbl_801D3BB4:
/* 801D3BB4 001C9934  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 801D3BB8 001C9938  7C A4 20 78 */	andc r4, r5, r4
lbl_801D3BBC:
/* 801D3BBC 001C993C  7C 1D 20 00 */	cmpw r29, r4
/* 801D3BC0 001C9940  41 80 00 10 */	blt lbl_801D3BD0
/* 801D3BC4 001C9944  80 63 00 00 */	lwz r3, 0(r3)
lbl_801D3BC8:
/* 801D3BC8 001C9948  7C 03 00 40 */	cmplw r3, r0
/* 801D3BCC 001C994C  40 82 FF CC */	bne lbl_801D3B98
lbl_801D3BD0:
/* 801D3BD0 001C9950  90 61 00 08 */	stw r3, 8(r1)
/* 801D3BD4 001C9954  7F 85 E3 78 */	mr r5, r28
/* 801D3BD8 001C9958  38 7E 00 04 */	addi r3, r30, 4
/* 801D3BDC 001C995C  38 81 00 08 */	addi r4, r1, 8
/* 801D3BE0 001C9960  4B F8 87 69 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801D3BE4 001C9964  7F E3 FB 78 */	mr r3, r31
/* 801D3BE8 001C9968  48 00 B0 A9 */	bl OSUnlockMutex
/* 801D3BEC 001C996C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D3BF0 001C9970  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D3BF4 001C9974  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D3BF8 001C9978  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D3BFC 001C997C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801D3C00 001C9980  7C 08 03 A6 */	mtlr r0
/* 801D3C04 001C9984  38 21 00 20 */	addi r1, r1, 0x20
/* 801D3C08 001C9988  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundFv$7IsAttachedTempSpecialHandle
nw4r3snd6detail9WaveSoundFv$7IsAttachedTempSpecialHandle:
/* 801D3C0C 001C998C  80 63 01 B0 */	lwz r3, 0x1b0(r3)
/* 801D3C10 001C9990  7C 03 00 D0 */	neg r0, r3
/* 801D3C14 001C9994  7C 00 1B 78 */	or r0, r0, r3
/* 801D3C18 001C9998  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801D3C1C 001C999C  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundFv$7DetachTempSpecialHandle
nw4r3snd6detail9WaveSoundFv$7DetachTempSpecialHandle:
/* 801D3C20 001C99A0  80 63 01 B0 */	lwz r3, 0x1b0(r3)
/* 801D3C24 001C99A4  48 00 00 30 */	b nw4r3snd15WaveSoundHandleFv$7DetachSound

.global nw4r3snd6detail9WaveSoundFv$7GetBasicPlayer
nw4r3snd6detail9WaveSoundFv$7GetBasicPlayer:
/* 801D3C28 001C99A8  38 63 00 D8 */	addi r3, r3, 0xd8
/* 801D3C2C 001C99AC  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundCFv$7GetBasicPlayer
nw4r3snd6detail9WaveSoundCFv$7GetBasicPlayer:
/* 801D3C30 001C99B0  38 63 00 D8 */	addi r3, r3, 0xd8
/* 801D3C34 001C99B4  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundCFv$7IsPrepared
nw4r3snd6detail9WaveSoundCFv$7IsPrepared:
/* 801D3C38 001C99B8  88 63 01 B8 */	lbz r3, 0x1b8(r3)
/* 801D3C3C 001C99BC  4E 80 00 20 */	blr 

.global nw4r3snd6detail9WaveSoundCFv$7GetRuntimeTypeInfo
nw4r3snd6detail9WaveSoundCFv$7GetRuntimeTypeInfo:
/* 801D3C40 001C99C0  38 6D C2 08 */	addi r3, r13, lbl_805A0628-_SDA_BASE_
/* 801D3C44 001C99C4  4E 80 00 20 */	blr 

.global __sinit_$3snd_WaveSound_cpp
__sinit_$3snd_WaveSound_cpp:
/* 801D3C48 001C99C8  38 0D C1 58 */	addi r0, r13, lbl_805A0578-_SDA_BASE_
/* 801D3C4C 001C99CC  90 0D C2 08 */	stw r0, lbl_805A0628-_SDA_BASE_(r13)
/* 801D3C50 001C99D0  4E 80 00 20 */	blr 

