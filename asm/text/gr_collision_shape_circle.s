.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global grCollShapeCircle$7init
grCollShapeCircle$7init:
/* 801330B8 00128E38  C0 02 97 10 */	lfs f0, lbl_805A2A30-_SDA2_BASE_(r2)
/* 801330BC 00128E3C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801330C0 00128E40  D0 03 00 08 */	stfs f0, 8(r3)
/* 801330C4 00128E44  D0 03 00 04 */	stfs f0, 4(r3)
/* 801330C8 00128E48  4E 80 00 20 */	blr 

.global grCollShapeCircle$7set
grCollShapeCircle$7set:
/* 801330CC 00128E4C  C0 04 00 04 */	lfs f0, 4(r4)
/* 801330D0 00128E50  D0 03 00 04 */	stfs f0, 4(r3)
/* 801330D4 00128E54  C0 04 00 08 */	lfs f0, 8(r4)
/* 801330D8 00128E58  D0 03 00 08 */	stfs f0, 8(r3)
/* 801330DC 00128E5C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801330E0 00128E60  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801330E4 00128E64  4E 80 00 20 */	blr 

.global grCollShapeCircle$7setDownPos
grCollShapeCircle$7setDownPos:
/* 801330E8 00128E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801330EC 00128E6C  C0 44 00 00 */	lfs f2, 0(r4)
/* 801330F0 00128E70  C0 24 00 04 */	lfs f1, 4(r4)
/* 801330F4 00128E74  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801330F8 00128E78  D0 41 00 08 */	stfs f2, 8(r1)
/* 801330FC 00128E7C  EC 21 00 2A */	fadds f1, f1, f0
/* 80133100 00128E80  C0 02 97 00 */	lfs f0, lbl_805A2A20-_SDA2_BASE_(r2)
/* 80133104 00128E84  D0 43 00 04 */	stfs f2, 4(r3)
/* 80133108 00128E88  EC 00 08 2A */	fadds f0, f0, f1
/* 8013310C 00128E8C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80133110 00128E90  D0 03 00 08 */	stfs f0, 8(r3)
/* 80133114 00128E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80133118 00128E98  4E 80 00 20 */	blr 

.global grCollShapeCircle$7setRightPos
grCollShapeCircle$7setRightPos:
/* 8013311C 00128E9C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80133120 00128EA0  C0 02 97 00 */	lfs f0, lbl_805A2A20-_SDA2_BASE_(r2)
/* 80133124 00128EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80133128 00128EA8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8013312C 00128EAC  C0 44 00 04 */	lfs f2, 4(r4)
/* 80133130 00128EB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80133134 00128EB4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80133138 00128EB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013313C 00128EBC  D0 43 00 08 */	stfs f2, 8(r3)
/* 80133140 00128EC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80133144 00128EC4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80133148 00128EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8013314C 00128ECC  4E 80 00 20 */	blr 

.global grCollShapeCircle$7setLeftPos
grCollShapeCircle$7setLeftPos:
/* 80133150 00128ED0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80133154 00128ED4  C0 02 97 00 */	lfs f0, lbl_805A2A20-_SDA2_BASE_(r2)
/* 80133158 00128ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013315C 00128EDC  EC 21 00 2A */	fadds f1, f1, f0
/* 80133160 00128EE0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80133164 00128EE4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80133168 00128EE8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8013316C 00128EEC  EC 00 08 2A */	fadds f0, f0, f1
/* 80133170 00128EF0  D0 43 00 08 */	stfs f2, 8(r3)
/* 80133174 00128EF4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80133178 00128EF8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8013317C 00128EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80133180 00128F00  4E 80 00 20 */	blr 

.global grCollShapeCircle$7setCenterPos
grCollShapeCircle$7setCenterPos:
/* 80133184 00128F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80133188 00128F08  C0 24 00 04 */	lfs f1, 4(r4)
/* 8013318C 00128F0C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80133190 00128F10  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80133194 00128F14  D0 01 00 08 */	stfs f0, 8(r1)
/* 80133198 00128F18  D0 03 00 04 */	stfs f0, 4(r3)
/* 8013319C 00128F1C  D0 23 00 08 */	stfs f1, 8(r3)
/* 801331A0 00128F20  38 21 00 10 */	addi r1, r1, 0x10
/* 801331A4 00128F24  4E 80 00 20 */	blr 

