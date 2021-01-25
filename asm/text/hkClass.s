.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkClass$7__ct
hkClass$7__ct:
/* 8027C808 00272588  81 61 00 08 */	lwz r11, 8(r1)
/* 8027C80C 0027258C  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8027C810 00272590  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8027C814 00272594  90 83 00 00 */	stw r4, 0(r3)
/* 8027C818 00272598  90 A3 00 04 */	stw r5, 4(r3)
/* 8027C81C 0027259C  90 C3 00 08 */	stw r6, 8(r3)
/* 8027C820 002725A0  91 03 00 0C */	stw r8, 0xc(r3)
/* 8027C824 002725A4  91 23 00 10 */	stw r9, 0x10(r3)
/* 8027C828 002725A8  91 43 00 14 */	stw r10, 0x14(r3)
/* 8027C82C 002725AC  91 63 00 18 */	stw r11, 0x18(r3)
/* 8027C830 002725B0  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8027C834 002725B4  90 03 00 20 */	stw r0, 0x20(r3)
/* 8027C838 002725B8  4E 80 00 20 */	blr 

.global hkClass$7getName
hkClass$7getName:
/* 8027C83C 002725BC  80 63 00 00 */	lwz r3, 0(r3)
/* 8027C840 002725C0  4E 80 00 20 */	blr 

.global hkClass$7getParent
hkClass$7getParent:
/* 8027C844 002725C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8027C848 002725C8  4E 80 00 20 */	blr 

.global hkClass$7getNumDeclaredInterfaces
hkClass$7getNumDeclaredInterfaces:
/* 8027C84C 002725CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8027C850 002725D0  4E 80 00 20 */	blr 

.global hkClass$7getNumMembers
hkClass$7getNumMembers:
/* 8027C854 002725D4  80 83 00 04 */	lwz r4, 4(r3)
/* 8027C858 002725D8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8027C85C 002725DC  48 00 00 10 */	b lbl_8027C86C
lbl_8027C860:
/* 8027C860 002725E0  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8027C864 002725E4  80 84 00 04 */	lwz r4, 4(r4)
/* 8027C868 002725E8  7C 63 02 14 */	add r3, r3, r0
lbl_8027C86C:
/* 8027C86C 002725EC  2C 04 00 00 */	cmpwi r4, 0
/* 8027C870 002725F0  40 82 FF F0 */	bne lbl_8027C860
/* 8027C874 002725F4  4E 80 00 20 */	blr 

.global hkClass$7getMember
hkClass$7getMember:
/* 8027C878 002725F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027C87C 002725FC  7C 08 02 A6 */	mflr r0
/* 8027C880 00272600  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027C884 00272604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027C888 00272608  7C 9F 23 78 */	mr r31, r4
/* 8027C88C 0027260C  93 C1 00 08 */	stw r30, 8(r1)
/* 8027C890 00272610  7C 7E 1B 78 */	mr r30, r3
/* 8027C894 00272614  4B FF FF C1 */	bl hkClass$7getNumMembers
/* 8027C898 00272618  7F C4 F3 78 */	mr r4, r30
/* 8027C89C 0027261C  7C 63 F8 50 */	subf r3, r3, r31
/* 8027C8A0 00272620  48 00 00 24 */	b lbl_8027C8C4
lbl_8027C8A4:
/* 8027C8A4 00272624  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8027C8A8 00272628  7C 63 02 15 */	add. r3, r3, r0
/* 8027C8AC 0027262C  41 80 00 14 */	blt lbl_8027C8C0
/* 8027C8B0 00272630  1C 03 00 14 */	mulli r0, r3, 0x14
/* 8027C8B4 00272634  80 64 00 18 */	lwz r3, 0x18(r4)
/* 8027C8B8 00272638  7C 63 02 14 */	add r3, r3, r0
/* 8027C8BC 0027263C  48 00 00 14 */	b lbl_8027C8D0
lbl_8027C8C0:
/* 8027C8C0 00272640  80 84 00 04 */	lwz r4, 4(r4)
lbl_8027C8C4:
/* 8027C8C4 00272644  2C 04 00 00 */	cmpwi r4, 0
/* 8027C8C8 00272648  40 82 FF DC */	bne lbl_8027C8A4
/* 8027C8CC 0027264C  80 7E 00 18 */	lwz r3, 0x18(r30)
lbl_8027C8D0:
/* 8027C8D0 00272650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027C8D4 00272654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027C8D8 00272658  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027C8DC 0027265C  7C 08 03 A6 */	mtlr r0
/* 8027C8E0 00272660  38 21 00 10 */	addi r1, r1, 0x10
/* 8027C8E4 00272664  4E 80 00 20 */	blr 

.global hkClass$7getMember_9106
hkClass$7getMember_9106:
/* 8027C8E8 00272668  4B FF FF 90 */	b hkClass$7getMember

.global hkClass$7getNumDeclaredMembers
hkClass$7getNumDeclaredMembers:
/* 8027C8EC 0027266C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8027C8F0 00272670  4E 80 00 20 */	blr 

.global hkClass$7getDeclaredMember
hkClass$7getDeclaredMember:
/* 8027C8F4 00272674  1C 04 00 14 */	mulli r0, r4, 0x14
/* 8027C8F8 00272678  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8027C8FC 0027267C  7C 63 02 14 */	add r3, r3, r0
/* 8027C900 00272680  4E 80 00 20 */	blr 

.global hkClass$7getObjectSize
hkClass$7getObjectSize:
/* 8027C904 00272684  80 63 00 08 */	lwz r3, 8(r3)
/* 8027C908 00272688  4E 80 00 20 */	blr 

