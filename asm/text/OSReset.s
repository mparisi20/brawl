.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global OSRegisterShutdownFunction
OSRegisterShutdownFunction:
/* 801DEFE4 001D4D64  80 AD C2 C8 */	lwz r5, lbl_805A06E8-_SDA_BASE_(r13)
/* 801DEFE8 001D4D68  48 00 00 08 */	b lbl_801DEFF0
lbl_801DEFEC:
/* 801DEFEC 001D4D6C  80 A5 00 08 */	lwz r5, 8(r5)
lbl_801DEFF0:
/* 801DEFF0 001D4D70  2C 05 00 00 */	cmpwi r5, 0
/* 801DEFF4 001D4D74  41 82 00 14 */	beq lbl_801DF008
/* 801DEFF8 001D4D78  80 85 00 04 */	lwz r4, 4(r5)
/* 801DEFFC 001D4D7C  80 03 00 04 */	lwz r0, 4(r3)
/* 801DF000 001D4D80  7C 04 00 40 */	cmplw r4, r0
/* 801DF004 001D4D84  40 81 FF E8 */	ble lbl_801DEFEC
lbl_801DF008:
/* 801DF008 001D4D88  2C 05 00 00 */	cmpwi r5, 0
/* 801DF00C 001D4D8C  40 82 00 38 */	bne lbl_801DF044
/* 801DF010 001D4D90  38 8D C2 C8 */	addi r4, r13, lbl_805A06E8-_SDA_BASE_
/* 801DF014 001D4D94  80 84 00 04 */	lwz r4, 4(r4)
/* 801DF018 001D4D98  2C 04 00 00 */	cmpwi r4, 0
/* 801DF01C 001D4D9C  40 82 00 0C */	bne lbl_801DF028
/* 801DF020 001D4DA0  90 6D C2 C8 */	stw r3, lbl_805A06E8-_SDA_BASE_(r13)
/* 801DF024 001D4DA4  48 00 00 08 */	b lbl_801DF02C
lbl_801DF028:
/* 801DF028 001D4DA8  90 64 00 08 */	stw r3, 8(r4)
lbl_801DF02C:
/* 801DF02C 001D4DAC  38 00 00 00 */	li r0, 0
/* 801DF030 001D4DB0  90 83 00 0C */	stw r4, 0xc(r3)
/* 801DF034 001D4DB4  38 8D C2 C8 */	addi r4, r13, lbl_805A06E8-_SDA_BASE_
/* 801DF038 001D4DB8  90 03 00 08 */	stw r0, 8(r3)
/* 801DF03C 001D4DBC  90 64 00 04 */	stw r3, 4(r4)
/* 801DF040 001D4DC0  4E 80 00 20 */	blr 
lbl_801DF044:
/* 801DF044 001D4DC4  90 A3 00 08 */	stw r5, 8(r3)
/* 801DF048 001D4DC8  80 85 00 0C */	lwz r4, 0xc(r5)
/* 801DF04C 001D4DCC  90 65 00 0C */	stw r3, 0xc(r5)
/* 801DF050 001D4DD0  2C 04 00 00 */	cmpwi r4, 0
/* 801DF054 001D4DD4  90 83 00 0C */	stw r4, 0xc(r3)
/* 801DF058 001D4DD8  40 82 00 0C */	bne lbl_801DF064
/* 801DF05C 001D4DDC  90 6D C2 C8 */	stw r3, lbl_805A06E8-_SDA_BASE_(r13)
/* 801DF060 001D4DE0  4E 80 00 20 */	blr 
lbl_801DF064:
/* 801DF064 001D4DE4  90 64 00 08 */	stw r3, 8(r4)
/* 801DF068 001D4DE8  4E 80 00 20 */	blr 

.global __OSCallShutdownFunctions
__OSCallShutdownFunctions:
/* 801DF06C 001D4DEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DF070 001D4DF0  7C 08 02 A6 */	mflr r0
/* 801DF074 001D4DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DF078 001D4DF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DF07C 001D4DFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DF080 001D4E00  3B C0 00 00 */	li r30, 0
/* 801DF084 001D4E04  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DF088 001D4E08  7C 9D 23 78 */	mr r29, r4
/* 801DF08C 001D4E0C  93 81 00 10 */	stw r28, 0x10(r1)
/* 801DF090 001D4E10  7C 7C 1B 78 */	mr r28, r3
/* 801DF094 001D4E14  38 60 00 00 */	li r3, 0
/* 801DF098 001D4E18  83 ED C2 C8 */	lwz r31, lbl_805A06E8-_SDA_BASE_(r13)
/* 801DF09C 001D4E1C  48 00 00 40 */	b lbl_801DF0DC
lbl_801DF0A0:
/* 801DF0A0 001D4E20  2C 1E 00 00 */	cmpwi r30, 0
/* 801DF0A4 001D4E24  41 82 00 10 */	beq lbl_801DF0B4
/* 801DF0A8 001D4E28  80 1F 00 04 */	lwz r0, 4(r31)
/* 801DF0AC 001D4E2C  7C 03 00 40 */	cmplw r3, r0
/* 801DF0B0 001D4E30  40 82 00 34 */	bne lbl_801DF0E4
lbl_801DF0B4:
/* 801DF0B4 001D4E34  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DF0B8 001D4E38  7F 83 E3 78 */	mr r3, r28
/* 801DF0BC 001D4E3C  7F A4 EB 78 */	mr r4, r29
/* 801DF0C0 001D4E40  7D 89 03 A6 */	mtctr r12
/* 801DF0C4 001D4E44  4E 80 04 21 */	bctrl 
/* 801DF0C8 001D4E48  7C 60 00 34 */	cntlzw r0, r3
/* 801DF0CC 001D4E4C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801DF0D0 001D4E50  54 00 D9 7E */	srwi r0, r0, 5
/* 801DF0D4 001D4E54  83 FF 00 08 */	lwz r31, 8(r31)
/* 801DF0D8 001D4E58  7F DE 03 78 */	or r30, r30, r0
lbl_801DF0DC:
/* 801DF0DC 001D4E5C  2C 1F 00 00 */	cmpwi r31, 0
/* 801DF0E0 001D4E60  40 82 FF C0 */	bne lbl_801DF0A0
lbl_801DF0E4:
/* 801DF0E4 001D4E64  48 00 0D 7D */	bl __OSSyncSram
/* 801DF0E8 001D4E68  7C 60 00 34 */	cntlzw r0, r3
/* 801DF0EC 001D4E6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DF0F0 001D4E70  54 00 D9 7E */	srwi r0, r0, 5
/* 801DF0F4 001D4E74  7F DE 03 78 */	or r30, r30, r0
/* 801DF0F8 001D4E78  7F C0 00 34 */	cntlzw r0, r30
/* 801DF0FC 001D4E7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DF100 001D4E80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DF104 001D4E84  54 03 D9 7E */	srwi r3, r0, 5
/* 801DF108 001D4E88  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801DF10C 001D4E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DF110 001D4E90  7C 08 03 A6 */	mtlr r0
/* 801DF114 001D4E94  38 21 00 20 */	addi r1, r1, 0x20
/* 801DF118 001D4E98  4E 80 00 20 */	blr 