.global grCollShapeCircle$7setTopPos
grCollShapeCircle$7setTopPos:
/* 801331A8 00128F28  C0 24 00 04 */	lfs f1, 4(r4)
/* 801331AC 00128F2C  C0 02 97 00 */	lfs f0, lbl_805A2A20-_SDA2_BASE_(r2)
/* 801331B0 00128F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801331B4 00128F34  EC 21 00 28 */	fsubs f1, f1, f0
/* 801331B8 00128F38  C0 44 00 00 */	lfs f2, 0(r4)
/* 801331BC 00128F3C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801331C0 00128F40  D0 41 00 08 */	stfs f2, 8(r1)
/* 801331C4 00128F44  EC 01 00 28 */	fsubs f0, f1, f0
/* 801331C8 00128F48  D0 43 00 04 */	stfs f2, 4(r3)
/* 801331CC 00128F4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801331D0 00128F50  D0 03 00 08 */	stfs f0, 8(r3)
/* 801331D4 00128F54  38 21 00 10 */	addi r1, r1, 0x10
/* 801331D8 00128F58  4E 80 00 20 */	blr 

.global grCollShapeCircle$7setLR
grCollShapeCircle$7setLR:
/* 801331DC 00128F5C  C0 44 00 00 */	lfs f2, 0(r4)
/* 801331E0 00128F60  C0 06 00 00 */	lfs f0, 0(r6)
/* 801331E4 00128F64  C0 25 00 00 */	lfs f1, 0(r5)
/* 801331E8 00128F68  EC 60 10 28 */	fsubs f3, f0, f2
/* 801331EC 00128F6C  C0 04 00 04 */	lfs f0, 4(r4)
/* 801331F0 00128F70  EC 22 08 28 */	fsubs f1, f2, f1
/* 801331F4 00128F74  D0 43 00 04 */	stfs f2, 4(r3)
/* 801331F8 00128F78  D0 03 00 08 */	stfs f0, 8(r3)
/* 801331FC 00128F7C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80133200 00128F80  40 81 00 08 */	ble lbl_80133208
/* 80133204 00128F84  48 00 00 08 */	b lbl_8013320C
lbl_80133208:
/* 80133208 00128F88  FC 20 18 90 */	fmr f1, f3
lbl_8013320C:
/* 8013320C 00128F8C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80133210 00128F90  4E 80 00 20 */	blr 

.global grCollShapeCircle$7setLR_3793
grCollShapeCircle$7setLR_3793:
/* 80133214 00128F94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80133218 00128F98  7C 08 02 A6 */	mflr r0
/* 8013321C 00128F9C  C0 64 00 00 */	lfs f3, 0(r4)
/* 80133220 00128FA0  7C A6 2B 78 */	mr r6, r5
/* 80133224 00128FA4  C0 45 00 00 */	lfs f2, 0(r5)
/* 80133228 00128FA8  C0 05 00 04 */	lfs f0, 4(r5)
/* 8013322C 00128FAC  7C 85 23 78 */	mr r5, r4
/* 80133230 00128FB0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80133234 00128FB4  EC 63 10 2A */	fadds f3, f3, f2
/* 80133238 00128FB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013323C 00128FBC  38 81 00 28 */	addi r4, r1, 0x28
/* 80133240 00128FC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80133244 00128FC4  C0 42 97 14 */	lfs f2, lbl_805A2A34-_SDA2_BASE_(r2)
/* 80133248 00128FC8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8013324C 00128FCC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80133250 00128FD0  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 80133254 00128FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80133258 00128FD8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8013325C 00128FDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80133260 00128FE0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80133264 00128FE4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80133268 00128FE8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8013326C 00128FEC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80133270 00128FF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80133274 00128FF4  80 E1 00 08 */	lwz r7, 8(r1)
/* 80133278 00128FF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013327C 00128FFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80133280 00129000  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80133284 00129004  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80133288 00129008  81 83 00 00 */	lwz r12, 0(r3)
/* 8013328C 0012900C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80133290 00129010  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80133294 00129014  90 01 00 24 */	stw r0, 0x24(r1)
/* 80133298 00129018  7D 89 03 A6 */	mtctr r12
/* 8013329C 0012901C  4E 80 04 21 */	bctrl 
/* 801332A0 00129020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801332A4 00129024  7C 08 03 A6 */	mtlr r0
/* 801332A8 00129028  38 21 00 30 */	addi r1, r1, 0x30
/* 801332AC 0012902C  4E 80 00 20 */	blr 

