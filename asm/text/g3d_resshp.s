.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d6ResShpCFv$7GetResVtxPos
nw4r3g3d6ResShpCFv$7GetResVtxPos:
/* 8018FAD8 00185858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FADC 0018585C  7C 08 02 A6 */	mflr r0
/* 8018FAE0 00185860  80 83 00 00 */	lwz r4, 0(r3)
/* 8018FAE4 00185864  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FAE8 00185868  80 04 00 04 */	lwz r0, 4(r4)
/* 8018FAEC 0018586C  2C 00 00 00 */	cmpwi r0, 0
/* 8018FAF0 00185870  41 82 00 0C */	beq lbl_8018FAFC
/* 8018FAF4 00185874  7C 04 02 14 */	add r0, r4, r0
/* 8018FAF8 00185878  48 00 00 08 */	b lbl_8018FB00
lbl_8018FAFC:
/* 8018FAFC 0018587C  38 00 00 00 */	li r0, 0
lbl_8018FB00:
/* 8018FB00 00185880  90 01 00 08 */	stw r0, 8(r1)
/* 8018FB04 00185884  38 61 00 08 */	addi r3, r1, 8
/* 8018FB08 00185888  A8 84 00 48 */	lha r4, 0x48(r4)
/* 8018FB0C 0018588C  4B FF F3 C5 */	bl nw4r3g3d6ResMdlCFi$7GetResVtxPos
/* 8018FB10 00185890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FB14 00185894  7C 08 03 A6 */	mtlr r0
/* 8018FB18 00185898  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FB1C 0018589C  4E 80 00 20 */	blr 

.global nw4r3g3d6ResShpCFv$7GetResVtxNrm
nw4r3g3d6ResShpCFv$7GetResVtxNrm:
/* 8018FB20 001858A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FB24 001858A4  7C 08 02 A6 */	mflr r0
/* 8018FB28 001858A8  80 83 00 00 */	lwz r4, 0(r3)
/* 8018FB2C 001858AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FB30 001858B0  A8 04 00 4A */	lha r0, 0x4a(r4)
/* 8018FB34 001858B4  2C 00 FF FF */	cmpwi r0, -1
/* 8018FB38 001858B8  41 82 00 30 */	beq lbl_8018FB68
/* 8018FB3C 001858BC  80 04 00 04 */	lwz r0, 4(r4)
/* 8018FB40 001858C0  2C 00 00 00 */	cmpwi r0, 0
/* 8018FB44 001858C4  41 82 00 0C */	beq lbl_8018FB50
/* 8018FB48 001858C8  7C 04 02 14 */	add r0, r4, r0
/* 8018FB4C 001858CC  48 00 00 08 */	b lbl_8018FB54
lbl_8018FB50:
/* 8018FB50 001858D0  38 00 00 00 */	li r0, 0
lbl_8018FB54:
/* 8018FB54 001858D4  90 01 00 08 */	stw r0, 8(r1)
/* 8018FB58 001858D8  38 61 00 08 */	addi r3, r1, 8
/* 8018FB5C 001858DC  A8 84 00 4A */	lha r4, 0x4a(r4)
/* 8018FB60 001858E0  4B FF F4 9D */	bl nw4r3g3d6ResMdlCFi$7GetResVtxNrm
/* 8018FB64 001858E4  48 00 00 08 */	b lbl_8018FB6C
lbl_8018FB68:
/* 8018FB68 001858E8  38 60 00 00 */	li r3, 0
lbl_8018FB6C:
/* 8018FB6C 001858EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FB70 001858F0  7C 08 03 A6 */	mtlr r0
/* 8018FB74 001858F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FB78 001858F8  4E 80 00 20 */	blr 

