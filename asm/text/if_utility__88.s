.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global utility18AutoResourceLoader$7loading
utility18AutoResourceLoader$7loading:
/* 800FF37C 000F50FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FF380 000F5100  7C 08 02 A6 */	mflr r0
/* 800FF384 000F5104  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FF388 000F5108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FF38C 000F510C  7C 7F 1B 78 */	mr r31, r3
/* 800FF390 000F5110  80 63 00 04 */	lwz r3, 4(r3)
/* 800FF394 000F5114  4B FB 6E 2D */	bl MuObject$7isNodeAnimFinished
/* 800FF398 000F5118  2C 03 00 00 */	cmpwi r3, 0
/* 800FF39C 000F511C  41 82 00 0C */	beq lbl_800FF3A8
/* 800FF3A0 000F5120  38 60 00 03 */	li r3, 3
/* 800FF3A4 000F5124  48 00 00 08 */	b lbl_800FF3AC
lbl_800FF3A8:
/* 800FF3A8 000F5128  80 7F 01 10 */	lwz r3, 0x110(r31)
lbl_800FF3AC:
/* 800FF3AC 000F512C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FF3B0 000F5130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FF3B4 000F5134  7C 08 03 A6 */	mtlr r0
/* 800FF3B8 000F5138  38 21 00 10 */	addi r1, r1, 0x10
/* 800FF3BC 000F513C  4E 80 00 20 */	blr 