.global __OSShutdownDevices
__OSShutdownDevices:
/* 801DF11C 001D4E9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DF120 001D4EA0  7C 08 02 A6 */	mflr r0
/* 801DF124 001D4EA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DF128 001D4EA8  39 61 00 20 */	addi r11, r1, 0x20
/* 801DF12C 001D4EAC  48 21 21 F5 */	bl _savegpr_27
/* 801DF130 001D4EB0  2C 03 00 05 */	cmpwi r3, 5
/* 801DF134 001D4EB4  7C 7B 1B 78 */	mr r27, r3
/* 801DF138 001D4EB8  40 80 00 10 */	bge lbl_801DF148
/* 801DF13C 001D4EBC  2C 03 00 00 */	cmpwi r3, 0
/* 801DF140 001D4EC0  41 82 00 10 */	beq lbl_801DF150
/* 801DF144 001D4EC4  48 00 00 14 */	b lbl_801DF158
lbl_801DF148:
/* 801DF148 001D4EC8  2C 03 00 07 */	cmpwi r3, 7
/* 801DF14C 001D4ECC  40 80 00 0C */	bge lbl_801DF158
lbl_801DF150:
/* 801DF150 001D4ED0  3B 80 00 00 */	li r28, 0
/* 801DF154 001D4ED4  48 00 00 08 */	b lbl_801DF15C
lbl_801DF158:
/* 801DF158 001D4ED8  3B 80 00 01 */	li r28, 1
lbl_801DF15C:
/* 801DF15C 001D4EDC  4B FF 84 81 */	bl __OSStopAudioSystem
/* 801DF160 001D4EE0  2C 1C 00 00 */	cmpwi r28, 0
/* 801DF164 001D4EE4  40 82 00 10 */	bne lbl_801DF174
/* 801DF168 001D4EE8  38 60 00 01 */	li r3, 1
/* 801DF16C 001D4EEC  48 03 7A C9 */	bl __PADDisableRecalibration
/* 801DF170 001D4EF0  7C 7D 1B 78 */	mr r29, r3
lbl_801DF174:
/* 801DF174 001D4EF4  83 CD C2 C8 */	lwz r30, lbl_805A06E8-_SDA_BASE_(r13)
/* 801DF178 001D4EF8  38 60 00 00 */	li r3, 0
/* 801DF17C 001D4EFC  3B E0 00 00 */	li r31, 0
/* 801DF180 001D4F00  48 00 00 40 */	b lbl_801DF1C0
lbl_801DF184:
/* 801DF184 001D4F04  2C 1F 00 00 */	cmpwi r31, 0
/* 801DF188 001D4F08  41 82 00 10 */	beq lbl_801DF198
/* 801DF18C 001D4F0C  80 1E 00 04 */	lwz r0, 4(r30)
/* 801DF190 001D4F10  7C 03 00 40 */	cmplw r3, r0
/* 801DF194 001D4F14  40 82 00 34 */	bne lbl_801DF1C8
lbl_801DF198:
/* 801DF198 001D4F18  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DF19C 001D4F1C  7F 64 DB 78 */	mr r4, r27
/* 801DF1A0 001D4F20  38 60 00 00 */	li r3, 0
/* 801DF1A4 001D4F24  7D 89 03 A6 */	mtctr r12
/* 801DF1A8 001D4F28  4E 80 04 21 */	bctrl 
/* 801DF1AC 001D4F2C  7C 60 00 34 */	cntlzw r0, r3
/* 801DF1B0 001D4F30  80 7E 00 04 */	lwz r3, 4(r30)
/* 801DF1B4 001D4F34  54 00 D9 7E */	srwi r0, r0, 5
/* 801DF1B8 001D4F38  83 DE 00 08 */	lwz r30, 8(r30)
/* 801DF1BC 001D4F3C  7F FF 03 78 */	or r31, r31, r0
lbl_801DF1C0:
/* 801DF1C0 001D4F40  2C 1E 00 00 */	cmpwi r30, 0
/* 801DF1C4 001D4F44  40 82 FF C0 */	bne lbl_801DF184
lbl_801DF1C8:
/* 801DF1C8 001D4F48  48 00 0C 99 */	bl __OSSyncSram
/* 801DF1CC 001D4F4C  7C 60 00 34 */	cntlzw r0, r3
/* 801DF1D0 001D4F50  54 00 D9 7E */	srwi r0, r0, 5
/* 801DF1D4 001D4F54  7F FF 03 79 */	or. r31, r31, r0
/* 801DF1D8 001D4F58  40 82 FF 9C */	bne lbl_801DF174
lbl_801DF1DC:
/* 801DF1DC 001D4F5C  48 00 0C 85 */	bl __OSSyncSram
/* 801DF1E0 001D4F60  2C 03 00 00 */	cmpwi r3, 0
/* 801DF1E4 001D4F64  41 82 FF F8 */	beq lbl_801DF1DC
/* 801DF1E8 001D4F68  4B FF DD 29 */	bl OSDisableInterrupts
/* 801DF1EC 001D4F6C  83 ED C2 C8 */	lwz r31, lbl_805A06E8-_SDA_BASE_(r13)
/* 801DF1F0 001D4F70  38 60 00 00 */	li r3, 0
/* 801DF1F4 001D4F74  3B C0 00 00 */	li r30, 0
/* 801DF1F8 001D4F78  48 00 00 40 */	b lbl_801DF238
lbl_801DF1FC:
/* 801DF1FC 001D4F7C  2C 1E 00 00 */	cmpwi r30, 0
/* 801DF200 001D4F80  41 82 00 10 */	beq lbl_801DF210
/* 801DF204 001D4F84  80 1F 00 04 */	lwz r0, 4(r31)
/* 801DF208 001D4F88  7C 03 00 40 */	cmplw r3, r0
/* 801DF20C 001D4F8C  40 82 00 34 */	bne lbl_801DF240
lbl_801DF210:
/* 801DF210 001D4F90  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DF214 001D4F94  7F 64 DB 78 */	mr r4, r27
/* 801DF218 001D4F98  38 60 00 01 */	li r3, 1
/* 801DF21C 001D4F9C  7D 89 03 A6 */	mtctr r12
/* 801DF220 001D4FA0  4E 80 04 21 */	bctrl 
/* 801DF224 001D4FA4  7C 60 00 34 */	cntlzw r0, r3
/* 801DF228 001D4FA8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801DF22C 001D4FAC  54 00 D9 7E */	srwi r0, r0, 5
/* 801DF230 001D4FB0  83 FF 00 08 */	lwz r31, 8(r31)
/* 801DF234 001D4FB4  7F DE 03 78 */	or r30, r30, r0
lbl_801DF238:
/* 801DF238 001D4FB8  2C 1F 00 00 */	cmpwi r31, 0
/* 801DF23C 001D4FBC  40 82 FF C0 */	bne lbl_801DF1FC
lbl_801DF240:
/* 801DF240 001D4FC0  48 00 0C 21 */	bl __OSSyncSram
/* 801DF244 001D4FC4  4B FF 86 E5 */	bl LCDisable
/* 801DF248 001D4FC8  2C 1C 00 00 */	cmpwi r28, 0
/* 801DF24C 001D4FCC  40 82 00 0C */	bne lbl_801DF258
/* 801DF250 001D4FD0  7F A3 EB 78 */	mr r3, r29
/* 801DF254 001D4FD4  48 03 79 E1 */	bl __PADDisableRecalibration
lbl_801DF258:
/* 801DF258 001D4FD8  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 801DF25C 001D4FDC  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 801DF260 001D4FE0  48 00 00 2C */	b lbl_801DF28C
lbl_801DF264:
/* 801DF264 001D4FE4  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 801DF268 001D4FE8  83 C3 02 FC */	lwz r30, 0x2fc(r3)
/* 801DF26C 001D4FEC  2C 00 00 04 */	cmpwi r0, 4
/* 801DF270 001D4FF0  41 82 00 14 */	beq lbl_801DF284
/* 801DF274 001D4FF4  40 80 00 14 */	bge lbl_801DF288
/* 801DF278 001D4FF8  2C 00 00 01 */	cmpwi r0, 1
/* 801DF27C 001D4FFC  41 82 00 08 */	beq lbl_801DF284
/* 801DF280 001D5000  48 00 00 08 */	b lbl_801DF288
lbl_801DF284:
/* 801DF284 001D5004  48 00 1D C9 */	bl OSCancelThread
lbl_801DF288:
/* 801DF288 001D5008  7F C3 F3 78 */	mr r3, r30
lbl_801DF28C:
/* 801DF28C 001D500C  2C 03 00 00 */	cmpwi r3, 0
/* 801DF290 001D5010  40 82 FF D4 */	bne lbl_801DF264
/* 801DF294 001D5014  39 61 00 20 */	addi r11, r1, 0x20
/* 801DF298 001D5018  48 21 20 D5 */	bl _restgpr_27
/* 801DF29C 001D501C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DF2A0 001D5020  7C 08 03 A6 */	mtlr r0
/* 801DF2A4 001D5024  38 21 00 20 */	addi r1, r1, 0x20
/* 801DF2A8 001D5028  4E 80 00 20 */	blr 