.global nw4r3g3d6ResShpCFUl$7GetResVtxClr
nw4r3g3d6ResShpCFUl$7GetResVtxClr:
/* 8018FB7C 001858FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FB80 00185900  7C 08 02 A6 */	mflr r0
/* 8018FB84 00185904  80 63 00 00 */	lwz r3, 0(r3)
/* 8018FB88 00185908  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FB8C 0018590C  54 80 08 3C */	slwi r0, r4, 1
/* 8018FB90 00185910  7C 83 02 14 */	add r4, r3, r0
/* 8018FB94 00185914  A8 04 00 4C */	lha r0, 0x4c(r4)
/* 8018FB98 00185918  2C 00 FF FF */	cmpwi r0, -1
/* 8018FB9C 0018591C  41 82 00 30 */	beq lbl_8018FBCC
/* 8018FBA0 00185920  80 03 00 04 */	lwz r0, 4(r3)
/* 8018FBA4 00185924  2C 00 00 00 */	cmpwi r0, 0
/* 8018FBA8 00185928  41 82 00 0C */	beq lbl_8018FBB4
/* 8018FBAC 0018592C  7C 03 02 14 */	add r0, r3, r0
/* 8018FBB0 00185930  48 00 00 08 */	b lbl_8018FBB8
lbl_8018FBB4:
/* 8018FBB4 00185934  38 00 00 00 */	li r0, 0
lbl_8018FBB8:
/* 8018FBB8 00185938  90 01 00 08 */	stw r0, 8(r1)
/* 8018FBBC 0018593C  38 61 00 08 */	addi r3, r1, 8
/* 8018FBC0 00185940  A8 84 00 4C */	lha r4, 0x4c(r4)
/* 8018FBC4 00185944  4B FF F5 65 */	bl nw4r3g3d6ResMdlCFi$7GetResVtxClr
/* 8018FBC8 00185948  48 00 00 08 */	b lbl_8018FBD0
lbl_8018FBCC:
/* 8018FBCC 0018594C  38 60 00 00 */	li r3, 0
lbl_8018FBD0:
/* 8018FBD0 00185950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FBD4 00185954  7C 08 03 A6 */	mtlr r0
/* 8018FBD8 00185958  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FBDC 0018595C  4E 80 00 20 */	blr 

