.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global GXSetTevOp
GXSetTevOp:
/* 801F3B9C 001E991C  2C 03 00 00 */	cmpwi r3, 0
/* 801F3BA0 001E9920  3C A0 80 47 */	lis r5, lbl_804764B8@ha
/* 801F3BA4 001E9924  38 A5 64 B8 */	addi r5, r5, lbl_804764B8@l
/* 801F3BA8 001E9928  40 82 00 1C */	bne lbl_801F3BC4
/* 801F3BAC 001E992C  54 86 10 3A */	slwi r6, r4, 2
/* 801F3BB0 001E9930  38 85 00 00 */	addi r4, r5, 0
/* 801F3BB4 001E9934  38 05 00 28 */	addi r0, r5, 0x28
/* 801F3BB8 001E9938  7D 04 32 14 */	add r8, r4, r6
/* 801F3BBC 001E993C  7D 20 32 14 */	add r9, r0, r6
/* 801F3BC0 001E9940  48 00 00 18 */	b lbl_801F3BD8
lbl_801F3BC4:
/* 801F3BC4 001E9944  54 86 10 3A */	slwi r6, r4, 2
/* 801F3BC8 001E9948  38 85 00 14 */	addi r4, r5, 0x14
/* 801F3BCC 001E994C  38 05 00 3C */	addi r0, r5, 0x3c
/* 801F3BD0 001E9950  7D 04 32 14 */	add r8, r4, r6
/* 801F3BD4 001E9954  7D 20 32 14 */	add r9, r0, r6
lbl_801F3BD8:
/* 801F3BD8 001E9958  80 E2 A4 90 */	lwz r7, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3BDC 001E995C  54 60 10 3A */	slwi r0, r3, 2
/* 801F3BE0 001E9960  80 68 00 00 */	lwz r3, 0(r8)
/* 801F3BE4 001E9964  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F3BE8 001E9968  7C C7 02 14 */	add r6, r7, r0
/* 801F3BEC 001E996C  38 A0 00 61 */	li r5, 0x61
/* 801F3BF0 001E9970  81 06 01 80 */	lwz r8, 0x180(r6)
/* 801F3BF4 001E9974  38 00 00 00 */	li r0, 0
/* 801F3BF8 001E9978  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 801F3BFC 001E997C  55 08 00 0E */	rlwinm r8, r8, 0, 0, 7
/* 801F3C00 001E9980  50 68 02 3E */	rlwimi r8, r3, 0, 8, 0x1f
/* 801F3C04 001E9984  91 04 80 00 */	stw r8, -0x8000(r4)
/* 801F3C08 001E9988  91 06 01 80 */	stw r8, 0x180(r6)
/* 801F3C0C 001E998C  81 06 01 C0 */	lwz r8, 0x1c0(r6)
/* 801F3C10 001E9990  80 69 00 00 */	lwz r3, 0(r9)
/* 801F3C14 001E9994  55 08 07 0E */	rlwinm r8, r8, 0, 0x1c, 7
/* 801F3C18 001E9998  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801F3C1C 001E999C  50 68 02 36 */	rlwimi r8, r3, 0, 8, 0x1b
/* 801F3C20 001E99A0  91 04 80 00 */	stw r8, -0x8000(r4)
/* 801F3C24 001E99A4  91 06 01 C0 */	stw r8, 0x1c0(r6)
/* 801F3C28 001E99A8  B0 07 00 02 */	sth r0, 2(r7)
/* 801F3C2C 001E99AC  4E 80 00 20 */	blr 

.global GXSetTevColorIn
GXSetTevColorIn:
/* 801F3C30 001E99B0  81 62 A4 90 */	lwz r11, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3C34 001E99B4  54 60 10 3A */	slwi r0, r3, 2
/* 801F3C38 001E99B8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F3C3C 001E99BC  39 00 00 61 */	li r8, 0x61
/* 801F3C40 001E99C0  7D 4B 02 14 */	add r10, r11, r0
/* 801F3C44 001E99C4  38 00 00 00 */	li r0, 0
/* 801F3C48 001E99C8  81 2A 01 80 */	lwz r9, 0x180(r10)
/* 801F3C4C 001E99CC  50 89 64 26 */	rlwimi r9, r4, 0xc, 0x10, 0x13
/* 801F3C50 001E99D0  50 A9 45 2E */	rlwimi r9, r5, 8, 0x14, 0x17
/* 801F3C54 001E99D4  99 03 80 00 */	stb r8, 0xCC008000@l(r3)
/* 801F3C58 001E99D8  50 C9 26 36 */	rlwimi r9, r6, 4, 0x18, 0x1b
/* 801F3C5C 001E99DC  50 E9 07 3E */	rlwimi r9, r7, 0, 0x1c, 0x1f
/* 801F3C60 001E99E0  91 23 80 00 */	stw r9, -0x8000(r3)
/* 801F3C64 001E99E4  91 2A 01 80 */	stw r9, 0x180(r10)
/* 801F3C68 001E99E8  B0 0B 00 02 */	sth r0, 2(r11)
/* 801F3C6C 001E99EC  4E 80 00 20 */	blr 

