.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __strtoul
__strtoul:
/* 803FBC7C 003F19FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803FBC80 003F1A00  7C 08 02 A6 */	mflr r0
/* 803FBC84 003F1A04  2C 03 00 00 */	cmpwi r3, 0
/* 803FBC88 003F1A08  90 01 00 54 */	stw r0, 0x54(r1)
/* 803FBC8C 003F1A0C  BE 01 00 10 */	stmw r16, 0x10(r1)
/* 803FBC90 003F1A10  3B 40 00 00 */	li r26, 0
/* 803FBC94 003F1A14  7C 70 1B 78 */	mr r16, r3
/* 803FBC98 003F1A18  7C 91 23 78 */	mr r17, r4
/* 803FBC9C 003F1A1C  7C B2 2B 78 */	mr r18, r5
/* 803FBCA0 003F1A20  7C D3 33 78 */	mr r19, r6
/* 803FBCA4 003F1A24  7C F4 3B 78 */	mr r20, r7
/* 803FBCA8 003F1A28  7D 15 43 78 */	mr r21, r8
/* 803FBCAC 003F1A2C  7D 36 4B 78 */	mr r22, r9
/* 803FBCB0 003F1A30  3B 60 00 01 */	li r27, 1
/* 803FBCB4 003F1A34  3B 20 00 00 */	li r25, 0
/* 803FBCB8 003F1A38  3B 00 00 00 */	li r24, 0
/* 803FBCBC 003F1A3C  3A E0 00 00 */	li r23, 0
/* 803FBCC0 003F1A40  93 49 00 00 */	stw r26, 0(r9)
/* 803FBCC4 003F1A44  93 48 00 00 */	stw r26, 0(r8)
/* 803FBCC8 003F1A48  41 80 00 1C */	blt lbl_803FBCE4
/* 803FBCCC 003F1A4C  2C 03 00 01 */	cmpwi r3, 1
/* 803FBCD0 003F1A50  41 82 00 14 */	beq lbl_803FBCE4
/* 803FBCD4 003F1A54  2C 03 00 24 */	cmpwi r3, 0x24
/* 803FBCD8 003F1A58  41 81 00 0C */	bgt lbl_803FBCE4
/* 803FBCDC 003F1A5C  2C 04 00 01 */	cmpwi r4, 1
/* 803FBCE0 003F1A60  40 80 00 0C */	bge lbl_803FBCEC
lbl_803FBCE4:
/* 803FBCE4 003F1A64  3B 60 00 40 */	li r27, 0x40
/* 803FBCE8 003F1A68  48 00 00 24 */	b lbl_803FBD0C
lbl_803FBCEC:
/* 803FBCEC 003F1A6C  7E 4C 93 78 */	mr r12, r18
/* 803FBCF0 003F1A70  7E 63 9B 78 */	mr r3, r19
/* 803FBCF4 003F1A74  38 80 00 00 */	li r4, 0
/* 803FBCF8 003F1A78  38 A0 00 00 */	li r5, 0
/* 803FBCFC 003F1A7C  7D 89 03 A6 */	mtctr r12
/* 803FBD00 003F1A80  3B 40 00 01 */	li r26, 1
/* 803FBD04 003F1A84  4E 80 04 21 */	bctrl 
/* 803FBD08 003F1A88  7C 64 1B 78 */	mr r4, r3
lbl_803FBD0C:
/* 803FBD0C 003F1A8C  2C 10 00 00 */	cmpwi r16, 0
/* 803FBD10 003F1A90  41 82 00 0C */	beq lbl_803FBD1C
/* 803FBD14 003F1A94  38 00 FF FF */	li r0, -1
/* 803FBD18 003F1A98  7E E0 83 96 */	divwu r23, r0, r16
lbl_803FBD1C:
/* 803FBD1C 003F1A9C  3C 60 80 49 */	lis r3, lbl_804942B8@ha
/* 803FBD20 003F1AA0  3B C0 00 01 */	li r30, 1
/* 803FBD24 003F1AA4  3B E0 FF FF */	li r31, -1
/* 803FBD28 003F1AA8  3F 80 80 49 */	lis r28, 0x8049
/* 803FBD2C 003F1AAC  3B A3 42 B8 */	addi r29, r3, lbl_804942B8@l
/* 803FBD30 003F1AB0  48 00 03 18 */	b lbl_803FC048
lbl_803FBD34:
/* 803FBD34 003F1AB4  28 1B 00 10 */	cmplwi r27, 0x10
/* 803FBD38 003F1AB8  41 81 03 10 */	bgt lbl_803FC048
/* 803FBD3C 003F1ABC  38 7C 46 70 */	addi r3, r28, 0x4670
/* 803FBD40 003F1AC0  57 60 10 3A */	slwi r0, r27, 2
/* 803FBD44 003F1AC4  7C 63 00 2E */	lwzx r3, r3, r0
/* 803FBD48 003F1AC8  7C 69 03 A6 */	mtctr r3
/* 803FBD4C 003F1ACC  4E 80 04 20 */	bctr 
/* 803FBD50 003F1AD0  2C 04 00 00 */	cmpwi r4, 0
/* 803FBD54 003F1AD4  38 00 00 00 */	li r0, 0
/* 803FBD58 003F1AD8  41 80 00 0C */	blt lbl_803FBD64
/* 803FBD5C 003F1ADC  2C 04 01 00 */	cmpwi r4, 0x100
/* 803FBD60 003F1AE0  41 80 00 08 */	blt lbl_803FBD68
lbl_803FBD64:
/* 803FBD64 003F1AE4  38 00 00 01 */	li r0, 1
lbl_803FBD68:
/* 803FBD68 003F1AE8  2C 00 00 00 */	cmpwi r0, 0
/* 803FBD6C 003F1AEC  41 82 00 0C */	beq lbl_803FBD78
/* 803FBD70 003F1AF0  38 00 00 00 */	li r0, 0
/* 803FBD74 003F1AF4  48 00 00 18 */	b lbl_803FBD8C
lbl_803FBD78:
/* 803FBD78 003F1AF8  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FBD7C 003F1AFC  54 80 08 3C */	slwi r0, r4, 1
/* 803FBD80 003F1B00  80 63 00 08 */	lwz r3, 8(r3)
/* 803FBD84 003F1B04  7C 03 02 2E */	lhzx r0, r3, r0
/* 803FBD88 003F1B08  54 00 05 EE */	rlwinm r0, r0, 0, 0x17, 0x17
lbl_803FBD8C:
/* 803FBD8C 003F1B0C  2C 00 00 00 */	cmpwi r0, 0
/* 803FBD90 003F1B10  41 82 00 28 */	beq lbl_803FBDB8
/* 803FBD94 003F1B14  7E 4C 93 78 */	mr r12, r18
/* 803FBD98 003F1B18  7E 63 9B 78 */	mr r3, r19
/* 803FBD9C 003F1B1C  38 80 00 00 */	li r4, 0
/* 803FBDA0 003F1B20  38 A0 00 00 */	li r5, 0
/* 803FBDA4 003F1B24  7D 89 03 A6 */	mtctr r12
/* 803FBDA8 003F1B28  4E 80 04 21 */	bctrl 
/* 803FBDAC 003F1B2C  7C 64 1B 78 */	mr r4, r3
/* 803FBDB0 003F1B30  3B 39 00 01 */	addi r25, r25, 1
/* 803FBDB4 003F1B34  48 00 02 94 */	b lbl_803FC048
lbl_803FBDB8:
/* 803FBDB8 003F1B38  2C 04 00 2B */	cmpwi r4, 0x2b
/* 803FBDBC 003F1B3C  40 82 00 28 */	bne lbl_803FBDE4
/* 803FBDC0 003F1B40  7E 4C 93 78 */	mr r12, r18
/* 803FBDC4 003F1B44  7E 63 9B 78 */	mr r3, r19
/* 803FBDC8 003F1B48  38 80 00 00 */	li r4, 0
/* 803FBDCC 003F1B4C  38 A0 00 00 */	li r5, 0
/* 803FBDD0 003F1B50  7D 89 03 A6 */	mtctr r12
/* 803FBDD4 003F1B54  3B 5A 00 01 */	addi r26, r26, 1
/* 803FBDD8 003F1B58  4E 80 04 21 */	bctrl 
/* 803FBDDC 003F1B5C  7C 64 1B 78 */	mr r4, r3
/* 803FBDE0 003F1B60  48 00 00 30 */	b lbl_803FBE10
lbl_803FBDE4:
/* 803FBDE4 003F1B64  2C 04 00 2D */	cmpwi r4, 0x2d
/* 803FBDE8 003F1B68  40 82 00 28 */	bne lbl_803FBE10
/* 803FBDEC 003F1B6C  7E 4C 93 78 */	mr r12, r18
/* 803FBDF0 003F1B70  7E 63 9B 78 */	mr r3, r19
/* 803FBDF4 003F1B74  38 80 00 00 */	li r4, 0
/* 803FBDF8 003F1B78  38 A0 00 00 */	li r5, 0
/* 803FBDFC 003F1B7C  7D 89 03 A6 */	mtctr r12
/* 803FBE00 003F1B80  3B 5A 00 01 */	addi r26, r26, 1
/* 803FBE04 003F1B84  4E 80 04 21 */	bctrl 
/* 803FBE08 003F1B88  7C 64 1B 78 */	mr r4, r3
/* 803FBE0C 003F1B8C  93 D5 00 00 */	stw r30, 0(r21)
lbl_803FBE10:
/* 803FBE10 003F1B90  3B 60 00 02 */	li r27, 2
/* 803FBE14 003F1B94  48 00 02 34 */	b lbl_803FC048
/* 803FBE18 003F1B98  2C 10 00 00 */	cmpwi r16, 0
/* 803FBE1C 003F1B9C  41 82 00 0C */	beq lbl_803FBE28
/* 803FBE20 003F1BA0  2C 10 00 10 */	cmpwi r16, 0x10
/* 803FBE24 003F1BA4  40 82 00 34 */	bne lbl_803FBE58
lbl_803FBE28:
/* 803FBE28 003F1BA8  2C 04 00 30 */	cmpwi r4, 0x30
/* 803FBE2C 003F1BAC  40 82 00 2C */	bne lbl_803FBE58
/* 803FBE30 003F1BB0  7E 4C 93 78 */	mr r12, r18
/* 803FBE34 003F1BB4  7E 63 9B 78 */	mr r3, r19
/* 803FBE38 003F1BB8  3B 60 00 04 */	li r27, 4
/* 803FBE3C 003F1BBC  38 80 00 00 */	li r4, 0
/* 803FBE40 003F1BC0  38 A0 00 00 */	li r5, 0
/* 803FBE44 003F1BC4  7D 89 03 A6 */	mtctr r12
/* 803FBE48 003F1BC8  3B 5A 00 01 */	addi r26, r26, 1
/* 803FBE4C 003F1BCC  4E 80 04 21 */	bctrl 
/* 803FBE50 003F1BD0  7C 64 1B 78 */	mr r4, r3
/* 803FBE54 003F1BD4  48 00 01 F4 */	b lbl_803FC048
lbl_803FBE58:
/* 803FBE58 003F1BD8  3B 60 00 08 */	li r27, 8
/* 803FBE5C 003F1BDC  48 00 01 EC */	b lbl_803FC048
/* 803FBE60 003F1BE0  2C 04 00 58 */	cmpwi r4, 0x58
/* 803FBE64 003F1BE4  41 82 00 0C */	beq lbl_803FBE70
/* 803FBE68 003F1BE8  2C 04 00 78 */	cmpwi r4, 0x78
/* 803FBE6C 003F1BEC  40 82 00 30 */	bne lbl_803FBE9C
lbl_803FBE70:
/* 803FBE70 003F1BF0  7E 4C 93 78 */	mr r12, r18
/* 803FBE74 003F1BF4  7E 63 9B 78 */	mr r3, r19
/* 803FBE78 003F1BF8  3A 00 00 10 */	li r16, 0x10
/* 803FBE7C 003F1BFC  3B 60 00 08 */	li r27, 8
/* 803FBE80 003F1C00  38 80 00 00 */	li r4, 0
/* 803FBE84 003F1C04  38 A0 00 00 */	li r5, 0
/* 803FBE88 003F1C08  7D 89 03 A6 */	mtctr r12
/* 803FBE8C 003F1C0C  3B 5A 00 01 */	addi r26, r26, 1
/* 803FBE90 003F1C10  4E 80 04 21 */	bctrl 
/* 803FBE94 003F1C14  7C 64 1B 78 */	mr r4, r3
/* 803FBE98 003F1C18  48 00 01 B0 */	b lbl_803FC048
lbl_803FBE9C:
/* 803FBE9C 003F1C1C  2C 10 00 00 */	cmpwi r16, 0
/* 803FBEA0 003F1C20  40 82 00 08 */	bne lbl_803FBEA8
/* 803FBEA4 003F1C24  3A 00 00 08 */	li r16, 8
lbl_803FBEA8:
/* 803FBEA8 003F1C28  3B 60 00 10 */	li r27, 0x10
/* 803FBEAC 003F1C2C  48 00 01 9C */	b lbl_803FC048
/* 803FBEB0 003F1C30  2C 10 00 00 */	cmpwi r16, 0
/* 803FBEB4 003F1C34  40 82 00 08 */	bne lbl_803FBEBC
/* 803FBEB8 003F1C38  3A 00 00 0A */	li r16, 0xa
lbl_803FBEBC:
/* 803FBEBC 003F1C3C  2C 17 00 00 */	cmpwi r23, 0
/* 803FBEC0 003F1C40  40 82 00 08 */	bne lbl_803FBEC8
/* 803FBEC4 003F1C44  7E FF 83 96 */	divwu r23, r31, r16
lbl_803FBEC8:
/* 803FBEC8 003F1C48  2C 04 00 00 */	cmpwi r4, 0
/* 803FBECC 003F1C4C  38 00 00 00 */	li r0, 0
/* 803FBED0 003F1C50  41 80 00 0C */	blt lbl_803FBEDC
/* 803FBED4 003F1C54  2C 04 01 00 */	cmpwi r4, 0x100
/* 803FBED8 003F1C58  41 80 00 08 */	blt lbl_803FBEE0
lbl_803FBEDC:
/* 803FBEDC 003F1C5C  38 00 00 01 */	li r0, 1
lbl_803FBEE0:
/* 803FBEE0 003F1C60  2C 00 00 00 */	cmpwi r0, 0
/* 803FBEE4 003F1C64  41 82 00 0C */	beq lbl_803FBEF0
/* 803FBEE8 003F1C68  38 00 00 00 */	li r0, 0
/* 803FBEEC 003F1C6C  48 00 00 18 */	b lbl_803FBF04
lbl_803FBEF0:
/* 803FBEF0 003F1C70  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FBEF4 003F1C74  54 80 08 3C */	slwi r0, r4, 1
/* 803FBEF8 003F1C78  80 63 00 08 */	lwz r3, 8(r3)
/* 803FBEFC 003F1C7C  7C 03 02 2E */	lhzx r0, r3, r0
/* 803FBF00 003F1C80  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
lbl_803FBF04:
/* 803FBF04 003F1C84  2C 00 00 00 */	cmpwi r0, 0
/* 803FBF08 003F1C88  41 82 00 28 */	beq lbl_803FBF30
/* 803FBF0C 003F1C8C  38 84 FF D0 */	addi r4, r4, -48
/* 803FBF10 003F1C90  7C 04 80 00 */	cmpw r4, r16
/* 803FBF14 003F1C94  41 80 00 EC */	blt lbl_803FC000
/* 803FBF18 003F1C98  2C 1B 00 10 */	cmpwi r27, 0x10
/* 803FBF1C 003F1C9C  3B 60 00 40 */	li r27, 0x40
/* 803FBF20 003F1CA0  40 82 00 08 */	bne lbl_803FBF28
/* 803FBF24 003F1CA4  3B 60 00 20 */	li r27, 0x20
lbl_803FBF28:
/* 803FBF28 003F1CA8  38 84 00 30 */	addi r4, r4, 0x30
/* 803FBF2C 003F1CAC  48 00 01 1C */	b lbl_803FC048
lbl_803FBF30:
/* 803FBF30 003F1CB0  2C 04 00 00 */	cmpwi r4, 0
/* 803FBF34 003F1CB4  38 00 00 00 */	li r0, 0
/* 803FBF38 003F1CB8  41 80 00 0C */	blt lbl_803FBF44
/* 803FBF3C 003F1CBC  2C 04 01 00 */	cmpwi r4, 0x100
/* 803FBF40 003F1CC0  41 80 00 08 */	blt lbl_803FBF48
lbl_803FBF44:
/* 803FBF44 003F1CC4  38 00 00 01 */	li r0, 1
lbl_803FBF48:
/* 803FBF48 003F1CC8  2C 00 00 00 */	cmpwi r0, 0
/* 803FBF4C 003F1CCC  41 82 00 0C */	beq lbl_803FBF58
/* 803FBF50 003F1CD0  38 00 00 00 */	li r0, 0
/* 803FBF54 003F1CD4  48 00 00 18 */	b lbl_803FBF6C
lbl_803FBF58:
/* 803FBF58 003F1CD8  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FBF5C 003F1CDC  54 80 08 3C */	slwi r0, r4, 1
/* 803FBF60 003F1CE0  80 63 00 08 */	lwz r3, 8(r3)
/* 803FBF64 003F1CE4  7C 03 02 2E */	lhzx r0, r3, r0
/* 803FBF68 003F1CE8  54 00 07 FE */	clrlwi r0, r0, 0x1f
lbl_803FBF6C:
/* 803FBF6C 003F1CEC  2C 00 00 00 */	cmpwi r0, 0
/* 803FBF70 003F1CF0  41 82 00 44 */	beq lbl_803FBFB4
/* 803FBF74 003F1CF4  2C 04 00 00 */	cmpwi r4, 0
/* 803FBF78 003F1CF8  38 00 00 00 */	li r0, 0
/* 803FBF7C 003F1CFC  41 80 00 0C */	blt lbl_803FBF88
/* 803FBF80 003F1D00  2C 04 01 00 */	cmpwi r4, 0x100
/* 803FBF84 003F1D04  41 80 00 08 */	blt lbl_803FBF8C
lbl_803FBF88:
/* 803FBF88 003F1D08  38 00 00 01 */	li r0, 1
lbl_803FBF8C:
/* 803FBF8C 003F1D0C  2C 00 00 00 */	cmpwi r0, 0
/* 803FBF90 003F1D10  41 82 00 0C */	beq lbl_803FBF9C
/* 803FBF94 003F1D14  7C 83 23 78 */	mr r3, r4
/* 803FBF98 003F1D18  48 00 00 10 */	b lbl_803FBFA8
lbl_803FBF9C:
/* 803FBF9C 003F1D1C  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FBFA0 003F1D20  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803FBFA4 003F1D24  7C 63 20 AE */	lbzx r3, r3, r4
lbl_803FBFA8:
/* 803FBFA8 003F1D28  38 03 FF C9 */	addi r0, r3, -55
/* 803FBFAC 003F1D2C  7C 00 80 00 */	cmpw r0, r16
/* 803FBFB0 003F1D30  41 80 00 1C */	blt lbl_803FBFCC
lbl_803FBFB4:
/* 803FBFB4 003F1D34  2C 1B 00 10 */	cmpwi r27, 0x10
/* 803FBFB8 003F1D38  40 82 00 0C */	bne lbl_803FBFC4
/* 803FBFBC 003F1D3C  3B 60 00 20 */	li r27, 0x20
/* 803FBFC0 003F1D40  48 00 00 88 */	b lbl_803FC048
lbl_803FBFC4:
/* 803FBFC4 003F1D44  3B 60 00 40 */	li r27, 0x40
/* 803FBFC8 003F1D48  48 00 00 80 */	b lbl_803FC048
lbl_803FBFCC:
/* 803FBFCC 003F1D4C  2C 04 00 00 */	cmpwi r4, 0
/* 803FBFD0 003F1D50  38 00 00 00 */	li r0, 0
/* 803FBFD4 003F1D54  41 80 00 0C */	blt lbl_803FBFE0
/* 803FBFD8 003F1D58  2C 04 01 00 */	cmpwi r4, 0x100
/* 803FBFDC 003F1D5C  41 80 00 08 */	blt lbl_803FBFE4
lbl_803FBFE0:
/* 803FBFE0 003F1D60  38 00 00 01 */	li r0, 1
lbl_803FBFE4:
/* 803FBFE4 003F1D64  2C 00 00 00 */	cmpwi r0, 0
/* 803FBFE8 003F1D68  41 82 00 08 */	beq lbl_803FBFF0
/* 803FBFEC 003F1D6C  48 00 00 10 */	b lbl_803FBFFC
lbl_803FBFF0:
/* 803FBFF0 003F1D70  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FBFF4 003F1D74  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803FBFF8 003F1D78  7C 83 20 AE */	lbzx r4, r3, r4
lbl_803FBFFC:
/* 803FBFFC 003F1D7C  38 84 FF C9 */	addi r4, r4, -55
lbl_803FC000:
/* 803FC000 003F1D80  7C 18 B8 40 */	cmplw r24, r23
/* 803FC004 003F1D84  40 81 00 08 */	ble lbl_803FC00C
/* 803FC008 003F1D88  93 D6 00 00 */	stw r30, 0(r22)
lbl_803FC00C:
/* 803FC00C 003F1D8C  7F 18 81 D6 */	mullw r24, r24, r16
/* 803FC010 003F1D90  20 18 FF FF */	subfic r0, r24, -1
/* 803FC014 003F1D94  7C 04 00 40 */	cmplw r4, r0
/* 803FC018 003F1D98  40 81 00 08 */	ble lbl_803FC020
/* 803FC01C 003F1D9C  93 D6 00 00 */	stw r30, 0(r22)
lbl_803FC020:
/* 803FC020 003F1DA0  7E 4C 93 78 */	mr r12, r18
/* 803FC024 003F1DA4  7F 18 22 14 */	add r24, r24, r4
/* 803FC028 003F1DA8  7E 63 9B 78 */	mr r3, r19
/* 803FC02C 003F1DAC  3B 60 00 10 */	li r27, 0x10
/* 803FC030 003F1DB0  38 80 00 00 */	li r4, 0
/* 803FC034 003F1DB4  38 A0 00 00 */	li r5, 0
/* 803FC038 003F1DB8  7D 89 03 A6 */	mtctr r12
/* 803FC03C 003F1DBC  3B 5A 00 01 */	addi r26, r26, 1
/* 803FC040 003F1DC0  4E 80 04 21 */	bctrl 
/* 803FC044 003F1DC4  7C 64 1B 78 */	mr r4, r3
lbl_803FC048:
/* 803FC048 003F1DC8  7C 1A 88 00 */	cmpw r26, r17
/* 803FC04C 003F1DCC  41 81 00 14 */	bgt lbl_803FC060
/* 803FC050 003F1DD0  2C 04 FF FF */	cmpwi r4, -1
/* 803FC054 003F1DD4  41 82 00 0C */	beq lbl_803FC060
/* 803FC058 003F1DD8  57 60 06 75 */	rlwinm. r0, r27, 0, 0x19, 0x1a
/* 803FC05C 003F1DDC  41 82 FC D8 */	beq lbl_803FBD34
lbl_803FC060:
/* 803FC060 003F1DE0  73 60 00 34 */	andi. r0, r27, 0x34
/* 803FC064 003F1DE4  40 82 00 10 */	bne lbl_803FC074
/* 803FC068 003F1DE8  3B 00 00 00 */	li r24, 0
/* 803FC06C 003F1DEC  93 14 00 00 */	stw r24, 0(r20)
/* 803FC070 003F1DF0  48 00 00 10 */	b lbl_803FC080
lbl_803FC074:
/* 803FC074 003F1DF4  7C 7A CA 14 */	add r3, r26, r25
/* 803FC078 003F1DF8  38 03 FF FF */	addi r0, r3, -1
/* 803FC07C 003F1DFC  90 14 00 00 */	stw r0, 0(r20)
lbl_803FC080:
/* 803FC080 003F1E00  7E 4C 93 78 */	mr r12, r18
/* 803FC084 003F1E04  7E 63 9B 78 */	mr r3, r19
/* 803FC088 003F1E08  38 A0 00 01 */	li r5, 1
/* 803FC08C 003F1E0C  7D 89 03 A6 */	mtctr r12
/* 803FC090 003F1E10  4E 80 04 21 */	bctrl 
/* 803FC094 003F1E14  7F 03 C3 78 */	mr r3, r24
/* 803FC098 003F1E18  BA 01 00 10 */	lmw r16, 0x10(r1)
/* 803FC09C 003F1E1C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803FC0A0 003F1E20  7C 08 03 A6 */	mtlr r0
/* 803FC0A4 003F1E24  38 21 00 50 */	addi r1, r1, 0x50
/* 803FC0A8 003F1E28  4E 80 00 20 */	blr 