.global grCollShapeCircle$7setUD
grCollShapeCircle$7setUD:
/* 801332B0 00129030  C0 44 00 04 */	lfs f2, 4(r4)
/* 801332B4 00129034  C0 05 00 04 */	lfs f0, 4(r5)
/* 801332B8 00129038  C0 26 00 04 */	lfs f1, 4(r6)
/* 801332BC 0012903C  EC 60 10 28 */	fsubs f3, f0, f2
/* 801332C0 00129040  C0 04 00 00 */	lfs f0, 0(r4)
/* 801332C4 00129044  EC 22 08 28 */	fsubs f1, f2, f1
/* 801332C8 00129048  D0 43 00 08 */	stfs f2, 8(r3)
/* 801332CC 0012904C  D0 03 00 04 */	stfs f0, 4(r3)
/* 801332D0 00129050  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801332D4 00129054  40 81 00 08 */	ble lbl_801332DC
/* 801332D8 00129058  48 00 00 08 */	b lbl_801332E0
lbl_801332DC:
/* 801332DC 0012905C  FC 20 18 90 */	fmr f1, f3
lbl_801332E0:
/* 801332E0 00129060  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 801332E4 00129064  4E 80 00 20 */	blr 

.global grCollShapeCircle$7updateAABBox
grCollShapeCircle$7updateAABBox:
/* 801332E8 00129068  4E 80 00 20 */	blr 

.global grCollShapeCircle$7test
grCollShapeCircle$7test:
/* 801332EC 0012906C  4E 80 00 20 */	blr 

.global grCollShapeCircle$7modifyDownY
grCollShapeCircle$7modifyDownY:
/* 801332F0 00129070  C0 63 00 08 */	lfs f3, 8(r3)
/* 801332F4 00129074  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 801332F8 00129078  C0 02 97 10 */	lfs f0, lbl_805A2A30-_SDA2_BASE_(r2)
/* 801332FC 0012907C  EC 43 10 2A */	fadds f2, f3, f2
/* 80133300 00129080  EC 42 08 28 */	fsubs f2, f2, f1
/* 80133304 00129084  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80133308 00129088  4C 81 00 20 */	blelr 
/* 8013330C 0012908C  C0 02 97 14 */	lfs f0, lbl_805A2A34-_SDA2_BASE_(r2)
/* 80133310 00129090  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80133314 00129094  EC 01 10 2A */	fadds f0, f1, f2
/* 80133318 00129098  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8013331C 0012909C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80133320 001290A0  4E 80 00 20 */	blr 

.global grCollShapeCircle$7getWidth
grCollShapeCircle$7getWidth:
/* 80133324 001290A4  C0 22 97 18 */	lfs f1, lbl_805A2A38-_SDA2_BASE_(r2)
/* 80133328 001290A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8013332C 001290AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80133330 001290B0  4E 80 00 20 */	blr 

.global grCollShapeCircle$7getHeight
grCollShapeCircle$7getHeight:
/* 80133334 001290B4  C0 22 97 18 */	lfs f1, lbl_805A2A38-_SDA2_BASE_(r2)
/* 80133338 001290B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8013333C 001290BC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80133340 001290C0  4E 80 00 20 */	blr 