.global hkClass$7setObjectSize
hkClass$7setObjectSize:
/* 8027C90C 0027268C  90 83 00 08 */	stw r4, 8(r3)
/* 8027C910 00272690  4E 80 00 20 */	blr 

.global __sinit_$3hkClassClass_cpp
__sinit_$3hkClassClass_cpp:
/* 8027C914 00272694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027C918 00272698  7C 08 02 A6 */	mflr r0
/* 8027C91C 0027269C  3C A0 80 41 */	lis r5, lbl_8040EADC@ha
/* 8027C920 002726A0  3C 60 80 53 */	lis r3, lbl_80532378@ha
/* 8027C924 002726A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027C928 002726A8  38 A5 EA DC */	addi r5, r5, lbl_8040EADC@l
/* 8027C92C 002726AC  3C 80 80 41 */	lis r4, lbl_8040EB68@ha
/* 8027C930 002726B0  3D 20 80 41 */	lis r9, lbl_8040EA78@ha
/* 8027C934 002726B4  90 A1 00 08 */	stw r5, 8(r1)
/* 8027C938 002726B8  38 A0 00 07 */	li r5, 7
/* 8027C93C 002726BC  38 00 00 00 */	li r0, 0
/* 8027C940 002726C0  38 63 23 78 */	addi r3, r3, lbl_80532378@l
/* 8027C944 002726C4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8027C948 002726C8  38 84 EB 68 */	addi r4, r4, lbl_8040EB68@l
/* 8027C94C 002726CC  39 29 EA 78 */	addi r9, r9, lbl_8040EA78@l
/* 8027C950 002726D0  38 A0 00 00 */	li r5, 0
/* 8027C954 002726D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027C958 002726D8  38 C0 00 24 */	li r6, 0x24
/* 8027C95C 002726DC  38 E0 00 00 */	li r7, 0
/* 8027C960 002726E0  39 00 00 00 */	li r8, 0
/* 8027C964 002726E4  39 40 00 01 */	li r10, 1
/* 8027C968 002726E8  4B FF FE A1 */	bl hkClass$7__ct
/* 8027C96C 002726EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027C970 002726F0  7C 08 03 A6 */	mtlr r0
/* 8027C974 002726F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8027C978 002726F8  4E 80 00 20 */	blr 

.global __sinit_$3hkClassEnumClass_cpp
__sinit_$3hkClassEnumClass_cpp:
/* 8027C97C 002726FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027C980 00272700  7C 08 02 A6 */	mflr r0
/* 8027C984 00272704  3C 80 80 41 */	lis r4, lbl_8040EB70@ha
/* 8027C988 00272708  3C 60 80 53 */	lis r3, lbl_805323A0@ha
/* 8027C98C 0027270C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027C990 00272710  38 84 EB 70 */	addi r4, r4, lbl_8040EB70@l
/* 8027C994 00272714  38 63 23 A0 */	addi r3, r3, lbl_805323A0@l
/* 8027C998 00272718  38 A0 00 00 */	li r5, 0
/* 8027C99C 0027271C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027C9A0 00272720  3F E0 80 41 */	lis r31, lbl_8040EBC0@ha
/* 8027C9A4 00272724  38 C0 00 08 */	li r6, 8
/* 8027C9A8 00272728  38 E0 00 00 */	li r7, 0
/* 8027C9AC 0027272C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027C9B0 00272730  3B C0 00 00 */	li r30, 0
/* 8027C9B4 00272734  39 00 00 00 */	li r8, 0
/* 8027C9B8 00272738  39 20 00 00 */	li r9, 0
/* 8027C9BC 0027273C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8027C9C0 00272740  3B A0 00 02 */	li r29, 2
/* 8027C9C4 00272744  39 40 00 00 */	li r10, 0
/* 8027C9C8 00272748  90 81 00 08 */	stw r4, 8(r1)
/* 8027C9CC 0027274C  38 9F EB C0 */	addi r4, r31, lbl_8040EBC0@l
/* 8027C9D0 00272750  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8027C9D4 00272754  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8027C9D8 00272758  4B FF FE 31 */	bl hkClass$7__ct
/* 8027C9DC 0027275C  3C A0 80 41 */	lis r5, lbl_8040EB98@ha
/* 8027C9E0 00272760  38 9F EB C0 */	addi r4, r31, -5184
/* 8027C9E4 00272764  38 A5 EB 98 */	addi r5, r5, lbl_8040EB98@l
/* 8027C9E8 00272768  3C 60 80 53 */	lis r3, lbl_805323C4@ha
/* 8027C9EC 0027276C  90 A1 00 08 */	stw r5, 8(r1)
/* 8027C9F0 00272770  38 63 23 C4 */	addi r3, r3, lbl_805323C4@l
/* 8027C9F4 00272774  38 84 00 10 */	addi r4, r4, 0x10
/* 8027C9F8 00272778  38 A0 00 00 */	li r5, 0
/* 8027C9FC 0027277C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8027CA00 00272780  38 C0 00 0C */	li r6, 0xc
/* 8027CA04 00272784  38 E0 00 00 */	li r7, 0
/* 8027CA08 00272788  39 00 00 00 */	li r8, 0
/* 8027CA0C 0027278C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8027CA10 00272790  39 20 00 00 */	li r9, 0
/* 8027CA14 00272794  39 40 00 00 */	li r10, 0
/* 8027CA18 00272798  4B FF FD F1 */	bl hkClass$7__ct
/* 8027CA1C 0027279C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027CA20 002727A0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027CA24 002727A4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027CA28 002727A8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8027CA2C 002727AC  7C 08 03 A6 */	mtlr r0
/* 8027CA30 002727B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8027CA34 002727B4  4E 80 00 20 */	blr 
