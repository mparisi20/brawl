.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfWifiprMngr$7destroy
IfWifiprMngr$7destroy:
/* 800FE850 000F45D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FE854 000F45D4  7C 08 02 A6 */	mflr r0
/* 800FE858 000F45D8  3C 80 80 46 */	lis r4, lbl_8045C814@ha
/* 800FE85C 000F45DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FE860 000F45E0  38 84 C8 14 */	addi r4, r4, lbl_8045C814@l
/* 800FE864 000F45E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FE868 000F45E8  7C 7F 1B 78 */	mr r31, r3
/* 800FE86C 000F45EC  90 83 01 24 */	stw r4, 0x124(r3)
/* 800FE870 000F45F0  48 00 00 1D */	bl IfMinigameHomerun$7init
/* 800FE874 000F45F4  7F E3 FB 78 */	mr r3, r31
/* 800FE878 000F45F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FE87C 000F45FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FE880 000F4600  7C 08 03 A6 */	mtlr r0
/* 800FE884 000F4604  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE888 000F4608  4E 80 00 20 */	blr 