.global __OSGetDiscState
__OSGetDiscState:
/* 801DF2AC 001D502C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DF2B0 001D5030  7C 08 02 A6 */	mflr r0
/* 801DF2B4 001D5034  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DF2B8 001D5038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DF2BC 001D503C  7C 7F 1B 78 */	mr r31, r3
/* 801DF2C0 001D5040  48 01 C0 79 */	bl __DVDGetCoverStatus
/* 801DF2C4 001D5044  28 03 00 02 */	cmplwi r3, 2
/* 801DF2C8 001D5048  41 82 00 0C */	beq lbl_801DF2D4
/* 801DF2CC 001D504C  38 60 00 03 */	li r3, 3
/* 801DF2D0 001D5050  48 00 00 34 */	b lbl_801DF304
lbl_801DF2D4:
/* 801DF2D4 001D5054  28 1F 00 01 */	cmplwi r31, 1
/* 801DF2D8 001D5058  40 82 00 20 */	bne lbl_801DF2F8
/* 801DF2DC 001D505C  38 61 00 08 */	addi r3, r1, 8
/* 801DF2E0 001D5060  48 00 0D C9 */	bl __OSGetRTCFlags
/* 801DF2E4 001D5064  2C 03 00 00 */	cmpwi r3, 0
/* 801DF2E8 001D5068  41 82 00 18 */	beq lbl_801DF300
/* 801DF2EC 001D506C  80 01 00 08 */	lwz r0, 8(r1)
/* 801DF2F0 001D5070  2C 00 00 00 */	cmpwi r0, 0
/* 801DF2F4 001D5074  41 82 00 0C */	beq lbl_801DF300
lbl_801DF2F8:
/* 801DF2F8 001D5078  38 60 00 02 */	li r3, 2
/* 801DF2FC 001D507C  48 00 00 08 */	b lbl_801DF304
lbl_801DF300:
/* 801DF300 001D5080  38 60 00 01 */	li r3, 1
lbl_801DF304:
/* 801DF304 001D5084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DF308 001D5088  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DF30C 001D508C  7C 08 03 A6 */	mtlr r0
/* 801DF310 001D5090  38 21 00 20 */	addi r1, r1, 0x20
/* 801DF314 001D5094  4E 80 00 20 */	blr 