.global grCollShapeCircle$7move
grCollShapeCircle$7move:
/* 80133344 001290C4  C0 63 00 04 */	lfs f3, 4(r3)
/* 80133348 001290C8  C0 44 00 00 */	lfs f2, 0(r4)
/* 8013334C 001290CC  C0 23 00 08 */	lfs f1, 8(r3)
/* 80133350 001290D0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80133354 001290D4  EC 43 10 2A */	fadds f2, f3, f2
/* 80133358 001290D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8013335C 001290DC  D0 43 00 04 */	stfs f2, 4(r3)
/* 80133360 001290E0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80133364 001290E4  4E 80 00 20 */	blr 

.global grCollShapeCircle$7getTopPos
grCollShapeCircle$7getTopPos:
/* 80133368 001290E8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8013336C 001290EC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80133370 001290F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80133374 001290F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80133378 001290F8  C0 43 00 04 */	lfs f2, 4(r3)
/* 8013337C 001290FC  D0 41 00 08 */	stfs f2, 8(r1)
/* 80133380 00129100  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80133384 00129104  80 61 00 08 */	lwz r3, 8(r1)
/* 80133388 00129108  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8013338C 0012910C  38 21 00 10 */	addi r1, r1, 0x10
/* 80133390 00129110  4E 80 00 20 */	blr 

.global grCollShapeCircle$7getRightPos
grCollShapeCircle$7getRightPos:
/* 80133394 00129114  C0 23 00 04 */	lfs f1, 4(r3)
/* 80133398 00129118  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8013339C 0012911C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801333A0 00129120  EC 01 00 2A */	fadds f0, f1, f0
/* 801333A4 00129124  C0 43 00 08 */	lfs f2, 8(r3)
/* 801333A8 00129128  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801333AC 0012912C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801333B0 00129130  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801333B4 00129134  80 61 00 08 */	lwz r3, 8(r1)
/* 801333B8 00129138  38 21 00 10 */	addi r1, r1, 0x10
/* 801333BC 0012913C  4E 80 00 20 */	blr 

.global grCollShapeCircle$7getLeftPos
grCollShapeCircle$7getLeftPos:
/* 801333C0 00129140  C0 23 00 04 */	lfs f1, 4(r3)
/* 801333C4 00129144  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801333C8 00129148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801333CC 0012914C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801333D0 00129150  C0 43 00 08 */	lfs f2, 8(r3)
/* 801333D4 00129154  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801333D8 00129158  D0 01 00 08 */	stfs f0, 8(r1)
/* 801333DC 0012915C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801333E0 00129160  80 61 00 08 */	lwz r3, 8(r1)
/* 801333E4 00129164  38 21 00 10 */	addi r1, r1, 0x10
/* 801333E8 00129168  4E 80 00 20 */	blr 

.global grCollShapeCircle$7getDownPos
grCollShapeCircle$7getDownPos:
/* 801333EC 0012916C  C0 23 00 08 */	lfs f1, 8(r3)
/* 801333F0 00129170  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801333F4 00129174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801333F8 00129178  EC 01 00 28 */	fsubs f0, f1, f0
/* 801333FC 0012917C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80133400 00129180  D0 41 00 08 */	stfs f2, 8(r1)
/* 80133404 00129184  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80133408 00129188  80 61 00 08 */	lwz r3, 8(r1)
/* 8013340C 0012918C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80133410 00129190  38 21 00 10 */	addi r1, r1, 0x10
/* 80133414 00129194  4E 80 00 20 */	blr 

.global grCollShapeCircle$7getCenterPos
grCollShapeCircle$7getCenterPos:
/* 80133418 00129198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013341C 0012919C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80133420 001291A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80133424 001291A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80133428 001291A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013342C 001291AC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80133430 001291B0  80 61 00 08 */	lwz r3, 8(r1)
/* 80133434 001291B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80133438 001291B8  4E 80 00 20 */	blr 

.global grCollShapeCircle$7getAABBox
grCollShapeCircle$7getAABBox:
/* 8013343C 001291BC  38 63 00 04 */	addi r3, r3, 4
/* 80133440 001291C0  4B F0 E1 78 */	b clCircle2D$7getAABBox

.global grCollShapeCircle$7getType
grCollShapeCircle$7getType:
/* 80133444 001291C4  38 60 00 00 */	li r3, 0
/* 80133448 001291C8  4E 80 00 20 */	blr 

