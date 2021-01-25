.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd18MemorySoundArchiveFv$7__ct
nw4r3snd18MemorySoundArchiveFv$7__ct:
/* 801C0CA0 001B6A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0CA4 001B6A24  7C 08 02 A6 */	mflr r0
/* 801C0CA8 001B6A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0CAC 001B6A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0CB0 001B6A30  7C 7F 1B 78 */	mr r31, r3
/* 801C0CB4 001B6A34  48 00 5E 61 */	bl nw4r3snd12SoundArchiveFv$7__ct
/* 801C0CB8 001B6A38  3C 80 80 46 */	lis r4, lbl_80466778@ha
/* 801C0CBC 001B6A3C  38 00 00 00 */	li r0, 0
/* 801C0CC0 001B6A40  38 84 67 78 */	addi r4, r4, lbl_80466778@l
/* 801C0CC4 001B6A44  90 1F 01 08 */	stw r0, 0x108(r31)
/* 801C0CC8 001B6A48  38 7F 01 0C */	addi r3, r31, 0x10c
/* 801C0CCC 001B6A4C  90 9F 00 00 */	stw r4, 0(r31)
/* 801C0CD0 001B6A50  48 00 64 3D */	bl nw4r3snd6detail22SoundArchiveFileReaderFv$7__ct
/* 801C0CD4 001B6A54  7F E3 FB 78 */	mr r3, r31
/* 801C0CD8 001B6A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0CDC 001B6A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0CE0 001B6A60  7C 08 03 A6 */	mtlr r0
/* 801C0CE4 001B6A64  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0CE8 001B6A68  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchiveFv$7__dt
nw4r3snd18MemorySoundArchiveFv$7__dt:
/* 801C0CEC 001B6A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0CF0 001B6A70  7C 08 02 A6 */	mflr r0
/* 801C0CF4 001B6A74  2C 03 00 00 */	cmpwi r3, 0
/* 801C0CF8 001B6A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0CFC 001B6A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0D00 001B6A80  7C 9F 23 78 */	mr r31, r4
/* 801C0D04 001B6A84  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0D08 001B6A88  7C 7E 1B 78 */	mr r30, r3
/* 801C0D0C 001B6A8C  41 82 00 1C */	beq lbl_801C0D28
/* 801C0D10 001B6A90  38 80 00 00 */	li r4, 0
/* 801C0D14 001B6A94  48 00 5E 25 */	bl nw4r3snd12SoundArchiveFv$7__dt
/* 801C0D18 001B6A98  2C 1F 00 00 */	cmpwi r31, 0
/* 801C0D1C 001B6A9C  40 81 00 0C */	ble lbl_801C0D28
/* 801C0D20 001B6AA0  7F C3 F3 78 */	mr r3, r30
/* 801C0D24 001B6AA4  4B E4 BB A5 */	bl __dl
lbl_801C0D28:
/* 801C0D28 001B6AA8  7F C3 F3 78 */	mr r3, r30
/* 801C0D2C 001B6AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0D30 001B6AB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0D34 001B6AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0D38 001B6AB8  7C 08 03 A6 */	mtlr r0
/* 801C0D3C 001B6ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0D40 001B6AC0  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchiveFPCv$7Setup
nw4r3snd18MemorySoundArchiveFPCv$7Setup:
/* 801C0D44 001B6AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0D48 001B6AC8  7C 08 02 A6 */	mflr r0
/* 801C0D4C 001B6ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0D50 001B6AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0D54 001B6AD4  7C 9F 23 78 */	mr r31, r4
/* 801C0D58 001B6AD8  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0D5C 001B6ADC  7C 7E 1B 78 */	mr r30, r3
/* 801C0D60 001B6AE0  38 63 01 0C */	addi r3, r3, 0x10c
/* 801C0D64 001B6AE4  48 00 63 CD */	bl nw4r3snd6detail22SoundArchiveFileReaderFPCv$7Init
/* 801C0D68 001B6AE8  7F C3 F3 78 */	mr r3, r30
/* 801C0D6C 001B6AEC  38 9E 01 0C */	addi r4, r30, 0x10c
/* 801C0D70 001B6AF0  48 00 5E 1D */	bl nw4r3snd12SoundArchiveFPQ44nw4r3sn$7Setup
/* 801C0D74 001B6AF4  80 1E 01 24 */	lwz r0, 0x124(r30)
/* 801C0D78 001B6AF8  38 7E 01 0C */	addi r3, r30, 0x10c
/* 801C0D7C 001B6AFC  80 BE 01 28 */	lwz r5, 0x128(r30)
/* 801C0D80 001B6B00  7C 80 FA 14 */	add r4, r0, r31
/* 801C0D84 001B6B04  48 00 65 05 */	bl nw4r3snd6detail22SoundArchiveFileReaderFPCvU$7SetInfoChunk
/* 801C0D88 001B6B08  80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 801C0D8C 001B6B0C  38 7E 01 0C */	addi r3, r30, 0x10c
/* 801C0D90 001B6B10  80 BE 01 20 */	lwz r5, 0x120(r30)
/* 801C0D94 001B6B14  7C 80 FA 14 */	add r4, r0, r31
/* 801C0D98 001B6B18  48 00 64 49 */	bl nw4r3snd6detail22SoundArchiveFileReaderFPCvU$7SetStringChunk
/* 801C0D9C 001B6B1C  93 FE 01 08 */	stw r31, 0x108(r30)
/* 801C0DA0 001B6B20  38 60 00 01 */	li r3, 1
/* 801C0DA4 001B6B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0DA8 001B6B28  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0DAC 001B6B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0DB0 001B6B30  7C 08 03 A6 */	mtlr r0
/* 801C0DB4 001B6B34  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0DB8 001B6B38  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchiveFv$7Shutdown
nw4r3snd18MemorySoundArchiveFv$7Shutdown:
/* 801C0DBC 001B6B3C  38 00 00 00 */	li r0, 0
/* 801C0DC0 001B6B40  90 03 01 08 */	stw r0, 0x108(r3)
/* 801C0DC4 001B6B44  48 00 5D D0 */	b nw4r3snd12SoundArchiveFv$7Shutdown