.global OSShutdownSystem
OSShutdownSystem:
/* 801DF318 001D5098  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DF31C 001D509C  7C 08 02 A6 */	mflr r0
/* 801DF320 001D50A0  38 80 00 00 */	li r4, 0
/* 801DF324 001D50A4  38 A0 00 02 */	li r5, 2
/* 801DF328 001D50A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DF32C 001D50AC  38 61 00 08 */	addi r3, r1, 8
/* 801DF330 001D50B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801DF334 001D50B4  4B E2 51 09 */	bl func_8000443C
/* 801DF338 001D50B8  48 02 ED B5 */	bl SCInit
lbl_801DF33C:
/* 801DF33C 001D50BC  48 02 EE 51 */	bl SCCheckStatus
/* 801DF340 001D50C0  28 03 00 01 */	cmplwi r3, 1
/* 801DF344 001D50C4  41 82 FF F8 */	beq lbl_801DF33C
/* 801DF348 001D50C8  38 61 00 08 */	addi r3, r1, 8
/* 801DF34C 001D50CC  48 03 08 CD */	bl SCGetIdleMode
/* 801DF350 001D50D0  48 00 3C 9D */	bl __OSStopPlayRecord
/* 801DF354 001D50D4  48 00 35 A5 */	bl __OSUnRegisterStateEvent
/* 801DF358 001D50D8  48 01 C2 15 */	bl __DVDPrepareReset
/* 801DF35C 001D50DC  38 61 00 18 */	addi r3, r1, 0x18
/* 801DF360 001D50E0  48 00 3F 59 */	bl __OSReadStateFlags
/* 801DF364 001D50E4  8B E1 00 1E */	lbz r31, 0x1e(r1)
/* 801DF368 001D50E8  48 01 BF D1 */	bl __DVDGetCoverStatus
/* 801DF36C 001D50EC  28 03 00 02 */	cmplwi r3, 2
/* 801DF370 001D50F0  41 82 00 0C */	beq lbl_801DF37C
/* 801DF374 001D50F4  38 60 00 03 */	li r3, 3
/* 801DF378 001D50F8  48 00 00 34 */	b lbl_801DF3AC
lbl_801DF37C:
/* 801DF37C 001D50FC  28 1F 00 01 */	cmplwi r31, 1
/* 801DF380 001D5100  40 82 00 20 */	bne lbl_801DF3A0
/* 801DF384 001D5104  38 61 00 0C */	addi r3, r1, 0xc
/* 801DF388 001D5108  48 00 0D 21 */	bl __OSGetRTCFlags
/* 801DF38C 001D510C  2C 03 00 00 */	cmpwi r3, 0
/* 801DF390 001D5110  41 82 00 18 */	beq lbl_801DF3A8
/* 801DF394 001D5114  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DF398 001D5118  2C 00 00 00 */	cmpwi r0, 0
/* 801DF39C 001D511C  41 82 00 0C */	beq lbl_801DF3A8
lbl_801DF3A0:
/* 801DF3A0 001D5120  38 60 00 02 */	li r3, 2
/* 801DF3A4 001D5124  48 00 00 08 */	b lbl_801DF3AC
lbl_801DF3A8:
/* 801DF3A8 001D5128  38 60 00 01 */	li r3, 1
lbl_801DF3AC:
/* 801DF3AC 001D512C  88 01 00 08 */	lbz r0, 8(r1)
/* 801DF3B0 001D5130  98 61 00 1E */	stb r3, 0x1e(r1)
/* 801DF3B4 001D5134  28 00 00 01 */	cmplwi r0, 1
/* 801DF3B8 001D5138  40 82 00 10 */	bne lbl_801DF3C8
/* 801DF3BC 001D513C  38 00 00 05 */	li r0, 5
/* 801DF3C0 001D5140  98 01 00 1D */	stb r0, 0x1d(r1)
/* 801DF3C4 001D5144  48 00 00 0C */	b lbl_801DF3D0
lbl_801DF3C8:
/* 801DF3C8 001D5148  38 00 00 01 */	li r0, 1
/* 801DF3CC 001D514C  98 01 00 1D */	stb r0, 0x1d(r1)
lbl_801DF3D0:
/* 801DF3D0 001D5150  48 00 0D F5 */	bl __OSClearRTCFlags
/* 801DF3D4 001D5154  38 61 00 18 */	addi r3, r1, 0x18
/* 801DF3D8 001D5158  48 00 3D FD */	bl __OSWriteStateFlags
/* 801DF3DC 001D515C  38 61 00 10 */	addi r3, r1, 0x10
/* 801DF3E0 001D5160  4B FF 5F 21 */	bl __OSGetIOSRev
/* 801DF3E4 001D5164  88 01 00 08 */	lbz r0, 8(r1)
/* 801DF3E8 001D5168  28 00 00 01 */	cmplwi r0, 1
/* 801DF3EC 001D516C  40 82 00 24 */	bne lbl_801DF410
/* 801DF3F0 001D5170  38 00 00 01 */	li r0, 1
/* 801DF3F4 001D5174  90 0D C2 C4 */	stw r0, lbl_805A06E4-_SDA_BASE_(r13)
/* 801DF3F8 001D5178  48 00 13 69 */	bl OSDisableScheduler
/* 801DF3FC 001D517C  38 60 00 05 */	li r3, 5
/* 801DF400 001D5180  4B FF FD 1D */	bl __OSShutdownDevices
/* 801DF404 001D5184  48 00 13 99 */	bl OSEnableScheduler
/* 801DF408 001D5188  4B FF A4 B1 */	bl __OSLaunchMenu
/* 801DF40C 001D518C  48 00 00 14 */	b lbl_801DF420
lbl_801DF410:
/* 801DF410 001D5190  48 00 13 51 */	bl OSDisableScheduler
/* 801DF414 001D5194  38 60 00 02 */	li r3, 2
/* 801DF418 001D5198  4B FF FD 05 */	bl __OSShutdownDevices
/* 801DF41C 001D519C  48 00 32 BD */	bl __OSShutdownToSBY
lbl_801DF420:
/* 801DF420 001D51A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DF424 001D51A4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801DF428 001D51A8  7C 08 03 A6 */	mtlr r0
/* 801DF42C 001D51AC  38 21 00 40 */	addi r1, r1, 0x40
/* 801DF430 001D51B0  4E 80 00 20 */	blr 

