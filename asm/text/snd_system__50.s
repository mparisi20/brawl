.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global sndSystem$7setRemSpeakerMuteOn
sndSystem$7setRemSpeakerMuteOn:
/* 8007EF50 00074CD0  38 63 DD B0 */	addi r3, r3, -8784
/* 8007EF54 00074CD4  90 04 00 00 */	stw r0, 0(r4)
/* 8007EF58 00074CD8  80 03 00 04 */	lwz r0, 4(r3)
/* 8007EF5C 00074CDC  90 05 00 00 */	stw r0, 0(r5)
/* 8007EF60 00074CE0  4E 80 00 20 */	blr 

