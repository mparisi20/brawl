.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TMCC_JPEGDEC_make_huffdec
TMCC_JPEGDEC_make_huffdec:
/* 80260AA4 00256824  94 21 F7 C0 */	stwu r1, -0x840(r1)
/* 80260AA8 00256828  7C 08 02 A6 */	mflr r0
/* 80260AAC 0025682C  38 C0 00 01 */	li r6, 1
/* 80260AB0 00256830  38 E0 00 01 */	li r7, 1
/* 80260AB4 00256834  90 01 08 44 */	stw r0, 0x844(r1)
/* 80260AB8 00256838  BE 81 08 10 */	stmw r20, 0x810(r1)
/* 80260ABC 0025683C  7C 7A 1B 78 */	mr r26, r3
/* 80260AC0 00256840  7C 9B 23 78 */	mr r27, r4
/* 80260AC4 00256844  38 81 04 08 */	addi r4, r1, 0x408
/* 80260AC8 00256848  38 63 00 01 */	addi r3, r3, 1
/* 80260ACC 0025684C  83 E5 00 00 */	lwz r31, 0(r5)
/* 80260AD0 00256850  83 C5 00 04 */	lwz r30, 4(r5)
/* 80260AD4 00256854  83 A5 00 08 */	lwz r29, 8(r5)
/* 80260AD8 00256858  8B 85 00 0C */	lbz r28, 0xc(r5)
/* 80260ADC 0025685C  38 A0 00 00 */	li r5, 0
lbl_80260AE0:
/* 80260AE0 00256860  88 03 00 00 */	lbz r0, 0(r3)
/* 80260AE4 00256864  7C 07 00 00 */	cmpw r7, r0
/* 80260AE8 00256868  40 81 00 2C */	ble lbl_80260B14
/* 80260AEC 0025686C  38 C6 00 01 */	addi r6, r6, 1
/* 80260AF0 00256870  38 E0 00 01 */	li r7, 1
/* 80260AF4 00256874  2C 06 00 10 */	cmpwi r6, 0x10
/* 80260AF8 00256878  38 63 00 01 */	addi r3, r3, 1
/* 80260AFC 0025687C  40 81 FF E4 */	ble lbl_80260AE0
/* 80260B00 00256880  54 A0 10 3A */	slwi r0, r5, 2
/* 80260B04 00256884  38 E1 04 08 */	addi r7, r1, 0x408
/* 80260B08 00256888  38 60 00 00 */	li r3, 0
/* 80260B0C 0025688C  7C 67 01 2E */	stwx r3, r7, r0
/* 80260B10 00256890  48 00 00 28 */	b lbl_80260B38
lbl_80260B14:
/* 80260B14 00256894  38 A5 00 01 */	addi r5, r5, 1
/* 80260B18 00256898  90 C4 00 00 */	stw r6, 0(r4)
/* 80260B1C 0025689C  7C 05 E0 00 */	cmpw r5, r28
/* 80260B20 002568A0  38 84 00 04 */	addi r4, r4, 4
/* 80260B24 002568A4  40 81 00 0C */	ble lbl_80260B30
/* 80260B28 002568A8  38 60 FF C0 */	li r3, -64
/* 80260B2C 002568AC  48 00 02 84 */	b lbl_80260DB0
lbl_80260B30:
/* 80260B30 002568B0  38 E7 00 01 */	addi r7, r7, 1
/* 80260B34 002568B4  4B FF FF AC */	b lbl_80260AE0
lbl_80260B38:
/* 80260B38 002568B8  80 01 04 08 */	lwz r0, 0x408(r1)
/* 80260B3C 002568BC  38 C1 00 08 */	addi r6, r1, 8
/* 80260B40 002568C0  39 20 00 00 */	li r9, 0
/* 80260B44 002568C4  39 00 00 00 */	li r8, 0
/* 80260B48 002568C8  54 0A 06 3E */	clrlwi r10, r0, 0x18
/* 80260B4C 002568CC  38 80 00 01 */	li r4, 1
/* 80260B50 002568D0  48 00 00 58 */	b lbl_80260BA8
lbl_80260B54:
/* 80260B54 002568D4  55 45 06 3E */	clrlwi r5, r10, 0x18
/* 80260B58 002568D8  55 03 10 3A */	slwi r3, r8, 2
/* 80260B5C 002568DC  48 00 00 1C */	b lbl_80260B78
lbl_80260B60:
/* 80260B60 002568E0  55 20 04 3E */	clrlwi r0, r9, 0x10
/* 80260B64 002568E4  38 E7 00 04 */	addi r7, r7, 4
/* 80260B68 002568E8  7C 06 19 2E */	stwx r0, r6, r3
/* 80260B6C 002568EC  39 08 00 01 */	addi r8, r8, 1
/* 80260B70 002568F0  38 63 00 04 */	addi r3, r3, 4
/* 80260B74 002568F4  39 29 00 01 */	addi r9, r9, 1
lbl_80260B78:
/* 80260B78 002568F8  80 07 00 00 */	lwz r0, 0(r7)
/* 80260B7C 002568FC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80260B80 00256900  7C 05 00 40 */	cmplw r5, r0
/* 80260B84 00256904  41 82 FF DC */	beq lbl_80260B60
/* 80260B88 00256908  55 23 04 3E */	clrlwi r3, r9, 0x10
/* 80260B8C 0025690C  7C 80 28 30 */	slw r0, r4, r5
/* 80260B90 00256910  7C 03 00 00 */	cmpw r3, r0
/* 80260B94 00256914  41 80 00 0C */	blt lbl_80260BA0
/* 80260B98 00256918  38 60 FF C0 */	li r3, -64
/* 80260B9C 0025691C  48 00 02 14 */	b lbl_80260DB0
lbl_80260BA0:
/* 80260BA0 00256920  55 29 0C 3C */	rlwinm r9, r9, 1, 0x10, 0x1e
/* 80260BA4 00256924  39 4A 00 01 */	addi r10, r10, 1
lbl_80260BA8:
/* 80260BA8 00256928  80 07 00 00 */	lwz r0, 0(r7)
/* 80260BAC 0025692C  2C 00 00 00 */	cmpwi r0, 0
/* 80260BB0 00256930  40 82 FF A4 */	bne lbl_80260B54
/* 80260BB4 00256934  7F C3 F3 78 */	mr r3, r30
/* 80260BB8 00256938  38 80 00 00 */	li r4, 0
/* 80260BBC 0025693C  38 A0 00 44 */	li r5, 0x44
/* 80260BC0 00256940  4B DA 38 7D */	bl func_8000443C
/* 80260BC4 00256944  38 81 04 08 */	addi r4, r1, 0x408
/* 80260BC8 00256948  38 A1 00 08 */	addi r5, r1, 8
/* 80260BCC 0025694C  38 C0 00 00 */	li r6, 0
/* 80260BD0 00256950  7F 89 03 A6 */	mtctr r28
/* 80260BD4 00256954  2C 1C 00 00 */	cmpwi r28, 0
/* 80260BD8 00256958  40 81 00 34 */	ble lbl_80260C0C
lbl_80260BDC:
/* 80260BDC 0025695C  80 04 00 00 */	lwz r0, 0(r4)
/* 80260BE0 00256960  28 00 00 10 */	cmplwi r0, 0x10
/* 80260BE4 00256964  41 81 00 18 */	bgt lbl_80260BFC
/* 80260BE8 00256968  54 03 10 3A */	slwi r3, r0, 2
/* 80260BEC 0025696C  80 05 00 00 */	lwz r0, 0(r5)
/* 80260BF0 00256970  7C 7E 1A 14 */	add r3, r30, r3
/* 80260BF4 00256974  B0 C3 00 02 */	sth r6, 2(r3)
/* 80260BF8 00256978  B0 03 00 00 */	sth r0, 0(r3)
lbl_80260BFC:
/* 80260BFC 0025697C  38 84 00 04 */	addi r4, r4, 4
/* 80260C00 00256980  38 A5 00 04 */	addi r5, r5, 4
/* 80260C04 00256984  38 C6 00 01 */	addi r6, r6, 1
/* 80260C08 00256988  42 00 FF D4 */	bdnz lbl_80260BDC
lbl_80260C0C:
/* 80260C0C 0025698C  38 81 00 08 */	addi r4, r1, 8
/* 80260C10 00256990  39 9A 00 01 */	addi r12, r26, 1
/* 80260C14 00256994  38 C0 00 00 */	li r6, 0
/* 80260C18 00256998  38 E0 00 01 */	li r7, 1
/* 80260C1C 0025699C  3C 60 80 00 */	lis r3, 0x8000
lbl_80260C20:
/* 80260C20 002569A0  20 07 00 08 */	subfic r0, r7, 8
/* 80260C24 002569A4  39 00 00 01 */	li r8, 1
/* 80260C28 002569A8  7D 05 00 30 */	slw r5, r8, r0
/* 80260C2C 002569AC  48 00 01 54 */	b lbl_80260D80
lbl_80260C30:
/* 80260C30 002569B0  81 44 00 00 */	lwz r10, 0(r4)
/* 80260C34 002569B4  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 80260C38 002569B8  7C A9 2B 78 */	mr r9, r5
/* 80260C3C 002569BC  7D 4A 00 30 */	slw r10, r10, r0
/* 80260C40 002569C0  40 85 01 34 */	ble cr1, lbl_80260D74
/* 80260C44 002569C4  2C 05 00 08 */	cmpwi r5, 8
/* 80260C48 002569C8  40 81 01 00 */	ble lbl_80260D48
/* 80260C4C 002569CC  3A A0 00 00 */	li r21, 0
/* 80260C50 002569D0  41 84 00 14 */	blt cr1, lbl_80260C64
/* 80260C54 002569D4  39 63 00 01 */	addi r11, r3, 1
/* 80260C58 002569D8  7C 05 58 00 */	cmpw r5, r11
/* 80260C5C 002569DC  41 80 00 08 */	blt lbl_80260C64
/* 80260C60 002569E0  3A A0 00 01 */	li r21, 1
lbl_80260C64:
/* 80260C64 002569E4  2C 15 00 00 */	cmpwi r21, 0
/* 80260C68 002569E8  41 82 00 E0 */	beq lbl_80260D48
/* 80260C6C 002569EC  39 65 FF FF */	addi r11, r5, -1
/* 80260C70 002569F0  55 5A 10 3A */	slwi r26, r10, 2
/* 80260C74 002569F4  55 6B E8 FE */	srwi r11, r11, 3
/* 80260C78 002569F8  7D 69 03 A6 */	mtctr r11
/* 80260C7C 002569FC  2C 05 00 08 */	cmpwi r5, 8
/* 80260C80 00256A00  40 81 00 C8 */	ble lbl_80260D48
lbl_80260C84:
/* 80260C84 00256A04  7C FF D3 2E */	sthx r7, r31, r26
/* 80260C88 00256A08  7F 3F D2 14 */	add r25, r31, r26
/* 80260C8C 00256A0C  39 6A 00 01 */	addi r11, r10, 1
/* 80260C90 00256A10  3A CA 00 02 */	addi r22, r10, 2
/* 80260C94 00256A14  7F 1B 30 AE */	lbzx r24, r27, r6
/* 80260C98 00256A18  55 75 10 3A */	slwi r21, r11, 2
/* 80260C9C 00256A1C  39 6A 00 03 */	addi r11, r10, 3
/* 80260CA0 00256A20  3B CA 00 06 */	addi r30, r10, 6
/* 80260CA4 00256A24  B3 19 00 02 */	sth r24, 2(r25)
/* 80260CA8 00256A28  55 77 10 3A */	slwi r23, r11, 2
/* 80260CAC 00256A2C  39 6A 00 04 */	addi r11, r10, 4
/* 80260CB0 00256A30  7E 9F AA 14 */	add r20, r31, r21
/* 80260CB4 00256A34  7C FF AB 2E */	sthx r7, r31, r21
/* 80260CB8 00256A38  55 78 10 3A */	slwi r24, r11, 2
/* 80260CBC 00256A3C  39 6A 00 05 */	addi r11, r10, 5
/* 80260CC0 00256A40  56 D6 10 3A */	slwi r22, r22, 2
/* 80260CC4 00256A44  7E BB 30 AE */	lbzx r21, r27, r6
/* 80260CC8 00256A48  55 79 10 3A */	slwi r25, r11, 2
/* 80260CCC 00256A4C  39 6A 00 07 */	addi r11, r10, 7
/* 80260CD0 00256A50  57 DE 10 3A */	slwi r30, r30, 2
/* 80260CD4 00256A54  B2 B4 00 02 */	sth r21, 2(r20)
/* 80260CD8 00256A58  7E 9F BA 14 */	add r20, r31, r23
/* 80260CDC 00256A5C  7E BF C2 14 */	add r21, r31, r24
/* 80260CE0 00256A60  55 6B 10 3A */	slwi r11, r11, 2
/* 80260CE4 00256A64  7C F6 FB 6E */	sthux r7, r22, r31
/* 80260CE8 00256A68  7E FF CA 14 */	add r23, r31, r25
/* 80260CEC 00256A6C  7F 3F 5A 14 */	add r25, r31, r11
/* 80260CF0 00256A70  7F 1F F2 14 */	add r24, r31, r30
/* 80260CF4 00256A74  7D 7B 30 AE */	lbzx r11, r27, r6
/* 80260CF8 00256A78  39 4A 00 08 */	addi r10, r10, 8
/* 80260CFC 00256A7C  3B 5A 00 20 */	addi r26, r26, 0x20
/* 80260D00 00256A80  39 29 FF F8 */	addi r9, r9, -8
/* 80260D04 00256A84  B1 76 00 02 */	sth r11, 2(r22)
/* 80260D08 00256A88  B0 F4 00 00 */	sth r7, 0(r20)
/* 80260D0C 00256A8C  7D 7B 30 AE */	lbzx r11, r27, r6
/* 80260D10 00256A90  B1 74 00 02 */	sth r11, 2(r20)
/* 80260D14 00256A94  B0 F5 00 00 */	sth r7, 0(r21)
/* 80260D18 00256A98  7D 7B 30 AE */	lbzx r11, r27, r6
/* 80260D1C 00256A9C  B1 75 00 02 */	sth r11, 2(r21)
/* 80260D20 00256AA0  B0 F7 00 00 */	sth r7, 0(r23)
/* 80260D24 00256AA4  7D 7B 30 AE */	lbzx r11, r27, r6
/* 80260D28 00256AA8  B1 77 00 02 */	sth r11, 2(r23)
/* 80260D2C 00256AAC  7C FF F3 2E */	sthx r7, r31, r30
/* 80260D30 00256AB0  7D 7B 30 AE */	lbzx r11, r27, r6
/* 80260D34 00256AB4  B1 78 00 02 */	sth r11, 2(r24)
/* 80260D38 00256AB8  B0 F9 00 00 */	sth r7, 0(r25)
/* 80260D3C 00256ABC  7D 7B 30 AE */	lbzx r11, r27, r6
/* 80260D40 00256AC0  B1 79 00 02 */	sth r11, 2(r25)
/* 80260D44 00256AC4  42 00 FF 40 */	bdnz lbl_80260C84
lbl_80260D48:
/* 80260D48 00256AC8  55 4A 10 3A */	slwi r10, r10, 2
/* 80260D4C 00256ACC  7D 7F 52 14 */	add r11, r31, r10
/* 80260D50 00256AD0  7D 29 03 A6 */	mtctr r9
/* 80260D54 00256AD4  2C 09 00 00 */	cmpwi r9, 0
/* 80260D58 00256AD8  40 81 00 1C */	ble lbl_80260D74
lbl_80260D5C:
/* 80260D5C 00256ADC  B0 EB 00 00 */	sth r7, 0(r11)
/* 80260D60 00256AE0  39 29 FF FF */	addi r9, r9, -1
/* 80260D64 00256AE4  7D 5B 30 AE */	lbzx r10, r27, r6
/* 80260D68 00256AE8  B1 4B 00 02 */	sth r10, 2(r11)
/* 80260D6C 00256AEC  39 6B 00 04 */	addi r11, r11, 4
/* 80260D70 00256AF0  42 00 FF EC */	bdnz lbl_80260D5C
lbl_80260D74:
/* 80260D74 00256AF4  39 08 00 01 */	addi r8, r8, 1
/* 80260D78 00256AF8  38 84 00 04 */	addi r4, r4, 4
/* 80260D7C 00256AFC  38 C6 00 01 */	addi r6, r6, 1
lbl_80260D80:
/* 80260D80 00256B00  89 2C 00 00 */	lbz r9, 0(r12)
/* 80260D84 00256B04  7C 08 48 00 */	cmpw r8, r9
/* 80260D88 00256B08  40 81 FE A8 */	ble lbl_80260C30
/* 80260D8C 00256B0C  38 E7 00 01 */	addi r7, r7, 1
/* 80260D90 00256B10  39 8C 00 01 */	addi r12, r12, 1
/* 80260D94 00256B14  2C 07 00 08 */	cmpwi r7, 8
/* 80260D98 00256B18  40 81 FE 88 */	ble lbl_80260C20
/* 80260D9C 00256B1C  7F A3 EB 78 */	mr r3, r29
/* 80260DA0 00256B20  7F 64 DB 78 */	mr r4, r27
/* 80260DA4 00256B24  7F 85 E3 78 */	mr r5, r28
/* 80260DA8 00256B28  4B DA 35 91 */	bl memcpy
/* 80260DAC 00256B2C  38 60 00 00 */	li r3, 0
lbl_80260DB0:
/* 80260DB0 00256B30  BA 81 08 10 */	lmw r20, 0x810(r1)
/* 80260DB4 00256B34  80 01 08 44 */	lwz r0, 0x844(r1)
/* 80260DB8 00256B38  7C 08 03 A6 */	mtlr r0
/* 80260DBC 00256B3C  38 21 08 40 */	addi r1, r1, 0x840
/* 80260DC0 00256B40  4E 80 00 20 */	blr 

