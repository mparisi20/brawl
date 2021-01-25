.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMathUtil$7decompose4x4ColTransform
hkMathUtil$7decompose4x4ColTransform:
/* 802821DC 00277F5C  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802821E0 00277F60  7C 2C 0B 78 */	mr r12, r1
/* 802821E4 00277F64  21 6B FD 90 */	subfic r11, r11, -624
/* 802821E8 00277F68  7C 21 59 6E */	stwux r1, r1, r11
/* 802821EC 00277F6C  7C 08 02 A6 */	mflr r0
/* 802821F0 00277F70  7D 8B 63 78 */	mr r11, r12
/* 802821F4 00277F74  90 0C 00 04 */	stw r0, 4(r12)
/* 802821F8 00277F78  48 16 F1 29 */	bl _savegpr_27
/* 802821FC 00277F7C  7C 9F 23 78 */	mr r31, r4
/* 80282200 00277F80  7C 64 1B 78 */	mr r4, r3
/* 80282204 00277F84  38 61 02 10 */	addi r3, r1, 0x210
/* 80282208 00277F88  48 00 50 6D */	bl hkTransform$7set4x4ColumnMajor
/* 8028220C 00277F8C  C0 01 02 40 */	lfs f0, 0x240(r1)
/* 80282210 00277F90  3B C1 01 B0 */	addi r30, r1, 0x1b0
/* 80282214 00277F94  3B A1 01 E0 */	addi r29, r1, 0x1e0
/* 80282218 00277F98  3B 60 00 00 */	li r27, 0
/* 8028221C 00277F9C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80282220 00277FA0  C0 01 02 44 */	lfs f0, 0x244(r1)
/* 80282224 00277FA4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80282228 00277FA8  C0 01 02 48 */	lfs f0, 0x248(r1)
/* 8028222C 00277FAC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80282230 00277FB0  C0 01 02 4C */	lfs f0, 0x24c(r1)
/* 80282234 00277FB4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80282238 00277FB8  C1 61 02 10 */	lfs f11, 0x210(r1)
/* 8028223C 00277FBC  C1 41 02 14 */	lfs f10, 0x214(r1)
/* 80282240 00277FC0  C1 21 02 18 */	lfs f9, 0x218(r1)
/* 80282244 00277FC4  C1 01 02 1C */	lfs f8, 0x21c(r1)
/* 80282248 00277FC8  C0 E1 02 20 */	lfs f7, 0x220(r1)
/* 8028224C 00277FCC  C0 C1 02 24 */	lfs f6, 0x224(r1)
/* 80282250 00277FD0  C0 A1 02 28 */	lfs f5, 0x228(r1)
/* 80282254 00277FD4  C0 81 02 2C */	lfs f4, 0x22c(r1)
/* 80282258 00277FD8  C0 61 02 30 */	lfs f3, 0x230(r1)
/* 8028225C 00277FDC  C0 41 02 34 */	lfs f2, 0x234(r1)
/* 80282260 00277FE0  C0 21 02 38 */	lfs f1, 0x238(r1)
/* 80282264 00277FE4  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 80282268 00277FE8  D1 61 01 B0 */	stfs f11, 0x1b0(r1)
/* 8028226C 00277FEC  D1 41 01 B4 */	stfs f10, 0x1b4(r1)
/* 80282270 00277FF0  D1 21 01 B8 */	stfs f9, 0x1b8(r1)
/* 80282274 00277FF4  D1 01 01 BC */	stfs f8, 0x1bc(r1)
/* 80282278 00277FF8  D0 E1 01 C0 */	stfs f7, 0x1c0(r1)
/* 8028227C 00277FFC  D0 C1 01 C4 */	stfs f6, 0x1c4(r1)
/* 80282280 00278000  D0 A1 01 C8 */	stfs f5, 0x1c8(r1)
/* 80282284 00278004  D0 81 01 CC */	stfs f4, 0x1cc(r1)
/* 80282288 00278008  D0 61 01 D0 */	stfs f3, 0x1d0(r1)
/* 8028228C 0027800C  D0 41 01 D4 */	stfs f2, 0x1d4(r1)
/* 80282290 00278010  D0 21 01 D8 */	stfs f1, 0x1d8(r1)
/* 80282294 00278014  D0 01 01 DC */	stfs f0, 0x1dc(r1)
lbl_80282298:
/* 80282298 00278018  C1 81 01 B0 */	lfs f12, 0x1b0(r1)
/* 8028229C 0027801C  38 61 01 80 */	addi r3, r1, 0x180
/* 802822A0 00278020  C1 61 01 B4 */	lfs f11, 0x1b4(r1)
/* 802822A4 00278024  C1 41 01 B8 */	lfs f10, 0x1b8(r1)
/* 802822A8 00278028  C1 21 01 BC */	lfs f9, 0x1bc(r1)
/* 802822AC 0027802C  C1 01 01 C0 */	lfs f8, 0x1c0(r1)
/* 802822B0 00278030  C0 E1 01 C4 */	lfs f7, 0x1c4(r1)
/* 802822B4 00278034  C0 C1 01 C8 */	lfs f6, 0x1c8(r1)
/* 802822B8 00278038  C0 A1 01 CC */	lfs f5, 0x1cc(r1)
/* 802822BC 0027803C  C0 81 01 D0 */	lfs f4, 0x1d0(r1)
/* 802822C0 00278040  C0 61 01 D4 */	lfs f3, 0x1d4(r1)
/* 802822C4 00278044  C0 41 01 D8 */	lfs f2, 0x1d8(r1)
/* 802822C8 00278048  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 802822CC 0027804C  D1 81 01 E0 */	stfs f12, 0x1e0(r1)
/* 802822D0 00278050  C0 22 A9 C8 */	lfs f1, lbl_805A3CE8-_SDA2_BASE_(r2)
/* 802822D4 00278054  D1 61 01 E4 */	stfs f11, 0x1e4(r1)
/* 802822D8 00278058  D1 41 01 E8 */	stfs f10, 0x1e8(r1)
/* 802822DC 0027805C  D1 21 01 EC */	stfs f9, 0x1ec(r1)
/* 802822E0 00278060  D1 01 01 F0 */	stfs f8, 0x1f0(r1)
/* 802822E4 00278064  D0 E1 01 F4 */	stfs f7, 0x1f4(r1)
/* 802822E8 00278068  D0 C1 01 F8 */	stfs f6, 0x1f8(r1)
/* 802822EC 0027806C  D0 A1 01 FC */	stfs f5, 0x1fc(r1)
/* 802822F0 00278070  D0 81 02 00 */	stfs f4, 0x200(r1)
/* 802822F4 00278074  D0 61 02 04 */	stfs f3, 0x204(r1)
/* 802822F8 00278078  D0 41 02 08 */	stfs f2, 0x208(r1)
/* 802822FC 0027807C  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 80282300 00278080  D1 81 01 80 */	stfs f12, 0x180(r1)
/* 80282304 00278084  D1 61 01 84 */	stfs f11, 0x184(r1)
/* 80282308 00278088  D1 41 01 88 */	stfs f10, 0x188(r1)
/* 8028230C 0027808C  D1 21 01 8C */	stfs f9, 0x18c(r1)
/* 80282310 00278090  D1 01 01 90 */	stfs f8, 0x190(r1)
/* 80282314 00278094  D0 E1 01 94 */	stfs f7, 0x194(r1)
/* 80282318 00278098  D0 C1 01 98 */	stfs f6, 0x198(r1)
/* 8028231C 0027809C  D0 A1 01 9C */	stfs f5, 0x19c(r1)
/* 80282320 002780A0  D0 81 01 A0 */	stfs f4, 0x1a0(r1)
/* 80282324 002780A4  D0 61 01 A4 */	stfs f3, 0x1a4(r1)
/* 80282328 002780A8  D0 41 01 A8 */	stfs f2, 0x1a8(r1)
/* 8028232C 002780AC  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80282330 002780B0  48 00 11 F5 */	bl hkMatrix3$7invert
/* 80282334 002780B4  38 61 01 80 */	addi r3, r1, 0x180
/* 80282338 002780B8  48 00 06 8D */	bl hkMatrix3$7transpose
/* 8028233C 002780BC  C1 61 01 E0 */	lfs f11, 0x1e0(r1)
/* 80282340 002780C0  38 61 01 50 */	addi r3, r1, 0x150
/* 80282344 002780C4  C1 41 01 E4 */	lfs f10, 0x1e4(r1)
/* 80282348 002780C8  38 81 01 80 */	addi r4, r1, 0x180
/* 8028234C 002780CC  C1 21 01 E8 */	lfs f9, 0x1e8(r1)
/* 80282350 002780D0  C1 01 01 EC */	lfs f8, 0x1ec(r1)
/* 80282354 002780D4  C0 E1 01 F0 */	lfs f7, 0x1f0(r1)
/* 80282358 002780D8  C0 C1 01 F4 */	lfs f6, 0x1f4(r1)
/* 8028235C 002780DC  C0 A1 01 F8 */	lfs f5, 0x1f8(r1)
/* 80282360 002780E0  C0 81 01 FC */	lfs f4, 0x1fc(r1)
/* 80282364 002780E4  C0 61 02 00 */	lfs f3, 0x200(r1)
/* 80282368 002780E8  C0 41 02 04 */	lfs f2, 0x204(r1)
/* 8028236C 002780EC  C0 21 02 08 */	lfs f1, 0x208(r1)
/* 80282370 002780F0  C0 01 02 0C */	lfs f0, 0x20c(r1)
/* 80282374 002780F4  D1 61 01 50 */	stfs f11, 0x150(r1)
/* 80282378 002780F8  D1 41 01 54 */	stfs f10, 0x154(r1)
/* 8028237C 002780FC  D1 21 01 58 */	stfs f9, 0x158(r1)
/* 80282380 00278100  D1 01 01 5C */	stfs f8, 0x15c(r1)
/* 80282384 00278104  D0 E1 01 60 */	stfs f7, 0x160(r1)
/* 80282388 00278108  D0 C1 01 64 */	stfs f6, 0x164(r1)
/* 8028238C 0027810C  D0 A1 01 68 */	stfs f5, 0x168(r1)
/* 80282390 00278110  D0 81 01 6C */	stfs f4, 0x16c(r1)
/* 80282394 00278114  D0 61 01 70 */	stfs f3, 0x170(r1)
/* 80282398 00278118  D0 41 01 74 */	stfs f2, 0x174(r1)
/* 8028239C 0027811C  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 802823A0 00278120  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 802823A4 00278124  48 00 15 6D */	bl hkMatrix3$7add
/* 802823A8 00278128  C0 22 A9 CC */	lfs f1, lbl_805A3CEC-_SDA2_BASE_(r2)
/* 802823AC 0027812C  7F C3 F3 78 */	mr r3, r30
/* 802823B0 00278130  38 81 01 50 */	addi r4, r1, 0x150
/* 802823B4 00278134  48 00 0B 9D */	bl hkMatrix3$7setMul_9297
/* 802823B8 00278138  3B 7B 00 01 */	addi r27, r27, 1
/* 802823BC 0027813C  3B 80 00 00 */	li r28, 0
/* 802823C0 00278140  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 802823C4 00278144  40 80 00 30 */	bge lbl_802823F4
/* 802823C8 00278148  C0 22 A9 C8 */	lfs f1, lbl_805A3CE8-_SDA2_BASE_(r2)
/* 802823CC 0027814C  7F C3 F3 78 */	mr r3, r30
/* 802823D0 00278150  7F A4 EB 78 */	mr r4, r29
/* 802823D4 00278154  48 00 0E AD */	bl hkMatrix3$7isApproximatelyEqual
/* 802823D8 00278158  54 60 46 3E */	srwi r0, r3, 0x18
/* 802823DC 0027815C  7C 03 07 74 */	extsb r3, r0
/* 802823E0 00278160  7C 03 00 D0 */	neg r0, r3
/* 802823E4 00278164  7C 00 1B 78 */	or r0, r0, r3
/* 802823E8 00278168  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802823EC 0027816C  40 82 00 08 */	bne lbl_802823F4
/* 802823F0 00278170  3B 80 00 01 */	li r28, 1
lbl_802823F4:
/* 802823F4 00278174  2C 1C 00 00 */	cmpwi r28, 0
/* 802823F8 00278178  40 82 FE A0 */	bne lbl_80282298
/* 802823FC 0027817C  C0 61 01 B0 */	lfs f3, 0x1b0(r1)
/* 80282400 00278180  C1 22 A9 D0 */	lfs f9, lbl_805A3CF0-_SDA2_BASE_(r2)
/* 80282404 00278184  D0 7F 00 A0 */	stfs f3, 0xa0(r31)
/* 80282408 00278188  C0 21 01 B4 */	lfs f1, 0x1b4(r1)
/* 8028240C 0027818C  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80282410 00278190  EC 01 00 72 */	fmuls f0, f1, f1
/* 80282414 00278194  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 80282418 00278198  C0 41 01 B8 */	lfs f2, 0x1b8(r1)
/* 8028241C 0027819C  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 80282420 002781A0  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80282424 002781A4  D0 5F 00 A8 */	stfs f2, 0xa8(r31)
/* 80282428 002781A8  EC 62 00 BA */	fmadds f3, f2, f2, f0
/* 8028242C 002781AC  C0 21 01 BC */	lfs f1, 0x1bc(r1)
/* 80282430 002781B0  FC 03 48 00 */	fcmpu cr0, f3, f9
/* 80282434 002781B4  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 80282438 002781B8  D0 3F 00 AC */	stfs f1, 0xac(r31)
/* 8028243C 002781BC  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 80282440 002781C0  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80282444 002781C4  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 80282448 002781C8  C0 01 01 C4 */	lfs f0, 0x1c4(r1)
/* 8028244C 002781CC  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 80282450 002781D0  C0 01 01 C8 */	lfs f0, 0x1c8(r1)
/* 80282454 002781D4  D0 1F 00 B8 */	stfs f0, 0xb8(r31)
/* 80282458 002781D8  C0 01 01 CC */	lfs f0, 0x1cc(r1)
/* 8028245C 002781DC  D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 80282460 002781E0  C0 01 01 D0 */	lfs f0, 0x1d0(r1)
/* 80282464 002781E4  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 80282468 002781E8  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 8028246C 002781EC  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 80282470 002781F0  C0 01 01 D8 */	lfs f0, 0x1d8(r1)
/* 80282474 002781F4  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 80282478 002781F8  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 8028247C 002781FC  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 80282480 00278200  41 82 00 40 */	beq lbl_802824C0
/* 80282484 00278204  FC 03 48 40 */	fcmpo cr0, f3, f9
/* 80282488 00278208  4C 40 13 82 */	cror 2, 0, 2
/* 8028248C 0027820C  40 82 00 14 */	bne lbl_802824A0
/* 80282490 00278210  3C 00 7F 80 */	lis r0, 0x7f80
/* 80282494 00278214  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80282498 00278218  C1 21 00 1C */	lfs f9, 0x1c(r1)
/* 8028249C 0027821C  48 00 00 24 */	b lbl_802824C0
lbl_802824A0:
/* 802824A0 00278220  FC 20 18 34 */	frsqrte f1, f3
/* 802824A4 00278224  C0 42 A9 CC */	lfs f2, lbl_805A3CEC-_SDA2_BASE_(r2)
/* 802824A8 00278228  C0 02 A9 D4 */	lfs f0, lbl_805A3CF4-_SDA2_BASE_(r2)
/* 802824AC 0027822C  FC 80 08 18 */	frsp f4, f1
/* 802824B0 00278230  EC 23 01 32 */	fmuls f1, f3, f4
/* 802824B4 00278234  EC 42 01 32 */	fmuls f2, f2, f4
/* 802824B8 00278238  EC 04 00 7C */	fnmsubs f0, f4, f1, f0
/* 802824BC 0027823C  ED 22 00 32 */	fmuls f9, f2, f0
lbl_802824C0:
/* 802824C0 00278240  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 802824C4 00278244  C0 9F 00 B0 */	lfs f4, 0xb0(r31)
/* 802824C8 00278248  EC 03 00 F2 */	fmuls f0, f3, f3
/* 802824CC 0027824C  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 802824D0 00278250  C0 E1 00 B0 */	lfs f7, 0xb0(r1)
/* 802824D4 00278254  C0 C1 00 B8 */	lfs f6, 0xb8(r1)
/* 802824D8 00278258  EC 04 01 3A */	fmadds f0, f4, f4, f0
/* 802824DC 0027825C  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 802824E0 00278260  ED 07 02 72 */	fmuls f8, f7, f9
/* 802824E4 00278264  C0 A1 00 BC */	lfs f5, 0xbc(r1)
/* 802824E8 00278268  EC E1 02 72 */	fmuls f7, f1, f9
/* 802824EC 0027826C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 802824F0 00278270  ED 42 00 BA */	fmadds f10, f2, f2, f0
/* 802824F4 00278274  C1 62 A9 D0 */	lfs f11, lbl_805A3CF0-_SDA2_BASE_(r2)
/* 802824F8 00278278  EC C6 02 72 */	fmuls f6, f6, f9
/* 802824FC 0027827C  D1 01 00 B0 */	stfs f8, 0xb0(r1)
/* 80282500 00278280  EC 05 02 72 */	fmuls f0, f5, f9
/* 80282504 00278284  FC 0A 58 00 */	fcmpu cr0, f10, f11
/* 80282508 00278288  D0 E1 00 B4 */	stfs f7, 0xb4(r1)
/* 8028250C 0027828C  D0 C1 00 B8 */	stfs f6, 0xb8(r1)
/* 80282510 00278290  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80282514 00278294  D0 81 00 A0 */	stfs f4, 0xa0(r1)
/* 80282518 00278298  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 8028251C 0027829C  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80282520 002782A0  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80282524 002782A4  41 82 00 40 */	beq lbl_80282564
/* 80282528 002782A8  FC 0A 58 40 */	fcmpo cr0, f10, f11
/* 8028252C 002782AC  4C 40 13 82 */	cror 2, 0, 2
/* 80282530 002782B0  40 82 00 14 */	bne lbl_80282544
/* 80282534 002782B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80282538 002782B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8028253C 002782BC  C1 61 00 18 */	lfs f11, 0x18(r1)
/* 80282540 002782C0  48 00 00 24 */	b lbl_80282564
lbl_80282544:
/* 80282544 002782C4  FC 20 50 34 */	frsqrte f1, f10
/* 80282548 002782C8  C0 42 A9 CC */	lfs f2, lbl_805A3CEC-_SDA2_BASE_(r2)
/* 8028254C 002782CC  C0 02 A9 D4 */	lfs f0, lbl_805A3CF4-_SDA2_BASE_(r2)
/* 80282550 002782D0  FC 60 08 18 */	frsp f3, f1
/* 80282554 002782D4  EC 2A 00 F2 */	fmuls f1, f10, f3
/* 80282558 002782D8  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8028255C 002782DC  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 80282560 002782E0  ED 62 00 32 */	fmuls f11, f2, f0
lbl_80282564:
/* 80282564 002782E4  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 80282568 002782E8  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 8028256C 002782EC  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80282570 002782F0  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80282574 002782F4  C0 E1 00 A0 */	lfs f7, 0xa0(r1)
/* 80282578 002782F8  C0 C1 00 A8 */	lfs f6, 0xa8(r1)
/* 8028257C 002782FC  EC 04 01 3A */	fmadds f0, f4, f4, f0
/* 80282580 00278300  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 80282584 00278304  ED 07 02 F2 */	fmuls f8, f7, f11
/* 80282588 00278308  C0 A1 00 AC */	lfs f5, 0xac(r1)
/* 8028258C 0027830C  EC E1 02 F2 */	fmuls f7, f1, f11
/* 80282590 00278310  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80282594 00278314  ED 22 00 BA */	fmadds f9, f2, f2, f0
/* 80282598 00278318  C1 82 A9 D0 */	lfs f12, lbl_805A3CF0-_SDA2_BASE_(r2)
/* 8028259C 0027831C  EC C6 02 F2 */	fmuls f6, f6, f11
/* 802825A0 00278320  D1 01 00 A0 */	stfs f8, 0xa0(r1)
/* 802825A4 00278324  EC 05 02 F2 */	fmuls f0, f5, f11
/* 802825A8 00278328  FC 09 60 00 */	fcmpu cr0, f9, f12
/* 802825AC 0027832C  D0 E1 00 A4 */	stfs f7, 0xa4(r1)
/* 802825B0 00278330  D0 C1 00 A8 */	stfs f6, 0xa8(r1)
/* 802825B4 00278334  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 802825B8 00278338  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 802825BC 0027833C  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 802825C0 00278340  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 802825C4 00278344  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 802825C8 00278348  41 82 00 40 */	beq lbl_80282608
/* 802825CC 0027834C  FC 09 60 40 */	fcmpo cr0, f9, f12
/* 802825D0 00278350  4C 40 13 82 */	cror 2, 0, 2
/* 802825D4 00278354  40 82 00 14 */	bne lbl_802825E8
/* 802825D8 00278358  3C 00 7F 80 */	lis r0, 0x7f80
/* 802825DC 0027835C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802825E0 00278360  C1 81 00 14 */	lfs f12, 0x14(r1)
/* 802825E4 00278364  48 00 00 24 */	b lbl_80282608
lbl_802825E8:
/* 802825E8 00278368  FC 20 48 34 */	frsqrte f1, f9
/* 802825EC 0027836C  C0 42 A9 CC */	lfs f2, lbl_805A3CEC-_SDA2_BASE_(r2)
/* 802825F0 00278370  C0 02 A9 D4 */	lfs f0, lbl_805A3CF4-_SDA2_BASE_(r2)
/* 802825F4 00278374  FC 60 08 18 */	frsp f3, f1
/* 802825F8 00278378  EC 29 00 F2 */	fmuls f1, f9, f3
/* 802825FC 0027837C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80282600 00278380  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 80282604 00278384  ED 82 00 32 */	fmuls f12, f2, f0
lbl_80282608:
/* 80282608 00278388  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8028260C 0027838C  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 80282610 00278390  ED 00 03 32 */	fmuls f8, f0, f12
/* 80282614 00278394  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80282618 00278398  C0 81 00 A0 */	lfs f4, 0xa0(r1)
/* 8028261C 0027839C  ED 41 03 32 */	fmuls f10, f1, f12
/* 80282620 002783A0  ED 20 03 32 */	fmuls f9, f0, f12
/* 80282624 002783A4  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 80282628 002783A8  EC 24 02 32 */	fmuls f1, f4, f8
/* 8028262C 002783AC  C0 A1 00 A4 */	lfs f5, 0xa4(r1)
/* 80282630 002783B0  EC C2 02 72 */	fmuls f6, f2, f9
/* 80282634 002783B4  C0 62 A9 D0 */	lfs f3, lbl_805A3CF0-_SDA2_BASE_(r2)
/* 80282638 002783B8  EC 05 02 B2 */	fmuls f0, f5, f10
/* 8028263C 002783BC  C0 E1 00 9C */	lfs f7, 0x9c(r1)
/* 80282640 002783C0  ED 62 0A B8 */	fmsubs f11, f2, f10, f1
/* 80282644 002783C4  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 80282648 002783C8  EC C5 32 38 */	fmsubs f6, f5, f8, f6
/* 8028264C 002783CC  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80282650 002783D0  EC A4 02 78 */	fmsubs f5, f4, f9, f0
/* 80282654 002783D4  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80282658 002783D8  EC 42 02 F2 */	fmuls f2, f2, f11
/* 8028265C 002783DC  D1 41 00 90 */	stfs f10, 0x90(r1)
/* 80282660 002783E0  EC 87 03 32 */	fmuls f4, f7, f12
/* 80282664 002783E4  D1 21 00 94 */	stfs f9, 0x94(r1)
/* 80282668 002783E8  EC 21 11 BA */	fmadds f1, f1, f6, f2
/* 8028266C 002783EC  D1 01 00 98 */	stfs f8, 0x98(r1)
/* 80282670 002783F0  EC E0 09 7A */	fmadds f7, f0, f5, f1
/* 80282674 002783F4  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 80282678 002783F8  D0 C1 00 80 */	stfs f6, 0x80(r1)
/* 8028267C 002783FC  FC 07 18 40 */	fcmpo cr0, f7, f3
/* 80282680 00278400  D1 61 00 84 */	stfs f11, 0x84(r1)
/* 80282684 00278404  D0 A1 00 88 */	stfs f5, 0x88(r1)
/* 80282688 00278408  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 8028268C 0027840C  40 80 00 38 */	bge lbl_802826C4
/* 80282690 00278410  C0 82 A9 D8 */	lfs f4, lbl_805A3CF8-_SDA2_BASE_(r2)
/* 80282694 00278414  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80282698 00278418  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 8028269C 0027841C  EC 60 01 32 */	fmuls f3, f0, f4
/* 802826A0 00278420  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 802826A4 00278424  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 802826A8 00278428  EC 42 01 32 */	fmuls f2, f2, f4
/* 802826AC 0027842C  EC 21 01 32 */	fmuls f1, f1, f4
/* 802826B0 00278430  EC 00 01 32 */	fmuls f0, f0, f4
/* 802826B4 00278434  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 802826B8 00278438  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 802826BC 0027843C  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 802826C0 00278440  D0 01 00 BC */	stfs f0, 0xbc(r1)
lbl_802826C4:
/* 802826C4 00278444  C0 02 A9 D0 */	lfs f0, lbl_805A3CF0-_SDA2_BASE_(r2)
/* 802826C8 00278448  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 802826CC 0027844C  7C 00 00 26 */	mfcr r0
/* 802826D0 00278450  C1 61 00 B0 */	lfs f11, 0xb0(r1)
/* 802826D4 00278454  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802826D8 00278458  C1 41 00 B4 */	lfs f10, 0xb4(r1)
/* 802826DC 0027845C  98 1F 00 32 */	stb r0, 0x32(r31)
/* 802826E0 00278460  38 61 00 50 */	addi r3, r1, 0x50
/* 802826E4 00278464  C1 21 00 B8 */	lfs f9, 0xb8(r1)
/* 802826E8 00278468  38 81 01 20 */	addi r4, r1, 0x120
/* 802826EC 0027846C  C1 01 00 BC */	lfs f8, 0xbc(r1)
/* 802826F0 00278470  C0 E1 00 A0 */	lfs f7, 0xa0(r1)
/* 802826F4 00278474  C0 C1 00 A4 */	lfs f6, 0xa4(r1)
/* 802826F8 00278478  C0 A1 00 A8 */	lfs f5, 0xa8(r1)
/* 802826FC 0027847C  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 80282700 00278480  C0 61 00 90 */	lfs f3, 0x90(r1)
/* 80282704 00278484  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80282708 00278488  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 8028270C 0027848C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80282710 00278490  D1 61 01 20 */	stfs f11, 0x120(r1)
/* 80282714 00278494  D1 41 01 24 */	stfs f10, 0x124(r1)
/* 80282718 00278498  D1 21 01 28 */	stfs f9, 0x128(r1)
/* 8028271C 0027849C  D1 01 01 2C */	stfs f8, 0x12c(r1)
/* 80282720 002784A0  D0 E1 01 30 */	stfs f7, 0x130(r1)
/* 80282724 002784A4  D0 C1 01 34 */	stfs f6, 0x134(r1)
/* 80282728 002784A8  D0 A1 01 38 */	stfs f5, 0x138(r1)
/* 8028272C 002784AC  D0 81 01 3C */	stfs f4, 0x13c(r1)
/* 80282730 002784B0  D0 61 01 40 */	stfs f3, 0x140(r1)
/* 80282734 002784B4  D0 41 01 44 */	stfs f2, 0x144(r1)
/* 80282738 002784B8  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 8028273C 002784BC  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 80282740 002784C0  48 00 31 CD */	bl hkQuaternion$7set
/* 80282744 002784C4  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80282748 002784C8  C0 A2 A9 D0 */	lfs f5, lbl_805A3CF0-_SDA2_BASE_(r2)
/* 8028274C 002784CC  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 80282750 002784D0  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80282754 002784D4  EC 01 00 72 */	fmuls f0, f1, f1
/* 80282758 002784D8  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 8028275C 002784DC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80282760 002784E0  EC 02 00 BA */	fmadds f0, f2, f2, f0
/* 80282764 002784E4  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80282768 002784E8  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 8028276C 002784EC  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80282770 002784F0  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80282774 002784F4  EC 81 00 7A */	fmadds f4, f1, f1, f0
/* 80282778 002784F8  FC 04 28 00 */	fcmpu cr0, f4, f5
/* 8028277C 002784FC  41 82 00 40 */	beq lbl_802827BC
/* 80282780 00278500  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 80282784 00278504  4C 40 13 82 */	cror 2, 0, 2
/* 80282788 00278508  40 82 00 14 */	bne lbl_8028279C
/* 8028278C 0027850C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80282790 00278510  90 01 00 10 */	stw r0, 0x10(r1)
/* 80282794 00278514  C0 A1 00 10 */	lfs f5, 0x10(r1)
/* 80282798 00278518  48 00 00 24 */	b lbl_802827BC
lbl_8028279C:
/* 8028279C 0027851C  FC 20 20 34 */	frsqrte f1, f4
/* 802827A0 00278520  C0 42 A9 CC */	lfs f2, lbl_805A3CEC-_SDA2_BASE_(r2)
/* 802827A4 00278524  C0 02 A9 D4 */	lfs f0, lbl_805A3CF4-_SDA2_BASE_(r2)
/* 802827A8 00278528  FC 60 08 18 */	frsp f3, f1
/* 802827AC 0027852C  EC 24 00 F2 */	fmuls f1, f4, f3
/* 802827B0 00278530  EC 42 00 F2 */	fmuls f2, f2, f3
/* 802827B4 00278534  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 802827B8 00278538  EC A2 00 32 */	fmuls f5, f2, f0
lbl_802827BC:
/* 802827BC 0027853C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 802827C0 00278540  38 61 00 F0 */	addi r3, r1, 0xf0
/* 802827C4 00278544  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 802827C8 00278548  38 81 00 70 */	addi r4, r1, 0x70
/* 802827CC 0027854C  EC 80 01 72 */	fmuls f4, f0, f5
/* 802827D0 00278550  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 802827D4 00278554  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 802827D8 00278558  EC 62 01 72 */	fmuls f3, f2, f5
/* 802827DC 0027855C  EC 41 01 72 */	fmuls f2, f1, f5
/* 802827E0 00278560  EC 20 01 72 */	fmuls f1, f0, f5
/* 802827E4 00278564  FC 00 20 50 */	fneg f0, f4
/* 802827E8 00278568  D0 9F 00 10 */	stfs f4, 0x10(r31)
/* 802827EC 0027856C  D0 7F 00 14 */	stfs f3, 0x14(r31)
/* 802827F0 00278570  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 802827F4 00278574  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 802827F8 00278578  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 802827FC 0027857C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80282800 00278580  FC 00 00 50 */	fneg f0, f0
/* 80282804 00278584  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80282808 00278588  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8028280C 0027858C  FC 00 00 50 */	fneg f0, f0
/* 80282810 00278590  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80282814 00278594  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80282818 00278598  48 00 32 55 */	bl hkRotation$7set
/* 8028281C 0027859C  38 7F 00 40 */	addi r3, r31, 0x40
/* 80282820 002785A0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80282824 002785A4  38 A1 02 10 */	addi r5, r1, 0x210
/* 80282828 002785A8  48 00 04 AD */	bl hkMatrix3$7setMul
/* 8028282C 002785AC  C0 A2 A9 DC */	lfs f5, lbl_805A3CFC-_SDA2_BASE_(r2)
/* 80282830 002785B0  38 BF 00 40 */	addi r5, r31, 0x40
/* 80282834 002785B4  C0 C2 A9 D0 */	lfs f6, lbl_805A3CF0-_SDA2_BASE_(r2)
/* 80282838 002785B8  C0 02 A9 E0 */	lfs f0, lbl_805A3D00-_SDA2_BASE_(r2)
/* 8028283C 002785BC  C1 3F 00 68 */	lfs f9, 0x68(r31)
/* 80282840 002785C0  EC 26 28 28 */	fsubs f1, f6, f5
/* 80282844 002785C4  C1 1F 00 54 */	lfs f8, 0x54(r31)
/* 80282848 002785C8  C0 FF 00 40 */	lfs f7, 0x40(r31)
/* 8028284C 002785CC  EC 49 28 28 */	fsubs f2, f9, f5
/* 80282850 002785D0  EC 68 28 28 */	fsubs f3, f8, f5
/* 80282854 002785D4  D1 1F 00 24 */	stfs f8, 0x24(r31)
/* 80282858 002785D8  FD 40 0A 10 */	fabs f10, f1
/* 8028285C 002785DC  EC 87 28 28 */	fsubs f4, f7, f5
/* 80282860 002785E0  D0 FF 00 20 */	stfs f7, 0x20(r31)
/* 80282864 002785E4  FC 60 1A 10 */	fabs f3, f3
/* 80282868 002785E8  FD 40 50 18 */	frsp f10, f10
/* 8028286C 002785EC  D1 3F 00 28 */	stfs f9, 0x28(r31)
/* 80282870 002785F0  FC 20 22 10 */	fabs f1, f4
/* 80282874 002785F4  FC 40 12 10 */	fabs f2, f2
/* 80282878 002785F8  D0 DF 00 2C */	stfs f6, 0x2c(r31)
/* 8028287C 002785FC  FC 60 18 18 */	frsp f3, f3
/* 80282880 00278600  FC 20 08 18 */	frsp f1, f1
/* 80282884 00278604  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 80282888 00278608  FC 40 10 18 */	frsp f2, f2
/* 8028288C 0027860C  FC 00 50 40 */	fcmpo cr0, f0, f10
/* 80282890 00278610  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 80282894 00278614  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 80282898 00278618  D0 A1 00 6C */	stfs f5, 0x6c(r1)
/* 8028289C 0027861C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 802828A0 00278620  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 802828A4 00278624  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 802828A8 00278628  D1 41 00 3C */	stfs f10, 0x3c(r1)
/* 802828AC 0027862C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 802828B0 00278630  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 802828B4 00278634  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802828B8 00278638  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802828BC 0027863C  7C E0 00 26 */	mfcr r7
/* 802828C0 00278640  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802828C4 00278644  54 E7 0F FE */	srwi r7, r7, 0x1f
/* 802828C8 00278648  7C 00 00 26 */	mfcr r0
/* 802828CC 0027864C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802828D0 00278650  54 06 17 BC */	rlwinm r6, r0, 2, 0x1e, 0x1e
/* 802828D4 00278654  7C 00 00 26 */	mfcr r0
/* 802828D8 00278658  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802828DC 0027865C  54 03 27 38 */	rlwinm r3, r0, 4, 0x1c, 0x1c
/* 802828E0 00278660  7C 00 00 26 */	mfcr r0
/* 802828E4 00278664  EC 45 48 24 */	fdivs f2, f5, f9
/* 802828E8 00278668  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 802828EC 0027866C  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 802828F0 00278670  7C 60 03 78 */	or r0, r3, r0
/* 802828F4 00278674  38 81 00 C0 */	addi r4, r1, 0xc0
/* 802828F8 00278678  7C C0 03 78 */	or r0, r6, r0
/* 802828FC 0027867C  7C E0 03 78 */	or r0, r7, r0
/* 80282900 00278680  EC 25 40 24 */	fdivs f1, f5, f8
/* 80282904 00278684  54 00 07 3C */	rlwinm r0, r0, 0, 0x1c, 0x1e
/* 80282908 00278688  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 8028290C 0027868C  7C 00 00 34 */	cntlzw r0, r0
/* 80282910 00278690  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80282914 00278694  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 80282918 00278698  7C 03 07 74 */	extsb r3, r0
/* 8028291C 0027869C  EC 05 38 24 */	fdivs f0, f5, f7
/* 80282920 002786A0  7C 03 00 D0 */	neg r0, r3
/* 80282924 002786A4  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 80282928 002786A8  7C 00 1B 78 */	or r0, r0, r3
/* 8028292C 002786AC  38 7F 00 70 */	addi r3, r31, 0x70
/* 80282930 002786B0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80282934 002786B4  7C 00 00 34 */	cntlzw r0, r0
/* 80282938 002786B8  54 00 D9 7E */	srwi r0, r0, 5
/* 8028293C 002786BC  98 1F 00 30 */	stb r0, 0x30(r31)
/* 80282940 002786C0  D0 C1 00 C4 */	stfs f6, 0xc4(r1)
/* 80282944 002786C4  D0 C1 00 C8 */	stfs f6, 0xc8(r1)
/* 80282948 002786C8  D0 C1 00 CC */	stfs f6, 0xcc(r1)
/* 8028294C 002786CC  D0 C1 00 D0 */	stfs f6, 0xd0(r1)
/* 80282950 002786D0  D0 C1 00 D8 */	stfs f6, 0xd8(r1)
/* 80282954 002786D4  D0 C1 00 DC */	stfs f6, 0xdc(r1)
/* 80282958 002786D8  D0 C1 00 E0 */	stfs f6, 0xe0(r1)
/* 8028295C 002786DC  D0 C1 00 E4 */	stfs f6, 0xe4(r1)
/* 80282960 002786E0  D0 C1 00 EC */	stfs f6, 0xec(r1)
/* 80282964 002786E4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80282968 002786E8  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 8028296C 002786EC  D0 41 00 E8 */	stfs f2, 0xe8(r1)
/* 80282970 002786F0  48 00 03 65 */	bl hkMatrix3$7setMul
/* 80282974 002786F4  3C 80 80 48 */	lis r4, lbl_804864F0@ha
/* 80282978 002786F8  C0 22 A9 E0 */	lfs f1, lbl_805A3D00-_SDA2_BASE_(r2)
/* 8028297C 002786FC  38 7F 00 70 */	addi r3, r31, 0x70
/* 80282980 00278700  38 84 64 F0 */	addi r4, r4, lbl_804864F0@l
/* 80282984 00278704  48 00 08 FD */	bl hkMatrix3$7isApproximatelyEqual
/* 80282988 00278708  54 60 46 3E */	srwi r0, r3, 0x18
/* 8028298C 0027870C  7C 03 07 74 */	extsb r3, r0
/* 80282990 00278710  7C 03 00 D0 */	neg r0, r3
/* 80282994 00278714  7C 00 1B 78 */	or r0, r0, r3
/* 80282998 00278718  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8028299C 0027871C  7C 00 00 34 */	cntlzw r0, r0
/* 802829A0 00278720  54 00 D9 7E */	srwi r0, r0, 5
/* 802829A4 00278724  98 1F 00 31 */	stb r0, 0x31(r31)
/* 802829A8 00278728  81 41 00 00 */	lwz r10, 0(r1)
/* 802829AC 0027872C  7D 4B 53 78 */	mr r11, r10
/* 802829B0 00278730  48 16 E9 BD */	bl _restgpr_27
/* 802829B4 00278734  80 0A 00 04 */	lwz r0, 4(r10)
/* 802829B8 00278738  7C 08 03 A6 */	mtlr r0
/* 802829BC 0027873C  7D 41 53 78 */	mr r1, r10
/* 802829C0 00278740  4E 80 00 20 */	blr 

