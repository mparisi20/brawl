.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail12EnvGeneratorFv$7__ct
nw4r3snd6detail12EnvGeneratorFv$7__ct:
/* 801BF0FC 001B4E7C  C0 22 A1 C0 */	lfs f1, lbl_805A34E0-_SDA2_BASE_(r2)
/* 801BF100 001B4E80  3C A0 80 41 */	lis r5, lbl_8040AD30@ha
/* 801BF104 001B4E84  C0 02 A1 C8 */	lfs f0, lbl_805A34E8-_SDA2_BASE_(r2)
/* 801BF108 001B4E88  38 80 00 7F */	li r4, 0x7f
/* 801BF10C 001B4E8C  38 A5 AD 30 */	addi r5, r5, lbl_8040AD30@l
/* 801BF110 001B4E90  C0 42 A1 C4 */	lfs f2, lbl_805A34E4-_SDA2_BASE_(r2)
/* 801BF114 001B4E94  EC 00 00 72 */	fmuls f0, f0, f1
/* 801BF118 001B4E98  C0 25 01 FC */	lfs f1, 0x1fc(r5)
/* 801BF11C 001B4E9C  38 00 00 00 */	li r0, 0
/* 801BF120 001B4EA0  D0 43 00 08 */	stfs f2, 8(r3)
/* 801BF124 001B4EA4  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801BF128 001B4EA8  98 83 00 14 */	stb r4, 0x14(r3)
/* 801BF12C 001B4EAC  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 801BF130 001B4EB0  D0 03 00 04 */	stfs f0, 4(r3)
/* 801BF134 001B4EB4  90 03 00 00 */	stw r0, 0(r3)
/* 801BF138 001B4EB8  4E 80 00 20 */	blr 

.global nw4r3snd6detail12EnvGeneratorFf$7Init
nw4r3snd6detail12EnvGeneratorFf$7Init:
/* 801BF13C 001B4EBC  C0 02 A1 C8 */	lfs f0, lbl_805A34E8-_SDA2_BASE_(r2)
/* 801BF140 001B4EC0  3C 80 80 41 */	lis r4, lbl_8040AD30@ha
/* 801BF144 001B4EC4  C0 42 A1 C4 */	lfs f2, lbl_805A34E4-_SDA2_BASE_(r2)
/* 801BF148 001B4EC8  38 00 00 00 */	li r0, 0
/* 801BF14C 001B4ECC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801BF150 001B4ED0  38 84 AD 30 */	addi r4, r4, lbl_8040AD30@l
/* 801BF154 001B4ED4  C0 24 01 FC */	lfs f1, 0x1fc(r4)
/* 801BF158 001B4ED8  38 80 00 7F */	li r4, 0x7f
/* 801BF15C 001B4EDC  D0 43 00 08 */	stfs f2, 8(r3)
/* 801BF160 001B4EE0  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801BF164 001B4EE4  98 83 00 14 */	stb r4, 0x14(r3)
/* 801BF168 001B4EE8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 801BF16C 001B4EEC  D0 03 00 04 */	stfs f0, 4(r3)
/* 801BF170 001B4EF0  90 03 00 00 */	stw r0, 0(r3)
/* 801BF174 001B4EF4  4E 80 00 20 */	blr 

.global nw4r3snd6detail12EnvGeneratorFf$7Reset
nw4r3snd6detail12EnvGeneratorFf$7Reset:
/* 801BF178 001B4EF8  C0 02 A1 C8 */	lfs f0, lbl_805A34E8-_SDA2_BASE_(r2)
/* 801BF17C 001B4EFC  38 00 00 00 */	li r0, 0
/* 801BF180 001B4F00  90 03 00 00 */	stw r0, 0(r3)
/* 801BF184 001B4F04  EC 00 00 72 */	fmuls f0, f0, f1
/* 801BF188 001B4F08  D0 03 00 04 */	stfs f0, 4(r3)
/* 801BF18C 001B4F0C  4E 80 00 20 */	blr 