.global __strtoull
__strtoull:
/* 803FC0AC 003F1E2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803FC0B0 003F1E30  7C 08 02 A6 */	mflr r0
/* 803FC0B4 003F1E34  2C 03 00 00 */	cmpwi r3, 0
/* 803FC0B8 003F1E38  90 01 00 64 */	stw r0, 0x64(r1)
/* 803FC0BC 003F1E3C  BD C1 00 18 */	stmw r14, 0x18(r1)
/* 803FC0C0 003F1E40  3B 60 00 00 */	li r27, 0
/* 803FC0C4 003F1E44  7C 6F 1B 78 */	mr r15, r3
/* 803FC0C8 003F1E48  7C 90 23 78 */	mr r16, r4
/* 803FC0CC 003F1E4C  90 E1 00 08 */	stw r7, 8(r1)
/* 803FC0D0 003F1E50  7C B1 2B 78 */	mr r17, r5
/* 803FC0D4 003F1E54  7C D2 33 78 */	mr r18, r6
/* 803FC0D8 003F1E58  7D 13 43 78 */	mr r19, r8
/* 803FC0DC 003F1E5C  7D 34 4B 78 */	mr r20, r9
/* 803FC0E0 003F1E60  3B 80 00 01 */	li r28, 1
/* 803FC0E4 003F1E64  3B 40 00 00 */	li r26, 0
/* 803FC0E8 003F1E68  3B 00 00 00 */	li r24, 0
/* 803FC0EC 003F1E6C  3B 20 00 00 */	li r25, 0
/* 803FC0F0 003F1E70  3A C0 00 00 */	li r22, 0
/* 803FC0F4 003F1E74  3A E0 00 00 */	li r23, 0
/* 803FC0F8 003F1E78  93 69 00 00 */	stw r27, 0(r9)
/* 803FC0FC 003F1E7C  93 68 00 00 */	stw r27, 0(r8)
/* 803FC100 003F1E80  41 80 00 1C */	blt lbl_803FC11C
/* 803FC104 003F1E84  2C 03 00 01 */	cmpwi r3, 1
/* 803FC108 003F1E88  41 82 00 14 */	beq lbl_803FC11C
/* 803FC10C 003F1E8C  2C 03 00 24 */	cmpwi r3, 0x24
/* 803FC110 003F1E90  41 81 00 0C */	bgt lbl_803FC11C
/* 803FC114 003F1E94  2C 04 00 01 */	cmpwi r4, 1
/* 803FC118 003F1E98  40 80 00 0C */	bge lbl_803FC124
lbl_803FC11C:
/* 803FC11C 003F1E9C  3B 80 00 40 */	li r28, 0x40
/* 803FC120 003F1EA0  48 00 00 24 */	b lbl_803FC144
lbl_803FC124:
/* 803FC124 003F1EA4  7E 2C 8B 78 */	mr r12, r17
/* 803FC128 003F1EA8  7E 43 93 78 */	mr r3, r18
/* 803FC12C 003F1EAC  38 80 00 00 */	li r4, 0
/* 803FC130 003F1EB0  38 A0 00 00 */	li r5, 0
/* 803FC134 003F1EB4  7D 89 03 A6 */	mtctr r12
/* 803FC138 003F1EB8  3B 60 00 01 */	li r27, 1
/* 803FC13C 003F1EBC  4E 80 04 21 */	bctrl 
/* 803FC140 003F1EC0  7C 75 1B 78 */	mr r21, r3
lbl_803FC144:
/* 803FC144 003F1EC4  2C 0F 00 00 */	cmpwi r15, 0
/* 803FC148 003F1EC8  41 82 00 20 */	beq lbl_803FC168
/* 803FC14C 003F1ECC  7D E6 7B 78 */	mr r6, r15
/* 803FC150 003F1ED0  7D E5 FE 70 */	srawi r5, r15, 0x1f
/* 803FC154 003F1ED4  38 60 FF FF */	li r3, -1
/* 803FC158 003F1ED8  38 80 FF FF */	li r4, -1
/* 803FC15C 003F1EDC  4B FF 52 29 */	bl __div2u
/* 803FC160 003F1EE0  7C 96 23 78 */	mr r22, r4
/* 803FC164 003F1EE4  7C 77 1B 78 */	mr r23, r3
lbl_803FC168:
/* 803FC168 003F1EE8  3C 60 80 49 */	lis r3, lbl_804942B8@ha
/* 803FC16C 003F1EEC  3B C0 00 01 */	li r30, 1
/* 803FC170 003F1EF0  3B E0 FF FF */	li r31, -1
/* 803FC174 003F1EF4  3D C0 80 49 */	lis r14, 0x8049
/* 803FC178 003F1EF8  3B A3 42 B8 */	addi r29, r3, lbl_804942B8@l
/* 803FC17C 003F1EFC  48 00 03 7C */	b lbl_803FC4F8
lbl_803FC180:
/* 803FC180 003F1F00  28 1C 00 10 */	cmplwi r28, 0x10
/* 803FC184 003F1F04  41 81 03 74 */	bgt lbl_803FC4F8
/* 803FC188 003F1F08  38 6E 46 B4 */	addi r3, r14, 0x46b4
/* 803FC18C 003F1F0C  57 80 10 3A */	slwi r0, r28, 2
/* 803FC190 003F1F10  7C 63 00 2E */	lwzx r3, r3, r0
/* 803FC194 003F1F14  7C 69 03 A6 */	mtctr r3
/* 803FC198 003F1F18  4E 80 04 20 */	bctr 
/* 803FC19C 003F1F1C  2C 15 00 00 */	cmpwi r21, 0
/* 803FC1A0 003F1F20  38 00 00 00 */	li r0, 0
/* 803FC1A4 003F1F24  41 80 00 0C */	blt lbl_803FC1B0
/* 803FC1A8 003F1F28  2C 15 01 00 */	cmpwi r21, 0x100
/* 803FC1AC 003F1F2C  41 80 00 08 */	blt lbl_803FC1B4
lbl_803FC1B0:
/* 803FC1B0 003F1F30  38 00 00 01 */	li r0, 1
lbl_803FC1B4:
/* 803FC1B4 003F1F34  2C 00 00 00 */	cmpwi r0, 0
/* 803FC1B8 003F1F38  41 82 00 0C */	beq lbl_803FC1C4
/* 803FC1BC 003F1F3C  38 00 00 00 */	li r0, 0
/* 803FC1C0 003F1F40  48 00 00 18 */	b lbl_803FC1D8
lbl_803FC1C4:
/* 803FC1C4 003F1F44  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FC1C8 003F1F48  56 A0 08 3C */	slwi r0, r21, 1
/* 803FC1CC 003F1F4C  80 63 00 08 */	lwz r3, 8(r3)
/* 803FC1D0 003F1F50  7C 03 02 2E */	lhzx r0, r3, r0
/* 803FC1D4 003F1F54  54 00 05 EE */	rlwinm r0, r0, 0, 0x17, 0x17
lbl_803FC1D8:
/* 803FC1D8 003F1F58  2C 00 00 00 */	cmpwi r0, 0
/* 803FC1DC 003F1F5C  41 82 00 28 */	beq lbl_803FC204
/* 803FC1E0 003F1F60  7E 2C 8B 78 */	mr r12, r17
/* 803FC1E4 003F1F64  7E 43 93 78 */	mr r3, r18
/* 803FC1E8 003F1F68  38 80 00 00 */	li r4, 0
/* 803FC1EC 003F1F6C  38 A0 00 00 */	li r5, 0
/* 803FC1F0 003F1F70  7D 89 03 A6 */	mtctr r12
/* 803FC1F4 003F1F74  4E 80 04 21 */	bctrl 
/* 803FC1F8 003F1F78  7C 75 1B 78 */	mr r21, r3
/* 803FC1FC 003F1F7C  3B 5A 00 01 */	addi r26, r26, 1
/* 803FC200 003F1F80  48 00 02 F8 */	b lbl_803FC4F8
lbl_803FC204:
/* 803FC204 003F1F84  2C 15 00 2B */	cmpwi r21, 0x2b
/* 803FC208 003F1F88  40 82 00 28 */	bne lbl_803FC230
/* 803FC20C 003F1F8C  7E 2C 8B 78 */	mr r12, r17
/* 803FC210 003F1F90  7E 43 93 78 */	mr r3, r18
/* 803FC214 003F1F94  38 80 00 00 */	li r4, 0
/* 803FC218 003F1F98  38 A0 00 00 */	li r5, 0
/* 803FC21C 003F1F9C  7D 89 03 A6 */	mtctr r12
/* 803FC220 003F1FA0  3B 7B 00 01 */	addi r27, r27, 1
/* 803FC224 003F1FA4  4E 80 04 21 */	bctrl 
/* 803FC228 003F1FA8  7C 75 1B 78 */	mr r21, r3
/* 803FC22C 003F1FAC  48 00 00 30 */	b lbl_803FC25C
lbl_803FC230:
/* 803FC230 003F1FB0  2C 15 00 2D */	cmpwi r21, 0x2d
/* 803FC234 003F1FB4  40 82 00 28 */	bne lbl_803FC25C
/* 803FC238 003F1FB8  7E 2C 8B 78 */	mr r12, r17
/* 803FC23C 003F1FBC  7E 43 93 78 */	mr r3, r18
/* 803FC240 003F1FC0  38 80 00 00 */	li r4, 0
/* 803FC244 003F1FC4  38 A0 00 00 */	li r5, 0
/* 803FC248 003F1FC8  7D 89 03 A6 */	mtctr r12
/* 803FC24C 003F1FCC  3B 7B 00 01 */	addi r27, r27, 1
/* 803FC250 003F1FD0  4E 80 04 21 */	bctrl 
/* 803FC254 003F1FD4  7C 75 1B 78 */	mr r21, r3
/* 803FC258 003F1FD8  93 D3 00 00 */	stw r30, 0(r19)
lbl_803FC25C:
/* 803FC25C 003F1FDC  3B 80 00 02 */	li r28, 2
/* 803FC260 003F1FE0  48 00 02 98 */	b lbl_803FC4F8
/* 803FC264 003F1FE4  2C 0F 00 00 */	cmpwi r15, 0
/* 803FC268 003F1FE8  41 82 00 0C */	beq lbl_803FC274
/* 803FC26C 003F1FEC  2C 0F 00 10 */	cmpwi r15, 0x10
/* 803FC270 003F1FF0  40 82 00 34 */	bne lbl_803FC2A4
lbl_803FC274:
/* 803FC274 003F1FF4  2C 15 00 30 */	cmpwi r21, 0x30
/* 803FC278 003F1FF8  40 82 00 2C */	bne lbl_803FC2A4
/* 803FC27C 003F1FFC  7E 2C 8B 78 */	mr r12, r17
/* 803FC280 003F2000  7E 43 93 78 */	mr r3, r18
/* 803FC284 003F2004  3B 80 00 04 */	li r28, 4
/* 803FC288 003F2008  38 80 00 00 */	li r4, 0
/* 803FC28C 003F200C  38 A0 00 00 */	li r5, 0
/* 803FC290 003F2010  7D 89 03 A6 */	mtctr r12
/* 803FC294 003F2014  3B 7B 00 01 */	addi r27, r27, 1
/* 803FC298 003F2018  4E 80 04 21 */	bctrl 
/* 803FC29C 003F201C  7C 75 1B 78 */	mr r21, r3
/* 803FC2A0 003F2020  48 00 02 58 */	b lbl_803FC4F8
lbl_803FC2A4:
/* 803FC2A4 003F2024  3B 80 00 08 */	li r28, 8
/* 803FC2A8 003F2028  48 00 02 50 */	b lbl_803FC4F8
/* 803FC2AC 003F202C  2C 15 00 58 */	cmpwi r21, 0x58
/* 803FC2B0 003F2030  41 82 00 0C */	beq lbl_803FC2BC
/* 803FC2B4 003F2034  2C 15 00 78 */	cmpwi r21, 0x78
/* 803FC2B8 003F2038  40 82 00 30 */	bne lbl_803FC2E8
lbl_803FC2BC:
/* 803FC2BC 003F203C  7E 2C 8B 78 */	mr r12, r17
/* 803FC2C0 003F2040  7E 43 93 78 */	mr r3, r18
/* 803FC2C4 003F2044  39 E0 00 10 */	li r15, 0x10
/* 803FC2C8 003F2048  3B 80 00 08 */	li r28, 8
/* 803FC2CC 003F204C  38 80 00 00 */	li r4, 0
/* 803FC2D0 003F2050  38 A0 00 00 */	li r5, 0
/* 803FC2D4 003F2054  7D 89 03 A6 */	mtctr r12
/* 803FC2D8 003F2058  3B 7B 00 01 */	addi r27, r27, 1
/* 803FC2DC 003F205C  4E 80 04 21 */	bctrl 
/* 803FC2E0 003F2060  7C 75 1B 78 */	mr r21, r3
/* 803FC2E4 003F2064  48 00 02 14 */	b lbl_803FC4F8
lbl_803FC2E8:
/* 803FC2E8 003F2068  2C 0F 00 00 */	cmpwi r15, 0
/* 803FC2EC 003F206C  40 82 00 08 */	bne lbl_803FC2F4
/* 803FC2F0 003F2070  39 E0 00 08 */	li r15, 8
lbl_803FC2F4:
/* 803FC2F4 003F2074  3B 80 00 10 */	li r28, 0x10
/* 803FC2F8 003F2078  48 00 02 00 */	b lbl_803FC4F8
/* 803FC2FC 003F207C  2C 0F 00 00 */	cmpwi r15, 0
/* 803FC300 003F2080  40 82 00 08 */	bne lbl_803FC308
/* 803FC304 003F2084  39 E0 00 0A */	li r15, 0xa
lbl_803FC308:
/* 803FC308 003F2088  38 00 00 00 */	li r0, 0
/* 803FC30C 003F208C  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 803FC310 003F2090  7E E0 02 78 */	xor r0, r23, r0
/* 803FC314 003F2094  7E C0 03 79 */	or. r0, r22, r0
/* 803FC318 003F2098  40 82 00 20 */	bne lbl_803FC338
/* 803FC31C 003F209C  7D E6 7B 78 */	mr r6, r15
/* 803FC320 003F20A0  7D E5 FE 70 */	srawi r5, r15, 0x1f
/* 803FC324 003F20A4  38 60 FF FF */	li r3, -1
/* 803FC328 003F20A8  38 80 FF FF */	li r4, -1
/* 803FC32C 003F20AC  4B FF 50 59 */	bl __div2u
/* 803FC330 003F20B0  7C 96 23 78 */	mr r22, r4
/* 803FC334 003F20B4  7C 77 1B 78 */	mr r23, r3
lbl_803FC338:
/* 803FC338 003F20B8  2C 15 00 00 */	cmpwi r21, 0
/* 803FC33C 003F20BC  38 00 00 00 */	li r0, 0
/* 803FC340 003F20C0  41 80 00 0C */	blt lbl_803FC34C
/* 803FC344 003F20C4  2C 15 01 00 */	cmpwi r21, 0x100
/* 803FC348 003F20C8  41 80 00 08 */	blt lbl_803FC350
lbl_803FC34C:
/* 803FC34C 003F20CC  38 00 00 01 */	li r0, 1
lbl_803FC350:
/* 803FC350 003F20D0  2C 00 00 00 */	cmpwi r0, 0
/* 803FC354 003F20D4  41 82 00 0C */	beq lbl_803FC360
/* 803FC358 003F20D8  38 00 00 00 */	li r0, 0
/* 803FC35C 003F20DC  48 00 00 18 */	b lbl_803FC374
lbl_803FC360:
/* 803FC360 003F20E0  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FC364 003F20E4  56 A0 08 3C */	slwi r0, r21, 1
/* 803FC368 003F20E8  80 63 00 08 */	lwz r3, 8(r3)
/* 803FC36C 003F20EC  7C 03 02 2E */	lhzx r0, r3, r0
/* 803FC370 003F20F0  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
lbl_803FC374:
/* 803FC374 003F20F4  2C 00 00 00 */	cmpwi r0, 0
/* 803FC378 003F20F8  41 82 00 28 */	beq lbl_803FC3A0
/* 803FC37C 003F20FC  3A B5 FF D0 */	addi r21, r21, -48
/* 803FC380 003F2100  7C 15 78 00 */	cmpw r21, r15
/* 803FC384 003F2104  41 80 00 EC */	blt lbl_803FC470
/* 803FC388 003F2108  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803FC38C 003F210C  3B 80 00 40 */	li r28, 0x40
/* 803FC390 003F2110  40 82 00 08 */	bne lbl_803FC398
/* 803FC394 003F2114  3B 80 00 20 */	li r28, 0x20
lbl_803FC398:
/* 803FC398 003F2118  3A B5 00 30 */	addi r21, r21, 0x30
/* 803FC39C 003F211C  48 00 01 5C */	b lbl_803FC4F8
lbl_803FC3A0:
/* 803FC3A0 003F2120  2C 15 00 00 */	cmpwi r21, 0
/* 803FC3A4 003F2124  38 00 00 00 */	li r0, 0
/* 803FC3A8 003F2128  41 80 00 0C */	blt lbl_803FC3B4
/* 803FC3AC 003F212C  2C 15 01 00 */	cmpwi r21, 0x100
/* 803FC3B0 003F2130  41 80 00 08 */	blt lbl_803FC3B8
lbl_803FC3B4:
/* 803FC3B4 003F2134  38 00 00 01 */	li r0, 1
lbl_803FC3B8:
/* 803FC3B8 003F2138  2C 00 00 00 */	cmpwi r0, 0
/* 803FC3BC 003F213C  41 82 00 0C */	beq lbl_803FC3C8
/* 803FC3C0 003F2140  38 00 00 00 */	li r0, 0
/* 803FC3C4 003F2144  48 00 00 18 */	b lbl_803FC3DC
lbl_803FC3C8:
/* 803FC3C8 003F2148  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FC3CC 003F214C  56 A0 08 3C */	slwi r0, r21, 1
/* 803FC3D0 003F2150  80 63 00 08 */	lwz r3, 8(r3)
/* 803FC3D4 003F2154  7C 03 02 2E */	lhzx r0, r3, r0
/* 803FC3D8 003F2158  54 00 07 FE */	clrlwi r0, r0, 0x1f
lbl_803FC3DC:
/* 803FC3DC 003F215C  2C 00 00 00 */	cmpwi r0, 0
/* 803FC3E0 003F2160  41 82 00 44 */	beq lbl_803FC424
/* 803FC3E4 003F2164  2C 15 00 00 */	cmpwi r21, 0
/* 803FC3E8 003F2168  38 00 00 00 */	li r0, 0
/* 803FC3EC 003F216C  41 80 00 0C */	blt lbl_803FC3F8
/* 803FC3F0 003F2170  2C 15 01 00 */	cmpwi r21, 0x100
/* 803FC3F4 003F2174  41 80 00 08 */	blt lbl_803FC3FC
lbl_803FC3F8:
/* 803FC3F8 003F2178  38 00 00 01 */	li r0, 1
lbl_803FC3FC:
/* 803FC3FC 003F217C  2C 00 00 00 */	cmpwi r0, 0
/* 803FC400 003F2180  41 82 00 0C */	beq lbl_803FC40C
/* 803FC404 003F2184  7E A3 AB 78 */	mr r3, r21
/* 803FC408 003F2188  48 00 00 10 */	b lbl_803FC418
lbl_803FC40C:
/* 803FC40C 003F218C  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FC410 003F2190  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803FC414 003F2194  7C 63 A8 AE */	lbzx r3, r3, r21
lbl_803FC418:
/* 803FC418 003F2198  38 03 FF C9 */	addi r0, r3, -55
/* 803FC41C 003F219C  7C 00 78 00 */	cmpw r0, r15
/* 803FC420 003F21A0  41 80 00 1C */	blt lbl_803FC43C
lbl_803FC424:
/* 803FC424 003F21A4  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803FC428 003F21A8  40 82 00 0C */	bne lbl_803FC434
/* 803FC42C 003F21AC  3B 80 00 20 */	li r28, 0x20
/* 803FC430 003F21B0  48 00 00 C8 */	b lbl_803FC4F8
lbl_803FC434:
/* 803FC434 003F21B4  3B 80 00 40 */	li r28, 0x40
/* 803FC438 003F21B8  48 00 00 C0 */	b lbl_803FC4F8
lbl_803FC43C:
/* 803FC43C 003F21BC  2C 15 00 00 */	cmpwi r21, 0
/* 803FC440 003F21C0  38 00 00 00 */	li r0, 0
/* 803FC444 003F21C4  41 80 00 0C */	blt lbl_803FC450
/* 803FC448 003F21C8  2C 15 01 00 */	cmpwi r21, 0x100
/* 803FC44C 003F21CC  41 80 00 08 */	blt lbl_803FC454
lbl_803FC450:
/* 803FC450 003F21D0  38 00 00 01 */	li r0, 1
lbl_803FC454:
/* 803FC454 003F21D4  2C 00 00 00 */	cmpwi r0, 0
/* 803FC458 003F21D8  41 82 00 08 */	beq lbl_803FC460
/* 803FC45C 003F21DC  48 00 00 10 */	b lbl_803FC46C
lbl_803FC460:
/* 803FC460 003F21E0  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803FC464 003F21E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803FC468 003F21E8  7E A3 A8 AE */	lbzx r21, r3, r21
lbl_803FC46C:
/* 803FC46C 003F21EC  3A B5 FF C9 */	addi r21, r21, -55
lbl_803FC470:
/* 803FC470 003F21F0  7C 18 B0 10 */	subfc r0, r24, r22
/* 803FC474 003F21F4  7C 19 B9 10 */	subfe r0, r25, r23
/* 803FC478 003F21F8  7C 16 B1 10 */	subfe r0, r22, r22
/* 803FC47C 003F21FC  7C 00 00 D1 */	neg. r0, r0
/* 803FC480 003F2200  41 82 00 08 */	beq lbl_803FC488
/* 803FC484 003F2204  93 D4 00 00 */	stw r30, 0(r20)
lbl_803FC488:
/* 803FC488 003F2208  7C 78 78 16 */	mulhwu r3, r24, r15
/* 803FC48C 003F220C  7D E5 FE 70 */	srawi r5, r15, 0x1f
/* 803FC490 003F2210  7E A6 FE 70 */	srawi r6, r21, 0x1f
/* 803FC494 003F2214  7C 99 79 D6 */	mullw r4, r25, r15
/* 803FC498 003F2218  7C 83 22 14 */	add r4, r3, r4
/* 803FC49C 003F221C  7C 78 29 D6 */	mullw r3, r24, r5
/* 803FC4A0 003F2220  7C 18 79 D6 */	mullw r0, r24, r15
/* 803FC4A4 003F2224  7C E4 1A 14 */	add r7, r4, r3
/* 803FC4A8 003F2228  7C A0 F8 10 */	subfc r5, r0, r31
/* 803FC4AC 003F222C  7C 87 F9 10 */	subfe r4, r7, r31
/* 803FC4B0 003F2230  7C 75 28 10 */	subfc r3, r21, r5
/* 803FC4B4 003F2234  7C 66 21 10 */	subfe r3, r6, r4
/* 803FC4B8 003F2238  7C 65 29 10 */	subfe r3, r5, r5
/* 803FC4BC 003F223C  7C 63 00 D1 */	neg. r3, r3
/* 803FC4C0 003F2240  41 82 00 08 */	beq lbl_803FC4C8
/* 803FC4C4 003F2244  93 D4 00 00 */	stw r30, 0(r20)
lbl_803FC4C8:
/* 803FC4C8 003F2248  7E A4 FE 70 */	srawi r4, r21, 0x1f
/* 803FC4CC 003F224C  7E 2C 8B 78 */	mr r12, r17
/* 803FC4D0 003F2250  7F 00 A8 14 */	addc r24, r0, r21
/* 803FC4D4 003F2254  7E 43 93 78 */	mr r3, r18
/* 803FC4D8 003F2258  7F 27 21 14 */	adde r25, r7, r4
/* 803FC4DC 003F225C  3B 80 00 10 */	li r28, 0x10
/* 803FC4E0 003F2260  38 80 00 00 */	li r4, 0
/* 803FC4E4 003F2264  38 A0 00 00 */	li r5, 0
/* 803FC4E8 003F2268  7D 89 03 A6 */	mtctr r12
/* 803FC4EC 003F226C  3B 7B 00 01 */	addi r27, r27, 1
/* 803FC4F0 003F2270  4E 80 04 21 */	bctrl 
/* 803FC4F4 003F2274  7C 75 1B 78 */	mr r21, r3
lbl_803FC4F8:
/* 803FC4F8 003F2278  7C 1B 80 00 */	cmpw r27, r16
/* 803FC4FC 003F227C  41 81 00 14 */	bgt lbl_803FC510
/* 803FC500 003F2280  2C 15 FF FF */	cmpwi r21, -1
/* 803FC504 003F2284  41 82 00 0C */	beq lbl_803FC510
/* 803FC508 003F2288  57 80 06 75 */	rlwinm. r0, r28, 0, 0x19, 0x1a
/* 803FC50C 003F228C  41 82 FC 74 */	beq lbl_803FC180
lbl_803FC510:
/* 803FC510 003F2290  73 80 00 34 */	andi. r0, r28, 0x34
/* 803FC514 003F2294  40 82 00 18 */	bne lbl_803FC52C
/* 803FC518 003F2298  80 61 00 08 */	lwz r3, 8(r1)
/* 803FC51C 003F229C  3B 00 00 00 */	li r24, 0
/* 803FC520 003F22A0  3B 20 00 00 */	li r25, 0
/* 803FC524 003F22A4  93 03 00 00 */	stw r24, 0(r3)
/* 803FC528 003F22A8  48 00 00 14 */	b lbl_803FC53C
lbl_803FC52C:
/* 803FC52C 003F22AC  7C 7B D2 14 */	add r3, r27, r26
/* 803FC530 003F22B0  38 03 FF FF */	addi r0, r3, -1
/* 803FC534 003F22B4  80 61 00 08 */	lwz r3, 8(r1)
/* 803FC538 003F22B8  90 03 00 00 */	stw r0, 0(r3)
lbl_803FC53C:
/* 803FC53C 003F22BC  7E 2C 8B 78 */	mr r12, r17
/* 803FC540 003F22C0  7E 43 93 78 */	mr r3, r18
/* 803FC544 003F22C4  7E A4 AB 78 */	mr r4, r21
/* 803FC548 003F22C8  38 A0 00 01 */	li r5, 1
/* 803FC54C 003F22CC  7D 89 03 A6 */	mtctr r12
/* 803FC550 003F22D0  4E 80 04 21 */	bctrl 
/* 803FC554 003F22D4  7F 04 C3 78 */	mr r4, r24
/* 803FC558 003F22D8  7F 23 CB 78 */	mr r3, r25
/* 803FC55C 003F22DC  B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 803FC560 003F22E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803FC564 003F22E4  7C 08 03 A6 */	mtlr r0
/* 803FC568 003F22E8  38 21 00 60 */	addi r1, r1, 0x60
/* 803FC56C 003F22EC  4E 80 00 20 */	blr 

