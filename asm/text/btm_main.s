.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global btm_init
btm_init:
/* 8023D864 002335E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023D868 002335E8  7C 08 02 A6 */	mflr r0
/* 8023D86C 002335EC  38 80 00 00 */	li r4, 0
/* 8023D870 002335F0  38 A0 27 C4 */	li r5, 0x27c4
/* 8023D874 002335F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023D878 002335F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023D87C 002335FC  3F E0 80 53 */	lis r31, lbl_80529CF8@ha
/* 8023D880 00233600  38 7F 9C F8 */	addi r3, r31, lbl_80529CF8@l
/* 8023D884 00233604  4B DC 6B B9 */	bl memset
/* 8023D888 00233608  38 7F 9C F8 */	addi r3, r31, -25352
/* 8023D88C 0023360C  38 00 00 00 */	li r0, 0
/* 8023D890 00233610  98 03 27 C0 */	stb r0, 0x27c0(r3)
/* 8023D894 00233614  4B FF F4 85 */	bl btm_inq_db_init
/* 8023D898 00233618  4B FF A6 69 */	bl btm_acl_init
/* 8023D89C 0023361C  38 60 00 02 */	li r3, 2
/* 8023D8A0 00233620  48 00 2D 79 */	bl btm_sec_init
/* 8023D8A4 00233624  48 00 0C B1 */	bl btm_sco_init
/* 8023D8A8 00233628  4B FF CA 69 */	bl btm_dev_init
/* 8023D8AC 0023362C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023D8B0 00233630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023D8B4 00233634  7C 08 03 A6 */	mtlr r0
/* 8023D8B8 00233638  38 21 00 10 */	addi r1, r1, 0x10
/* 8023D8BC 0023363C  4E 80 00 20 */	blr 