.global GXSetTevAlphaIn
GXSetTevAlphaIn:
/* 801F3C70 001E99F0  81 62 A4 90 */	lwz r11, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3C74 001E99F4  54 60 10 3A */	slwi r0, r3, 2
/* 801F3C78 001E99F8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F3C7C 001E99FC  39 00 00 61 */	li r8, 0x61
/* 801F3C80 001E9A00  7D 4B 02 14 */	add r10, r11, r0
/* 801F3C84 001E9A04  38 00 00 00 */	li r0, 0
/* 801F3C88 001E9A08  81 2A 01 C0 */	lwz r9, 0x1c0(r10)
/* 801F3C8C 001E9A0C  50 89 6C 24 */	rlwimi r9, r4, 0xd, 0x10, 0x12
/* 801F3C90 001E9A10  50 A9 54 EA */	rlwimi r9, r5, 0xa, 0x13, 0x15
/* 801F3C94 001E9A14  99 03 80 00 */	stb r8, 0xCC008000@l(r3)
/* 801F3C98 001E9A18  50 C9 3D B0 */	rlwimi r9, r6, 7, 0x16, 0x18
/* 801F3C9C 001E9A1C  50 E9 26 76 */	rlwimi r9, r7, 4, 0x19, 0x1b
/* 801F3CA0 001E9A20  91 23 80 00 */	stw r9, -0x8000(r3)
/* 801F3CA4 001E9A24  91 2A 01 C0 */	stw r9, 0x1c0(r10)
/* 801F3CA8 001E9A28  B0 0B 00 02 */	sth r0, 2(r11)
/* 801F3CAC 001E9A2C  4E 80 00 20 */	blr 

.global GXSetTevColorOp
GXSetTevColorOp:
/* 801F3CB0 001E9A30  81 42 A4 90 */	lwz r10, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3CB4 001E9A34  54 60 10 3A */	slwi r0, r3, 2
/* 801F3CB8 001E9A38  2C 04 00 01 */	cmpwi r4, 1
/* 801F3CBC 001E9A3C  7D 2A 02 14 */	add r9, r10, r0
/* 801F3CC0 001E9A40  81 69 01 80 */	lwz r11, 0x180(r9)
/* 801F3CC4 001E9A44  50 8B 93 5A */	rlwimi r11, r4, 0x12, 0xd, 0xd
/* 801F3CC8 001E9A48  41 81 00 10 */	bgt lbl_801F3CD8
/* 801F3CCC 001E9A4C  50 CB A2 96 */	rlwimi r11, r6, 0x14, 0xa, 0xb
/* 801F3CD0 001E9A50  50 AB 83 9E */	rlwimi r11, r5, 0x10, 0xe, 0xf
/* 801F3CD4 001E9A54  48 00 00 0C */	b lbl_801F3CE0
lbl_801F3CD8:
/* 801F3CD8 001E9A58  50 8B 9A 96 */	rlwimi r11, r4, 0x13, 0xa, 0xb
/* 801F3CDC 001E9A5C  65 6B 00 03 */	oris r11, r11, 3
lbl_801F3CE0:
/* 801F3CE0 001E9A60  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F3CE4 001E9A64  38 00 00 61 */	li r0, 0x61
/* 801F3CE8 001E9A68  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F3CEC 001E9A6C  50 EB 9B 18 */	rlwimi r11, r7, 0x13, 0xc, 0xc
/* 801F3CF0 001E9A70  51 0B B2 12 */	rlwimi r11, r8, 0x16, 8, 9
/* 801F3CF4 001E9A74  38 00 00 00 */	li r0, 0
/* 801F3CF8 001E9A78  91 63 80 00 */	stw r11, -0x8000(r3)
/* 801F3CFC 001E9A7C  91 69 01 80 */	stw r11, 0x180(r9)
/* 801F3D00 001E9A80  B0 0A 00 02 */	sth r0, 2(r10)
/* 801F3D04 001E9A84  4E 80 00 20 */	blr 