.global nw4r3snd18MemorySoundArchiveCFUl$7detail_GetFileAddress
nw4r3snd18MemorySoundArchiveCFUl$7detail_GetFileAddress:
/* 801C0DC8 001B6B48  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C0DCC 001B6B4C  7C 08 02 A6 */	mflr r0
/* 801C0DD0 001B6B50  38 A0 00 00 */	li r5, 0
/* 801C0DD4 001B6B54  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C0DD8 001B6B58  38 C1 00 08 */	addi r6, r1, 8
/* 801C0DDC 001B6B5C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801C0DE0 001B6B60  7C 7F 1B 78 */	mr r31, r3
/* 801C0DE4 001B6B64  48 00 5E 51 */	bl nw4r3snd12SoundArchiveCFUlUlPQ44nw$7detail_ReadFilePos
/* 801C0DE8 001B6B68  2C 03 00 00 */	cmpwi r3, 0
/* 801C0DEC 001B6B6C  40 82 00 0C */	bne lbl_801C0DF8
/* 801C0DF0 001B6B70  38 60 00 00 */	li r3, 0
/* 801C0DF4 001B6B74  48 00 00 70 */	b lbl_801C0E64
lbl_801C0DF8:
/* 801C0DF8 001B6B78  80 81 00 08 */	lwz r4, 8(r1)
/* 801C0DFC 001B6B7C  7F E3 FB 78 */	mr r3, r31
/* 801C0E00 001B6B80  38 A1 00 28 */	addi r5, r1, 0x28
/* 801C0E04 001B6B84  48 00 5E 19 */	bl nw4r3snd12SoundArchiveCFUlPQ44nw4r$7detail_ReadGroupInfo
/* 801C0E08 001B6B88  2C 03 00 00 */	cmpwi r3, 0
/* 801C0E0C 001B6B8C  40 82 00 0C */	bne lbl_801C0E18
/* 801C0E10 001B6B90  38 60 00 00 */	li r3, 0
/* 801C0E14 001B6B94  48 00 00 50 */	b lbl_801C0E64
lbl_801C0E18:
/* 801C0E18 001B6B98  80 81 00 08 */	lwz r4, 8(r1)
/* 801C0E1C 001B6B9C  7F E3 FB 78 */	mr r3, r31
/* 801C0E20 001B6BA0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 801C0E24 001B6BA4  38 C1 00 10 */	addi r6, r1, 0x10
/* 801C0E28 001B6BA8  48 00 5D FD */	bl nw4r3snd12SoundArchiveCFUlUlPQ44nw$7detail_ReadGroupItemInfo
/* 801C0E2C 001B6BAC  2C 03 00 00 */	cmpwi r3, 0
/* 801C0E30 001B6BB0  40 82 00 0C */	bne lbl_801C0E3C
/* 801C0E34 001B6BB4  38 60 00 00 */	li r3, 0
/* 801C0E38 001B6BB8  48 00 00 2C */	b lbl_801C0E64
lbl_801C0E3C:
/* 801C0E3C 001B6BBC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801C0E40 001B6BC0  2C 00 00 00 */	cmpwi r0, 0
/* 801C0E44 001B6BC4  41 82 00 0C */	beq lbl_801C0E50
/* 801C0E48 001B6BC8  38 60 00 00 */	li r3, 0
/* 801C0E4C 001B6BCC  48 00 00 18 */	b lbl_801C0E64
lbl_801C0E50:
/* 801C0E50 001B6BD0  80 81 00 30 */	lwz r4, 0x30(r1)
/* 801C0E54 001B6BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0E58 001B6BD8  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801C0E5C 001B6BDC  7C 04 02 14 */	add r0, r4, r0
/* 801C0E60 001B6BE0  7C 63 02 14 */	add r3, r3, r0
lbl_801C0E64:
/* 801C0E64 001B6BE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C0E68 001B6BE8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801C0E6C 001B6BEC  7C 08 03 A6 */	mtlr r0
/* 801C0E70 001B6BF0  38 21 00 50 */	addi r1, r1, 0x50
/* 801C0E74 001B6BF4  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchiveCFUl$7detail_GetWaveDataFileAddress
nw4r3snd18MemorySoundArchiveCFUl$7detail_GetWaveDataFileAddress:
/* 801C0E78 001B6BF8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C0E7C 001B6BFC  7C 08 02 A6 */	mflr r0
/* 801C0E80 001B6C00  38 A0 00 00 */	li r5, 0
/* 801C0E84 001B6C04  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C0E88 001B6C08  38 C1 00 08 */	addi r6, r1, 8
/* 801C0E8C 001B6C0C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801C0E90 001B6C10  7C 7F 1B 78 */	mr r31, r3
/* 801C0E94 001B6C14  48 00 5D A1 */	bl nw4r3snd12SoundArchiveCFUlUlPQ44nw$7detail_ReadFilePos
/* 801C0E98 001B6C18  2C 03 00 00 */	cmpwi r3, 0
/* 801C0E9C 001B6C1C  40 82 00 0C */	bne lbl_801C0EA8
/* 801C0EA0 001B6C20  38 60 00 00 */	li r3, 0
/* 801C0EA4 001B6C24  48 00 00 70 */	b lbl_801C0F14
lbl_801C0EA8:
/* 801C0EA8 001B6C28  80 81 00 08 */	lwz r4, 8(r1)
/* 801C0EAC 001B6C2C  7F E3 FB 78 */	mr r3, r31
/* 801C0EB0 001B6C30  38 A1 00 28 */	addi r5, r1, 0x28
/* 801C0EB4 001B6C34  48 00 5D 69 */	bl nw4r3snd12SoundArchiveCFUlPQ44nw4r$7detail_ReadGroupInfo
/* 801C0EB8 001B6C38  2C 03 00 00 */	cmpwi r3, 0
/* 801C0EBC 001B6C3C  40 82 00 0C */	bne lbl_801C0EC8
/* 801C0EC0 001B6C40  38 60 00 00 */	li r3, 0
/* 801C0EC4 001B6C44  48 00 00 50 */	b lbl_801C0F14
lbl_801C0EC8:
/* 801C0EC8 001B6C48  80 81 00 08 */	lwz r4, 8(r1)
/* 801C0ECC 001B6C4C  7F E3 FB 78 */	mr r3, r31
/* 801C0ED0 001B6C50  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 801C0ED4 001B6C54  38 C1 00 10 */	addi r6, r1, 0x10
/* 801C0ED8 001B6C58  48 00 5D 4D */	bl nw4r3snd12SoundArchiveCFUlUlPQ44nw$7detail_ReadGroupItemInfo
/* 801C0EDC 001B6C5C  2C 03 00 00 */	cmpwi r3, 0
/* 801C0EE0 001B6C60  40 82 00 0C */	bne lbl_801C0EEC
/* 801C0EE4 001B6C64  38 60 00 00 */	li r3, 0
/* 801C0EE8 001B6C68  48 00 00 2C */	b lbl_801C0F14
lbl_801C0EEC:
/* 801C0EEC 001B6C6C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801C0EF0 001B6C70  2C 00 00 00 */	cmpwi r0, 0
/* 801C0EF4 001B6C74  41 82 00 0C */	beq lbl_801C0F00
/* 801C0EF8 001B6C78  38 60 00 00 */	li r3, 0
/* 801C0EFC 001B6C7C  48 00 00 18 */	b lbl_801C0F14
lbl_801C0F00:
/* 801C0F00 001B6C80  80 81 00 38 */	lwz r4, 0x38(r1)
/* 801C0F04 001B6C84  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801C0F08 001B6C88  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801C0F0C 001B6C8C  7C 04 02 14 */	add r0, r4, r0
/* 801C0F10 001B6C90  7C 63 02 14 */	add r3, r3, r0
lbl_801C0F14:
/* 801C0F14 001B6C94  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C0F18 001B6C98  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801C0F1C 001B6C9C  7C 08 03 A6 */	mtlr r0
/* 801C0F20 001B6CA0  38 21 00 50 */	addi r1, r1, 0x50
/* 801C0F24 001B6CA4  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchiveCFPviU$7OpenStream
nw4r3snd18MemorySoundArchiveCFPviU$7OpenStream:
/* 801C0F28 001B6CA8  80 03 01 08 */	lwz r0, 0x108(r3)
/* 801C0F2C 001B6CAC  2C 00 00 00 */	cmpwi r0, 0
/* 801C0F30 001B6CB0  40 82 00 0C */	bne lbl_801C0F3C
/* 801C0F34 001B6CB4  38 60 00 00 */	li r3, 0
/* 801C0F38 001B6CB8  4E 80 00 20 */	blr 
lbl_801C0F3C:
/* 801C0F3C 001B6CBC  28 05 00 20 */	cmplwi r5, 0x20
/* 801C0F40 001B6CC0  40 80 00 0C */	bge lbl_801C0F4C
/* 801C0F44 001B6CC4  38 60 00 00 */	li r3, 0
/* 801C0F48 001B6CC8  4E 80 00 20 */	blr 
lbl_801C0F4C:
/* 801C0F4C 001B6CCC  2C 04 00 00 */	cmpwi r4, 0
/* 801C0F50 001B6CD0  7C 83 23 78 */	mr r3, r4
/* 801C0F54 001B6CD4  4D 82 00 20 */	beqlr 
/* 801C0F58 001B6CD8  3C A0 80 46 */	lis r5, lbl_80466718@ha
/* 801C0F5C 001B6CDC  39 00 00 00 */	li r8, 0
/* 801C0F60 001B6CE0  38 A5 67 18 */	addi r5, r5, lbl_80466718@l
/* 801C0F64 001B6CE4  7C 06 02 14 */	add r0, r6, r0
/* 801C0F68 001B6CE8  99 04 00 04 */	stb r8, 4(r4)
/* 801C0F6C 001B6CEC  91 04 00 0C */	stw r8, 0xc(r4)
/* 801C0F70 001B6CF0  91 04 00 10 */	stw r8, 0x10(r4)
/* 801C0F74 001B6CF4  90 A4 00 00 */	stw r5, 0(r4)
/* 801C0F78 001B6CF8  90 04 00 14 */	stw r0, 0x14(r4)
/* 801C0F7C 001B6CFC  90 E4 00 18 */	stw r7, 0x18(r4)
/* 801C0F80 001B6D00  91 04 00 1C */	stw r8, 0x1c(r4)
/* 801C0F84 001B6D04  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchiveCFPviP$7OpenExtStream
nw4r3snd18MemorySoundArchiveCFPviP$7OpenExtStream:
/* 801C0F88 001B6D08  38 60 00 00 */	li r3, 0
/* 801C0F8C 001B6D0C  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchiveCFv$7detail_GetRequiredStreamBufferSize
nw4r3snd18MemorySoundArchiveCFv$7detail_GetRequiredStreamBufferSize:
/* 801C0F90 001B6D10  38 60 00 20 */	li r3, 0x20
/* 801C0F94 001B6D14  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7Close
nw4r3snd18MemorySoundArchive16MemoryFileStre$7Close:
/* 801C0F98 001B6D18  38 00 00 00 */	li r0, 0
/* 801C0F9C 001B6D1C  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C0FA0 001B6D20  90 03 00 18 */	stw r0, 0x18(r3)
/* 801C0FA4 001B6D24  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801C0FA8 001B6D28  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7Read
nw4r3snd18MemorySoundArchive16MemoryFileStre$7Read:
/* 801C0FAC 001B6D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0FB0 001B6D30  7C 08 02 A6 */	mflr r0
/* 801C0FB4 001B6D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0FB8 001B6D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0FBC 001B6D3C  7C BF 2B 78 */	mr r31, r5
/* 801C0FC0 001B6D40  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 801C0FC4 001B6D44  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801C0FC8 001B6D48  7C 06 00 50 */	subf r0, r6, r0
/* 801C0FCC 001B6D4C  7C 05 00 40 */	cmplw r5, r0
/* 801C0FD0 001B6D50  40 81 00 08 */	ble lbl_801C0FD8
/* 801C0FD4 001B6D54  7C 1F 03 78 */	mr r31, r0
lbl_801C0FD8:
/* 801C0FD8 001B6D58  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801C0FDC 001B6D5C  7C 83 23 78 */	mr r3, r4
/* 801C0FE0 001B6D60  7F E5 FB 78 */	mr r5, r31
/* 801C0FE4 001B6D64  7C 86 02 14 */	add r4, r6, r0
/* 801C0FE8 001B6D68  4B E4 33 51 */	bl func_80004338
/* 801C0FEC 001B6D6C  7F E3 FB 78 */	mr r3, r31
/* 801C0FF0 001B6D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0FF4 001B6D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0FF8 001B6D78  7C 08 03 A6 */	mtlr r0
/* 801C0FFC 001B6D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C1000 001B6D80  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7Seek
nw4r3snd18MemorySoundArchive16MemoryFileStre$7Seek:
/* 801C1004 001B6D84  2C 05 00 01 */	cmpwi r5, 1
/* 801C1008 001B6D88  41 82 00 28 */	beq lbl_801C1030
/* 801C100C 001B6D8C  40 80 00 10 */	bge lbl_801C101C
/* 801C1010 001B6D90  2C 05 00 00 */	cmpwi r5, 0
/* 801C1014 001B6D94  40 80 00 14 */	bge lbl_801C1028
/* 801C1018 001B6D98  4E 80 00 20 */	blr 
lbl_801C101C:
/* 801C101C 001B6D9C  2C 05 00 03 */	cmpwi r5, 3
/* 801C1020 001B6DA0  4C 80 00 20 */	bgelr 
/* 801C1024 001B6DA4  48 00 00 1C */	b lbl_801C1040
lbl_801C1028:
/* 801C1028 001B6DA8  90 83 00 1C */	stw r4, 0x1c(r3)
/* 801C102C 001B6DAC  4E 80 00 20 */	blr 
lbl_801C1030:
/* 801C1030 001B6DB0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801C1034 001B6DB4  7C 00 22 14 */	add r0, r0, r4
/* 801C1038 001B6DB8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801C103C 001B6DBC  4E 80 00 20 */	blr 
lbl_801C1040:
/* 801C1040 001B6DC0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801C1044 001B6DC4  7C 04 00 50 */	subf r0, r4, r0
/* 801C1048 001B6DC8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801C104C 001B6DCC  4E 80 00 20 */	blr 
/* 801C1050 001B6DD0  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7GetSize
nw4r3snd18MemorySoundArchive16MemoryFileStre$7GetSize:
/* 801C1054 001B6DD4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801C1058 001B6DD8  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7Tell
nw4r3snd18MemorySoundArchive16MemoryFileStre$7Tell:
/* 801C105C 001B6DDC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C1060 001B6DE0  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanWrite
nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanWrite:
/* 801C1064 001B6DE4  38 60 00 00 */	li r3, 0
/* 801C1068 001B6DE8  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanRead
nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanRead:
/* 801C106C 001B6DEC  38 60 00 01 */	li r3, 1
/* 801C1070 001B6DF0  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanAsync
nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanAsync:
/* 801C1074 001B6DF4  38 60 00 00 */	li r3, 0
/* 801C1078 001B6DF8  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanCancel
nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanCancel:
/* 801C107C 001B6DFC  38 60 00 01 */	li r3, 1
/* 801C1080 001B6E00  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanSeek
nw4r3snd18MemorySoundArchive16MemoryFileStre$7CanSeek:
/* 801C1084 001B6E04  38 60 00 01 */	li r3, 1
/* 801C1088 001B6E08  4E 80 00 20 */	blr 

.global nw4r3snd18MemorySoundArchive16MemoryFileStre$7__dt
nw4r3snd18MemorySoundArchive16MemoryFileStre$7__dt:
/* 801C108C 001B6E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C1090 001B6E10  7C 08 02 A6 */	mflr r0
/* 801C1094 001B6E14  2C 03 00 00 */	cmpwi r3, 0
/* 801C1098 001B6E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C109C 001B6E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C10A0 001B6E20  7C 7F 1B 78 */	mr r31, r3
/* 801C10A4 001B6E24  41 82 00 10 */	beq lbl_801C10B4
/* 801C10A8 001B6E28  2C 04 00 00 */	cmpwi r4, 0
/* 801C10AC 001B6E2C  40 81 00 08 */	ble lbl_801C10B4
/* 801C10B0 001B6E30  4B E4 B8 19 */	bl __dl
lbl_801C10B4:
/* 801C10B4 001B6E34  7F E3 FB 78 */	mr r3, r31
/* 801C10B8 001B6E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C10BC 001B6E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C10C0 001B6E40  7C 08 03 A6 */	mtlr r0
/* 801C10C4 001B6E44  38 21 00 10 */	addi r1, r1, 0x10
/* 801C10C8 001B6E48  4E 80 00 20 */	blr 

