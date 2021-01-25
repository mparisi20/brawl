.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __OSGetIPCBufferHi
__OSGetIPCBufferHi:
/* 801E2420 001D81A0  80 6D C2 E0 */	lwz r3, lbl_805A0700-_SDA_BASE_(r13)
/* 801E2424 001D81A4  4E 80 00 20 */	blr 

.global __OSGetIPCBufferLo
__OSGetIPCBufferLo:
/* 801E2428 001D81A8  80 6D A5 D8 */	lwz r3, lbl_8059E9F8-_SDA_BASE_(r13)
/* 801E242C 001D81AC  4E 80 00 20 */	blr 

.global __OSInitIPCBuffer
__OSInitIPCBuffer:
/* 801E2430 001D81B0  3C 60 80 00 */	lis r3, 0x80003130@ha
/* 801E2434 001D81B4  80 03 31 30 */	lwz r0, 0x80003130@l(r3)
/* 801E2438 001D81B8  90 0D A5 D8 */	stw r0, lbl_8059E9F8-_SDA_BASE_(r13)
/* 801E243C 001D81BC  80 03 31 34 */	lwz r0, 0x3134(r3)
/* 801E2440 001D81C0  90 0D C2 E0 */	stw r0, lbl_805A0700-_SDA_BASE_(r13)
/* 801E2444 001D81C4  4E 80 00 20 */	blr 