.global nw4r3g3d6ResShpFv$7Init
nw4r3g3d6ResShpFv$7Init:
/* 8018FBE0 00185960  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8018FBE4 00185964  7C 08 02 A6 */	mflr r0
/* 8018FBE8 00185968  90 01 00 54 */	stw r0, 0x54(r1)
/* 8018FBEC 0018596C  39 61 00 50 */	addi r11, r1, 0x50
/* 8018FBF0 00185970  48 26 17 2D */	bl _savegpr_26
/* 8018FBF4 00185974  80 83 00 00 */	lwz r4, 0(r3)
/* 8018FBF8 00185978  7C 7D 1B 78 */	mr r29, r3
/* 8018FBFC 0018597C  80 04 00 04 */	lwz r0, 4(r4)
/* 8018FC00 00185980  2C 00 00 00 */	cmpwi r0, 0
/* 8018FC04 00185984  41 82 00 0C */	beq lbl_8018FC10
/* 8018FC08 00185988  7C 04 02 14 */	add r0, r4, r0
/* 8018FC0C 0018598C  48 00 00 08 */	b lbl_8018FC14
lbl_8018FC10:
/* 8018FC10 00185990  38 00 00 00 */	li r0, 0
lbl_8018FC14:
/* 8018FC14 00185994  90 01 00 18 */	stw r0, 0x18(r1)
/* 8018FC18 00185998  38 61 00 18 */	addi r3, r1, 0x18
/* 8018FC1C 0018599C  A8 84 00 48 */	lha r4, 0x48(r4)
/* 8018FC20 001859A0  4B FF F2 B1 */	bl nw4r3g3d6ResMdlCFi$7GetResVtxPos
/* 8018FC24 001859A4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8018FC28 001859A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8018FC2C 001859AC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8018FC30 001859B0  38 A1 00 08 */	addi r5, r1, 8
/* 8018FC34 001859B4  48 00 2B 11 */	bl nw4r3g3d9ResVtxPosCFPPCvPUc$7GetArray
/* 8018FC38 001859B8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018FC3C 001859BC  8B 81 00 08 */	lbz r28, 8(r1)
/* 8018FC40 001859C0  38 63 00 18 */	addi r3, r3, 0x18
/* 8018FC44 001859C4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8018FC48 001859C8  80 03 00 08 */	lwz r0, 8(r3)
/* 8018FC4C 001859CC  2C 00 00 00 */	cmpwi r0, 0
/* 8018FC50 001859D0  41 82 00 0C */	beq lbl_8018FC5C
/* 8018FC54 001859D4  7C 63 02 14 */	add r3, r3, r0
/* 8018FC58 001859D8  48 00 00 08 */	b lbl_8018FC60
lbl_8018FC5C:
/* 8018FC5C 001859DC  38 60 00 00 */	li r3, 0
lbl_8018FC60:
/* 8018FC60 001859E0  3B C3 00 32 */	addi r30, r3, 0x32
/* 8018FC64 001859E4  3C A4 80 00 */	addis r5, r4, 0x8000
/* 8018FC68 001859E8  7F C3 F3 78 */	mr r3, r30
/* 8018FC6C 001859EC  38 80 00 A0 */	li r4, 0xa0
/* 8018FC70 001859F0  4B FF D0 55 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 8018FC74 001859F4  7F 85 E3 78 */	mr r5, r28
/* 8018FC78 001859F8  38 7E 00 06 */	addi r3, r30, 6
/* 8018FC7C 001859FC  38 80 00 B0 */	li r4, 0xb0
/* 8018FC80 00185A00  4B FF D0 45 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 8018FC84 00185A04  80 9D 00 00 */	lwz r4, 0(r29)
/* 8018FC88 00185A08  A8 04 00 4A */	lha r0, 0x4a(r4)
/* 8018FC8C 00185A0C  2C 00 FF FF */	cmpwi r0, -1
/* 8018FC90 00185A10  41 82 00 30 */	beq lbl_8018FCC0
/* 8018FC94 00185A14  80 04 00 04 */	lwz r0, 4(r4)
/* 8018FC98 00185A18  2C 00 00 00 */	cmpwi r0, 0
/* 8018FC9C 00185A1C  41 82 00 0C */	beq lbl_8018FCA8
/* 8018FCA0 00185A20  7C 04 02 14 */	add r0, r4, r0
/* 8018FCA4 00185A24  48 00 00 08 */	b lbl_8018FCAC
lbl_8018FCA8:
/* 8018FCA8 00185A28  38 00 00 00 */	li r0, 0
lbl_8018FCAC:
/* 8018FCAC 00185A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FCB0 00185A30  38 61 00 14 */	addi r3, r1, 0x14
/* 8018FCB4 00185A34  A8 84 00 4A */	lha r4, 0x4a(r4)
/* 8018FCB8 00185A38  4B FF F3 45 */	bl nw4r3g3d6ResMdlCFi$7GetResVtxNrm
/* 8018FCBC 00185A3C  48 00 00 08 */	b lbl_8018FCC4
lbl_8018FCC0:
/* 8018FCC0 00185A40  38 60 00 00 */	li r3, 0
lbl_8018FCC4:
/* 8018FCC4 00185A44  2C 03 00 00 */	cmpwi r3, 0
/* 8018FCC8 00185A48  90 61 00 28 */	stw r3, 0x28(r1)
/* 8018FCCC 00185A4C  41 82 00 60 */	beq lbl_8018FD2C
/* 8018FCD0 00185A50  38 61 00 28 */	addi r3, r1, 0x28
/* 8018FCD4 00185A54  38 81 00 2C */	addi r4, r1, 0x2c
/* 8018FCD8 00185A58  38 A1 00 08 */	addi r5, r1, 8
/* 8018FCDC 00185A5C  48 00 2B 39 */	bl nw4r3g3d9ResVtxNrmCFPPCvPUc$7GetArray
/* 8018FCE0 00185A60  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018FCE4 00185A64  8B 81 00 08 */	lbz r28, 8(r1)
/* 8018FCE8 00185A68  38 63 00 18 */	addi r3, r3, 0x18
/* 8018FCEC 00185A6C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8018FCF0 00185A70  80 03 00 08 */	lwz r0, 8(r3)
/* 8018FCF4 00185A74  2C 00 00 00 */	cmpwi r0, 0
/* 8018FCF8 00185A78  41 82 00 0C */	beq lbl_8018FD04
/* 8018FCFC 00185A7C  7C 63 02 14 */	add r3, r3, r0
/* 8018FD00 00185A80  48 00 00 08 */	b lbl_8018FD08
lbl_8018FD04:
/* 8018FD04 00185A84  38 60 00 00 */	li r3, 0
lbl_8018FD08:
/* 8018FD08 00185A88  3B C3 00 3E */	addi r30, r3, 0x3e
/* 8018FD0C 00185A8C  3C A4 80 00 */	addis r5, r4, 0x8000
/* 8018FD10 00185A90  7F C3 F3 78 */	mr r3, r30
/* 8018FD14 00185A94  38 80 00 A1 */	li r4, 0xa1
/* 8018FD18 00185A98  4B FF CF AD */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 8018FD1C 00185A9C  7F 85 E3 78 */	mr r5, r28
/* 8018FD20 00185AA0  38 7E 00 06 */	addi r3, r30, 6
/* 8018FD24 00185AA4  38 80 00 B1 */	li r4, 0xb1
/* 8018FD28 00185AA8  4B FF CF 9D */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
lbl_8018FD2C:
/* 8018FD2C 00185AAC  3B C0 00 00 */	li r30, 0
/* 8018FD30 00185AB0  3B E0 00 00 */	li r31, 0
lbl_8018FD34:
/* 8018FD34 00185AB4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018FD38 00185AB8  7C 83 FA 14 */	add r4, r3, r31
/* 8018FD3C 00185ABC  A8 04 00 4C */	lha r0, 0x4c(r4)
/* 8018FD40 00185AC0  2C 00 FF FF */	cmpwi r0, -1
/* 8018FD44 00185AC4  41 82 00 30 */	beq lbl_8018FD74
/* 8018FD48 00185AC8  80 03 00 04 */	lwz r0, 4(r3)
/* 8018FD4C 00185ACC  2C 00 00 00 */	cmpwi r0, 0
/* 8018FD50 00185AD0  41 82 00 0C */	beq lbl_8018FD5C
/* 8018FD54 00185AD4  7C 03 02 14 */	add r0, r3, r0
/* 8018FD58 00185AD8  48 00 00 08 */	b lbl_8018FD60
lbl_8018FD5C:
/* 8018FD5C 00185ADC  38 00 00 00 */	li r0, 0
lbl_8018FD60:
/* 8018FD60 00185AE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8018FD64 00185AE4  38 61 00 10 */	addi r3, r1, 0x10
/* 8018FD68 00185AE8  A8 84 00 4C */	lha r4, 0x4c(r4)
/* 8018FD6C 00185AEC  4B FF F3 BD */	bl nw4r3g3d6ResMdlCFi$7GetResVtxClr
/* 8018FD70 00185AF0  48 00 00 08 */	b lbl_8018FD78
lbl_8018FD74:
/* 8018FD74 00185AF4  38 60 00 00 */	li r3, 0
lbl_8018FD78:
/* 8018FD78 00185AF8  2C 03 00 00 */	cmpwi r3, 0
/* 8018FD7C 00185AFC  90 61 00 24 */	stw r3, 0x24(r1)
/* 8018FD80 00185B00  41 82 00 88 */	beq lbl_8018FE08
/* 8018FD84 00185B04  38 61 00 24 */	addi r3, r1, 0x24
/* 8018FD88 00185B08  38 81 00 2C */	addi r4, r1, 0x2c
/* 8018FD8C 00185B0C  38 A1 00 08 */	addi r5, r1, 8
/* 8018FD90 00185B10  48 00 2B 61 */	bl nw4r3g3d9ResVtxClrCFPPCvPUc$7GetArray
/* 8018FD94 00185B14  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018FD98 00185B18  8B 61 00 08 */	lbz r27, 8(r1)
/* 8018FD9C 00185B1C  38 63 00 18 */	addi r3, r3, 0x18
/* 8018FDA0 00185B20  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8018FDA4 00185B24  80 03 00 08 */	lwz r0, 8(r3)
/* 8018FDA8 00185B28  2C 00 00 00 */	cmpwi r0, 0
/* 8018FDAC 00185B2C  41 82 00 0C */	beq lbl_8018FDB8
/* 8018FDB0 00185B30  7C 83 02 14 */	add r4, r3, r0
/* 8018FDB4 00185B34  48 00 00 08 */	b lbl_8018FDBC
lbl_8018FDB8:
/* 8018FDB8 00185B38  38 80 00 00 */	li r4, 0
lbl_8018FDBC:
/* 8018FDBC 00185B3C  38 DE 00 02 */	addi r6, r30, 2
/* 8018FDC0 00185B40  38 1E 00 0B */	addi r0, r30, 0xb
/* 8018FDC4 00185B44  1C 66 00 0C */	mulli r3, r6, 0xc
/* 8018FDC8 00185B48  3B 80 00 01 */	li r28, 1
/* 8018FDCC 00185B4C  2C 00 00 19 */	cmpwi r0, 0x19
/* 8018FDD0 00185B50  7C 64 1A 14 */	add r3, r4, r3
/* 8018FDD4 00185B54  3B 43 00 32 */	addi r26, r3, 0x32
/* 8018FDD8 00185B58  41 82 00 08 */	beq lbl_8018FDE0
/* 8018FDDC 00185B5C  7C DC 33 78 */	mr r28, r6
lbl_8018FDE0:
/* 8018FDE0 00185B60  38 1C 00 A0 */	addi r0, r28, 0xa0
/* 8018FDE4 00185B64  7F 43 D3 78 */	mr r3, r26
/* 8018FDE8 00185B68  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8018FDEC 00185B6C  3C A5 80 00 */	addis r5, r5, 0x8000
/* 8018FDF0 00185B70  4B FF CE D5 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 8018FDF4 00185B74  38 1C 00 B0 */	addi r0, r28, 0xb0
/* 8018FDF8 00185B78  7F 65 DB 78 */	mr r5, r27
/* 8018FDFC 00185B7C  38 7A 00 06 */	addi r3, r26, 6
/* 8018FE00 00185B80  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8018FE04 00185B84  4B FF CE C1 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
lbl_8018FE08:
/* 8018FE08 00185B88  3B DE 00 01 */	addi r30, r30, 1
/* 8018FE0C 00185B8C  3B FF 00 02 */	addi r31, r31, 2
/* 8018FE10 00185B90  28 1E 00 02 */	cmplwi r30, 2
/* 8018FE14 00185B94  41 80 FF 20 */	blt lbl_8018FD34
/* 8018FE18 00185B98  3B C0 00 00 */	li r30, 0
/* 8018FE1C 00185B9C  3B E0 00 00 */	li r31, 0
lbl_8018FE20:
/* 8018FE20 00185BA0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018FE24 00185BA4  7C 83 FA 14 */	add r4, r3, r31
/* 8018FE28 00185BA8  A8 04 00 50 */	lha r0, 0x50(r4)
/* 8018FE2C 00185BAC  2C 00 FF FF */	cmpwi r0, -1
/* 8018FE30 00185BB0  41 82 00 30 */	beq lbl_8018FE60
/* 8018FE34 00185BB4  80 03 00 04 */	lwz r0, 4(r3)
/* 8018FE38 00185BB8  2C 00 00 00 */	cmpwi r0, 0
/* 8018FE3C 00185BBC  41 82 00 0C */	beq lbl_8018FE48
/* 8018FE40 00185BC0  7C 03 02 14 */	add r0, r3, r0
/* 8018FE44 00185BC4  48 00 00 08 */	b lbl_8018FE4C
lbl_8018FE48:
/* 8018FE48 00185BC8  38 00 00 00 */	li r0, 0
lbl_8018FE4C:
/* 8018FE4C 00185BCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018FE50 00185BD0  38 61 00 0C */	addi r3, r1, 0xc
/* 8018FE54 00185BD4  A8 84 00 50 */	lha r4, 0x50(r4)
/* 8018FE58 00185BD8  4B FF F3 AD */	bl nw4r3g3d6ResMdlCFi$7GetResVtxTexCoord
/* 8018FE5C 00185BDC  48 00 00 08 */	b lbl_8018FE64
lbl_8018FE60:
/* 8018FE60 00185BE0  38 60 00 00 */	li r3, 0
lbl_8018FE64:
/* 8018FE64 00185BE4  2C 03 00 00 */	cmpwi r3, 0
/* 8018FE68 00185BE8  90 61 00 20 */	stw r3, 0x20(r1)
/* 8018FE6C 00185BEC  41 82 00 88 */	beq lbl_8018FEF4
/* 8018FE70 00185BF0  38 61 00 20 */	addi r3, r1, 0x20
/* 8018FE74 00185BF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8018FE78 00185BF8  38 A1 00 08 */	addi r5, r1, 8
/* 8018FE7C 00185BFC  48 00 2B 11 */	bl nw4r3g3d14ResVtxTexCoordCFPPCvPUc$7GetArray
/* 8018FE80 00185C00  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018FE84 00185C04  8B 41 00 08 */	lbz r26, 8(r1)
/* 8018FE88 00185C08  38 63 00 18 */	addi r3, r3, 0x18
/* 8018FE8C 00185C0C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8018FE90 00185C10  80 03 00 08 */	lwz r0, 8(r3)
/* 8018FE94 00185C14  2C 00 00 00 */	cmpwi r0, 0
/* 8018FE98 00185C18  41 82 00 0C */	beq lbl_8018FEA4
/* 8018FE9C 00185C1C  7C 83 02 14 */	add r4, r3, r0
/* 8018FEA0 00185C20  48 00 00 08 */	b lbl_8018FEA8
lbl_8018FEA4:
/* 8018FEA4 00185C24  38 80 00 00 */	li r4, 0
lbl_8018FEA8:
/* 8018FEA8 00185C28  38 DE 00 04 */	addi r6, r30, 4
/* 8018FEAC 00185C2C  38 1E 00 0D */	addi r0, r30, 0xd
/* 8018FEB0 00185C30  1C 66 00 0C */	mulli r3, r6, 0xc
/* 8018FEB4 00185C34  3B 80 00 01 */	li r28, 1
/* 8018FEB8 00185C38  2C 00 00 19 */	cmpwi r0, 0x19
/* 8018FEBC 00185C3C  7C 64 1A 14 */	add r3, r4, r3
/* 8018FEC0 00185C40  3B 63 00 32 */	addi r27, r3, 0x32
/* 8018FEC4 00185C44  41 82 00 08 */	beq lbl_8018FECC
/* 8018FEC8 00185C48  7C DC 33 78 */	mr r28, r6
lbl_8018FECC:
/* 8018FECC 00185C4C  38 1C 00 A0 */	addi r0, r28, 0xa0
/* 8018FED0 00185C50  7F 63 DB 78 */	mr r3, r27
/* 8018FED4 00185C54  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8018FED8 00185C58  3C A5 80 00 */	addis r5, r5, 0x8000
/* 8018FEDC 00185C5C  4B FF CD E9 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 8018FEE0 00185C60  38 1C 00 B0 */	addi r0, r28, 0xb0
/* 8018FEE4 00185C64  7F 45 D3 78 */	mr r5, r26
/* 8018FEE8 00185C68  38 7B 00 06 */	addi r3, r27, 6
/* 8018FEEC 00185C6C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8018FEF0 00185C70  4B FF CD D5 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
lbl_8018FEF4:
/* 8018FEF4 00185C74  3B DE 00 01 */	addi r30, r30, 1
/* 8018FEF8 00185C78  3B FF 00 02 */	addi r31, r31, 2
/* 8018FEFC 00185C7C  28 1E 00 08 */	cmplwi r30, 8
/* 8018FF00 00185C80  41 80 FF 20 */	blt lbl_8018FE20
/* 8018FF04 00185C84  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018FF08 00185C88  38 63 00 18 */	addi r3, r3, 0x18
/* 8018FF0C 00185C8C  80 03 00 08 */	lwz r0, 8(r3)
/* 8018FF10 00185C90  2C 00 00 00 */	cmpwi r0, 0
/* 8018FF14 00185C94  41 82 00 0C */	beq lbl_8018FF20
/* 8018FF18 00185C98  7C 63 02 14 */	add r3, r3, r0
/* 8018FF1C 00185C9C  48 00 00 08 */	b lbl_8018FF24
lbl_8018FF20:
/* 8018FF20 00185CA0  38 60 00 00 */	li r3, 0
lbl_8018FF24:
/* 8018FF24 00185CA4  38 80 00 E0 */	li r4, 0xe0
/* 8018FF28 00185CA8  48 04 78 4D */	bl DCStoreRangeNoSync
/* 8018FF2C 00185CAC  80 9D 00 00 */	lwz r4, 0(r29)
/* 8018FF30 00185CB0  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8018FF34 00185CB4  38 64 00 24 */	addi r3, r4, 0x24
/* 8018FF38 00185CB8  2C 00 00 00 */	cmpwi r0, 0
/* 8018FF3C 00185CBC  41 82 00 0C */	beq lbl_8018FF48
/* 8018FF40 00185CC0  7C 63 02 14 */	add r3, r3, r0
/* 8018FF44 00185CC4  48 00 00 08 */	b lbl_8018FF4C
lbl_8018FF48:
/* 8018FF48 00185CC8  38 60 00 00 */	li r3, 0
lbl_8018FF4C:
/* 8018FF4C 00185CCC  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8018FF50 00185CD0  48 04 78 25 */	bl DCStoreRangeNoSync
/* 8018FF54 00185CD4  39 61 00 50 */	addi r11, r1, 0x50
/* 8018FF58 00185CD8  48 26 14 11 */	bl _restgpr_26
/* 8018FF5C 00185CDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8018FF60 00185CE0  7C 08 03 A6 */	mtlr r0
/* 8018FF64 00185CE4  38 21 00 50 */	addi r1, r1, 0x50
/* 8018FF68 00185CE8  4E 80 00 20 */	blr 

