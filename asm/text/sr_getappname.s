.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0


.global srGetAppGamename
srGetAppGamename:
/* 8000C860 000025E0  48 1C 9D 3C */	b OSGetAppGamename

.global srGetAppInitialCode
srGetAppInitialCode:
/* 8000C864 000025E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000C868 000025E8  7C 08 02 A6 */	mflr r0
/* 8000C86C 000025EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000C870 000025F0  48 1C 9D 2D */	bl OSGetAppGamename
/* 8000C874 000025F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000C878 000025F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8000C87C 000025FC  7C 08 03 A6 */	mtlr r0
/* 8000C880 00002600  38 21 00 10 */	addi r1, r1, 0x10
/* 8000C884 00002604  4E 80 00 20 */	blr 

.global srGetAppInitialCodeLocaleNum
srGetAppInitialCodeLocaleNum:
/* 8000C888 00002608  38 60 00 03 */	li r3, 3
/* 8000C88C 0000260C  4E 80 00 20 */	blr 

.global srGetAppInitialCodeLocale
srGetAppInitialCodeLocale:
/* 8000C890 00002610  3C 80 80 42 */	lis r4, lbl_80420680@ha
/* 8000C894 00002614  54 60 10 3A */	slwi r0, r3, 2
/* 8000C898 00002618  38 84 06 80 */	addi r4, r4, lbl_80420680@l
/* 8000C89C 0000261C  7C 64 00 2E */	lwzx r3, r4, r0
/* 8000C8A0 00002620  4E 80 00 20 */	blr 

