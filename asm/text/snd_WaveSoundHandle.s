.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd15WaveSoundHandleFv$7DetachSound
nw4r3snd15WaveSoundHandleFv$7DetachSound:
/* 801D3C54 001C99D4  80 83 00 00 */	lwz r4, 0(r3)
/* 801D3C58 001C99D8  2C 04 00 00 */	cmpwi r4, 0
/* 801D3C5C 001C99DC  41 82 00 18 */	beq lbl_801D3C74
/* 801D3C60 001C99E0  80 04 01 B0 */	lwz r0, 0x1b0(r4)
/* 801D3C64 001C99E4  7C 00 18 40 */	cmplw r0, r3
/* 801D3C68 001C99E8  40 82 00 0C */	bne lbl_801D3C74
/* 801D3C6C 001C99EC  38 00 00 00 */	li r0, 0
/* 801D3C70 001C99F0  90 04 01 B0 */	stw r0, 0x1b0(r4)
lbl_801D3C74:
/* 801D3C74 001C99F4  80 03 00 00 */	lwz r0, 0(r3)
/* 801D3C78 001C99F8  2C 00 00 00 */	cmpwi r0, 0
/* 801D3C7C 001C99FC  4D 82 00 20 */	beqlr 
/* 801D3C80 001C9A00  38 00 00 00 */	li r0, 0
/* 801D3C84 001C9A04  90 03 00 00 */	stw r0, 0(r3)
/* 801D3C88 001C9A08  4E 80 00 20 */	blr 