.global nw4r3g3d6ResShpCFbb$7CallPrePrimitiveDisplayList
nw4r3g3d6ResShpCFbb$7CallPrePrimitiveDisplayList:
/* 8018FF6C 00185CEC  80 63 00 00 */	lwz r3, 0(r3)
/* 8018FF70 00185CF0  2C 05 00 00 */	cmpwi r5, 0
/* 8018FF74 00185CF4  38 A3 00 18 */	addi r5, r3, 0x18
/* 8018FF78 00185CF8  41 82 00 70 */	beq lbl_8018FFE8
/* 8018FF7C 00185CFC  2C 04 00 00 */	cmpwi r4, 0
/* 8018FF80 00185D00  41 82 00 2C */	beq lbl_8018FFAC
/* 8018FF84 00185D04  80 05 00 08 */	lwz r0, 8(r5)
/* 8018FF88 00185D08  2C 00 00 00 */	cmpwi r0, 0
/* 8018FF8C 00185D0C  41 82 00 0C */	beq lbl_8018FF98
/* 8018FF90 00185D10  7C 65 02 14 */	add r3, r5, r0
/* 8018FF94 00185D14  48 00 00 08 */	b lbl_8018FF9C
lbl_8018FF98:
/* 8018FF98 00185D18  38 60 00 00 */	li r3, 0
lbl_8018FF9C:
/* 8018FF9C 00185D1C  80 85 00 04 */	lwz r4, 4(r5)
/* 8018FFA0 00185D20  38 63 00 20 */	addi r3, r3, 0x20
/* 8018FFA4 00185D24  38 84 FF E0 */	addi r4, r4, -32
/* 8018FFA8 00185D28  48 06 4F 04 */	b GXCallDisplayList
lbl_8018FFAC:
/* 8018FFAC 00185D2C  80 05 00 08 */	lwz r0, 8(r5)
/* 8018FFB0 00185D30  2C 00 00 00 */	cmpwi r0, 0
/* 8018FFB4 00185D34  41 82 00 0C */	beq lbl_8018FFC0
/* 8018FFB8 00185D38  7C C5 02 14 */	add r6, r5, r0
/* 8018FFBC 00185D3C  48 00 00 08 */	b lbl_8018FFC4
lbl_8018FFC0:
/* 8018FFC0 00185D40  38 C0 00 00 */	li r6, 0
lbl_8018FFC4:
/* 8018FFC4 00185D44  80 A5 00 04 */	lwz r5, 4(r5)
/* 8018FFC8 00185D48  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8018FFCC 00185D4C  38 80 00 40 */	li r4, 0x40
/* 8018FFD0 00185D50  38 06 00 20 */	addi r0, r6, 0x20
/* 8018FFD4 00185D54  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 8018FFD8 00185D58  38 85 FF E0 */	addi r4, r5, -32
/* 8018FFDC 00185D5C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8018FFE0 00185D60  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8018FFE4 00185D64  4E 80 00 20 */	blr 
lbl_8018FFE8:
/* 8018FFE8 00185D68  2C 04 00 00 */	cmpwi r4, 0
/* 8018FFEC 00185D6C  41 82 00 24 */	beq lbl_80190010
/* 8018FFF0 00185D70  80 05 00 08 */	lwz r0, 8(r5)
/* 8018FFF4 00185D74  2C 00 00 00 */	cmpwi r0, 0
/* 8018FFF8 00185D78  41 82 00 0C */	beq lbl_80190004
/* 8018FFFC 00185D7C  7C 65 02 14 */	add r3, r5, r0
/* 80190000 00185D80  48 00 00 08 */	b lbl_80190008
lbl_80190004:
/* 80190004 00185D84  38 60 00 00 */	li r3, 0
lbl_80190008:
/* 80190008 00185D88  80 85 00 04 */	lwz r4, 4(r5)
/* 8019000C 00185D8C  48 06 4E A0 */	b GXCallDisplayList
lbl_80190010:
/* 80190010 00185D90  80 05 00 08 */	lwz r0, 8(r5)
/* 80190014 00185D94  2C 00 00 00 */	cmpwi r0, 0
/* 80190018 00185D98  41 82 00 0C */	beq lbl_80190024
/* 8019001C 00185D9C  7C 85 02 14 */	add r4, r5, r0
/* 80190020 00185DA0  48 00 00 08 */	b lbl_80190028
lbl_80190024:
/* 80190024 00185DA4  38 80 00 00 */	li r4, 0
lbl_80190028:
/* 80190028 00185DA8  80 A5 00 04 */	lwz r5, 4(r5)
/* 8019002C 00185DAC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80190030 00185DB0  38 00 00 40 */	li r0, 0x40
/* 80190034 00185DB4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80190038 00185DB8  90 83 80 00 */	stw r4, -0x8000(r3)
/* 8019003C 00185DBC  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 80190040 00185DC0  4E 80 00 20 */	blr 