.global OSRestart
OSRestart:
/* 801DF434 001D51B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DF438 001D51B8  7C 08 02 A6 */	mflr r0
/* 801DF43C 001D51BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DF440 001D51C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DF444 001D51C4  93 C1 00 08 */	stw r30, 8(r1)
/* 801DF448 001D51C8  7C 7E 1B 78 */	mr r30, r3
/* 801DF44C 001D51CC  4B FF 71 D5 */	bl OSGetAppType
/* 801DF450 001D51D0  7C 7F 1B 78 */	mr r31, r3
/* 801DF454 001D51D4  48 00 3B 99 */	bl __OSStopPlayRecord
/* 801DF458 001D51D8  48 00 34 A1 */	bl __OSUnRegisterStateEvent
/* 801DF45C 001D51DC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801DF460 001D51E0  28 00 00 81 */	cmplwi r0, 0x81
/* 801DF464 001D51E4  40 82 00 1C */	bne lbl_801DF480
/* 801DF468 001D51E8  48 00 12 F9 */	bl OSDisableScheduler
/* 801DF46C 001D51EC  38 60 00 04 */	li r3, 4
/* 801DF470 001D51F0  4B FF FC AD */	bl __OSShutdownDevices
/* 801DF474 001D51F4  48 00 13 29 */	bl OSEnableScheduler
/* 801DF478 001D51F8  4B FF A8 09 */	bl __OSRelaunchTitle
/* 801DF47C 001D51FC  48 00 00 28 */	b lbl_801DF4A4
lbl_801DF480:
/* 801DF480 001D5200  28 00 00 80 */	cmplwi r0, 0x80
/* 801DF484 001D5204  40 82 00 20 */	bne lbl_801DF4A4
/* 801DF488 001D5208  48 00 12 D9 */	bl OSDisableScheduler
/* 801DF48C 001D520C  38 60 00 04 */	li r3, 4
/* 801DF490 001D5210  4B FF FC 8D */	bl __OSShutdownDevices
/* 801DF494 001D5214  48 00 13 09 */	bl OSEnableScheduler
/* 801DF498 001D5218  80 8D C2 C0 */	lwz r4, lbl_805A06E0-_SDA_BASE_(r13)
/* 801DF49C 001D521C  7F C3 F3 78 */	mr r3, r30
/* 801DF4A0 001D5220  4B FF FA C5 */	bl __OSReboot
lbl_801DF4A4:
/* 801DF4A4 001D5224  48 00 12 BD */	bl OSDisableScheduler
/* 801DF4A8 001D5228  38 60 00 01 */	li r3, 1
/* 801DF4AC 001D522C  4B FF FC 71 */	bl __OSShutdownDevices
/* 801DF4B0 001D5230  80 0D C2 14 */	lwz r0, lbl_805A0634-_SDA_BASE_(r13)
/* 801DF4B4 001D5234  2C 00 00 00 */	cmpwi r0, 0
/* 801DF4B8 001D5238  40 82 00 10 */	bne lbl_801DF4C8
/* 801DF4BC 001D523C  80 0D C2 84 */	lwz r0, lbl_805A06A4-_SDA_BASE_(r13)
/* 801DF4C0 001D5240  2C 00 00 00 */	cmpwi r0, 0
/* 801DF4C4 001D5244  41 82 00 08 */	beq lbl_801DF4CC
lbl_801DF4C8:
/* 801DF4C8 001D5248  48 00 30 F9 */	bl __OSInitSTM
lbl_801DF4CC:
/* 801DF4CC 001D524C  48 00 32 85 */	bl __OSHotReset
/* 801DF4D0 001D5250  3C 60 80 47 */	lis r3, lbl_804689E0@ha
/* 801DF4D4 001D5254  3C A0 80 47 */	lis r5, lbl_804689EC@ha
/* 801DF4D8 001D5258  38 63 89 E0 */	addi r3, r3, lbl_804689E0@l
/* 801DF4DC 001D525C  38 80 03 CD */	li r4, 0x3cd
/* 801DF4E0 001D5260  38 A5 89 EC */	addi r5, r5, lbl_804689EC@l
/* 801DF4E4 001D5264  4C C6 31 82 */	crclr 6
/* 801DF4E8 001D5268  4B FF 91 A9 */	bl OSPanic
/* 801DF4EC 001D526C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DF4F0 001D5270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DF4F4 001D5274  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DF4F8 001D5278  7C 08 03 A6 */	mtlr r0
/* 801DF4FC 001D527C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DF500 001D5280  4E 80 00 20 */	blr 

