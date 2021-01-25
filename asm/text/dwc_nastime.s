.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DWC_GetDateTime
DWC_GetDateTime:
/* 803556C8 0034B448  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803556CC 0034B44C  7C 08 02 A6 */	mflr r0
/* 803556D0 0034B450  90 01 00 34 */	stw r0, 0x34(r1)
/* 803556D4 0034B454  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803556D8 0034B458  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803556DC 0034B45C  7C 9E 23 78 */	mr r30, r4
/* 803556E0 0034B460  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803556E4 0034B464  7C 7D 1B 78 */	mr r29, r3
/* 803556E8 0034B468  4B FF 9E 95 */	bl DWCi_Np_GetTimeInSeconds
/* 803556EC 0034B46C  90 61 00 08 */	stw r3, 8(r1)
/* 803556F0 0034B470  38 61 00 10 */	addi r3, r1, 0x10
/* 803556F4 0034B474  90 81 00 0C */	stw r4, 0xc(r1)
/* 803556F8 0034B478  4B FF D4 81 */	bl DWCi_Auth_GetNasTimeDiff
/* 803556FC 0034B47C  2C 03 00 00 */	cmpwi r3, 0
/* 80355700 0034B480  7C 7F 1B 78 */	mr r31, r3
/* 80355704 0034B484  41 82 00 24 */	beq lbl_80355728
/* 80355708 0034B488  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8035570C 0034B48C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80355710 0034B490  80 81 00 08 */	lwz r4, 8(r1)
/* 80355714 0034B494  7C 03 00 14 */	addc r0, r3, r0
/* 80355718 0034B498  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8035571C 0034B49C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80355720 0034B4A0  7C 04 19 14 */	adde r0, r4, r3
/* 80355724 0034B4A4  90 01 00 08 */	stw r0, 8(r1)
lbl_80355728:
/* 80355728 0034B4A8  38 61 00 08 */	addi r3, r1, 8
/* 8035572C 0034B4AC  4B FF 9E 99 */	bl DWCi_Np_UtcToTm
/* 80355730 0034B4B0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80355734 0034B4B4  38 00 00 00 */	li r0, 0
/* 80355738 0034B4B8  38 84 07 6C */	addi r4, r4, 0x76c
/* 8035573C 0034B4BC  90 9D 00 08 */	stw r4, 8(r29)
/* 80355740 0034B4C0  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80355744 0034B4C4  90 9D 00 04 */	stw r4, 4(r29)
/* 80355748 0034B4C8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8035574C 0034B4CC  90 9D 00 00 */	stw r4, 0(r29)
/* 80355750 0034B4D0  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 80355754 0034B4D4  90 9D 00 10 */	stw r4, 0x10(r29)
/* 80355758 0034B4D8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8035575C 0034B4DC  90 9D 00 0C */	stw r4, 0xc(r29)
/* 80355760 0034B4E0  80 83 00 08 */	lwz r4, 8(r3)
/* 80355764 0034B4E4  90 9E 00 08 */	stw r4, 8(r30)
/* 80355768 0034B4E8  80 83 00 04 */	lwz r4, 4(r3)
/* 8035576C 0034B4EC  90 9E 00 04 */	stw r4, 4(r30)
/* 80355770 0034B4F0  80 83 00 00 */	lwz r4, 0(r3)
/* 80355774 0034B4F4  7F E3 FB 78 */	mr r3, r31
/* 80355778 0034B4F8  90 9E 00 00 */	stw r4, 0(r30)
/* 8035577C 0034B4FC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80355780 0034B500  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80355784 0034B504  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80355788 0034B508  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8035578C 0034B50C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80355790 0034B510  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80355794 0034B514  7C 08 03 A6 */	mtlr r0
/* 80355798 0034B518  38 21 00 30 */	addi r1, r1, 0x30
/* 8035579C 0034B51C  4E 80 00 20 */	blr 

