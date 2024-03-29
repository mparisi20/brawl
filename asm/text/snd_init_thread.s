.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global sndInitThread$7run
sndInitThread$7run:
/* 800797AC 0006F52C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800797B0 0006F530  7C 08 02 A6 */	mflr r0
/* 800797B4 0006F534  90 01 00 24 */	stw r0, 0x24(r1)
/* 800797B8 0006F538  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800797BC 0006F53C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800797C0 0006F540  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800797C4 0006F544  7C 7D 1B 78 */	mr r29, r3
/* 800797C8 0006F548  83 ED BD B0 */	lwz r31, lbl_805A01D0-_SDA_BASE_(r13)
/* 800797CC 0006F54C  7F E3 FB 78 */	mr r3, r31
/* 800797D0 0006F550  4B FF 99 C1 */	bl sndSystem$7loadArchiveHeader
/* 800797D4 0006F554  2C 03 00 00 */	cmpwi r3, 0
/* 800797D8 0006F558  7C 7E 1B 78 */	mr r30, r3
/* 800797DC 0006F55C  41 82 00 10 */	beq lbl_800797EC
/* 800797E0 0006F560  7F E3 FB 78 */	mr r3, r31
/* 800797E4 0006F564  4B FF 9A 39 */	bl sndSystem$7setupBuffers
/* 800797E8 0006F568  7C 7E 1B 78 */	mr r30, r3
lbl_800797EC:
/* 800797EC 0006F56C  38 7D 03 40 */	addi r3, r29, 0x340
/* 800797F0 0006F570  48 16 53 C5 */	bl OSLockMutex
/* 800797F4 0006F574  38 00 00 01 */	li r0, 1
/* 800797F8 0006F578  38 7D 03 40 */	addi r3, r29, 0x340
/* 800797FC 0006F57C  98 1D 03 58 */	stb r0, 0x358(r29)
/* 80079800 0006F580  48 16 54 91 */	bl OSUnlockMutex
/* 80079804 0006F584  2C 1E 00 00 */	cmpwi r30, 0
/* 80079808 0006F588  41 82 00 0C */	beq lbl_80079814
/* 8007980C 0006F58C  7F E3 FB 78 */	mr r3, r31
/* 80079810 0006F590  4B FF A5 11 */	bl sndSystem$7loadCommon
lbl_80079814:
/* 80079814 0006F594  2C 1E 00 00 */	cmpwi r30, 0
/* 80079818 0006F598  41 82 00 1C */	beq lbl_80079834
/* 8007981C 0006F59C  38 7D 03 40 */	addi r3, r29, 0x340
/* 80079820 0006F5A0  48 16 53 95 */	bl OSLockMutex
/* 80079824 0006F5A4  38 00 00 01 */	li r0, 1
/* 80079828 0006F5A8  38 7D 03 40 */	addi r3, r29, 0x340
/* 8007982C 0006F5AC  98 1D 03 59 */	stb r0, 0x359(r29)
/* 80079830 0006F5B0  48 16 54 61 */	bl OSUnlockMutex
lbl_80079834:
/* 80079834 0006F5B4  38 60 00 00 */	li r3, 0
/* 80079838 0006F5B8  48 16 77 31 */	bl OSExitThread
/* 8007983C 0006F5BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80079840 0006F5C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80079844 0006F5C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80079848 0006F5C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8007984C 0006F5CC  7C 08 03 A6 */	mtlr r0
/* 80079850 0006F5D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80079854 0006F5D4  4E 80 00 20 */	blr 

.global sndInitThread$7isFinishInitialize
sndInitThread$7isFinishInitialize:
/* 80079858 0006F5D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007985C 0006F5DC  7C 08 02 A6 */	mflr r0
/* 80079860 0006F5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80079864 0006F5E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80079868 0006F5E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8007986C 0006F5EC  7C 7E 1B 78 */	mr r30, r3
/* 80079870 0006F5F0  38 63 03 40 */	addi r3, r3, 0x340
/* 80079874 0006F5F4  48 16 53 41 */	bl OSLockMutex
/* 80079878 0006F5F8  8B FE 03 58 */	lbz r31, 0x358(r30)
/* 8007987C 0006F5FC  38 7E 03 40 */	addi r3, r30, 0x340
/* 80079880 0006F600  48 16 54 11 */	bl OSUnlockMutex
/* 80079884 0006F604  7F E3 FB 78 */	mr r3, r31
/* 80079888 0006F608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007988C 0006F60C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80079890 0006F610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80079894 0006F614  7C 08 03 A6 */	mtlr r0
/* 80079898 0006F618  38 21 00 10 */	addi r1, r1, 0x10
/* 8007989C 0006F61C  4E 80 00 20 */	blr 

.global sndInitThread$7isFinishLoad
sndInitThread$7isFinishLoad:
/* 800798A0 0006F620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800798A4 0006F624  7C 08 02 A6 */	mflr r0
/* 800798A8 0006F628  90 01 00 14 */	stw r0, 0x14(r1)
/* 800798AC 0006F62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800798B0 0006F630  93 C1 00 08 */	stw r30, 8(r1)
/* 800798B4 0006F634  7C 7E 1B 78 */	mr r30, r3
/* 800798B8 0006F638  38 63 03 40 */	addi r3, r3, 0x340
/* 800798BC 0006F63C  48 16 52 F9 */	bl OSLockMutex
/* 800798C0 0006F640  8B FE 03 59 */	lbz r31, 0x359(r30)
/* 800798C4 0006F644  38 7E 03 40 */	addi r3, r30, 0x340
/* 800798C8 0006F648  48 16 53 C9 */	bl OSUnlockMutex
/* 800798CC 0006F64C  7F E3 FB 78 */	mr r3, r31
/* 800798D0 0006F650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800798D4 0006F654  83 C1 00 08 */	lwz r30, 8(r1)
/* 800798D8 0006F658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800798DC 0006F65C  7C 08 03 A6 */	mtlr r0
/* 800798E0 0006F660  38 21 00 10 */	addi r1, r1, 0x10
/* 800798E4 0006F664  4E 80 00 20 */	blr 

