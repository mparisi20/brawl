.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2utFPCQ34nw4r2ut16Bi$7IsValidBinaryFile
nw4r2utFPCQ34nw4r2ut16Bi$7IsValidBinaryFile:
/* 8015C3A4 00152124  80 03 00 00 */	lwz r0, 0(r3)
/* 8015C3A8 00152128  7C 00 20 40 */	cmplw r0, r4
/* 8015C3AC 0015212C  41 82 00 0C */	beq lbl_8015C3B8
/* 8015C3B0 00152130  38 60 00 00 */	li r3, 0
/* 8015C3B4 00152134  4E 80 00 20 */	blr 
lbl_8015C3B8:
/* 8015C3B8 00152138  A0 03 00 04 */	lhz r0, 4(r3)
/* 8015C3BC 0015213C  28 00 FE FF */	cmplwi r0, 0xfeff
/* 8015C3C0 00152140  41 82 00 0C */	beq lbl_8015C3CC
/* 8015C3C4 00152144  38 60 00 00 */	li r3, 0
/* 8015C3C8 00152148  4E 80 00 20 */	blr 
lbl_8015C3CC:
/* 8015C3CC 0015214C  A0 03 00 06 */	lhz r0, 6(r3)
/* 8015C3D0 00152150  7C 00 28 40 */	cmplw r0, r5
/* 8015C3D4 00152154  41 82 00 0C */	beq lbl_8015C3E0
/* 8015C3D8 00152158  38 60 00 00 */	li r3, 0
/* 8015C3DC 0015215C  4E 80 00 20 */	blr 
lbl_8015C3E0:
/* 8015C3E0 00152160  54 C4 1B 78 */	rlwinm r4, r6, 3, 0xd, 0x1c
/* 8015C3E4 00152164  80 A3 00 08 */	lwz r5, 8(r3)
/* 8015C3E8 00152168  38 04 00 10 */	addi r0, r4, 0x10
/* 8015C3EC 0015216C  7C 05 00 40 */	cmplw r5, r0
/* 8015C3F0 00152170  40 80 00 0C */	bge lbl_8015C3FC
/* 8015C3F4 00152174  38 60 00 00 */	li r3, 0
/* 8015C3F8 00152178  4E 80 00 20 */	blr 
lbl_8015C3FC:
/* 8015C3FC 0015217C  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 8015C400 00152180  7C 06 18 50 */	subf r0, r6, r3
/* 8015C404 00152184  7C 63 33 38 */	orc r3, r3, r6
/* 8015C408 00152188  54 00 F8 7E */	srwi r0, r0, 1
/* 8015C40C 0015218C  7C 00 18 50 */	subf r0, r0, r3
/* 8015C410 00152190  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8015C414 00152194  4E 80 00 20 */	blr 