.global __OSReturnToMenu
__OSReturnToMenu:
/* 801DF504 001D5284  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DF508 001D5288  7C 08 02 A6 */	mflr r0
/* 801DF50C 001D528C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DF510 001D5290  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801DF514 001D5294  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801DF518 001D5298  7C 7E 1B 78 */	mr r30, r3
/* 801DF51C 001D529C  48 00 3A D1 */	bl __OSStopPlayRecord
/* 801DF520 001D52A0  48 00 33 D9 */	bl __OSUnRegisterStateEvent
/* 801DF524 001D52A4  48 01 C0 49 */	bl __DVDPrepareReset
/* 801DF528 001D52A8  38 61 00 10 */	addi r3, r1, 0x10
/* 801DF52C 001D52AC  48 00 3D 8D */	bl __OSReadStateFlags
/* 801DF530 001D52B0  8B E1 00 16 */	lbz r31, 0x16(r1)
/* 801DF534 001D52B4  48 01 BE 05 */	bl __DVDGetCoverStatus
/* 801DF538 001D52B8  28 03 00 02 */	cmplwi r3, 2
/* 801DF53C 001D52BC  41 82 00 0C */	beq lbl_801DF548
/* 801DF540 001D52C0  38 60 00 03 */	li r3, 3
/* 801DF544 001D52C4  48 00 00 34 */	b lbl_801DF578
lbl_801DF548:
/* 801DF548 001D52C8  28 1F 00 01 */	cmplwi r31, 1
/* 801DF54C 001D52CC  40 82 00 20 */	bne lbl_801DF56C
/* 801DF550 001D52D0  38 61 00 08 */	addi r3, r1, 8
/* 801DF554 001D52D4  48 00 0B 55 */	bl __OSGetRTCFlags
/* 801DF558 001D52D8  2C 03 00 00 */	cmpwi r3, 0
/* 801DF55C 001D52DC  41 82 00 18 */	beq lbl_801DF574
/* 801DF560 001D52E0  80 01 00 08 */	lwz r0, 8(r1)
/* 801DF564 001D52E4  2C 00 00 00 */	cmpwi r0, 0
/* 801DF568 001D52E8  41 82 00 0C */	beq lbl_801DF574
lbl_801DF56C:
/* 801DF56C 001D52EC  38 60 00 02 */	li r3, 2
/* 801DF570 001D52F0  48 00 00 08 */	b lbl_801DF578
lbl_801DF574:
/* 801DF574 001D52F4  38 60 00 01 */	li r3, 1
lbl_801DF578:
/* 801DF578 001D52F8  38 00 00 03 */	li r0, 3
/* 801DF57C 001D52FC  98 61 00 16 */	stb r3, 0x16(r1)
/* 801DF580 001D5300  98 01 00 15 */	stb r0, 0x15(r1)
/* 801DF584 001D5304  9B C1 00 17 */	stb r30, 0x17(r1)
/* 801DF588 001D5308  48 00 0C 3D */	bl __OSClearRTCFlags
/* 801DF58C 001D530C  38 61 00 10 */	addi r3, r1, 0x10
/* 801DF590 001D5310  48 00 3C 45 */	bl __OSWriteStateFlags
/* 801DF594 001D5314  48 00 11 CD */	bl OSDisableScheduler
/* 801DF598 001D5318  38 60 00 05 */	li r3, 5
/* 801DF59C 001D531C  4B FF FB 81 */	bl __OSShutdownDevices
/* 801DF5A0 001D5320  48 00 11 FD */	bl OSEnableScheduler
/* 801DF5A4 001D5324  4B FF A3 15 */	bl __OSLaunchMenu
/* 801DF5A8 001D5328  48 00 11 B9 */	bl OSDisableScheduler
/* 801DF5AC 001D532C  48 00 C7 39 */	bl __VISetRGBModeImm
/* 801DF5B0 001D5330  80 0D C2 14 */	lwz r0, lbl_805A0634-_SDA_BASE_(r13)
/* 801DF5B4 001D5334  2C 00 00 00 */	cmpwi r0, 0
/* 801DF5B8 001D5338  40 82 00 10 */	bne lbl_801DF5C8
/* 801DF5BC 001D533C  80 0D C2 84 */	lwz r0, lbl_805A06A4-_SDA_BASE_(r13)
/* 801DF5C0 001D5340  2C 00 00 00 */	cmpwi r0, 0
/* 801DF5C4 001D5344  41 82 00 08 */	beq lbl_801DF5CC
lbl_801DF5C8:
/* 801DF5C8 001D5348  48 00 2F F9 */	bl __OSInitSTM
lbl_801DF5CC:
/* 801DF5CC 001D534C  48 00 31 85 */	bl __OSHotReset
/* 801DF5D0 001D5350  3C 60 80 47 */	lis r3, lbl_804689E0@ha
/* 801DF5D4 001D5354  3C A0 80 47 */	lis r5, lbl_804689EC@ha
/* 801DF5D8 001D5358  38 63 89 E0 */	addi r3, r3, lbl_804689E0@l
/* 801DF5DC 001D535C  38 80 03 CD */	li r4, 0x3cd
/* 801DF5E0 001D5360  38 A5 89 EC */	addi r5, r5, lbl_804689EC@l
/* 801DF5E4 001D5364  4C C6 31 82 */	crclr 6
/* 801DF5E8 001D5368  4B FF 90 A9 */	bl OSPanic
/* 801DF5EC 001D536C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DF5F0 001D5370  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801DF5F4 001D5374  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801DF5F8 001D5378  7C 08 03 A6 */	mtlr r0
/* 801DF5FC 001D537C  38 21 00 40 */	addi r1, r1, 0x40
/* 801DF600 001D5380  4E 80 00 20 */	blr 

.global OSReturnToMenu
OSReturnToMenu:
/* 801DF604 001D5384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DF608 001D5388  7C 08 02 A6 */	mflr r0
/* 801DF60C 001D538C  38 60 00 00 */	li r3, 0
/* 801DF610 001D5390  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DF614 001D5394  4B FF FE F1 */	bl __OSReturnToMenu
/* 801DF618 001D5398  3C 60 80 47 */	lis r3, lbl_804689E0@ha
/* 801DF61C 001D539C  3C A0 80 47 */	lis r5, lbl_80468A18@ha
/* 801DF620 001D53A0  38 63 89 E0 */	addi r3, r3, lbl_804689E0@l
/* 801DF624 001D53A4  38 80 03 42 */	li r4, 0x342
/* 801DF628 001D53A8  38 A5 8A 18 */	addi r5, r5, lbl_80468A18@l
/* 801DF62C 001D53AC  4C C6 31 82 */	crclr 6
/* 801DF630 001D53B0  4B FF 90 61 */	bl OSPanic
/* 801DF634 001D53B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DF638 001D53B8  7C 08 03 A6 */	mtlr r0
/* 801DF63C 001D53BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801DF640 001D53C0  4E 80 00 20 */	blr 

