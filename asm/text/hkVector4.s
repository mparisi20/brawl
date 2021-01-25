.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkVector4$7setTransformedPos
hkVector4$7setTransformedPos:
/* 802878F0 0027D670  C0 C5 00 04 */	lfs f6, 4(r5)
/* 802878F4 0027D674  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 802878F8 0027D678  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 802878FC 0027D67C  EC A6 00 B2 */	fmuls f5, f6, f2
/* 80287900 0027D680  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80287904 0027D684  EC 66 00 72 */	fmuls f3, f6, f1
/* 80287908 0027D688  C1 05 00 00 */	lfs f8, 0(r5)
/* 8028790C 0027D68C  EC 26 00 32 */	fmuls f1, f6, f0
/* 80287910 0027D690  C0 84 00 00 */	lfs f4, 0(r4)
/* 80287914 0027D694  C0 44 00 04 */	lfs f2, 4(r4)
/* 80287918 0027D698  EC A8 29 3A */	fmadds f5, f8, f4, f5
/* 8028791C 0027D69C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80287920 0027D6A0  EC 68 18 BA */	fmadds f3, f8, f2, f3
/* 80287924 0027D6A4  C0 E5 00 08 */	lfs f7, 8(r5)
/* 80287928 0027D6A8  EC 28 08 3A */	fmadds f1, f8, f0, f1
/* 8028792C 0027D6AC  C0 84 00 20 */	lfs f4, 0x20(r4)
/* 80287930 0027D6B0  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 80287934 0027D6B4  EC C7 29 3A */	fmadds f6, f7, f4, f5
/* 80287938 0027D6B8  EC 87 18 BA */	fmadds f4, f7, f2, f3
/* 8028793C 0027D6BC  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80287940 0027D6C0  C0 A4 00 30 */	lfs f5, 0x30(r4)
/* 80287944 0027D6C4  EC 47 08 3A */	fmadds f2, f7, f0, f1
/* 80287948 0027D6C8  C0 64 00 34 */	lfs f3, 0x34(r4)
/* 8028794C 0027D6CC  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 80287950 0027D6D0  EC A5 30 2A */	fadds f5, f5, f6
/* 80287954 0027D6D4  C0 02 AA 68 */	lfs f0, lbl_805A3D88-_SDA2_BASE_(r2)
/* 80287958 0027D6D8  EC 63 20 2A */	fadds f3, f3, f4
/* 8028795C 0027D6DC  EC 21 10 2A */	fadds f1, f1, f2
/* 80287960 0027D6E0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80287964 0027D6E4  D0 A3 00 00 */	stfs f5, 0(r3)
/* 80287968 0027D6E8  D0 63 00 04 */	stfs f3, 4(r3)
/* 8028796C 0027D6EC  D0 23 00 08 */	stfs f1, 8(r3)
/* 80287970 0027D6F0  4E 80 00 20 */	blr 

.global hkVector4$7setTransformedInversePos
hkVector4$7setTransformedInversePos:
/* 80287974 0027D6F4  C0 45 00 04 */	lfs f2, 4(r5)
/* 80287978 0027D6F8  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 8028797C 0027D6FC  C0 02 AA 68 */	lfs f0, lbl_805A3D88-_SDA2_BASE_(r2)
/* 80287980 0027D700  EC E2 08 28 */	fsubs f7, f2, f1
/* 80287984 0027D704  C0 64 00 04 */	lfs f3, 4(r4)
/* 80287988 0027D708  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 8028798C 0027D70C  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 80287990 0027D710  EC C7 00 F2 */	fmuls f6, f7, f3
/* 80287994 0027D714  C0 A5 00 00 */	lfs f5, 0(r5)
/* 80287998 0027D718  C0 64 00 30 */	lfs f3, 0x30(r4)
/* 8028799C 0027D71C  EC 87 00 B2 */	fmuls f4, f7, f2
/* 802879A0 0027D720  EC 47 00 72 */	fmuls f2, f7, f1
/* 802879A4 0027D724  C1 05 00 08 */	lfs f8, 8(r5)
/* 802879A8 0027D728  ED 25 18 28 */	fsubs f9, f5, f3
/* 802879AC 0027D72C  C0 E4 00 38 */	lfs f7, 0x38(r4)
/* 802879B0 0027D730  C0 A4 00 00 */	lfs f5, 0(r4)
/* 802879B4 0027D734  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 802879B8 0027D738  EC E8 38 28 */	fsubs f7, f8, f7
/* 802879BC 0027D73C  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 802879C0 0027D740  EC C9 31 7A */	fmadds f6, f9, f5, f6
/* 802879C4 0027D744  C0 A4 00 08 */	lfs f5, 8(r4)
/* 802879C8 0027D748  EC 89 20 FA */	fmadds f4, f9, f3, f4
/* 802879CC 0027D74C  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 802879D0 0027D750  EC 49 10 7A */	fmadds f2, f9, f1, f2
/* 802879D4 0027D754  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 802879D8 0027D758  EC A7 31 7A */	fmadds f5, f7, f5, f6
/* 802879DC 0027D75C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802879E0 0027D760  EC 67 20 FA */	fmadds f3, f7, f3, f4
/* 802879E4 0027D764  EC 07 10 7A */	fmadds f0, f7, f1, f2
/* 802879E8 0027D768  D0 A3 00 00 */	stfs f5, 0(r3)
/* 802879EC 0027D76C  D0 63 00 04 */	stfs f3, 4(r3)
/* 802879F0 0027D770  D0 03 00 08 */	stfs f0, 8(r3)
/* 802879F4 0027D774  4E 80 00 20 */	blr 