.global GXSetTevAlphaOp
GXSetTevAlphaOp:
/* 801F3D08 001E9A88  81 42 A4 90 */	lwz r10, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3D0C 001E9A8C  54 60 10 3A */	slwi r0, r3, 2
/* 801F3D10 001E9A90  2C 04 00 01 */	cmpwi r4, 1
/* 801F3D14 001E9A94  7D 2A 02 14 */	add r9, r10, r0
/* 801F3D18 001E9A98  81 69 01 C0 */	lwz r11, 0x1c0(r9)
/* 801F3D1C 001E9A9C  50 8B 93 5A */	rlwimi r11, r4, 0x12, 0xd, 0xd
/* 801F3D20 001E9AA0  41 81 00 10 */	bgt lbl_801F3D30
/* 801F3D24 001E9AA4  50 CB A2 96 */	rlwimi r11, r6, 0x14, 0xa, 0xb
/* 801F3D28 001E9AA8  50 AB 83 9E */	rlwimi r11, r5, 0x10, 0xe, 0xf
/* 801F3D2C 001E9AAC  48 00 00 0C */	b lbl_801F3D38
lbl_801F3D30:
/* 801F3D30 001E9AB0  50 8B 9A 96 */	rlwimi r11, r4, 0x13, 0xa, 0xb
/* 801F3D34 001E9AB4  65 6B 00 03 */	oris r11, r11, 3
lbl_801F3D38:
/* 801F3D38 001E9AB8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F3D3C 001E9ABC  38 00 00 61 */	li r0, 0x61
/* 801F3D40 001E9AC0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F3D44 001E9AC4  50 EB 9B 18 */	rlwimi r11, r7, 0x13, 0xc, 0xc
/* 801F3D48 001E9AC8  51 0B B2 12 */	rlwimi r11, r8, 0x16, 8, 9
/* 801F3D4C 001E9ACC  38 00 00 00 */	li r0, 0
/* 801F3D50 001E9AD0  91 63 80 00 */	stw r11, -0x8000(r3)
/* 801F3D54 001E9AD4  91 69 01 C0 */	stw r11, 0x1c0(r9)
/* 801F3D58 001E9AD8  B0 0A 00 02 */	sth r0, 2(r10)
/* 801F3D5C 001E9ADC  4E 80 00 20 */	blr 

.global GXSetTevColor
GXSetTevColor:
/* 801F3D60 001E9AE0  54 63 08 3C */	slwi r3, r3, 1
/* 801F3D64 001E9AE4  81 04 00 00 */	lwz r8, 0(r4)
/* 801F3D68 001E9AE8  38 03 00 E0 */	addi r0, r3, 0xe0
/* 801F3D6C 001E9AEC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F3D70 001E9AF0  54 07 C0 0E */	slwi r7, r0, 0x18
/* 801F3D74 001E9AF4  38 A0 00 61 */	li r5, 0x61
/* 801F3D78 001E9AF8  51 07 46 3E */	rlwimi r7, r8, 8, 0x18, 0x1f
/* 801F3D7C 001E9AFC  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 801F3D80 001E9B00  51 07 63 26 */	rlwimi r7, r8, 0xc, 0xc, 0x13
/* 801F3D84 001E9B04  38 03 00 E1 */	addi r0, r3, 0xe1
/* 801F3D88 001E9B08  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 801F3D8C 001E9B0C  54 06 C0 0E */	slwi r6, r0, 0x18
/* 801F3D90 001E9B10  51 06 C6 3E */	rlwimi r6, r8, 0x18, 0x18, 0x1f
/* 801F3D94 001E9B14  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3D98 001E9B18  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801F3D9C 001E9B1C  51 06 E3 26 */	rlwimi r6, r8, 0x1c, 0xc, 0x13
/* 801F3DA0 001E9B20  38 00 00 00 */	li r0, 0
/* 801F3DA4 001E9B24  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 801F3DA8 001E9B28  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801F3DAC 001E9B2C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 801F3DB0 001E9B30  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801F3DB4 001E9B34  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 801F3DB8 001E9B38  B0 03 00 02 */	sth r0, 2(r3)
/* 801F3DBC 001E9B3C  4E 80 00 20 */	blr 

.global GXSetTevColorS10
GXSetTevColorS10:
/* 801F3DC0 001E9B40  54 63 08 3C */	slwi r3, r3, 1
/* 801F3DC4 001E9B44  81 04 00 00 */	lwz r8, 0(r4)
/* 801F3DC8 001E9B48  38 03 00 E0 */	addi r0, r3, 0xe0
/* 801F3DCC 001E9B4C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 801F3DD0 001E9B50  54 07 C0 0E */	slwi r7, r0, 0x18
/* 801F3DD4 001E9B54  38 C0 00 61 */	li r6, 0x61
/* 801F3DD8 001E9B58  81 24 00 04 */	lwz r9, 4(r4)
/* 801F3DDC 001E9B5C  51 07 85 7E */	rlwimi r7, r8, 0x10, 0x15, 0x1f
/* 801F3DE0 001E9B60  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 801F3DE4 001E9B64  38 03 00 E1 */	addi r0, r3, 0xe1
/* 801F3DE8 001E9B68  51 27 62 66 */	rlwimi r7, r9, 0xc, 9, 0x13
/* 801F3DEC 001E9B6C  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3DF0 001E9B70  54 04 C0 0E */	slwi r4, r0, 0x18
/* 801F3DF4 001E9B74  90 E5 80 00 */	stw r7, -0x8000(r5)
/* 801F3DF8 001E9B78  51 24 85 7E */	rlwimi r4, r9, 0x10, 0x15, 0x1f
/* 801F3DFC 001E9B7C  38 00 00 00 */	li r0, 0
/* 801F3E00 001E9B80  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 801F3E04 001E9B84  51 04 62 66 */	rlwimi r4, r8, 0xc, 9, 0x13
/* 801F3E08 001E9B88  90 85 80 00 */	stw r4, -0x8000(r5)
/* 801F3E0C 001E9B8C  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 801F3E10 001E9B90  90 85 80 00 */	stw r4, -0x8000(r5)
/* 801F3E14 001E9B94  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 801F3E18 001E9B98  90 85 80 00 */	stw r4, -0x8000(r5)
/* 801F3E1C 001E9B9C  B0 03 00 02 */	sth r0, 2(r3)
/* 801F3E20 001E9BA0  4E 80 00 20 */	blr 