.global nw4r3snd6detail12EnvGeneratorCFv$7GetValue
nw4r3snd6detail12EnvGeneratorCFv$7GetValue:
/* 801BF190 001B4F10  80 03 00 00 */	lwz r0, 0(r3)
/* 801BF194 001B4F14  2C 00 00 00 */	cmpwi r0, 0
/* 801BF198 001B4F18  40 82 00 14 */	bne lbl_801BF1AC
/* 801BF19C 001B4F1C  C0 22 A1 CC */	lfs f1, lbl_805A34EC-_SDA2_BASE_(r2)
/* 801BF1A0 001B4F20  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801BF1A4 001B4F24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801BF1A8 001B4F28  4D 82 00 20 */	beqlr 
lbl_801BF1AC:
/* 801BF1AC 001B4F2C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801BF1B0 001B4F30  C0 02 A1 C8 */	lfs f0, lbl_805A34E8-_SDA2_BASE_(r2)
/* 801BF1B4 001B4F34  EC 21 00 24 */	fdivs f1, f1, f0
/* 801BF1B8 001B4F38  4E 80 00 20 */	blr 

.global nw4r3snd6detail12EnvGeneratorFi$7Update
nw4r3snd6detail12EnvGeneratorFi$7Update:
/* 801BF1BC 001B4F3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BF1C0 001B4F40  80 03 00 00 */	lwz r0, 0(r3)
/* 801BF1C4 001B4F44  2C 00 00 02 */	cmpwi r0, 2
/* 801BF1C8 001B4F48  41 82 01 10 */	beq lbl_801BF2D8
/* 801BF1CC 001B4F4C  40 80 00 14 */	bge lbl_801BF1E0
/* 801BF1D0 001B4F50  2C 00 00 00 */	cmpwi r0, 0
/* 801BF1D4 001B4F54  41 82 00 18 */	beq lbl_801BF1EC
/* 801BF1D8 001B4F58  40 80 00 60 */	bge lbl_801BF238
/* 801BF1DC 001B4F5C  48 00 00 FC */	b lbl_801BF2D8
lbl_801BF1E0:
/* 801BF1E0 001B4F60  2C 00 00 04 */	cmpwi r0, 4
/* 801BF1E4 001B4F64  40 80 00 F4 */	bge lbl_801BF2D8
/* 801BF1E8 001B4F68  48 00 00 C0 */	b lbl_801BF2A8
lbl_801BF1EC:
/* 801BF1EC 001B4F6C  C0 02 A1 CC */	lfs f0, lbl_805A34EC-_SDA2_BASE_(r2)
/* 801BF1F0 001B4F70  38 00 00 01 */	li r0, 1
/* 801BF1F4 001B4F74  C0 22 A1 D0 */	lfs f1, lbl_805A34F0-_SDA2_BASE_(r2)
/* 801BF1F8 001B4F78  7C 89 03 A6 */	mtctr r4
/* 801BF1FC 001B4F7C  2C 04 00 00 */	cmpwi r4, 0
/* 801BF200 001B4F80  40 81 00 2C */	ble lbl_801BF22C
lbl_801BF204:
/* 801BF204 001B4F84  C0 63 00 04 */	lfs f3, 4(r3)
/* 801BF208 001B4F88  38 84 FF FF */	addi r4, r4, -1
/* 801BF20C 001B4F8C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 801BF210 001B4F90  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801BF214 001B4F94  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801BF218 001B4F98  D0 43 00 04 */	stfs f2, 4(r3)
/* 801BF21C 001B4F9C  40 81 00 0C */	ble lbl_801BF228
/* 801BF220 001B4FA0  D0 03 00 04 */	stfs f0, 4(r3)
/* 801BF224 001B4FA4  90 03 00 00 */	stw r0, 0(r3)
lbl_801BF228:
/* 801BF228 001B4FA8  42 00 FF DC */	bdnz lbl_801BF204
lbl_801BF22C:
/* 801BF22C 001B4FAC  80 03 00 00 */	lwz r0, 0(r3)
/* 801BF230 001B4FB0  2C 00 00 01 */	cmpwi r0, 1
/* 801BF234 001B4FB4  40 82 00 A4 */	bne lbl_801BF2D8
lbl_801BF238:
/* 801BF238 001B4FB8  3C A0 43 30 */	lis r5, 0x4330
/* 801BF23C 001B4FBC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801BF240 001B4FC0  88 C3 00 14 */	lbz r6, 0x14(r3)
/* 801BF244 001B4FC4  3C 80 80 41 */	lis r4, lbl_8040AC30@ha
/* 801BF248 001B4FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BF24C 001B4FCC  38 84 AC 30 */	addi r4, r4, lbl_8040AC30@l
/* 801BF250 001B4FD0  54 C0 08 3C */	slwi r0, r6, 1
/* 801BF254 001B4FD4  C8 62 A1 D8 */	lfd f3, lbl_805A34F8-_SDA2_BASE_(r2)
/* 801BF258 001B4FD8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801BF25C 001B4FDC  7C 04 02 AE */	lhax r0, r4, r0
/* 801BF260 001B4FE0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801BF264 001B4FE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BF268 001B4FE8  C0 23 00 08 */	lfs f1, 8(r3)
/* 801BF26C 001B4FEC  EC 40 18 28 */	fsubs f2, f0, f3
/* 801BF270 001B4FF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BF274 001B4FF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 801BF278 001B4FF8  90 A1 00 08 */	stw r5, 8(r1)
/* 801BF27C 001B4FFC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801BF280 001B5000  C8 41 00 08 */	lfd f2, 8(r1)
/* 801BF284 001B5004  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BF288 001B5008  EC 22 18 28 */	fsubs f1, f2, f3
/* 801BF28C 001B500C  D0 03 00 04 */	stfs f0, 4(r3)
/* 801BF290 001B5010  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801BF294 001B5014  41 81 00 44 */	bgt lbl_801BF2D8
/* 801BF298 001B5018  38 00 00 02 */	li r0, 2
/* 801BF29C 001B501C  D0 23 00 04 */	stfs f1, 4(r3)
/* 801BF2A0 001B5020  90 03 00 00 */	stw r0, 0(r3)
/* 801BF2A4 001B5024  48 00 00 34 */	b lbl_801BF2D8
lbl_801BF2A8:
/* 801BF2A8 001B5028  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801BF2AC 001B502C  3C 00 43 30 */	lis r0, 0x4330
/* 801BF2B0 001B5030  90 81 00 14 */	stw r4, 0x14(r1)
/* 801BF2B4 001B5034  C8 62 A1 D8 */	lfd f3, lbl_805A34F8-_SDA2_BASE_(r2)
/* 801BF2B8 001B5038  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BF2BC 001B503C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 801BF2C0 001B5040  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 801BF2C4 001B5044  C0 03 00 04 */	lfs f0, 4(r3)
/* 801BF2C8 001B5048  EC 42 18 28 */	fsubs f2, f2, f3
/* 801BF2CC 001B504C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801BF2D0 001B5050  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BF2D4 001B5054  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801BF2D8:
/* 801BF2D8 001B5058  38 21 00 20 */	addi r1, r1, 0x20
/* 801BF2DC 001B505C  4E 80 00 20 */	blr 

