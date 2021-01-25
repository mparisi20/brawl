.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __ieee754_sqrt
__ieee754_sqrt:
/* 80400B48 003F68C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400B4C 003F68CC  D8 21 00 08 */	stfd f1, 8(r1)
/* 80400B50 003F68D0  80 C1 00 08 */	lwz r6, 8(r1)
/* 80400B54 003F68D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80400B58 003F68D8  54 C3 00 56 */	rlwinm r3, r6, 0, 1, 0xb
/* 80400B5C 003F68DC  3C 63 80 10 */	addis r3, r3, 0x8010
/* 80400B60 003F68E0  28 03 00 00 */	cmplwi r3, 0
/* 80400B64 003F68E4  40 82 00 18 */	bne lbl_80400B7C
/* 80400B68 003F68E8  FC 01 00 72 */	fmul f0, f1, f1
/* 80400B6C 003F68EC  38 00 00 21 */	li r0, 0x21
/* 80400B70 003F68F0  90 0D CE C0 */	stw r0, lbl_805A12E0-_SDA_BASE_(r13)
/* 80400B74 003F68F4  FC 21 00 2A */	fadd f1, f1, f0
/* 80400B78 003F68F8  48 00 02 10 */	b lbl_80400D88
lbl_80400B7C:
/* 80400B7C 003F68FC  2C 86 00 00 */	cmpwi cr1, r6, 0
/* 80400B80 003F6900  41 85 00 2C */	bgt cr1, lbl_80400BAC
/* 80400B84 003F6904  54 C3 00 7E */	clrlwi r3, r6, 1
/* 80400B88 003F6908  7C 03 1B 79 */	or. r3, r0, r3
/* 80400B8C 003F690C  40 82 00 08 */	bne lbl_80400B94
/* 80400B90 003F6910  48 00 01 F8 */	b lbl_80400D88
lbl_80400B94:
/* 80400B94 003F6914  40 84 00 18 */	bge cr1, lbl_80400BAC
/* 80400B98 003F6918  38 00 00 21 */	li r0, 0x21
/* 80400B9C 003F691C  3C 60 80 5A */	lis r3, lbl_8059FF68@ha
/* 80400BA0 003F6920  90 0D CE C0 */	stw r0, lbl_805A12E0-_SDA_BASE_(r13)
/* 80400BA4 003F6924  C0 23 FF 68 */	lfs f1, lbl_8059FF68@l(r3)
/* 80400BA8 003F6928  48 00 01 E0 */	b lbl_80400D88
lbl_80400BAC:
/* 80400BAC 003F692C  7C C3 A6 71 */	srawi. r3, r6, 0x14
/* 80400BB0 003F6930  40 82 00 50 */	bne lbl_80400C00
/* 80400BB4 003F6934  48 00 00 14 */	b lbl_80400BC8
lbl_80400BB8:
/* 80400BB8 003F6938  54 04 AA FE */	srwi r4, r0, 0xb
/* 80400BBC 003F693C  54 00 A8 14 */	slwi r0, r0, 0x15
/* 80400BC0 003F6940  7C C6 23 78 */	or r6, r6, r4
/* 80400BC4 003F6944  38 63 FF EB */	addi r3, r3, -21
lbl_80400BC8:
/* 80400BC8 003F6948  2C 06 00 00 */	cmpwi r6, 0
/* 80400BCC 003F694C  41 82 FF EC */	beq lbl_80400BB8
/* 80400BD0 003F6950  38 E0 00 00 */	li r7, 0
/* 80400BD4 003F6954  48 00 00 0C */	b lbl_80400BE0
lbl_80400BD8:
/* 80400BD8 003F6958  54 C6 08 3C */	slwi r6, r6, 1
/* 80400BDC 003F695C  38 E7 00 01 */	addi r7, r7, 1
lbl_80400BE0:
/* 80400BE0 003F6960  54 C4 02 D7 */	rlwinm. r4, r6, 0, 0xb, 0xb
/* 80400BE4 003F6964  41 82 FF F4 */	beq lbl_80400BD8
/* 80400BE8 003F6968  20 87 00 20 */	subfic r4, r7, 0x20
/* 80400BEC 003F696C  38 A7 FF FF */	addi r5, r7, -1
/* 80400BF0 003F6970  7C 04 24 30 */	srw r4, r0, r4
/* 80400BF4 003F6974  7C 00 38 30 */	slw r0, r0, r7
/* 80400BF8 003F6978  7C 65 18 50 */	subf r3, r5, r3
/* 80400BFC 003F697C  7C C6 23 78 */	or r6, r6, r4
lbl_80400C00:
/* 80400C00 003F6980  38 83 FC 01 */	addi r4, r3, -1023
/* 80400C04 003F6984  54 C5 03 3E */	clrlwi r5, r6, 0xc
/* 80400C08 003F6988  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 80400C0C 003F698C  64 A6 00 10 */	oris r6, r5, 0x10
/* 80400C10 003F6990  41 82 00 14 */	beq lbl_80400C24
/* 80400C14 003F6994  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80400C18 003F6998  7C 86 32 14 */	add r4, r6, r6
/* 80400C1C 003F699C  7C C5 22 14 */	add r6, r5, r4
/* 80400C20 003F69A0  7C 00 02 14 */	add r0, r0, r0
lbl_80400C24:
/* 80400C24 003F69A4  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80400C28 003F69A8  7C 86 32 14 */	add r4, r6, r6
/* 80400C2C 003F69AC  7C C5 22 14 */	add r6, r5, r4
/* 80400C30 003F69B0  7C 00 02 14 */	add r0, r0, r0
/* 80400C34 003F69B4  39 20 00 00 */	li r9, 0
/* 80400C38 003F69B8  39 60 00 00 */	li r11, 0
/* 80400C3C 003F69BC  39 40 00 00 */	li r10, 0
/* 80400C40 003F69C0  39 80 00 00 */	li r12, 0
/* 80400C44 003F69C4  3C E0 00 20 */	lis r7, 0x20
/* 80400C48 003F69C8  48 00 00 30 */	b lbl_80400C78
lbl_80400C4C:
/* 80400C4C 003F69CC  7C 8B 3A 14 */	add r4, r11, r7
/* 80400C50 003F69D0  7C 04 30 00 */	cmpw r4, r6
/* 80400C54 003F69D4  41 81 00 10 */	bgt lbl_80400C64
/* 80400C58 003F69D8  7D 64 3A 14 */	add r11, r4, r7
/* 80400C5C 003F69DC  7C C4 30 50 */	subf r6, r4, r6
/* 80400C60 003F69E0  7D 8C 3A 14 */	add r12, r12, r7
lbl_80400C64:
/* 80400C64 003F69E4  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80400C68 003F69E8  7C 86 32 14 */	add r4, r6, r6
/* 80400C6C 003F69EC  7C C5 22 14 */	add r6, r5, r4
/* 80400C70 003F69F0  7C 00 02 14 */	add r0, r0, r0
/* 80400C74 003F69F4  54 E7 F8 7E */	srwi r7, r7, 1
lbl_80400C78:
/* 80400C78 003F69F8  2C 07 00 00 */	cmpwi r7, 0
/* 80400C7C 003F69FC  40 82 FF D0 */	bne lbl_80400C4C
/* 80400C80 003F6A00  3C E0 80 00 */	lis r7, 0x8000
/* 80400C84 003F6A04  48 00 00 6C */	b lbl_80400CF0
lbl_80400C88:
/* 80400C88 003F6A08  7C 0B 30 00 */	cmpw r11, r6
/* 80400C8C 003F6A0C  7D 65 5B 78 */	mr r5, r11
/* 80400C90 003F6A10  7D 09 3A 14 */	add r8, r9, r7
/* 80400C94 003F6A14  41 80 00 10 */	blt lbl_80400CA4
/* 80400C98 003F6A18  40 82 00 44 */	bne lbl_80400CDC
/* 80400C9C 003F6A1C  7C 08 00 40 */	cmplw r8, r0
/* 80400CA0 003F6A20  41 81 00 3C */	bgt lbl_80400CDC
lbl_80400CA4:
/* 80400CA4 003F6A24  55 04 00 00 */	rlwinm r4, r8, 0, 0, 0
/* 80400CA8 003F6A28  7D 28 3A 14 */	add r9, r8, r7
/* 80400CAC 003F6A2C  3C 84 80 00 */	addis r4, r4, 0x8000
/* 80400CB0 003F6A30  28 04 00 00 */	cmplwi r4, 0
/* 80400CB4 003F6A34  40 82 00 10 */	bne lbl_80400CC4
/* 80400CB8 003F6A38  55 24 00 01 */	rlwinm. r4, r9, 0, 0, 0
/* 80400CBC 003F6A3C  40 82 00 08 */	bne lbl_80400CC4
/* 80400CC0 003F6A40  39 6B 00 01 */	addi r11, r11, 1
lbl_80400CC4:
/* 80400CC4 003F6A44  7C 00 40 40 */	cmplw r0, r8
/* 80400CC8 003F6A48  7C C5 30 50 */	subf r6, r5, r6
/* 80400CCC 003F6A4C  40 80 00 08 */	bge lbl_80400CD4
/* 80400CD0 003F6A50  38 C6 FF FF */	addi r6, r6, -1
lbl_80400CD4:
/* 80400CD4 003F6A54  7C 08 00 50 */	subf r0, r8, r0
/* 80400CD8 003F6A58  7D 4A 3A 14 */	add r10, r10, r7
lbl_80400CDC:
/* 80400CDC 003F6A5C  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80400CE0 003F6A60  7C 86 32 14 */	add r4, r6, r6
/* 80400CE4 003F6A64  7C C5 22 14 */	add r6, r5, r4
/* 80400CE8 003F6A68  7C 00 02 14 */	add r0, r0, r0
/* 80400CEC 003F6A6C  54 E7 F8 7E */	srwi r7, r7, 1
lbl_80400CF0:
/* 80400CF0 003F6A70  2C 07 00 00 */	cmpwi r7, 0
/* 80400CF4 003F6A74  40 82 FF 94 */	bne lbl_80400C88
/* 80400CF8 003F6A78  7C C0 03 79 */	or. r0, r6, r0
/* 80400CFC 003F6A7C  41 82 00 58 */	beq lbl_80400D54
/* 80400D00 003F6A80  C8 02 BD E8 */	lfd f0, lbl_805A5108-_SDA2_BASE_(r2)
/* 80400D04 003F6A84  FC 00 00 40 */	fcmpo cr0, f0, f0
/* 80400D08 003F6A88  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80400D0C 003F6A8C  4C 41 13 82 */	cror 2, 1, 2
/* 80400D10 003F6A90  40 82 00 44 */	bne lbl_80400D54
/* 80400D14 003F6A94  3C 0A 00 01 */	addis r0, r10, 1
/* 80400D18 003F6A98  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80400D1C 003F6A9C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80400D20 003F6AA0  40 82 00 10 */	bne lbl_80400D30
/* 80400D24 003F6AA4  39 40 00 00 */	li r10, 0
/* 80400D28 003F6AA8  39 8C 00 01 */	addi r12, r12, 1
/* 80400D2C 003F6AAC  48 00 00 28 */	b lbl_80400D54
lbl_80400D30:
/* 80400D30 003F6AB0  FC 00 00 40 */	fcmpo cr0, f0, f0
/* 80400D34 003F6AB4  40 81 00 18 */	ble lbl_80400D4C
/* 80400D38 003F6AB8  28 00 FF FE */	cmplwi r0, 0xfffe
/* 80400D3C 003F6ABC  40 82 00 08 */	bne lbl_80400D44
/* 80400D40 003F6AC0  39 8C 00 01 */	addi r12, r12, 1
lbl_80400D44:
/* 80400D44 003F6AC4  39 4A 00 02 */	addi r10, r10, 2
/* 80400D48 003F6AC8  48 00 00 0C */	b lbl_80400D54
lbl_80400D4C:
/* 80400D4C 003F6ACC  55 40 07 FE */	clrlwi r0, r10, 0x1f
/* 80400D50 003F6AD0  7D 4A 02 14 */	add r10, r10, r0
lbl_80400D54:
/* 80400D54 003F6AD4  55 80 07 FE */	clrlwi r0, r12, 0x1f
/* 80400D58 003F6AD8  7D 84 0E 70 */	srawi r4, r12, 1
/* 80400D5C 003F6ADC  2C 00 00 01 */	cmpwi r0, 1
/* 80400D60 003F6AE0  55 45 F8 7E */	srwi r5, r10, 1
/* 80400D64 003F6AE4  3C 84 3F E0 */	addis r4, r4, 0x3fe0
/* 80400D68 003F6AE8  40 82 00 08 */	bne lbl_80400D70
/* 80400D6C 003F6AEC  64 A5 80 00 */	oris r5, r5, 0x8000
lbl_80400D70:
/* 80400D70 003F6AF0  38 03 FC 01 */	addi r0, r3, -1023
/* 80400D74 003F6AF4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80400D78 003F6AF8  54 00 98 16 */	rlwinm r0, r0, 0x13, 0, 0xb
/* 80400D7C 003F6AFC  7C 84 02 14 */	add r4, r4, r0
/* 80400D80 003F6B00  90 81 00 10 */	stw r4, 0x10(r1)
/* 80400D84 003F6B04  C8 21 00 10 */	lfd f1, 0x10(r1)
lbl_80400D88:
/* 80400D88 003F6B08  38 21 00 20 */	addi r1, r1, 0x20
/* 80400D8C 003F6B0C  4E 80 00 20 */	blr 