.global hkVector4$7setRotatedDir
hkVector4$7setRotatedDir:
/* 802879F8 0027D778  C0 C5 00 04 */	lfs f6, 4(r5)
/* 802879FC 0027D77C  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 80287A00 0027D780  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80287A04 0027D784  EC A6 00 B2 */	fmuls f5, f6, f2
/* 80287A08 0027D788  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80287A0C 0027D78C  EC 66 00 72 */	fmuls f3, f6, f1
/* 80287A10 0027D790  C0 E5 00 00 */	lfs f7, 0(r5)
/* 80287A14 0027D794  EC 26 00 32 */	fmuls f1, f6, f0
/* 80287A18 0027D798  C0 84 00 00 */	lfs f4, 0(r4)
/* 80287A1C 0027D79C  EC C7 29 3A */	fmadds f6, f7, f4, f5
/* 80287A20 0027D7A0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80287A24 0027D7A4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80287A28 0027D7A8  EC 87 18 BA */	fmadds f4, f7, f2, f3
/* 80287A2C 0027D7AC  C1 05 00 08 */	lfs f8, 8(r5)
/* 80287A30 0027D7B0  EC 47 08 3A */	fmadds f2, f7, f0, f1
/* 80287A34 0027D7B4  C0 A4 00 20 */	lfs f5, 0x20(r4)
/* 80287A38 0027D7B8  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 80287A3C 0027D7BC  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80287A40 0027D7C0  EC A8 31 7A */	fmadds f5, f8, f5, f6
/* 80287A44 0027D7C4  EC 68 20 FA */	fmadds f3, f8, f3, f4
/* 80287A48 0027D7C8  C0 02 AA 68 */	lfs f0, lbl_805A3D88-_SDA2_BASE_(r2)
/* 80287A4C 0027D7CC  EC 28 10 7A */	fmadds f1, f8, f1, f2
/* 80287A50 0027D7D0  D0 A3 00 00 */	stfs f5, 0(r3)
/* 80287A54 0027D7D4  D0 63 00 04 */	stfs f3, 4(r3)
/* 80287A58 0027D7D8  D0 23 00 08 */	stfs f1, 8(r3)
/* 80287A5C 0027D7DC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80287A60 0027D7E0  4E 80 00 20 */	blr 

.global hkVector4$7setRotatedInverseDir
hkVector4$7setRotatedInverseDir:
/* 80287A64 0027D7E4  C0 C5 00 04 */	lfs f6, 4(r5)
/* 80287A68 0027D7E8  C0 44 00 04 */	lfs f2, 4(r4)
/* 80287A6C 0027D7EC  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80287A70 0027D7F0  EC A6 00 B2 */	fmuls f5, f6, f2
/* 80287A74 0027D7F4  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80287A78 0027D7F8  EC 66 00 72 */	fmuls f3, f6, f1
/* 80287A7C 0027D7FC  C1 05 00 00 */	lfs f8, 0(r5)
/* 80287A80 0027D800  EC 26 00 32 */	fmuls f1, f6, f0
/* 80287A84 0027D804  C0 84 00 00 */	lfs f4, 0(r4)
/* 80287A88 0027D808  EC C8 29 3A */	fmadds f6, f8, f4, f5
/* 80287A8C 0027D80C  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 80287A90 0027D810  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80287A94 0027D814  EC 88 18 BA */	fmadds f4, f8, f2, f3
/* 80287A98 0027D818  C0 E5 00 08 */	lfs f7, 8(r5)
/* 80287A9C 0027D81C  EC 48 08 3A */	fmadds f2, f8, f0, f1
/* 80287AA0 0027D820  C0 A4 00 08 */	lfs f5, 8(r4)
/* 80287AA4 0027D824  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 80287AA8 0027D828  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80287AAC 0027D82C  EC A7 31 7A */	fmadds f5, f7, f5, f6
/* 80287AB0 0027D830  EC 67 20 FA */	fmadds f3, f7, f3, f4
/* 80287AB4 0027D834  C0 02 AA 68 */	lfs f0, lbl_805A3D88-_SDA2_BASE_(r2)
/* 80287AB8 0027D838  EC 27 10 7A */	fmadds f1, f7, f1, f2
/* 80287ABC 0027D83C  D0 A3 00 00 */	stfs f5, 0(r3)
/* 80287AC0 0027D840  D0 63 00 04 */	stfs f3, 4(r3)
/* 80287AC4 0027D844  D0 23 00 08 */	stfs f1, 8(r3)
/* 80287AC8 0027D848  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80287ACC 0027D84C  4E 80 00 20 */	blr 

.global __sinit_$3hkVector4_cpp
__sinit_$3hkVector4_cpp:
/* 80287AD0 0027D850  3C 60 80 53 */	lis r3, lbl_80532540@ha
/* 80287AD4 0027D854  3C A0 80 53 */	lis r5, lbl_80532550@ha
/* 80287AD8 0027D858  38 83 25 40 */	addi r4, r3, lbl_80532540@l
/* 80287ADC 0027D85C  C0 63 25 40 */	lfs f3, 0x2540(r3)
/* 80287AE0 0027D860  C0 44 00 04 */	lfs f2, 4(r4)
/* 80287AE4 0027D864  38 65 25 50 */	addi r3, r5, lbl_80532550@l
/* 80287AE8 0027D868  C0 24 00 08 */	lfs f1, 8(r4)
/* 80287AEC 0027D86C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80287AF0 0027D870  D0 65 25 50 */	stfs f3, 0x2550(r5)
/* 80287AF4 0027D874  D0 43 00 04 */	stfs f2, 4(r3)
/* 80287AF8 0027D878  D0 23 00 08 */	stfs f1, 8(r3)
/* 80287AFC 0027D87C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80287B00 0027D880  4E 80 00 20 */	blr 