.global nw4r3snd6detail12EnvGeneratorFi$7SetAttack
nw4r3snd6detail12EnvGeneratorFi$7SetAttack:
/* 801BF2E0 001B5060  3C A0 80 41 */	lis r5, lbl_8040AD30@ha
/* 801BF2E4 001B5064  54 80 10 3A */	slwi r0, r4, 2
/* 801BF2E8 001B5068  38 A5 AD 30 */	addi r5, r5, lbl_8040AD30@l
/* 801BF2EC 001B506C  7C 05 04 2E */	lfsx f0, r5, r0
/* 801BF2F0 001B5070  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801BF2F4 001B5074  4E 80 00 20 */	blr 

.global nw4r3snd6detail12EnvGeneratorFi$7SetDecay
nw4r3snd6detail12EnvGeneratorFi$7SetDecay:
/* 801BF2F8 001B5078  2C 04 00 7F */	cmpwi r4, 0x7f
/* 801BF2FC 001B507C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BF300 001B5080  40 82 00 0C */	bne lbl_801BF30C
/* 801BF304 001B5084  C0 02 A1 C4 */	lfs f0, lbl_805A34E4-_SDA2_BASE_(r2)
/* 801BF308 001B5088  48 00 00 84 */	b lbl_801BF38C
lbl_801BF30C:
/* 801BF30C 001B508C  2C 04 00 7E */	cmpwi r4, 0x7e
/* 801BF310 001B5090  40 82 00 0C */	bne lbl_801BF31C
/* 801BF314 001B5094  C0 02 A1 E0 */	lfs f0, lbl_805A3500-_SDA2_BASE_(r2)
/* 801BF318 001B5098  48 00 00 74 */	b lbl_801BF38C
lbl_801BF31C:
/* 801BF31C 001B509C  2C 04 00 32 */	cmpwi r4, 0x32
/* 801BF320 001B50A0  40 80 00 3C */	bge lbl_801BF35C
/* 801BF324 001B50A4  54 84 08 3C */	slwi r4, r4, 1
/* 801BF328 001B50A8  3C 00 43 30 */	lis r0, 0x4330
/* 801BF32C 001B50AC  38 84 00 01 */	addi r4, r4, 1
/* 801BF330 001B50B0  90 01 00 08 */	stw r0, 8(r1)
/* 801BF334 001B50B4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801BF338 001B50B8  C8 62 A1 D8 */	lfd f3, lbl_805A34F8-_SDA2_BASE_(r2)
/* 801BF33C 001B50BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BF340 001B50C0  C0 22 A1 E4 */	lfs f1, lbl_805A3504-_SDA2_BASE_(r2)
/* 801BF344 001B50C4  C8 41 00 08 */	lfd f2, 8(r1)
/* 801BF348 001B50C8  C0 02 A1 E8 */	lfs f0, lbl_805A3508-_SDA2_BASE_(r2)
/* 801BF34C 001B50CC  EC 42 18 28 */	fsubs f2, f2, f3
/* 801BF350 001B50D0  EC 22 00 72 */	fmuls f1, f2, f1
/* 801BF354 001B50D4  EC 01 00 24 */	fdivs f0, f1, f0
/* 801BF358 001B50D8  48 00 00 34 */	b lbl_801BF38C
lbl_801BF35C:
/* 801BF35C 001B50DC  20 84 00 7E */	subfic r4, r4, 0x7e
/* 801BF360 001B50E0  3C 00 43 30 */	lis r0, 0x4330
/* 801BF364 001B50E4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801BF368 001B50E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BF36C 001B50EC  C8 62 A1 D8 */	lfd f3, lbl_805A34F8-_SDA2_BASE_(r2)
/* 801BF370 001B50F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 801BF374 001B50F4  C0 22 A1 EC */	lfs f1, lbl_805A350C-_SDA2_BASE_(r2)
/* 801BF378 001B50F8  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 801BF37C 001B50FC  C0 02 A1 E8 */	lfs f0, lbl_805A3508-_SDA2_BASE_(r2)
/* 801BF380 001B5100  EC 42 18 28 */	fsubs f2, f2, f3
/* 801BF384 001B5104  EC 21 10 24 */	fdivs f1, f1, f2
/* 801BF388 001B5108  EC 01 00 24 */	fdivs f0, f1, f0
lbl_801BF38C:
/* 801BF38C 001B510C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801BF390 001B5110  38 21 00 20 */	addi r1, r1, 0x20
/* 801BF394 001B5114  4E 80 00 20 */	blr 

