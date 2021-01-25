.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkFlagCdBodyPairCollector$7addCdBodyPair
hkFlagCdBodyPairCollector$7addCdBodyPair:
/* 802CA914 002C0694  38 00 00 01 */	li r0, 1
/* 802CA918 002C0698  98 03 00 04 */	stb r0, 4(r3)
/* 802CA91C 002C069C  4E 80 00 20 */	blr 