.global strtoul
strtoul:
/* 803FC570 003F22F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FC574 003F22F4  7C 08 02 A6 */	mflr r0
/* 803FC578 003F22F8  3C E0 80 00 */	lis r7, 0x7FFFFFFF@ha
/* 803FC57C 003F22FC  3C C0 80 40 */	lis r6, __StringRead@ha
/* 803FC580 003F2300  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FC584 003F2304  38 00 00 00 */	li r0, 0
/* 803FC588 003F2308  39 01 00 0C */	addi r8, r1, 0xc
/* 803FC58C 003F230C  39 21 00 08 */	addi r9, r1, 8
/* 803FC590 003F2310  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803FC594 003F2314  7C 9F 23 78 */	mr r31, r4
/* 803FC598 003F2318  38 87 FF FF */	addi r4, r7, 0x7FFFFFFF@l
/* 803FC59C 003F231C  38 E1 00 10 */	addi r7, r1, 0x10
/* 803FC5A0 003F2320  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803FC5A4 003F2324  7C 7E 1B 78 */	mr r30, r3
/* 803FC5A8 003F2328  7C A3 2B 78 */	mr r3, r5
/* 803FC5AC 003F232C  38 A6 A0 78 */	addi r5, r6, __StringRead@l
/* 803FC5B0 003F2330  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803FC5B4 003F2334  38 C1 00 18 */	addi r6, r1, 0x18
/* 803FC5B8 003F2338  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803FC5BC 003F233C  4B FF F6 C1 */	bl __strtoul
/* 803FC5C0 003F2340  2C 1F 00 00 */	cmpwi r31, 0
/* 803FC5C4 003F2344  41 82 00 10 */	beq lbl_803FC5D4
/* 803FC5C8 003F2348  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803FC5CC 003F234C  7C 1E 02 14 */	add r0, r30, r0
/* 803FC5D0 003F2350  90 1F 00 00 */	stw r0, 0(r31)
lbl_803FC5D4:
/* 803FC5D4 003F2354  80 01 00 08 */	lwz r0, 8(r1)
/* 803FC5D8 003F2358  2C 00 00 00 */	cmpwi r0, 0
/* 803FC5DC 003F235C  41 82 00 14 */	beq lbl_803FC5F0
/* 803FC5E0 003F2360  38 00 00 22 */	li r0, 0x22
/* 803FC5E4 003F2364  38 60 FF FF */	li r3, -1
/* 803FC5E8 003F2368  90 0D CE C0 */	stw r0, lbl_805A12E0-_SDA_BASE_(r13)
/* 803FC5EC 003F236C  48 00 00 14 */	b lbl_803FC600
lbl_803FC5F0:
/* 803FC5F0 003F2370  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803FC5F4 003F2374  2C 00 00 00 */	cmpwi r0, 0
/* 803FC5F8 003F2378  41 82 00 08 */	beq lbl_803FC600
/* 803FC5FC 003F237C  7C 63 00 D0 */	neg r3, r3
lbl_803FC600:
/* 803FC600 003F2380  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FC604 003F2384  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803FC608 003F2388  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803FC60C 003F238C  7C 08 03 A6 */	mtlr r0
/* 803FC610 003F2390  38 21 00 30 */	addi r1, r1, 0x30
/* 803FC614 003F2394  4E 80 00 20 */	blr 