.global GXSetTevKColor
GXSetTevKColor:
/* 801F3E24 001E9BA4  54 66 08 3C */	slwi r6, r3, 1
/* 801F3E28 001E9BA8  81 24 00 00 */	lwz r9, 0(r4)
/* 801F3E2C 001E9BAC  38 66 00 E0 */	addi r3, r6, 0xe0
/* 801F3E30 001E9BB0  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F3E34 001E9BB4  54 68 C0 0E */	slwi r8, r3, 0x18
/* 801F3E38 001E9BB8  38 A0 00 61 */	li r5, 0x61
/* 801F3E3C 001E9BBC  51 28 46 3E */	rlwimi r8, r9, 8, 0x18, 0x1f
/* 801F3E40 001E9BC0  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 801F3E44 001E9BC4  38 E0 00 08 */	li r7, 8
/* 801F3E48 001E9BC8  38 06 00 E1 */	addi r0, r6, 0xe1
/* 801F3E4C 001E9BCC  51 28 63 26 */	rlwimi r8, r9, 0xc, 0xc, 0x13
/* 801F3E50 001E9BD0  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3E54 001E9BD4  54 06 C0 0E */	slwi r6, r0, 0x18
/* 801F3E58 001E9BD8  38 00 00 00 */	li r0, 0
/* 801F3E5C 001E9BDC  50 E8 A2 16 */	rlwimi r8, r7, 0x14, 8, 0xb
/* 801F3E60 001E9BE0  91 04 80 00 */	stw r8, -0x8000(r4)
/* 801F3E64 001E9BE4  51 26 C6 3E */	rlwimi r6, r9, 0x18, 0x18, 0x1f
/* 801F3E68 001E9BE8  51 26 E3 26 */	rlwimi r6, r9, 0x1c, 0xc, 0x13
/* 801F3E6C 001E9BEC  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 801F3E70 001E9BF0  50 E6 A2 16 */	rlwimi r6, r7, 0x14, 8, 0xb
/* 801F3E74 001E9BF4  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 801F3E78 001E9BF8  B0 03 00 02 */	sth r0, 2(r3)
/* 801F3E7C 001E9BFC  4E 80 00 20 */	blr 

.global GXSetTevKColorSel
GXSetTevKColorSel:
/* 801F3E80 001E9C00  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801F3E84 001E9C04  80 A2 A4 90 */	lwz r5, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3E88 001E9C08  54 60 08 3A */	rlwinm r0, r3, 1, 0, 0x1d
/* 801F3E8C 001E9C0C  7C 65 02 14 */	add r3, r5, r0
/* 801F3E90 001E9C10  41 82 00 14 */	beq lbl_801F3EA4
/* 801F3E94 001E9C14  80 03 02 00 */	lwz r0, 0x200(r3)
/* 801F3E98 001E9C18  50 80 73 62 */	rlwimi r0, r4, 0xe, 0xd, 0x11
/* 801F3E9C 001E9C1C  90 03 02 00 */	stw r0, 0x200(r3)
/* 801F3EA0 001E9C20  48 00 00 10 */	b lbl_801F3EB0
lbl_801F3EA4:
/* 801F3EA4 001E9C24  80 03 02 00 */	lwz r0, 0x200(r3)
/* 801F3EA8 001E9C28  50 80 25 F6 */	rlwimi r0, r4, 4, 0x17, 0x1b
/* 801F3EAC 001E9C2C  90 03 02 00 */	stw r0, 0x200(r3)
lbl_801F3EB0:
/* 801F3EB0 001E9C30  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F3EB4 001E9C34  38 00 00 61 */	li r0, 0x61
/* 801F3EB8 001E9C38  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801F3EBC 001E9C3C  38 00 00 00 */	li r0, 0
/* 801F3EC0 001E9C40  80 63 02 00 */	lwz r3, 0x200(r3)
/* 801F3EC4 001E9C44  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801F3EC8 001E9C48  B0 05 00 02 */	sth r0, 2(r5)
/* 801F3ECC 001E9C4C  4E 80 00 20 */	blr 

