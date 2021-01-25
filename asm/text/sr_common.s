.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global srSystemGetDebugLevel
srSystemGetDebugLevel:
/* 8000C8A4 00002624  80 6D 80 00 */	lwz r3, lbl_8059C420-_SDA_BASE_(r13)
/* 8000C8A8 00002628  4E 80 00 20 */	blr 

.global __nw
__nw:
/* 8000C8AC 0000262C  7C 64 1B 78 */	mr r4, r3
/* 8000C8B0 00002630  38 60 00 0C */	li r3, 0xc
/* 8000C8B4 00002634  48 01 81 30 */	b gfHeapManager$7alloc

.global srHeapType$7__nw
srHeapType$7__nw:
/* 8000C8B8 00002638  7C 60 1B 78 */	mr r0, r3
/* 8000C8BC 0000263C  7C 83 23 78 */	mr r3, r4
/* 8000C8C0 00002640  7C 04 03 78 */	mr r4, r0
/* 8000C8C4 00002644  48 01 81 20 */	b gfHeapManager$7alloc

.global __dl
__dl:
/* 8000C8C8 00002648  48 01 81 84 */	b gfHeapManager$7free

.global srHeapType$7__nwa
srHeapType$7__nwa:
/* 8000C8CC 0000264C  7C 60 1B 78 */	mr r0, r3
/* 8000C8D0 00002650  7C 83 23 78 */	mr r3, r4
/* 8000C8D4 00002654  7C 04 03 78 */	mr r4, r0
/* 8000C8D8 00002658  48 01 81 0C */	b gfHeapManager$7alloc

.global __dla
__dla:
/* 8000C8DC 0000265C  48 01 81 70 */	b gfHeapManager$7free

