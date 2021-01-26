.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global MuMsgRegData$7setCharNameMsgData
MuMsgRegData$7setCharNameMsgData:
/* 800BF934 000B56B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BF938 000B56B8  7C 9F 23 78 */	mr r31, r4
/* 800BF93C 000B56BC  93 C1 00 08 */	stw r30, 8(r1)
/* 800BF940 000B56C0  7C 7E 1B 78 */	mr r30, r3
/* 800BF944 000B56C4  7F E3 FB 78 */	mr r3, r31
/* 800BF948 000B56C8  48 33 0C F9 */	bl strlen
/* 800BF94C 000B56CC  7C 66 1B 78 */	mr r6, r3
/* 800BF950 000B56D0  7F C3 F3 78 */	mr r3, r30
/* 800BF954 000B56D4  7F E5 FB 78 */	mr r5, r31
/* 800BF958 000B56D8  38 80 00 05 */	li r4, 5
/* 800BF95C 000B56DC  38 E0 00 01 */	li r7, 1
/* 800BF960 000B56E0  4B FF FE F1 */	bl muNoticeWndTask$7printText
/* 800BF964 000B56E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF968 000B56E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BF96C 000B56EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BF970 000B56F0  7C 08 03 A6 */	mtlr r0
/* 800BF974 000B56F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF978 000B56F8  4E 80 00 20 */	blr 