.global GXSetTevKAlphaSel
GXSetTevKAlphaSel:
/* 801F3ED0 001E9C50  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801F3ED4 001E9C54  80 A2 A4 90 */	lwz r5, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3ED8 001E9C58  54 60 08 3A */	rlwinm r0, r3, 1, 0, 0x1d
/* 801F3EDC 001E9C5C  7C 65 02 14 */	add r3, r5, r0
/* 801F3EE0 001E9C60  41 82 00 14 */	beq lbl_801F3EF4
/* 801F3EE4 001E9C64  80 03 02 00 */	lwz r0, 0x200(r3)
/* 801F3EE8 001E9C68  50 80 9A 18 */	rlwimi r0, r4, 0x13, 8, 0xc
/* 801F3EEC 001E9C6C  90 03 02 00 */	stw r0, 0x200(r3)
/* 801F3EF0 001E9C70  48 00 00 10 */	b lbl_801F3F00
lbl_801F3EF4:
/* 801F3EF4 001E9C74  80 03 02 00 */	lwz r0, 0x200(r3)
/* 801F3EF8 001E9C78  50 80 4C AC */	rlwimi r0, r4, 9, 0x12, 0x16
/* 801F3EFC 001E9C7C  90 03 02 00 */	stw r0, 0x200(r3)
lbl_801F3F00:
/* 801F3F00 001E9C80  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F3F04 001E9C84  38 00 00 61 */	li r0, 0x61
/* 801F3F08 001E9C88  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801F3F0C 001E9C8C  38 00 00 00 */	li r0, 0
/* 801F3F10 001E9C90  80 63 02 00 */	lwz r3, 0x200(r3)
/* 801F3F14 001E9C94  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801F3F18 001E9C98  B0 05 00 02 */	sth r0, 2(r5)
/* 801F3F1C 001E9C9C  4E 80 00 20 */	blr 

.global GXSetTevSwapMode
GXSetTevSwapMode:
/* 801F3F20 001E9CA0  81 22 A4 90 */	lwz r9, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3F24 001E9CA4  54 60 10 3A */	slwi r0, r3, 2
/* 801F3F28 001E9CA8  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 801F3F2C 001E9CAC  38 60 00 61 */	li r3, 0x61
/* 801F3F30 001E9CB0  7D 09 02 14 */	add r8, r9, r0
/* 801F3F34 001E9CB4  38 00 00 00 */	li r0, 0
/* 801F3F38 001E9CB8  80 E8 01 C0 */	lwz r7, 0x1c0(r8)
/* 801F3F3C 001E9CBC  50 87 07 BE */	rlwimi r7, r4, 0, 0x1e, 0x1f
/* 801F3F40 001E9CC0  50 A7 17 3A */	rlwimi r7, r5, 2, 0x1c, 0x1d
/* 801F3F44 001E9CC4  90 E8 01 C0 */	stw r7, 0x1c0(r8)
/* 801F3F48 001E9CC8  98 66 80 00 */	stb r3, 0xCC008000@l(r6)
/* 801F3F4C 001E9CCC  80 68 01 C0 */	lwz r3, 0x1c0(r8)
/* 801F3F50 001E9CD0  90 66 80 00 */	stw r3, -0x8000(r6)
/* 801F3F54 001E9CD4  B0 09 00 02 */	sth r0, 2(r9)
/* 801F3F58 001E9CD8  4E 80 00 20 */	blr 

.global GXSetTevSwapModeTable
GXSetTevSwapModeTable:
/* 801F3F5C 001E9CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F3F60 001E9CE0  54 6B 18 38 */	slwi r11, r3, 3
/* 801F3F64 001E9CE4  54 6C 08 3C */	slwi r12, r3, 1
/* 801F3F68 001E9CE8  3D 00 CC 01 */	lis r8, 0xCC008000@ha
/* 801F3F6C 001E9CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F3F70 001E9CF0  39 20 00 61 */	li r9, 0x61
/* 801F3F74 001E9CF4  38 6C 00 01 */	addi r3, r12, 1
/* 801F3F78 001E9CF8  38 00 00 00 */	li r0, 0
/* 801F3F7C 001E9CFC  93 C1 00 08 */	stw r30, 8(r1)
/* 801F3F80 001E9D00  83 C2 A4 90 */	lwz r30, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3F84 001E9D04  3B FE 02 00 */	addi r31, r30, 0x200
/* 801F3F88 001E9D08  7D 5F 58 2E */	lwzx r10, r31, r11
/* 801F3F8C 001E9D0C  50 8A 07 BE */	rlwimi r10, r4, 0, 0x1e, 0x1f
/* 801F3F90 001E9D10  50 AA 17 3A */	rlwimi r10, r5, 2, 0x1c, 0x1d
/* 801F3F94 001E9D14  54 64 10 3A */	slwi r4, r3, 2
/* 801F3F98 001E9D18  7D 5F 59 2E */	stwx r10, r31, r11
/* 801F3F9C 001E9D1C  99 28 80 00 */	stb r9, 0xCC008000@l(r8)
/* 801F3FA0 001E9D20  7C 7F 58 2E */	lwzx r3, r31, r11
/* 801F3FA4 001E9D24  90 68 80 00 */	stw r3, -0x8000(r8)
/* 801F3FA8 001E9D28  7C 7F 20 2E */	lwzx r3, r31, r4
/* 801F3FAC 001E9D2C  50 C3 07 BE */	rlwimi r3, r6, 0, 0x1e, 0x1f
/* 801F3FB0 001E9D30  50 E3 17 3A */	rlwimi r3, r7, 2, 0x1c, 0x1d
/* 801F3FB4 001E9D34  7C 7F 21 2E */	stwx r3, r31, r4
/* 801F3FB8 001E9D38  99 28 80 00 */	stb r9, -0x8000(r8)
/* 801F3FBC 001E9D3C  7C 7F 20 2E */	lwzx r3, r31, r4
/* 801F3FC0 001E9D40  90 68 80 00 */	stw r3, -0x8000(r8)
/* 801F3FC4 001E9D44  B0 1E 00 02 */	sth r0, 2(r30)
/* 801F3FC8 001E9D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F3FCC 001E9D4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F3FD0 001E9D50  38 21 00 10 */	addi r1, r1, 0x10
/* 801F3FD4 001E9D54  4E 80 00 20 */	blr 

