.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd15StrmSoundHandleFv$7DetachSound
nw4r3snd15StrmSoundHandleFv$7DetachSound:
/* 801CF99C 001C571C  80 83 00 00 */	lwz r4, 0(r3)
/* 801CF9A0 001C5720  2C 04 00 00 */	cmpwi r4, 0
/* 801CF9A4 001C5724  41 82 00 18 */	beq lbl_801CF9BC
/* 801CF9A8 001C5728  80 04 09 20 */	lwz r0, 0x920(r4)
/* 801CF9AC 001C572C  7C 00 18 40 */	cmplw r0, r3
/* 801CF9B0 001C5730  40 82 00 0C */	bne lbl_801CF9BC
/* 801CF9B4 001C5734  38 00 00 00 */	li r0, 0
/* 801CF9B8 001C5738  90 04 09 20 */	stw r0, 0x920(r4)
lbl_801CF9BC:
/* 801CF9BC 001C573C  80 03 00 00 */	lwz r0, 0(r3)
/* 801CF9C0 001C5740  2C 00 00 00 */	cmpwi r0, 0
/* 801CF9C4 001C5744  4D 82 00 20 */	beqlr 
/* 801CF9C8 001C5748  38 00 00 00 */	li r0, 0
/* 801CF9CC 001C574C  90 03 00 00 */	stw r0, 0(r3)
/* 801CF9D0 001C5750  4E 80 00 20 */	blr 

