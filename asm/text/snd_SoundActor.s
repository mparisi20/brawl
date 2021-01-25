.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail10SoundActorFPQ34nw4r3snd11So$7detail_SetupSound
nw4r3snd6detail10SoundActorFPQ34nw4r3snd11So$7detail_SetupSound:
/* 801C6AF4 001BC874  7C 66 1B 78 */	mr r6, r3
/* 801C6AF8 001BC878  80 63 00 04 */	lwz r3, 4(r3)
/* 801C6AFC 001BC87C  38 E6 00 08 */	addi r7, r6, 8
/* 801C6B00 001BC880  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6B04 001BC884  38 C0 00 00 */	li r6, 0
/* 801C6B08 001BC888  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6B0C 001BC88C  7D 89 03 A6 */	mtctr r12
/* 801C6B10 001BC890  4E 80 04 20 */	bctr 