.global nw4r3g3d6ResShpCFb$7CallPrimitiveDisplayList
nw4r3g3d6ResShpCFb$7CallPrimitiveDisplayList:
/* 80190044 00185DC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80190048 00185DC8  2C 04 00 00 */	cmpwi r4, 0
/* 8019004C 00185DCC  38 83 00 24 */	addi r4, r3, 0x24
/* 80190050 00185DD0  41 82 00 24 */	beq lbl_80190074
/* 80190054 00185DD4  80 04 00 08 */	lwz r0, 8(r4)
/* 80190058 00185DD8  2C 00 00 00 */	cmpwi r0, 0
/* 8019005C 00185DDC  41 82 00 0C */	beq lbl_80190068
/* 80190060 00185DE0  7C 64 02 14 */	add r3, r4, r0
/* 80190064 00185DE4  48 00 00 08 */	b lbl_8019006C
lbl_80190068:
/* 80190068 00185DE8  38 60 00 00 */	li r3, 0
lbl_8019006C:
/* 8019006C 00185DEC  80 84 00 04 */	lwz r4, 4(r4)
/* 80190070 00185DF0  48 06 4E 3C */	b GXCallDisplayList
lbl_80190074:
/* 80190074 00185DF4  80 04 00 08 */	lwz r0, 8(r4)
/* 80190078 00185DF8  2C 00 00 00 */	cmpwi r0, 0
/* 8019007C 00185DFC  41 82 00 0C */	beq lbl_80190088
/* 80190080 00185E00  7C A4 02 14 */	add r5, r4, r0
/* 80190084 00185E04  48 00 00 08 */	b lbl_8019008C
lbl_80190088:
/* 80190088 00185E08  38 A0 00 00 */	li r5, 0
lbl_8019008C:
/* 8019008C 00185E0C  80 84 00 04 */	lwz r4, 4(r4)
/* 80190090 00185E10  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80190094 00185E14  38 00 00 40 */	li r0, 0x40
/* 80190098 00185E18  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8019009C 00185E1C  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 801900A0 00185E20  90 83 80 00 */	stw r4, -0x8000(r3)
/* 801900A4 00185E24  4E 80 00 20 */	blr 