.global TMCC_JPEGDEC_set_HuffmanTable
TMCC_JPEGDEC_set_HuffmanTable:
/* 80260DC4 00256B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80260DC8 00256B48  7C 08 02 A6 */	mflr r0
/* 80260DCC 00256B4C  2C 04 00 00 */	cmpwi r4, 0
/* 80260DD0 00256B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260DD4 00256B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80260DD8 00256B58  7C DF 33 78 */	mr r31, r6
/* 80260DDC 00256B5C  40 82 00 C4 */	bne lbl_80260EA0
/* 80260DE0 00256B60  2C 05 00 01 */	cmpwi r5, 1
/* 80260DE4 00256B64  41 82 00 68 */	beq lbl_80260E4C
/* 80260DE8 00256B68  40 80 01 74 */	bge lbl_80260F5C
/* 80260DEC 00256B6C  2C 05 00 00 */	cmpwi r5, 0
/* 80260DF0 00256B70  40 80 00 08 */	bge lbl_80260DF8
/* 80260DF4 00256B74  48 00 01 68 */	b lbl_80260F5C
lbl_80260DF8:
/* 80260DF8 00256B78  39 06 04 60 */	addi r8, r6, 0x460
/* 80260DFC 00256B7C  38 A6 15 70 */	addi r5, r6, 0x1570
/* 80260E00 00256B80  38 E6 14 60 */	addi r7, r6, 0x1460
/* 80260E04 00256B84  90 A3 00 08 */	stw r5, 8(r3)
/* 80260E08 00256B88  38 00 00 01 */	li r0, 1
/* 80260E0C 00256B8C  38 80 00 00 */	li r4, 0
/* 80260E10 00256B90  91 03 00 00 */	stw r8, 0(r3)
/* 80260E14 00256B94  38 A0 04 00 */	li r5, 0x400
/* 80260E18 00256B98  90 E3 00 04 */	stw r7, 4(r3)
/* 80260E1C 00256B9C  7D 03 43 78 */	mr r3, r8
/* 80260E20 00256BA0  98 06 17 94 */	stb r0, 0x1794(r6)
/* 80260E24 00256BA4  4B DA 36 19 */	bl func_8000443C
/* 80260E28 00256BA8  38 7F 15 70 */	addi r3, r31, 0x1570
/* 80260E2C 00256BAC  38 80 00 00 */	li r4, 0
/* 80260E30 00256BB0  38 A0 00 10 */	li r5, 0x10
/* 80260E34 00256BB4  4B DA 36 09 */	bl func_8000443C
/* 80260E38 00256BB8  38 7F 14 60 */	addi r3, r31, 0x1460
/* 80260E3C 00256BBC  38 80 00 00 */	li r4, 0
/* 80260E40 00256BC0  38 A0 00 44 */	li r5, 0x44
/* 80260E44 00256BC4  4B DA 35 F9 */	bl func_8000443C
/* 80260E48 00256BC8  48 00 01 14 */	b lbl_80260F5C
lbl_80260E4C:
/* 80260E4C 00256BCC  39 06 08 60 */	addi r8, r6, 0x860
/* 80260E50 00256BD0  38 A6 15 80 */	addi r5, r6, 0x1580
/* 80260E54 00256BD4  38 E6 14 A4 */	addi r7, r6, 0x14a4
/* 80260E58 00256BD8  90 A3 00 08 */	stw r5, 8(r3)
/* 80260E5C 00256BDC  38 00 00 01 */	li r0, 1
/* 80260E60 00256BE0  38 80 00 00 */	li r4, 0
/* 80260E64 00256BE4  91 03 00 00 */	stw r8, 0(r3)
/* 80260E68 00256BE8  38 A0 04 00 */	li r5, 0x400
/* 80260E6C 00256BEC  90 E3 00 04 */	stw r7, 4(r3)
/* 80260E70 00256BF0  7D 03 43 78 */	mr r3, r8
/* 80260E74 00256BF4  98 06 17 95 */	stb r0, 0x1795(r6)
/* 80260E78 00256BF8  4B DA 35 C5 */	bl func_8000443C
/* 80260E7C 00256BFC  38 7F 15 80 */	addi r3, r31, 0x1580
/* 80260E80 00256C00  38 80 00 00 */	li r4, 0
/* 80260E84 00256C04  38 A0 00 10 */	li r5, 0x10
/* 80260E88 00256C08  4B DA 35 B5 */	bl func_8000443C
/* 80260E8C 00256C0C  38 7F 14 A4 */	addi r3, r31, 0x14a4
/* 80260E90 00256C10  38 80 00 00 */	li r4, 0
/* 80260E94 00256C14  38 A0 00 44 */	li r5, 0x44
/* 80260E98 00256C18  4B DA 35 A5 */	bl func_8000443C
/* 80260E9C 00256C1C  48 00 00 C0 */	b lbl_80260F5C
lbl_80260EA0:
/* 80260EA0 00256C20  2C 05 00 01 */	cmpwi r5, 1
/* 80260EA4 00256C24  41 82 00 68 */	beq lbl_80260F0C
/* 80260EA8 00256C28  40 80 00 B4 */	bge lbl_80260F5C
/* 80260EAC 00256C2C  2C 05 00 00 */	cmpwi r5, 0
/* 80260EB0 00256C30  40 80 00 08 */	bge lbl_80260EB8
/* 80260EB4 00256C34  48 00 00 A8 */	b lbl_80260F5C
lbl_80260EB8:
/* 80260EB8 00256C38  39 06 0C 60 */	addi r8, r6, 0xc60
/* 80260EBC 00256C3C  38 A6 15 90 */	addi r5, r6, 0x1590
/* 80260EC0 00256C40  38 E6 14 E8 */	addi r7, r6, 0x14e8
/* 80260EC4 00256C44  90 A3 00 08 */	stw r5, 8(r3)
/* 80260EC8 00256C48  38 00 00 01 */	li r0, 1
/* 80260ECC 00256C4C  38 80 00 00 */	li r4, 0
/* 80260ED0 00256C50  91 03 00 00 */	stw r8, 0(r3)
/* 80260ED4 00256C54  38 A0 04 00 */	li r5, 0x400
/* 80260ED8 00256C58  90 E3 00 04 */	stw r7, 4(r3)
/* 80260EDC 00256C5C  7D 03 43 78 */	mr r3, r8
/* 80260EE0 00256C60  98 06 17 96 */	stb r0, 0x1796(r6)
/* 80260EE4 00256C64  4B DA 35 59 */	bl func_8000443C
/* 80260EE8 00256C68  38 7F 15 90 */	addi r3, r31, 0x1590
/* 80260EEC 00256C6C  38 80 00 00 */	li r4, 0
/* 80260EF0 00256C70  38 A0 01 00 */	li r5, 0x100
/* 80260EF4 00256C74  4B DA 35 49 */	bl func_8000443C
/* 80260EF8 00256C78  38 7F 14 E8 */	addi r3, r31, 0x14e8
/* 80260EFC 00256C7C  38 80 00 00 */	li r4, 0
/* 80260F00 00256C80  38 A0 00 44 */	li r5, 0x44
/* 80260F04 00256C84  4B DA 35 39 */	bl func_8000443C
/* 80260F08 00256C88  48 00 00 54 */	b lbl_80260F5C
lbl_80260F0C:
/* 80260F0C 00256C8C  39 06 10 60 */	addi r8, r6, 0x1060
/* 80260F10 00256C90  38 A6 16 90 */	addi r5, r6, 0x1690
/* 80260F14 00256C94  38 E6 15 2C */	addi r7, r6, 0x152c
/* 80260F18 00256C98  90 A3 00 08 */	stw r5, 8(r3)
/* 80260F1C 00256C9C  38 00 00 01 */	li r0, 1
/* 80260F20 00256CA0  38 80 00 00 */	li r4, 0
/* 80260F24 00256CA4  91 03 00 00 */	stw r8, 0(r3)
/* 80260F28 00256CA8  38 A0 04 00 */	li r5, 0x400
/* 80260F2C 00256CAC  90 E3 00 04 */	stw r7, 4(r3)
/* 80260F30 00256CB0  7D 03 43 78 */	mr r3, r8
/* 80260F34 00256CB4  98 06 17 97 */	stb r0, 0x1797(r6)
/* 80260F38 00256CB8  4B DA 35 05 */	bl func_8000443C
/* 80260F3C 00256CBC  38 7F 16 90 */	addi r3, r31, 0x1690
/* 80260F40 00256CC0  38 80 00 00 */	li r4, 0
/* 80260F44 00256CC4  38 A0 01 00 */	li r5, 0x100
/* 80260F48 00256CC8  4B DA 34 F5 */	bl func_8000443C
/* 80260F4C 00256CCC  38 7F 15 2C */	addi r3, r31, 0x152c
/* 80260F50 00256CD0  38 80 00 00 */	li r4, 0
/* 80260F54 00256CD4  38 A0 00 44 */	li r5, 0x44
/* 80260F58 00256CD8  4B DA 34 E5 */	bl func_8000443C
lbl_80260F5C:
/* 80260F5C 00256CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80260F60 00256CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80260F64 00256CE4  7C 08 03 A6 */	mtlr r0
/* 80260F68 00256CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80260F6C 00256CEC  4E 80 00 20 */	blr 