.global OSReturnToSetting
OSReturnToSetting:
/* 801DF644 001D53C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DF648 001D53C8  7C 08 02 A6 */	mflr r0
/* 801DF64C 001D53CC  28 03 00 07 */	cmplwi r3, 7
/* 801DF650 001D53D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DF654 001D53D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DF658 001D53D8  3F E0 80 47 */	lis r31, lbl_804689E0@ha
/* 801DF65C 001D53DC  3B FF 89 E0 */	addi r31, r31, lbl_804689E0@l
/* 801DF660 001D53E0  41 81 00 54 */	bgt lbl_801DF6B4
/* 801DF664 001D53E4  3C 80 80 47 */	lis r4, lbl_80468B98@ha
/* 801DF668 001D53E8  54 60 10 3A */	slwi r0, r3, 2
/* 801DF66C 001D53EC  38 84 8B 98 */	addi r4, r4, lbl_80468B98@l
/* 801DF670 001D53F0  7C 84 00 2E */	lwzx r4, r4, r0
/* 801DF674 001D53F4  7C 89 03 A6 */	mtctr r4
/* 801DF678 001D53F8  4E 80 04 20 */	bctr 
/* 801DF67C 001D53FC  3B FF 00 A0 */	addi r31, r31, 0xa0
/* 801DF680 001D5400  48 00 00 58 */	b lbl_801DF6D8
/* 801DF684 001D5404  3B FF 00 C0 */	addi r31, r31, 0xc0
/* 801DF688 001D5408  48 00 00 50 */	b lbl_801DF6D8
/* 801DF68C 001D540C  3B FF 00 DC */	addi r31, r31, 0xdc
/* 801DF690 001D5410  48 00 00 48 */	b lbl_801DF6D8
/* 801DF694 001D5414  3B FF 00 F4 */	addi r31, r31, 0xf4
/* 801DF698 001D5418  48 00 00 40 */	b lbl_801DF6D8
/* 801DF69C 001D541C  3B FF 01 24 */	addi r31, r31, 0x124
/* 801DF6A0 001D5420  48 00 00 38 */	b lbl_801DF6D8
/* 801DF6A4 001D5424  3B FF 01 44 */	addi r31, r31, 0x144
/* 801DF6A8 001D5428  48 00 00 30 */	b lbl_801DF6D8
/* 801DF6AC 001D542C  3B FF 01 6C */	addi r31, r31, 0x16c
/* 801DF6B0 001D5430  48 00 00 28 */	b lbl_801DF6D8
lbl_801DF6B4:
/* 801DF6B4 001D5434  7C 64 1B 78 */	mr r4, r3
/* 801DF6B8 001D5438  38 7F 01 88 */	addi r3, r31, 0x188
/* 801DF6BC 001D543C  4C C6 31 82 */	crclr 6
/* 801DF6C0 001D5440  4B FF 8F 41 */	bl OSReport
/* 801DF6C4 001D5444  38 7F 00 00 */	addi r3, r31, 0
/* 801DF6C8 001D5448  38 80 03 8E */	li r4, 0x38e
/* 801DF6CC 001D544C  38 AD A5 C8 */	addi r5, r13, lbl_8059E9E8-_SDA_BASE_
/* 801DF6D0 001D5450  4C C6 31 82 */	crclr 6
/* 801DF6D4 001D5454  4B FF 8F BD */	bl OSPanic
lbl_801DF6D8:
/* 801DF6D8 001D5458  7F E4 FB 78 */	mr r4, r31
/* 801DF6DC 001D545C  38 60 00 01 */	li r3, 1
/* 801DF6E0 001D5460  38 A0 00 00 */	li r5, 0
/* 801DF6E4 001D5464  4C C6 31 82 */	crclr 6
/* 801DF6E8 001D5468  4B FF AC ED */	bl __OSReturnToMenul
/* 801DF6EC 001D546C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DF6F0 001D5470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DF6F4 001D5474  7C 08 03 A6 */	mtlr r0
/* 801DF6F8 001D5478  38 21 00 10 */	addi r1, r1, 0x10
/* 801DF6FC 001D547C  4E 80 00 20 */	blr 

