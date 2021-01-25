.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf_w_strlen
VFipf_w_strlen:
/* 803A9FF8 0039FD78  7C 64 1B 78 */	mr r4, r3
/* 803A9FFC 0039FD7C  48 00 00 08 */	b lbl_803AA004
lbl_803AA000:
/* 803AA000 0039FD80  38 84 00 02 */	addi r4, r4, 2
lbl_803AA004:
/* 803AA004 0039FD84  A0 04 00 00 */	lhz r0, 0(r4)
/* 803AA008 0039FD88  2C 00 00 00 */	cmpwi r0, 0
/* 803AA00C 0039FD8C  40 82 FF F4 */	bne lbl_803AA000
/* 803AA010 0039FD90  7C 03 20 50 */	subf r0, r3, r4
/* 803AA014 0039FD94  7C 03 0E 70 */	srawi r3, r0, 1
/* 803AA018 0039FD98  4E 80 00 20 */	blr 

.global VFipf_w_strcpy
VFipf_w_strcpy:
/* 803AA01C 0039FD9C  7C 65 1B 78 */	mr r5, r3
/* 803AA020 0039FDA0  48 00 00 0C */	b lbl_803AA02C
lbl_803AA024:
/* 803AA024 0039FDA4  38 84 00 02 */	addi r4, r4, 2
/* 803AA028 0039FDA8  38 A5 00 02 */	addi r5, r5, 2
lbl_803AA02C:
/* 803AA02C 0039FDAC  A0 04 00 00 */	lhz r0, 0(r4)
/* 803AA030 0039FDB0  2C 00 00 00 */	cmpwi r0, 0
/* 803AA034 0039FDB4  B0 05 00 00 */	sth r0, 0(r5)
/* 803AA038 0039FDB8  40 82 FF EC */	bne lbl_803AA024
/* 803AA03C 0039FDBC  4E 80 00 20 */	blr 

.global VFipf_w_strncmp
VFipf_w_strncmp:
/* 803AA040 0039FDC0  7C A9 03 A6 */	mtctr r5
/* 803AA044 0039FDC4  2C 05 00 00 */	cmpwi r5, 0
/* 803AA048 0039FDC8  41 82 00 3C */	beq lbl_803AA084
lbl_803AA04C:
/* 803AA04C 0039FDCC  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803AA050 0039FDD0  2C 05 00 00 */	cmpwi r5, 0
/* 803AA054 0039FDD4  41 82 00 18 */	beq lbl_803AA06C
/* 803AA058 0039FDD8  A0 04 00 00 */	lhz r0, 0(r4)
/* 803AA05C 0039FDDC  2C 00 00 00 */	cmpwi r0, 0
/* 803AA060 0039FDE0  41 82 00 0C */	beq lbl_803AA06C
/* 803AA064 0039FDE4  7C 05 00 40 */	cmplw r5, r0
/* 803AA068 0039FDE8  41 82 00 10 */	beq lbl_803AA078
lbl_803AA06C:
/* 803AA06C 0039FDEC  A0 04 00 00 */	lhz r0, 0(r4)
/* 803AA070 0039FDF0  7C 60 28 50 */	subf r3, r0, r5
/* 803AA074 0039FDF4  4E 80 00 20 */	blr 
lbl_803AA078:
/* 803AA078 0039FDF8  38 63 00 02 */	addi r3, r3, 2
/* 803AA07C 0039FDFC  38 84 00 02 */	addi r4, r4, 2
/* 803AA080 0039FE00  42 00 FF CC */	bdnz lbl_803AA04C
lbl_803AA084:
/* 803AA084 0039FE04  38 60 00 00 */	li r3, 0
/* 803AA088 0039FE08  4E 80 00 20 */	blr 
