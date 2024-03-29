.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ef9DrawOrderFPQ34nw4r2ef6Effe$7Draw
nw4r2ef9DrawOrderFPQ34nw4r2ef6Effe$7Draw:
/* 801638D0 00159650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801638D4 00159654  7C 08 02 A6 */	mflr r0
/* 801638D8 00159658  90 01 00 24 */	stw r0, 0x24(r1)
/* 801638DC 0015965C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801638E0 00159660  3B E4 00 90 */	addi r31, r4, 0x90
/* 801638E4 00159664  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801638E8 00159668  3B C0 00 00 */	li r30, 0
/* 801638EC 0015966C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801638F0 00159670  7C BD 2B 78 */	mr r29, r5
/* 801638F4 00159674  48 00 00 2C */	b lbl_80163920
lbl_801638F8:
/* 801638F8 00159678  7F C3 F3 78 */	mr r3, r30
/* 801638FC 0015967C  48 00 A6 D1 */	bl nw4r2ef15ParticleManagerFv$7BeginDraw
/* 80163900 00159680  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 80163904 00159684  7F C3 F3 78 */	mr r3, r30
/* 80163908 00159688  7F A4 EB 78 */	mr r4, r29
/* 8016390C 0015968C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80163910 00159690  7D 89 03 A6 */	mtctr r12
/* 80163914 00159694  4E 80 04 21 */	bctrl 
/* 80163918 00159698  7F C3 F3 78 */	mr r3, r30
/* 8016391C 0015969C  48 00 A7 A5 */	bl nw4r2ef15ParticleManagerFv$7EndDraw
lbl_80163920:
/* 80163920 001596A0  7F E3 FB 78 */	mr r3, r31
/* 80163924 001596A4  7F C4 F3 78 */	mr r4, r30
/* 80163928 001596A8  4B FF 88 89 */	bl nw4r2utFPCQ34nw4r2ut4Lis$7List_GetNext
/* 8016392C 001596AC  2C 03 00 00 */	cmpwi r3, 0
/* 80163930 001596B0  7C 7E 1B 78 */	mr r30, r3
/* 80163934 001596B4  40 82 FF C4 */	bne lbl_801638F8
/* 80163938 001596B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016393C 001596BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80163940 001596C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80163944 001596C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80163948 001596C8  7C 08 03 A6 */	mtlr r0
/* 8016394C 001596CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80163950 001596D0  4E 80 00 20 */	blr 

.global nw4r2ef9DrawOrderFPQ34nw4r2ef6Effe$7Add
nw4r2ef9DrawOrderFPQ34nw4r2ef6Effe$7Add:
/* 80163954 001596D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80163958 001596D8  7C 08 02 A6 */	mflr r0
/* 8016395C 001596DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80163960 001596E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80163964 001596E4  3B E4 00 90 */	addi r31, r4, 0x90
/* 80163968 001596E8  38 80 00 00 */	li r4, 0
/* 8016396C 001596EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80163970 001596F0  7C BE 2B 78 */	mr r30, r5
/* 80163974 001596F4  48 00 00 14 */	b lbl_80163988
lbl_80163978:
/* 80163978 001596F8  88 63 00 89 */	lbz r3, 0x89(r3)
/* 8016397C 001596FC  88 1E 00 89 */	lbz r0, 0x89(r30)
/* 80163980 00159700  7C 03 00 40 */	cmplw r3, r0
/* 80163984 00159704  40 81 00 18 */	ble lbl_8016399C
lbl_80163988:
/* 80163988 00159708  7F E3 FB 78 */	mr r3, r31
/* 8016398C 0015970C  4B FF 88 45 */	bl nw4r2utFPCQ34nw4r2ut4Lis$7List_GetPrev
/* 80163990 00159710  2C 03 00 00 */	cmpwi r3, 0
/* 80163994 00159714  7C 64 1B 78 */	mr r4, r3
/* 80163998 00159718  40 82 FF E0 */	bne lbl_80163978
lbl_8016399C:
/* 8016399C 0015971C  7F E3 FB 78 */	mr r3, r31
/* 801639A0 00159720  4B FF 88 11 */	bl nw4r2utFPCQ34nw4r2ut4Lis$7List_GetNext
/* 801639A4 00159724  7C 64 1B 78 */	mr r4, r3
/* 801639A8 00159728  7F E3 FB 78 */	mr r3, r31
/* 801639AC 0015972C  7F C5 F3 78 */	mr r5, r30
/* 801639B0 00159730  4B FF 86 75 */	bl nw4r2utFPQ34nw4r2ut4List$7List_Insert
/* 801639B4 00159734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801639B8 00159738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801639BC 0015973C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801639C0 00159740  7C 08 03 A6 */	mtlr r0
/* 801639C4 00159744  38 21 00 10 */	addi r1, r1, 0x10
/* 801639C8 00159748  4E 80 00 20 */	blr 

.global nw4r2ef9DrawOrderFPQ34nw4r2ef6Effe$7Remove
nw4r2ef9DrawOrderFPQ34nw4r2ef6Effe$7Remove:
/* 801639CC 0015974C  7C 83 23 78 */	mr r3, r4
/* 801639D0 00159750  7C A4 2B 78 */	mr r4, r5
/* 801639D4 00159754  38 63 00 90 */	addi r3, r3, 0x90
/* 801639D8 00159758  4B FF 87 6C */	b nw4r2utFPQ34nw4r2ut4List$7List_Remove

