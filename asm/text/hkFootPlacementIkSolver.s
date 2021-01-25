.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkQsTransform$7getRotation
hkQsTransform$7getRotation:
/* 8032D96C 003236EC  38 63 00 10 */	addi r3, r3, 0x10
/* 8032D970 003236F0  4E 80 00 20 */	blr 

.global hkQsTransform$7getTranslation
hkQsTransform$7getTranslation:
/* 8032D974 003236F4  4E 80 00 20 */	blr 

.global hkPose$7getBoneModelSpace
hkPose$7getBoneModelSpace:
/* 8032D978 003236F8  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8032D97C 003236FC  7C 05 20 AE */	lbzx r0, r5, r4
/* 8032D980 00323700  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8032D984 00323704  41 82 00 08 */	beq lbl_8032D98C
/* 8032D988 00323708  48 00 10 2C */	b hkPose$7calculateBoneModelSpace
lbl_8032D98C:
/* 8032D98C 0032370C  1C 04 00 30 */	mulli r0, r4, 0x30
/* 8032D990 00323710  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8032D994 00323714  7C 63 02 14 */	add r3, r3, r0
/* 8032D998 00323718  4E 80 00 20 */	blr 

.global hkQuaternion$7normalize
hkQuaternion$7normalize:
/* 8032D99C 0032371C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032D9A0 00323720  C0 82 B5 98 */	lfs f4, lbl_805A48B8-_SDA2_BASE_(r2)
/* 8032D9A4 00323724  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032D9A8 00323728  C0 43 00 00 */	lfs f2, 0(r3)
/* 8032D9AC 0032372C  EC 60 00 32 */	fmuls f3, f0, f0
/* 8032D9B0 00323730  C0 23 00 08 */	lfs f1, 8(r3)
/* 8032D9B4 00323734  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8032D9B8 00323738  EC 42 18 BA */	fmadds f2, f2, f2, f3
/* 8032D9BC 0032373C  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 8032D9C0 00323740  EC 20 08 3A */	fmadds f1, f0, f0, f1
/* 8032D9C4 00323744  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 8032D9C8 00323748  41 82 00 40 */	beq lbl_8032DA08
/* 8032D9CC 0032374C  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8032D9D0 00323750  4C 40 13 82 */	cror 2, 0, 2
/* 8032D9D4 00323754  40 82 00 14 */	bne lbl_8032D9E8
/* 8032D9D8 00323758  3C 00 7F 80 */	lis r0, 0x7f80
/* 8032D9DC 0032375C  90 01 00 08 */	stw r0, 8(r1)
/* 8032D9E0 00323760  C0 81 00 08 */	lfs f4, 8(r1)
/* 8032D9E4 00323764  48 00 00 24 */	b lbl_8032DA08
lbl_8032D9E8:
/* 8032D9E8 00323768  FC 60 08 34 */	frsqrte f3, f1
/* 8032D9EC 0032376C  C0 42 B5 9C */	lfs f2, lbl_805A48BC-_SDA2_BASE_(r2)
/* 8032D9F0 00323770  C0 02 B5 A0 */	lfs f0, lbl_805A48C0-_SDA2_BASE_(r2)
/* 8032D9F4 00323774  FC 60 18 18 */	frsp f3, f3
/* 8032D9F8 00323778  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8032D9FC 0032377C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8032DA00 00323780  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 8032DA04 00323784  EC 82 00 32 */	fmuls f4, f2, f0
lbl_8032DA08:
/* 8032DA08 00323788  C0 03 00 00 */	lfs f0, 0(r3)
/* 8032DA0C 0032378C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8032DA10 00323790  EC 60 01 32 */	fmuls f3, f0, f4
/* 8032DA14 00323794  C0 23 00 08 */	lfs f1, 8(r3)
/* 8032DA18 00323798  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8032DA1C 0032379C  EC 42 01 32 */	fmuls f2, f2, f4
/* 8032DA20 003237A0  EC 21 01 32 */	fmuls f1, f1, f4
/* 8032DA24 003237A4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8032DA28 003237A8  D0 63 00 00 */	stfs f3, 0(r3)
/* 8032DA2C 003237AC  D0 43 00 04 */	stfs f2, 4(r3)
/* 8032DA30 003237B0  D0 23 00 08 */	stfs f1, 8(r3)
/* 8032DA34 003237B4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8032DA38 003237B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8032DA3C 003237BC  4E 80 00 20 */	blr 