.global GXSetAlphaCompare
GXSetAlphaCompare:
/* 801F3FD8 001E9D58  3D 00 CC 01 */	lis r8, 0xCC008000@ha
/* 801F3FDC 001E9D5C  38 00 00 61 */	li r0, 0x61
/* 801F3FE0 001E9D60  98 08 80 00 */	stb r0, 0xCC008000@l(r8)
/* 801F3FE4 001E9D64  3D 20 F3 00 */	lis r9, 0xf300
/* 801F3FE8 001E9D68  50 89 06 3E */	rlwimi r9, r4, 0, 0x18, 0x1f
/* 801F3FEC 001E9D6C  80 82 A4 90 */	lwz r4, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3FF0 001E9D70  50 E9 44 2E */	rlwimi r9, r7, 8, 0x10, 0x17
/* 801F3FF4 001E9D74  38 00 00 00 */	li r0, 0
/* 801F3FF8 001E9D78  50 69 83 5E */	rlwimi r9, r3, 0x10, 0xd, 0xf
/* 801F3FFC 001E9D7C  50 C9 9A 98 */	rlwimi r9, r6, 0x13, 0xa, 0xc
/* 801F4000 001E9D80  50 A9 B2 12 */	rlwimi r9, r5, 0x16, 8, 9
/* 801F4004 001E9D84  91 28 80 00 */	stw r9, -0x8000(r8)
/* 801F4008 001E9D88  B0 04 00 02 */	sth r0, 2(r4)
/* 801F400C 001E9D8C  4E 80 00 20 */	blr 

.global GXSetZTexture
GXSetZTexture:
/* 801F4010 001E9D90  2C 04 00 13 */	cmpwi r4, 0x13
/* 801F4014 001E9D94  38 E0 00 00 */	li r7, 0
/* 801F4018 001E9D98  38 00 00 F4 */	li r0, 0xf4
/* 801F401C 001E9D9C  50 A7 02 3E */	rlwimi r7, r5, 0, 8, 0x1f
/* 801F4020 001E9DA0  50 07 C0 0E */	rlwimi r7, r0, 0x18, 0, 7
/* 801F4024 001E9DA4  41 82 00 28 */	beq lbl_801F404C
/* 801F4028 001E9DA8  40 80 00 10 */	bge lbl_801F4038
/* 801F402C 001E9DAC  2C 04 00 11 */	cmpwi r4, 0x11
/* 801F4030 001E9DB0  41 82 00 14 */	beq lbl_801F4044
/* 801F4034 001E9DB4  48 00 00 28 */	b lbl_801F405C
lbl_801F4038:
/* 801F4038 001E9DB8  2C 04 00 16 */	cmpwi r4, 0x16
/* 801F403C 001E9DBC  41 82 00 18 */	beq lbl_801F4054
/* 801F4040 001E9DC0  48 00 00 1C */	b lbl_801F405C
lbl_801F4044:
/* 801F4044 001E9DC4  38 A0 00 00 */	li r5, 0
/* 801F4048 001E9DC8  48 00 00 18 */	b lbl_801F4060
lbl_801F404C:
/* 801F404C 001E9DCC  38 A0 00 01 */	li r5, 1
/* 801F4050 001E9DD0  48 00 00 10 */	b lbl_801F4060
lbl_801F4054:
/* 801F4054 001E9DD4  38 A0 00 02 */	li r5, 2
/* 801F4058 001E9DD8  48 00 00 08 */	b lbl_801F4060
lbl_801F405C:
/* 801F405C 001E9DDC  38 A0 00 02 */	li r5, 2
lbl_801F4060:
/* 801F4060 001E9DE0  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F4064 001E9DE4  38 00 00 61 */	li r0, 0x61
/* 801F4068 001E9DE8  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801F406C 001E9DEC  38 C0 00 00 */	li r6, 0
/* 801F4070 001E9DF0  50 A6 07 BE */	rlwimi r6, r5, 0, 0x1e, 0x1f
/* 801F4074 001E9DF4  38 A0 00 F5 */	li r5, 0xf5
/* 801F4078 001E9DF8  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 801F407C 001E9DFC  50 66 17 3A */	rlwimi r6, r3, 2, 0x1c, 0x1d
/* 801F4080 001E9E00  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 801F4084 001E9E04  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F4088 001E9E08  98 04 80 00 */	stb r0, -0x8000(r4)
/* 801F408C 001E9E0C  38 00 00 00 */	li r0, 0
/* 801F4090 001E9E10  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 801F4094 001E9E14  B0 03 00 02 */	sth r0, 2(r3)
/* 801F4098 001E9E18  4E 80 00 20 */	blr 

