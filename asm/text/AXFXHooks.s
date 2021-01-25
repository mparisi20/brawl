.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __AXFXAllocFunction
__AXFXAllocFunction:
/* 80203CD4 001F9A54  7C 64 1B 78 */	mr r4, r3
/* 80203CD8 001F9A58  80 6D A5 90 */	lwz r3, lbl_8059E9B0-_SDA_BASE_(r13)
/* 80203CDC 001F9A5C  4B FD 31 F4 */	b OSAllocFromHeap

.global __AXFXFreeFunction
__AXFXFreeFunction:
/* 80203CE0 001F9A60  7C 64 1B 78 */	mr r4, r3
/* 80203CE4 001F9A64  80 6D A5 90 */	lwz r3, lbl_8059E9B0-_SDA_BASE_(r13)
/* 80203CE8 001F9A68  4B FD 32 E0 */	b OSFreeToHeap

.global AXFXSetHooks
AXFXSetHooks:
/* 80203CEC 001F9A6C  90 6D A7 00 */	stw r3, lbl_8059EB20-_SDA_BASE_(r13)
/* 80203CF0 001F9A70  90 8D A7 04 */	stw r4, lbl_8059EB24-_SDA_BASE_(r13)
/* 80203CF4 001F9A74  4E 80 00 20 */	blr 

.global AXFXGetHooks
AXFXGetHooks:
/* 80203CF8 001F9A78  80 0D A7 00 */	lwz r0, lbl_8059EB20-_SDA_BASE_(r13)
/* 80203CFC 001F9A7C  90 03 00 00 */	stw r0, 0(r3)
/* 80203D00 001F9A80  80 0D A7 04 */	lwz r0, lbl_8059EB24-_SDA_BASE_(r13)
/* 80203D04 001F9A84  90 04 00 00 */	stw r0, 0(r4)
/* 80203D08 001F9A88  4E 80 00 20 */	blr 