.global strtol
strtol:
/* 803FC618 003F2398  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FC61C 003F239C  7C 08 02 A6 */	mflr r0
/* 803FC620 003F23A0  3C E0 80 00 */	lis r7, 0x7FFFFFFF@ha
/* 803FC624 003F23A4  3C C0 80 40 */	lis r6, __StringRead@ha
/* 803FC628 003F23A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FC62C 003F23AC  38 00 00 00 */	li r0, 0
/* 803FC630 003F23B0  39 01 00 0C */	addi r8, r1, 0xc
/* 803FC634 003F23B4  39 21 00 08 */	addi r9, r1, 8
/* 803FC638 003F23B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803FC63C 003F23BC  7C 9F 23 78 */	mr r31, r4
/* 803FC640 003F23C0  38 87 FF FF */	addi r4, r7, 0x7FFFFFFF@l
/* 803FC644 003F23C4  38 E1 00 10 */	addi r7, r1, 0x10
/* 803FC648 003F23C8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803FC64C 003F23CC  7C 7E 1B 78 */	mr r30, r3
/* 803FC650 003F23D0  7C A3 2B 78 */	mr r3, r5
/* 803FC654 003F23D4  38 A6 A0 78 */	addi r5, r6, __StringRead@l
/* 803FC658 003F23D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803FC65C 003F23DC  38 C1 00 18 */	addi r6, r1, 0x18
/* 803FC660 003F23E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803FC664 003F23E4  4B FF F6 19 */	bl __strtoul
/* 803FC668 003F23E8  2C 1F 00 00 */	cmpwi r31, 0
/* 803FC66C 003F23EC  41 82 00 10 */	beq lbl_803FC67C
/* 803FC670 003F23F0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803FC674 003F23F4  7C 1E 02 14 */	add r0, r30, r0
/* 803FC678 003F23F8  90 1F 00 00 */	stw r0, 0(r31)
lbl_803FC67C:
/* 803FC67C 003F23FC  80 01 00 08 */	lwz r0, 8(r1)
/* 803FC680 003F2400  2C 00 00 00 */	cmpwi r0, 0
/* 803FC684 003F2404  40 82 00 34 */	bne lbl_803FC6B8
/* 803FC688 003F2408  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803FC68C 003F240C  2C 05 00 00 */	cmpwi r5, 0
/* 803FC690 003F2410  40 82 00 14 */	bne lbl_803FC6A4
/* 803FC694 003F2414  3C 80 80 00 */	lis r4, 0x7FFFFFFF@ha
/* 803FC698 003F2418  38 04 FF FF */	addi r0, r4, 0x7FFFFFFF@l
/* 803FC69C 003F241C  7C 03 00 40 */	cmplw r3, r0
/* 803FC6A0 003F2420  41 81 00 18 */	bgt lbl_803FC6B8
lbl_803FC6A4:
/* 803FC6A4 003F2424  2C 05 00 00 */	cmpwi r5, 0
/* 803FC6A8 003F2428  41 82 00 38 */	beq lbl_803FC6E0
/* 803FC6AC 003F242C  3C 00 80 00 */	lis r0, 0x8000
/* 803FC6B0 003F2430  7C 03 00 40 */	cmplw r3, r0
/* 803FC6B4 003F2434  40 81 00 2C */	ble lbl_803FC6E0
lbl_803FC6B8:
/* 803FC6B8 003F2438  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803FC6BC 003F243C  38 00 00 22 */	li r0, 0x22
/* 803FC6C0 003F2440  3C 60 80 00 */	lis r3, 0x7FFFFFFF@ha
/* 803FC6C4 003F2444  90 0D CE C0 */	stw r0, lbl_805A12E0-_SDA_BASE_(r13)
/* 803FC6C8 003F2448  7C 85 00 D0 */	neg r4, r5
/* 803FC6CC 003F244C  7C 84 2B 78 */	or r4, r4, r5
/* 803FC6D0 003F2450  38 03 FF FF */	addi r0, r3, 0x7FFFFFFF@l
/* 803FC6D4 003F2454  54 83 0F FE */	srwi r3, r4, 0x1f
/* 803FC6D8 003F2458  7C 63 02 14 */	add r3, r3, r0
/* 803FC6DC 003F245C  48 00 00 10 */	b lbl_803FC6EC
lbl_803FC6E0:
/* 803FC6E0 003F2460  2C 05 00 00 */	cmpwi r5, 0
/* 803FC6E4 003F2464  41 82 00 08 */	beq lbl_803FC6EC
/* 803FC6E8 003F2468  7C 63 00 D0 */	neg r3, r3
lbl_803FC6EC:
/* 803FC6EC 003F246C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FC6F0 003F2470  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803FC6F4 003F2474  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803FC6F8 003F2478  7C 08 03 A6 */	mtlr r0
/* 803FC6FC 003F247C  38 21 00 30 */	addi r1, r1, 0x30
/* 803FC700 003F2480  4E 80 00 20 */	blr 