.global __OSReturnToMenuForError
__OSReturnToMenuForError:
/* 801DF700 001D5480  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DF704 001D5484  7C 08 02 A6 */	mflr r0
/* 801DF708 001D5488  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DF70C 001D548C  38 61 00 08 */	addi r3, r1, 8
/* 801DF710 001D5490  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801DF714 001D5494  3F E0 80 47 */	lis r31, lbl_804689E0@ha
/* 801DF718 001D5498  3B FF 89 E0 */	addi r31, r31, lbl_804689E0@l
/* 801DF71C 001D549C  48 00 3B 9D */	bl __OSReadStateFlags
/* 801DF720 001D54A0  38 60 00 02 */	li r3, 2
/* 801DF724 001D54A4  38 00 00 03 */	li r0, 3
/* 801DF728 001D54A8  98 61 00 0E */	stb r3, 0xe(r1)
/* 801DF72C 001D54AC  98 01 00 0D */	stb r0, 0xd(r1)
/* 801DF730 001D54B0  48 00 0A 95 */	bl __OSClearRTCFlags
/* 801DF734 001D54B4  38 61 00 08 */	addi r3, r1, 8
/* 801DF738 001D54B8  48 00 3A 9D */	bl __OSWriteStateFlags
/* 801DF73C 001D54BC  4B FF A1 7D */	bl __OSLaunchMenu
/* 801DF740 001D54C0  48 00 10 21 */	bl OSDisableScheduler
/* 801DF744 001D54C4  48 00 C5 A1 */	bl __VISetRGBModeImm
/* 801DF748 001D54C8  80 0D C2 14 */	lwz r0, lbl_805A0634-_SDA_BASE_(r13)
/* 801DF74C 001D54CC  2C 00 00 00 */	cmpwi r0, 0
/* 801DF750 001D54D0  40 82 00 10 */	bne lbl_801DF760
/* 801DF754 001D54D4  80 0D C2 84 */	lwz r0, lbl_805A06A4-_SDA_BASE_(r13)
/* 801DF758 001D54D8  2C 00 00 00 */	cmpwi r0, 0
/* 801DF75C 001D54DC  41 82 00 08 */	beq lbl_801DF764
lbl_801DF760:
/* 801DF760 001D54E0  48 00 2E 61 */	bl __OSInitSTM
lbl_801DF764:
/* 801DF764 001D54E4  48 00 2F ED */	bl __OSHotReset
/* 801DF768 001D54E8  38 7F 00 00 */	addi r3, r31, 0
/* 801DF76C 001D54EC  38 BF 00 0C */	addi r5, r31, 0xc
/* 801DF770 001D54F0  38 80 03 CD */	li r4, 0x3cd
/* 801DF774 001D54F4  4C C6 31 82 */	crclr 6
/* 801DF778 001D54F8  4B FF 8F 19 */	bl OSPanic
/* 801DF77C 001D54FC  38 7F 00 00 */	addi r3, r31, 0
/* 801DF780 001D5500  38 BF 01 D8 */	addi r5, r31, 0x1d8
/* 801DF784 001D5504  38 80 03 B5 */	li r4, 0x3b5
/* 801DF788 001D5508  4C C6 31 82 */	crclr 6
/* 801DF78C 001D550C  4B FF 8F 05 */	bl OSPanic
/* 801DF790 001D5510  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DF794 001D5514  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801DF798 001D5518  7C 08 03 A6 */	mtlr r0
/* 801DF79C 001D551C  38 21 00 30 */	addi r1, r1, 0x30
/* 801DF7A0 001D5520  4E 80 00 20 */	blr 

.global __OSHotResetForError
__OSHotResetForError:
/* 801DF7A4 001D5524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DF7A8 001D5528  7C 08 02 A6 */	mflr r0
/* 801DF7AC 001D552C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DF7B0 001D5530  80 0D C2 14 */	lwz r0, lbl_805A0634-_SDA_BASE_(r13)
/* 801DF7B4 001D5534  2C 00 00 00 */	cmpwi r0, 0
/* 801DF7B8 001D5538  40 82 00 10 */	bne lbl_801DF7C8
/* 801DF7BC 001D553C  80 0D C2 84 */	lwz r0, lbl_805A06A4-_SDA_BASE_(r13)
/* 801DF7C0 001D5540  2C 00 00 00 */	cmpwi r0, 0
/* 801DF7C4 001D5544  41 82 00 08 */	beq lbl_801DF7CC
lbl_801DF7C8:
/* 801DF7C8 001D5548  48 00 2D F9 */	bl __OSInitSTM
lbl_801DF7CC:
/* 801DF7CC 001D554C  48 00 2F 85 */	bl __OSHotReset
/* 801DF7D0 001D5550  3C 60 80 47 */	lis r3, lbl_804689E0@ha
/* 801DF7D4 001D5554  3C A0 80 47 */	lis r5, lbl_804689EC@ha
/* 801DF7D8 001D5558  38 63 89 E0 */	addi r3, r3, lbl_804689E0@l
/* 801DF7DC 001D555C  38 80 03 CD */	li r4, 0x3cd
/* 801DF7E0 001D5560  38 A5 89 EC */	addi r5, r5, lbl_804689EC@l
/* 801DF7E4 001D5564  4C C6 31 82 */	crclr 6
/* 801DF7E8 001D5568  4B FF 8E A9 */	bl OSPanic
/* 801DF7EC 001D556C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DF7F0 001D5570  7C 08 03 A6 */	mtlr r0
/* 801DF7F4 001D5574  38 21 00 10 */	addi r1, r1, 0x10
/* 801DF7F8 001D5578  4E 80 00 20 */	blr 

.global OSGetResetCode
OSGetResetCode:
/* 801DF7FC 001D557C  3C 60 80 4E */	lis r3, lbl_804DD120@ha
/* 801DF800 001D5580  80 03 D1 20 */	lwz r0, lbl_804DD120@l(r3)
/* 801DF804 001D5584  2C 00 00 00 */	cmpwi r0, 0
/* 801DF808 001D5588  41 82 00 14 */	beq lbl_801DF81C
/* 801DF80C 001D558C  38 63 D1 20 */	addi r3, r3, -12000
/* 801DF810 001D5590  80 03 00 04 */	lwz r0, 4(r3)
/* 801DF814 001D5594  64 03 80 00 */	oris r3, r0, 0x8000
/* 801DF818 001D5598  4E 80 00 20 */	blr 
lbl_801DF81C:
/* 801DF81C 001D559C  3C 60 CC 00 */	lis r3, 0xCC003024@ha
/* 801DF820 001D55A0  80 03 30 24 */	lwz r0, 0xCC003024@l(r3)
/* 801DF824 001D55A4  54 03 E8 FE */	srwi r3, r0, 3
/* 801DF828 001D55A8  4E 80 00 20 */	blr 

.global OSResetSystem
OSResetSystem:
/* 801DF82C 001D55AC  3C 60 80 47 */	lis r3, lbl_804689E0@ha
/* 801DF830 001D55B0  3C A0 80 47 */	lis r5, lbl_80468BEC@ha
/* 801DF834 001D55B4  38 63 89 E0 */	addi r3, r3, lbl_804689E0@l
/* 801DF838 001D55B8  38 80 04 64 */	li r4, 0x464
/* 801DF83C 001D55BC  38 A5 8B EC */	addi r5, r5, lbl_80468BEC@l
/* 801DF840 001D55C0  4C C6 31 82 */	crclr 6
/* 801DF844 001D55C4  4B FF 8E 4C */	b OSPanic

