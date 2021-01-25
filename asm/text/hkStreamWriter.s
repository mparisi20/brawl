.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkStreamWriter$7seekTellSupported
hkStreamWriter$7seekTellSupported:
/* 80280CD4 00276A54  38 60 00 00 */	li r3, 0
/* 80280CD8 00276A58  4E 80 00 20 */	blr 

.global hkStreamWriter$7seek
hkStreamWriter$7seek:
/* 80280CDC 00276A5C  38 60 00 01 */	li r3, 1
/* 80280CE0 00276A60  4E 80 00 20 */	blr 

.global hkStreamWriter$7tell
hkStreamWriter$7tell:
/* 80280CE4 00276A64  38 60 FF FF */	li r3, -1
/* 80280CE8 00276A68  4E 80 00 20 */	blr 

