.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global OSInitSemaphore
OSInitSemaphore:
/* 801E02D4 001D6054  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E02D8 001D6058  7C 08 02 A6 */	mflr r0
/* 801E02DC 001D605C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E02E0 001D6060  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E02E4 001D6064  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E02E8 001D6068  7C 9E 23 78 */	mr r30, r4
/* 801E02EC 001D606C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E02F0 001D6070  7C 7D 1B 78 */	mr r29, r3
/* 801E02F4 001D6074  4B FF CC 1D */	bl OSDisableInterrupts
/* 801E02F8 001D6078  7C 7F 1B 78 */	mr r31, r3
/* 801E02FC 001D607C  38 7D 00 04 */	addi r3, r29, 4
/* 801E0300 001D6080  48 00 04 05 */	bl OSInitThreadQueue
/* 801E0304 001D6084  93 DD 00 00 */	stw r30, 0(r29)
/* 801E0308 001D6088  7F E3 FB 78 */	mr r3, r31
/* 801E030C 001D608C  4B FF CC 2D */	bl OSRestoreInterrupts
/* 801E0310 001D6090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E0314 001D6094  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E0318 001D6098  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E031C 001D609C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E0320 001D60A0  7C 08 03 A6 */	mtlr r0
/* 801E0324 001D60A4  38 21 00 20 */	addi r1, r1, 0x20
/* 801E0328 001D60A8  4E 80 00 20 */	blr 

.global OSWaitSemaphore
OSWaitSemaphore:
/* 801E032C 001D60AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E0330 001D60B0  7C 08 02 A6 */	mflr r0
/* 801E0334 001D60B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E0338 001D60B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E033C 001D60BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E0340 001D60C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E0344 001D60C4  7C 7D 1B 78 */	mr r29, r3
/* 801E0348 001D60C8  4B FF CB C9 */	bl OSDisableInterrupts
/* 801E034C 001D60CC  7C 7F 1B 78 */	mr r31, r3
/* 801E0350 001D60D0  48 00 00 0C */	b lbl_801E035C
lbl_801E0354:
/* 801E0354 001D60D4  38 7D 00 04 */	addi r3, r29, 4
/* 801E0358 001D60D8  48 00 14 39 */	bl OSSleepThread
lbl_801E035C:
/* 801E035C 001D60DC  83 DD 00 00 */	lwz r30, 0(r29)
/* 801E0360 001D60E0  2C 1E 00 00 */	cmpwi r30, 0
/* 801E0364 001D60E4  40 81 FF F0 */	ble lbl_801E0354
/* 801E0368 001D60E8  80 9D 00 00 */	lwz r4, 0(r29)
/* 801E036C 001D60EC  7F E3 FB 78 */	mr r3, r31
/* 801E0370 001D60F0  38 04 FF FF */	addi r0, r4, -1
/* 801E0374 001D60F4  90 1D 00 00 */	stw r0, 0(r29)
/* 801E0378 001D60F8  4B FF CB C1 */	bl OSRestoreInterrupts
/* 801E037C 001D60FC  7F C3 F3 78 */	mr r3, r30
/* 801E0380 001D6100  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E0384 001D6104  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E0388 001D6108  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E038C 001D610C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E0390 001D6110  7C 08 03 A6 */	mtlr r0
/* 801E0394 001D6114  38 21 00 20 */	addi r1, r1, 0x20
/* 801E0398 001D6118  4E 80 00 20 */	blr 

.global OSSignalSemaphore
OSSignalSemaphore:
/* 801E039C 001D611C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E03A0 001D6120  7C 08 02 A6 */	mflr r0
/* 801E03A4 001D6124  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E03A8 001D6128  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E03AC 001D612C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E03B0 001D6130  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E03B4 001D6134  7C 7D 1B 78 */	mr r29, r3
/* 801E03B8 001D6138  4B FF CB 59 */	bl OSDisableInterrupts
/* 801E03BC 001D613C  83 DD 00 00 */	lwz r30, 0(r29)
/* 801E03C0 001D6140  7C 7F 1B 78 */	mr r31, r3
/* 801E03C4 001D6144  38 7D 00 04 */	addi r3, r29, 4
/* 801E03C8 001D6148  38 1E 00 01 */	addi r0, r30, 1
/* 801E03CC 001D614C  90 1D 00 00 */	stw r0, 0(r29)
/* 801E03D0 001D6150  48 00 14 AD */	bl OSWakeupThread
/* 801E03D4 001D6154  7F E3 FB 78 */	mr r3, r31
/* 801E03D8 001D6158  4B FF CB 61 */	bl OSRestoreInterrupts
/* 801E03DC 001D615C  7F C3 F3 78 */	mr r3, r30
/* 801E03E0 001D6160  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E03E4 001D6164  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E03E8 001D6168  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E03EC 001D616C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E03F0 001D6170  7C 08 03 A6 */	mtlr r0
/* 801E03F4 001D6174  38 21 00 20 */	addi r1, r1, 0x20
/* 801E03F8 001D6178  4E 80 00 20 */	blr 