.global GXSetTevOrder
GXSetTevOrder:
/* 801F409C 001E9E1C  54 AB 06 2C */	rlwinm r11, r5, 0, 0x18, 0x16
/* 801F40A0 001E9E20  38 E0 00 08 */	li r7, 8
/* 801F40A4 001E9E24  54 69 0F FE */	srwi r9, r3, 0x1f
/* 801F40A8 001E9E28  81 42 A4 90 */	lwz r10, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F40AC 001E9E2C  7C 07 58 10 */	subfc r0, r7, r11
/* 801F40B0 001E9E30  54 68 10 3A */	slwi r8, r3, 2
/* 801F40B4 001E9E34  7C 07 01 94 */	addze r0, r7
/* 801F40B8 001E9E38  7D 29 1A 14 */	add r9, r9, r3
/* 801F40BC 001E9E3C  7C EA 42 14 */	add r7, r10, r8
/* 801F40C0 001E9E40  2C 04 00 08 */	cmpwi r4, 8
/* 801F40C4 001E9E44  55 28 08 3A */	rlwinm r8, r9, 1, 0, 0x1d
/* 801F40C8 001E9E48  20 00 00 08 */	subfic r0, r0, 8
/* 801F40CC 001E9E4C  90 A7 05 A4 */	stw r5, 0x5a4(r7)
/* 801F40D0 001E9E50  7C EA 42 14 */	add r7, r10, r8
/* 801F40D4 001E9E54  7D 69 00 78 */	andc r9, r11, r0
/* 801F40D8 001E9E58  41 80 00 20 */	blt lbl_801F40F8
/* 801F40DC 001E9E5C  38 00 00 01 */	li r0, 1
/* 801F40E0 001E9E60  81 0A 05 E8 */	lwz r8, 0x5e8(r10)
/* 801F40E4 001E9E64  7C 00 18 30 */	slw r0, r0, r3
/* 801F40E8 001E9E68  38 80 00 00 */	li r4, 0
/* 801F40EC 001E9E6C  7D 00 00 78 */	andc r0, r8, r0
/* 801F40F0 001E9E70  90 0A 05 E8 */	stw r0, 0x5e8(r10)
/* 801F40F4 001E9E74  48 00 00 18 */	b lbl_801F410C
lbl_801F40F8:
/* 801F40F8 001E9E78  38 00 00 01 */	li r0, 1
/* 801F40FC 001E9E7C  81 0A 05 E8 */	lwz r8, 0x5e8(r10)
/* 801F4100 001E9E80  7C 00 18 30 */	slw r0, r0, r3
/* 801F4104 001E9E84  7D 00 03 78 */	or r0, r8, r0
/* 801F4108 001E9E88  90 0A 05 E8 */	stw r0, 0x5e8(r10)
lbl_801F410C:
/* 801F410C 001E9E8C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801F4110 001E9E90  41 82 00 60 */	beq lbl_801F4170
/* 801F4114 001E9E94  81 07 01 50 */	lwz r8, 0x150(r7)
/* 801F4118 001E9E98  51 28 64 66 */	rlwimi r8, r9, 0xc, 0x11, 0x13
/* 801F411C 001E9E9C  50 88 7B A0 */	rlwimi r8, r4, 0xf, 0xe, 0x10
/* 801F4120 001E9EA0  2C 06 00 FF */	cmpwi r6, 0xff
/* 801F4124 001E9EA4  91 07 01 50 */	stw r8, 0x150(r7)
/* 801F4128 001E9EA8  40 82 00 0C */	bne lbl_801F4134
/* 801F412C 001E9EAC  38 00 00 07 */	li r0, 7
/* 801F4130 001E9EB0  48 00 00 14 */	b lbl_801F4144
lbl_801F4134:
/* 801F4134 001E9EB4  3C 60 80 47 */	lis r3, lbl_80476508@ha
/* 801F4138 001E9EB8  54 C0 10 3A */	slwi r0, r6, 2
/* 801F413C 001E9EBC  38 63 65 08 */	addi r3, r3, lbl_80476508@l
/* 801F4140 001E9EC0  7C 03 00 2E */	lwzx r0, r3, r0
lbl_801F4144:
/* 801F4144 001E9EC4  50 08 9A 98 */	rlwimi r8, r0, 0x13, 0xa, 0xc
/* 801F4148 001E9EC8  2C 05 00 FF */	cmpwi r5, 0xff
/* 801F414C 001E9ECC  91 07 01 50 */	stw r8, 0x150(r7)
/* 801F4150 001E9ED0  38 60 00 00 */	li r3, 0
/* 801F4154 001E9ED4  41 82 00 10 */	beq lbl_801F4164
/* 801F4158 001E9ED8  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 801F415C 001E9EDC  40 82 00 08 */	bne lbl_801F4164
/* 801F4160 001E9EE0  38 60 00 01 */	li r3, 1
lbl_801F4164:
/* 801F4164 001E9EE4  50 68 93 5A */	rlwimi r8, r3, 0x12, 0xd, 0xd
/* 801F4168 001E9EE8  91 07 01 50 */	stw r8, 0x150(r7)
/* 801F416C 001E9EEC  48 00 00 5C */	b lbl_801F41C8
lbl_801F4170:
/* 801F4170 001E9EF0  81 07 01 50 */	lwz r8, 0x150(r7)
/* 801F4174 001E9EF4  51 28 07 7E */	rlwimi r8, r9, 0, 0x1d, 0x1f
/* 801F4178 001E9EF8  50 88 1E B8 */	rlwimi r8, r4, 3, 0x1a, 0x1c
/* 801F417C 001E9EFC  2C 06 00 FF */	cmpwi r6, 0xff
/* 801F4180 001E9F00  91 07 01 50 */	stw r8, 0x150(r7)
/* 801F4184 001E9F04  40 82 00 0C */	bne lbl_801F4190
/* 801F4188 001E9F08  38 00 00 07 */	li r0, 7
/* 801F418C 001E9F0C  48 00 00 14 */	b lbl_801F41A0
lbl_801F4190:
/* 801F4190 001E9F10  3C 60 80 47 */	lis r3, lbl_80476508@ha
/* 801F4194 001E9F14  54 C0 10 3A */	slwi r0, r6, 2
/* 801F4198 001E9F18  38 63 65 08 */	addi r3, r3, lbl_80476508@l
/* 801F419C 001E9F1C  7C 03 00 2E */	lwzx r0, r3, r0
lbl_801F41A0:
/* 801F41A0 001E9F20  50 08 3D B0 */	rlwimi r8, r0, 7, 0x16, 0x18
/* 801F41A4 001E9F24  2C 05 00 FF */	cmpwi r5, 0xff
/* 801F41A8 001E9F28  91 07 01 50 */	stw r8, 0x150(r7)
/* 801F41AC 001E9F2C  38 60 00 00 */	li r3, 0
/* 801F41B0 001E9F30  41 82 00 10 */	beq lbl_801F41C0
/* 801F41B4 001E9F34  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 801F41B8 001E9F38  40 82 00 08 */	bne lbl_801F41C0
/* 801F41BC 001E9F3C  38 60 00 01 */	li r3, 1
lbl_801F41C0:
/* 801F41C0 001E9F40  50 68 36 72 */	rlwimi r8, r3, 6, 0x19, 0x19
/* 801F41C4 001E9F44  91 07 01 50 */	stw r8, 0x150(r7)
lbl_801F41C8:
/* 801F41C8 001E9F48  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F41CC 001E9F4C  38 00 00 61 */	li r0, 0x61
/* 801F41D0 001E9F50  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801F41D4 001E9F54  38 00 00 00 */	li r0, 0
/* 801F41D8 001E9F58  80 A2 A4 90 */	lwz r5, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F41DC 001E9F5C  80 67 01 50 */	lwz r3, 0x150(r7)
/* 801F41E0 001E9F60  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801F41E4 001E9F64  B0 05 00 02 */	sth r0, 2(r5)
/* 801F41E8 001E9F68  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 801F41EC 001E9F6C  60 00 00 01 */	ori r0, r0, 1
/* 801F41F0 001E9F70  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 801F41F4 001E9F74  4E 80 00 20 */	blr 

.global GXSetNumTevStages
GXSetNumTevStages:
/* 801F41F8 001E9F78  80 82 A4 90 */	lwz r4, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F41FC 001E9F7C  38 03 FF FF */	addi r0, r3, -1
/* 801F4200 001E9F80  80 64 02 54 */	lwz r3, 0x254(r4)
/* 801F4204 001E9F84  50 03 54 AA */	rlwimi r3, r0, 0xa, 0x12, 0x15
/* 801F4208 001E9F88  90 64 02 54 */	stw r3, 0x254(r4)
/* 801F420C 001E9F8C  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 801F4210 001E9F90  60 00 00 04 */	ori r0, r0, 4
/* 801F4214 001E9F94  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 801F4218 001E9F98  4E 80 00 20 */	blr 

