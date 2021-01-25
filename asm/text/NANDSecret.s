.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NANDSecretGetFileSystemStatus
NANDSecretGetFileSystemStatus:
/* 8020D7BC 0020353C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8020D7C0 00203540  7C 08 02 A6 */	mflr r0
/* 8020D7C4 00203544  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020D7C8 00203548  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8020D7CC 0020354C  7C 7F 1B 78 */	mr r31, r3
/* 8020D7D0 00203550  4B FF F3 05 */	bl nandIsInitialized
/* 8020D7D4 00203554  2C 03 00 00 */	cmpwi r3, 0
/* 8020D7D8 00203558  40 82 00 0C */	bne lbl_8020D7E4
/* 8020D7DC 0020355C  38 60 FF 80 */	li r3, -128
/* 8020D7E0 00203560  48 00 00 50 */	b lbl_8020D830
lbl_8020D7E4:
/* 8020D7E4 00203564  38 61 00 08 */	addi r3, r1, 8
/* 8020D7E8 00203568  48 00 66 19 */	bl ISFS_GetStats
/* 8020D7EC 0020356C  2C 03 00 00 */	cmpwi r3, 0
/* 8020D7F0 00203570  40 82 00 3C */	bne lbl_8020D82C
/* 8020D7F4 00203574  80 01 00 08 */	lwz r0, 8(r1)
/* 8020D7F8 00203578  90 1F 00 00 */	stw r0, 0(r31)
/* 8020D7FC 0020357C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020D800 00203580  90 1F 00 04 */	stw r0, 4(r31)
/* 8020D804 00203584  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8020D808 00203588  90 1F 00 08 */	stw r0, 8(r31)
/* 8020D80C 0020358C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D810 00203590  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8020D814 00203594  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8020D818 00203598  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8020D81C 0020359C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8020D820 002035A0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8020D824 002035A4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8020D828 002035A8  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8020D82C:
/* 8020D82C 002035AC  4B FF F2 C1 */	bl nandConvertErrorCode
lbl_8020D830:
/* 8020D830 002035B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8020D834 002035B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8020D838 002035B8  7C 08 03 A6 */	mtlr r0
/* 8020D83C 002035BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8020D840 002035C0  4E 80 00 20 */	blr 