.global atoi
atoi:
/* 803FC704 003F2484  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FC708 003F2488  7C 08 02 A6 */	mflr r0
/* 803FC70C 003F248C  3C A0 80 40 */	lis r5, __StringRead@ha
/* 803FC710 003F2490  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FC714 003F2494  38 00 00 00 */	li r0, 0
/* 803FC718 003F2498  38 A5 A0 78 */	addi r5, r5, __StringRead@l
/* 803FC71C 003F249C  38 C1 00 18 */	addi r6, r1, 0x18
/* 803FC720 003F24A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803FC724 003F24A4  3F E0 80 00 */	lis r31, 0x7FFFFFFF@ha
/* 803FC728 003F24A8  38 9F FF FF */	addi r4, r31, 0x7FFFFFFF@l
/* 803FC72C 003F24AC  38 E1 00 08 */	addi r7, r1, 8
/* 803FC730 003F24B0  90 61 00 18 */	stw r3, 0x18(r1)
/* 803FC734 003F24B4  39 01 00 0C */	addi r8, r1, 0xc
/* 803FC738 003F24B8  39 21 00 10 */	addi r9, r1, 0x10
/* 803FC73C 003F24BC  38 60 00 0A */	li r3, 0xa
/* 803FC740 003F24C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803FC744 003F24C4  4B FF F5 39 */	bl __strtoul
/* 803FC748 003F24C8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803FC74C 003F24CC  2C 00 00 00 */	cmpwi r0, 0
/* 803FC750 003F24D0  40 82 00 30 */	bne lbl_803FC780
/* 803FC754 003F24D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803FC758 003F24D8  2C 04 00 00 */	cmpwi r4, 0
/* 803FC75C 003F24DC  40 82 00 10 */	bne lbl_803FC76C
/* 803FC760 003F24E0  38 1F FF FF */	addi r0, r31, -1
/* 803FC764 003F24E4  7C 03 00 40 */	cmplw r3, r0
/* 803FC768 003F24E8  41 81 00 18 */	bgt lbl_803FC780
lbl_803FC76C:
/* 803FC76C 003F24EC  2C 04 00 00 */	cmpwi r4, 0
/* 803FC770 003F24F0  41 82 00 38 */	beq lbl_803FC7A8
/* 803FC774 003F24F4  3C 00 80 00 */	lis r0, 0x8000
/* 803FC778 003F24F8  7C 03 00 40 */	cmplw r3, r0
/* 803FC77C 003F24FC  40 81 00 2C */	ble lbl_803FC7A8
lbl_803FC780:
/* 803FC780 003F2500  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803FC784 003F2504  38 00 00 22 */	li r0, 0x22
/* 803FC788 003F2508  3C 60 80 00 */	lis r3, 0x7FFFFFFF@ha
/* 803FC78C 003F250C  90 0D CE C0 */	stw r0, lbl_805A12E0-_SDA_BASE_(r13)
/* 803FC790 003F2510  7C 85 00 D0 */	neg r4, r5
/* 803FC794 003F2514  7C 84 2B 78 */	or r4, r4, r5
/* 803FC798 003F2518  38 03 FF FF */	addi r0, r3, 0x7FFFFFFF@l
/* 803FC79C 003F251C  54 83 0F FE */	srwi r3, r4, 0x1f
/* 803FC7A0 003F2520  7C 63 02 14 */	add r3, r3, r0
/* 803FC7A4 003F2524  48 00 00 10 */	b lbl_803FC7B4
lbl_803FC7A8:
/* 803FC7A8 003F2528  2C 04 00 00 */	cmpwi r4, 0
/* 803FC7AC 003F252C  41 82 00 08 */	beq lbl_803FC7B4
/* 803FC7B0 003F2530  7C 63 00 D0 */	neg r3, r3
lbl_803FC7B4:
/* 803FC7B4 003F2534  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FC7B8 003F2538  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803FC7BC 003F253C  7C 08 03 A6 */	mtlr r0
/* 803FC7C0 003F2540  38 21 00 30 */	addi r1, r1, 0x30
/* 803FC7C4 003F2544  4E 80 00 20 */	blr 