.global nw4r3snd6detail12EnvGeneratorFi$7SetSustain
nw4r3snd6detail12EnvGeneratorFi$7SetSustain:
/* 801BF398 001B5118  98 83 00 14 */	stb r4, 0x14(r3)
/* 801BF39C 001B511C  4E 80 00 20 */	blr 

.global nw4r3snd6detail12EnvGeneratorFi$7SetRelease
nw4r3snd6detail12EnvGeneratorFi$7SetRelease:
/* 801BF3A0 001B5120  2C 04 00 7F */	cmpwi r4, 0x7f
/* 801BF3A4 001B5124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BF3A8 001B5128  40 82 00 0C */	bne lbl_801BF3B4
/* 801BF3AC 001B512C  C0 02 A1 C4 */	lfs f0, lbl_805A34E4-_SDA2_BASE_(r2)
/* 801BF3B0 001B5130  48 00 00 84 */	b lbl_801BF434
lbl_801BF3B4:
/* 801BF3B4 001B5134  2C 04 00 7E */	cmpwi r4, 0x7e
/* 801BF3B8 001B5138  40 82 00 0C */	bne lbl_801BF3C4
/* 801BF3BC 001B513C  C0 02 A1 E0 */	lfs f0, lbl_805A3500-_SDA2_BASE_(r2)
/* 801BF3C0 001B5140  48 00 00 74 */	b lbl_801BF434
lbl_801BF3C4:
/* 801BF3C4 001B5144  2C 04 00 32 */	cmpwi r4, 0x32
/* 801BF3C8 001B5148  40 80 00 3C */	bge lbl_801BF404
/* 801BF3CC 001B514C  54 84 08 3C */	slwi r4, r4, 1
/* 801BF3D0 001B5150  3C 00 43 30 */	lis r0, 0x4330
/* 801BF3D4 001B5154  38 84 00 01 */	addi r4, r4, 1
/* 801BF3D8 001B5158  90 01 00 08 */	stw r0, 8(r1)
/* 801BF3DC 001B515C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801BF3E0 001B5160  C8 62 A1 D8 */	lfd f3, lbl_805A34F8-_SDA2_BASE_(r2)
/* 801BF3E4 001B5164  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BF3E8 001B5168  C0 22 A1 E4 */	lfs f1, lbl_805A3504-_SDA2_BASE_(r2)
/* 801BF3EC 001B516C  C8 41 00 08 */	lfd f2, 8(r1)
/* 801BF3F0 001B5170  C0 02 A1 E8 */	lfs f0, lbl_805A3508-_SDA2_BASE_(r2)
/* 801BF3F4 001B5174  EC 42 18 28 */	fsubs f2, f2, f3
/* 801BF3F8 001B5178  EC 22 00 72 */	fmuls f1, f2, f1
/* 801BF3FC 001B517C  EC 01 00 24 */	fdivs f0, f1, f0
/* 801BF400 001B5180  48 00 00 34 */	b lbl_801BF434
lbl_801BF404:
/* 801BF404 001B5184  20 84 00 7E */	subfic r4, r4, 0x7e
/* 801BF408 001B5188  3C 00 43 30 */	lis r0, 0x4330
/* 801BF40C 001B518C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801BF410 001B5190  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BF414 001B5194  C8 62 A1 D8 */	lfd f3, lbl_805A34F8-_SDA2_BASE_(r2)
/* 801BF418 001B5198  90 81 00 14 */	stw r4, 0x14(r1)
/* 801BF41C 001B519C  C0 22 A1 EC */	lfs f1, lbl_805A350C-_SDA2_BASE_(r2)
/* 801BF420 001B51A0  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 801BF424 001B51A4  C0 02 A1 E8 */	lfs f0, lbl_805A3508-_SDA2_BASE_(r2)
/* 801BF428 001B51A8  EC 42 18 28 */	fsubs f2, f2, f3
/* 801BF42C 001B51AC  EC 21 10 24 */	fdivs f1, f1, f2
/* 801BF430 001B51B0  EC 01 00 24 */	fdivs f0, f1, f0
lbl_801BF434:
/* 801BF434 001B51B4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801BF438 001B51B8  38 21 00 20 */	addi r1, r1, 0x20
/* 801BF43C 001B51BC  4E 80 00 20 */	blr 

