.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nteContribution$7showSOError
nteContribution$7showSOError:
/* 80152950 001486D0  38 84 0A F8 */	addi r4, r4, gfMutex$7__dt@l
/* 80152954 001486D4  38 A5 EC F8 */	addi r5, r5, lbl_8049ECF8@l
/* 80152958 001486D8  48 29 DD CD */	bl __register_global_object_tmp
/* 8015295C 001486DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152960 001486E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80152964 001486E4  7C 08 03 A6 */	mtlr r0
/* 80152968 001486E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015296C 001486EC  4E 80 00 20 */	blr 

