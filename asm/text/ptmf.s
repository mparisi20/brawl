.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __ptmf_test
__ptmf_test:
/* 803F0DCC 003E6B4C  80 A3 00 00 */	lwz r5, 0(r3)
/* 803F0DD0 003E6B50  80 C3 00 04 */	lwz r6, 4(r3)
/* 803F0DD4 003E6B54  80 E3 00 08 */	lwz r7, 8(r3)
/* 803F0DD8 003E6B58  38 60 00 01 */	li r3, 1
/* 803F0DDC 003E6B5C  2C 05 00 00 */	cmpwi r5, 0
/* 803F0DE0 003E6B60  2F 06 00 00 */	cmpwi cr6, r6, 0
/* 803F0DE4 003E6B64  2F 87 00 00 */	cmpwi cr7, r7, 0
/* 803F0DE8 003E6B68  4C 82 00 20 */	bnelr 
/* 803F0DEC 003E6B6C  4C 9A 00 20 */	bnelr cr6
/* 803F0DF0 003E6B70  4C 9E 00 20 */	bnelr cr7
/* 803F0DF4 003E6B74  38 60 00 00 */	li r3, 0
/* 803F0DF8 003E6B78  4E 80 00 20 */	blr 

.global __ptmf_cmpr
__ptmf_cmpr:
/* 803F0DFC 003E6B7C  80 A3 00 00 */	lwz r5, 0(r3)
/* 803F0E00 003E6B80  80 C4 00 00 */	lwz r6, 0(r4)
/* 803F0E04 003E6B84  80 E3 00 04 */	lwz r7, 4(r3)
/* 803F0E08 003E6B88  81 04 00 04 */	lwz r8, 4(r4)
/* 803F0E0C 003E6B8C  81 23 00 08 */	lwz r9, 8(r3)
/* 803F0E10 003E6B90  81 44 00 08 */	lwz r10, 8(r4)
/* 803F0E14 003E6B94  38 60 00 01 */	li r3, 1
/* 803F0E18 003E6B98  7C 05 30 00 */	cmpw r5, r6
/* 803F0E1C 003E6B9C  7F 07 40 00 */	cmpw cr6, r7, r8
/* 803F0E20 003E6BA0  7F 89 50 00 */	cmpw cr7, r9, r10
/* 803F0E24 003E6BA4  4C 82 00 20 */	bnelr 
/* 803F0E28 003E6BA8  4C 9A 00 20 */	bnelr cr6
/* 803F0E2C 003E6BAC  4C 9E 00 20 */	bnelr cr7
/* 803F0E30 003E6BB0  38 60 00 00 */	li r3, 0
/* 803F0E34 003E6BB4  4E 80 00 20 */	blr 

.global __ptmf_scall
__ptmf_scall:
/* 803F0E38 003E6BB8  80 0C 00 00 */	lwz r0, 0(r12)
/* 803F0E3C 003E6BBC  81 6C 00 04 */	lwz r11, 4(r12)
/* 803F0E40 003E6BC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 803F0E44 003E6BC4  7C 63 02 14 */	add r3, r3, r0
/* 803F0E48 003E6BC8  2C 0B 00 00 */	cmpwi r11, 0
/* 803F0E4C 003E6BCC  41 80 00 0C */	blt lbl_803F0E58
/* 803F0E50 003E6BD0  7D 83 60 2E */	lwzx r12, r3, r12
/* 803F0E54 003E6BD4  7D 8C 58 2E */	lwzx r12, r12, r11
lbl_803F0E58:
/* 803F0E58 003E6BD8  7D 89 03 A6 */	mtctr r12
/* 803F0E5C 003E6BDC  4E 80 04 20 */	bctr 

.global __ptmf_cast
__ptmf_cast:
/* 803F0E60 003E6BE0  80 04 00 00 */	lwz r0, 0(r4)
/* 803F0E64 003E6BE4  80 C4 00 04 */	lwz r6, 4(r4)
/* 803F0E68 003E6BE8  7C 60 1A 14 */	add r3, r0, r3
/* 803F0E6C 003E6BEC  80 04 00 08 */	lwz r0, 8(r4)
/* 803F0E70 003E6BF0  90 65 00 00 */	stw r3, 0(r5)
/* 803F0E74 003E6BF4  7C A3 2B 78 */	mr r3, r5
/* 803F0E78 003E6BF8  90 C5 00 04 */	stw r6, 4(r5)
/* 803F0E7C 003E6BFC  90 05 00 08 */	stw r0, 8(r5)
/* 803F0E80 003E6C00  4E 80 00 20 */	blr 

