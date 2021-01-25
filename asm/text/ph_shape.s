.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global phShape$7__ct
phShape$7__ct:
/* 80095FC4 0008BD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80095FC8 0008BD48  7C 08 02 A6 */	mflr r0
/* 80095FCC 0008BD4C  3C A0 80 45 */	lis r5, lbl_80454A90@ha
/* 80095FD0 0008BD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80095FD4 0008BD54  38 00 00 00 */	li r0, 0
/* 80095FD8 0008BD58  38 A5 4A 90 */	addi r5, r5, lbl_80454A90@l
/* 80095FDC 0008BD5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80095FE0 0008BD60  7C 9F 23 78 */	mr r31, r4
/* 80095FE4 0008BD64  38 80 01 F0 */	li r4, 0x1f0
/* 80095FE8 0008BD68  93 C1 00 08 */	stw r30, 8(r1)
/* 80095FEC 0008BD6C  7C 7E 1B 78 */	mr r30, r3
/* 80095FF0 0008BD70  90 A3 00 04 */	stw r5, 4(r3)
/* 80095FF4 0008BD74  38 A0 00 2B */	li r5, 0x2b
/* 80095FF8 0008BD78  90 03 00 00 */	stw r0, 0(r3)
/* 80095FFC 0008BD7C  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80096000 0008BD80  81 83 00 00 */	lwz r12, 0(r3)
/* 80096004 0008BD84  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80096008 0008BD88  7D 89 03 A6 */	mtctr r12
/* 8009600C 0008BD8C  4E 80 04 21 */	bctrl 
/* 80096010 0008BD90  38 00 01 F0 */	li r0, 0x1f0
/* 80096014 0008BD94  2C 03 00 00 */	cmpwi r3, 0
/* 80096018 0008BD98  B0 03 00 04 */	sth r0, 4(r3)
/* 8009601C 0008BD9C  41 82 00 0C */	beq lbl_80096028
/* 80096020 0008BDA0  7F E4 FB 78 */	mr r4, r31
/* 80096024 0008BDA4  48 24 C8 1D */	bl hkRigidBody$7__ct
lbl_80096028:
/* 80096028 0008BDA8  90 7E 00 00 */	stw r3, 0(r30)
/* 8009602C 0008BDAC  7F C3 F3 78 */	mr r3, r30
/* 80096030 0008BDB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80096034 0008BDB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80096038 0008BDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009603C 0008BDBC  7C 08 03 A6 */	mtlr r0
/* 80096040 0008BDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80096044 0008BDC4  4E 80 00 20 */	blr 

.global phShape$7__dt
phShape$7__dt:
/* 80096048 0008BDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009604C 0008BDCC  7C 08 02 A6 */	mflr r0
/* 80096050 0008BDD0  2C 03 00 00 */	cmpwi r3, 0
/* 80096054 0008BDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80096058 0008BDD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009605C 0008BDDC  7C 9F 23 78 */	mr r31, r4
/* 80096060 0008BDE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80096064 0008BDE4  7C 7E 1B 78 */	mr r30, r3
/* 80096068 0008BDE8  41 82 00 44 */	beq lbl_800960AC
/* 8009606C 0008BDEC  80 83 00 00 */	lwz r4, 0(r3)
/* 80096070 0008BDF0  3C A0 80 45 */	lis r5, lbl_80454A90@ha
/* 80096074 0008BDF4  38 A5 4A 90 */	addi r5, r5, lbl_80454A90@l
/* 80096078 0008BDF8  2C 04 00 00 */	cmpwi r4, 0
/* 8009607C 0008BDFC  90 A3 00 04 */	stw r5, 4(r3)
/* 80096080 0008BE00  41 82 00 1C */	beq lbl_8009609C
/* 80096084 0008BE04  80 64 00 08 */	lwz r3, 8(r4)
/* 80096088 0008BE08  2C 03 00 00 */	cmpwi r3, 0
/* 8009608C 0008BE0C  41 82 00 08 */	beq lbl_80096094
/* 80096090 0008BE10  48 25 6B 31 */	bl hkWorld$7removeEntity
lbl_80096094:
/* 80096094 0008BE14  38 00 00 00 */	li r0, 0
/* 80096098 0008BE18  90 1E 00 00 */	stw r0, 0(r30)
lbl_8009609C:
/* 8009609C 0008BE1C  2C 1F 00 00 */	cmpwi r31, 0
/* 800960A0 0008BE20  40 81 00 0C */	ble lbl_800960AC
/* 800960A4 0008BE24  7F C3 F3 78 */	mr r3, r30
/* 800960A8 0008BE28  4B F7 68 21 */	bl __dl
lbl_800960AC:
/* 800960AC 0008BE2C  7F C3 F3 78 */	mr r3, r30
/* 800960B0 0008BE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800960B4 0008BE34  83 C1 00 08 */	lwz r30, 8(r1)
/* 800960B8 0008BE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800960BC 0008BE3C  7C 08 03 A6 */	mtlr r0
/* 800960C0 0008BE40  38 21 00 10 */	addi r1, r1, 0x10
/* 800960C4 0008BE44  4E 80 00 20 */	blr 

.global phShape$7getMatrixPosture
phShape$7getMatrixPosture:
/* 800960C8 0008BE48  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 800960CC 0008BE4C  7C 2C 0B 78 */	mr r12, r1
/* 800960D0 0008BE50  21 6B FF 80 */	subfic r11, r11, -128
/* 800960D4 0008BE54  7C 21 59 6E */	stwux r1, r1, r11
/* 800960D8 0008BE58  7C 08 02 A6 */	mflr r0
/* 800960DC 0008BE5C  90 0C 00 04 */	stw r0, 4(r12)
/* 800960E0 0008BE60  93 EC FF FC */	stw r31, -4(r12)
/* 800960E4 0008BE64  7C 7F 1B 78 */	mr r31, r3
/* 800960E8 0008BE68  38 61 00 30 */	addi r3, r1, 0x30
/* 800960EC 0008BE6C  80 A4 00 00 */	lwz r5, 0(r4)
/* 800960F0 0008BE70  38 81 00 10 */	addi r4, r1, 0x10
/* 800960F4 0008BE74  C0 85 00 E0 */	lfs f4, 0xe0(r5)
/* 800960F8 0008BE78  C0 65 00 E4 */	lfs f3, 0xe4(r5)
/* 800960FC 0008BE7C  C0 45 00 E8 */	lfs f2, 0xe8(r5)
/* 80096100 0008BE80  C0 25 00 EC */	lfs f1, 0xec(r5)
/* 80096104 0008BE84  C0 05 01 20 */	lfs f0, 0x120(r5)
/* 80096108 0008BE88  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8009610C 0008BE8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80096110 0008BE90  C0 05 01 24 */	lfs f0, 0x124(r5)
/* 80096114 0008BE94  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80096118 0008BE98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8009611C 0008BE9C  C0 05 01 28 */	lfs f0, 0x128(r5)
/* 80096120 0008BEA0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80096124 0008BEA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80096128 0008BEA8  C0 05 01 2C */	lfs f0, 0x12c(r5)
/* 8009612C 0008BEAC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80096130 0008BEB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80096134 0008BEB4  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 80096138 0008BEB8  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 8009613C 0008BEBC  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80096140 0008BEC0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80096144 0008BEC4  48 1E F9 29 */	bl hkRotation$7set
/* 80096148 0008BEC8  7F E3 FB 78 */	mr r3, r31
/* 8009614C 0008BECC  38 81 00 30 */	addi r4, r1, 0x30
/* 80096150 0008BED0  48 1E DC D9 */	bl hkMatrix4$7set
/* 80096154 0008BED4  81 41 00 00 */	lwz r10, 0(r1)
/* 80096158 0008BED8  80 0A 00 04 */	lwz r0, 4(r10)
/* 8009615C 0008BEDC  83 EA FF FC */	lwz r31, -4(r10)
/* 80096160 0008BEE0  7C 08 03 A6 */	mtlr r0
/* 80096164 0008BEE4  7D 41 53 78 */	mr r1, r10
/* 80096168 0008BEE8  4E 80 00 20 */	blr 

.global phShape$7draw
phShape$7draw:
/* 8009616C 0008BEEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80096170 0008BEF0  7C 08 02 A6 */	mflr r0
/* 80096174 0008BEF4  38 60 07 FF */	li r3, 0x7ff
/* 80096178 0008BEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009617C 0008BEFC  48 10 B1 31 */	bl nw4r3g3d8G3DStateFUl$7Invalidate
/* 80096180 0008BF00  48 15 99 91 */	bl GXClearVtxDesc
/* 80096184 0008BF04  38 60 00 01 */	li r3, 1
/* 80096188 0008BF08  38 80 00 09 */	li r4, 9
/* 8009618C 0008BF0C  38 A0 00 01 */	li r5, 1
/* 80096190 0008BF10  38 C0 00 04 */	li r6, 4
/* 80096194 0008BF14  38 E0 00 00 */	li r7, 0
/* 80096198 0008BF18  48 15 99 AD */	bl GXSetVtxAttrFmt
/* 8009619C 0008BF1C  38 60 00 01 */	li r3, 1
/* 800961A0 0008BF20  38 80 00 0B */	li r4, 0xb
/* 800961A4 0008BF24  38 A0 00 01 */	li r5, 1
/* 800961A8 0008BF28  38 C0 00 05 */	li r6, 5
/* 800961AC 0008BF2C  38 E0 00 00 */	li r7, 0
/* 800961B0 0008BF30  48 15 99 95 */	bl GXSetVtxAttrFmt
/* 800961B4 0008BF34  38 60 00 01 */	li r3, 1
/* 800961B8 0008BF38  48 15 E5 65 */	bl GXSetColorUpdate
/* 800961BC 0008BF3C  38 60 00 00 */	li r3, 0
/* 800961C0 0008BF40  48 15 E5 89 */	bl GXSetAlphaUpdate
/* 800961C4 0008BF44  38 60 00 01 */	li r3, 1
/* 800961C8 0008BF48  38 80 00 04 */	li r4, 4
/* 800961CC 0008BF4C  38 A0 00 05 */	li r5, 5
/* 800961D0 0008BF50  38 C0 00 05 */	li r6, 5
/* 800961D4 0008BF54  48 15 E4 F9 */	bl GXSetBlendMode
/* 800961D8 0008BF58  38 60 00 04 */	li r3, 4
/* 800961DC 0008BF5C  38 80 00 00 */	li r4, 0
/* 800961E0 0008BF60  38 A0 00 00 */	li r5, 0
/* 800961E4 0008BF64  38 C0 00 04 */	li r6, 4
/* 800961E8 0008BF68  38 E0 00 00 */	li r7, 0
/* 800961EC 0008BF6C  48 15 DD ED */	bl GXSetAlphaCompare
/* 800961F0 0008BF70  38 60 00 01 */	li r3, 1
/* 800961F4 0008BF74  38 80 00 03 */	li r4, 3
/* 800961F8 0008BF78  38 A0 00 01 */	li r5, 1
/* 800961FC 0008BF7C  48 15 E5 79 */	bl GXSetZMode
/* 80096200 0008BF80  38 60 00 00 */	li r3, 0
/* 80096204 0008BF84  48 15 E5 A5 */	bl GXSetZCompLoc
/* 80096208 0008BF88  38 60 00 00 */	li r3, 0
/* 8009620C 0008BF8C  48 15 A2 75 */	bl GXSetNumTexGens
/* 80096210 0008BF90  38 60 00 01 */	li r3, 1
/* 80096214 0008BF94  48 15 DF E5 */	bl GXSetNumTevStages
/* 80096218 0008BF98  38 60 00 00 */	li r3, 0
/* 8009621C 0008BF9C  38 80 00 FF */	li r4, 0xff
/* 80096220 0008BFA0  38 A0 00 FF */	li r5, 0xff
/* 80096224 0008BFA4  38 C0 00 04 */	li r6, 4
/* 80096228 0008BFA8  48 15 DE 75 */	bl GXSetTevOrder
/* 8009622C 0008BFAC  38 60 00 00 */	li r3, 0
/* 80096230 0008BFB0  38 80 00 04 */	li r4, 4
/* 80096234 0008BFB4  48 15 D9 69 */	bl GXSetTevOp
/* 80096238 0008BFB8  38 60 00 04 */	li r3, 4
/* 8009623C 0008BFBC  38 80 00 00 */	li r4, 0
/* 80096240 0008BFC0  38 A0 00 00 */	li r5, 0
/* 80096244 0008BFC4  38 C0 00 01 */	li r6, 1
/* 80096248 0008BFC8  38 E0 00 00 */	li r7, 0
/* 8009624C 0008BFCC  39 00 00 00 */	li r8, 0
/* 80096250 0008BFD0  39 20 00 02 */	li r9, 2
/* 80096254 0008BFD4  48 15 C4 15 */	bl GXSetChanCtrl
/* 80096258 0008BFD8  38 60 00 01 */	li r3, 1
/* 8009625C 0008BFDC  48 15 C3 E9 */	bl GXSetNumChans
/* 80096260 0008BFE0  38 60 00 00 */	li r3, 0
/* 80096264 0008BFE4  48 15 B1 09 */	bl GXSetCullMode
/* 80096268 0008BFE8  C0 42 89 F0 */	lfs f2, lbl_805A1D10-_SDA2_BASE_(r2)
/* 8009626C 0008BFEC  38 81 00 08 */	addi r4, r1, 8
/* 80096270 0008BFF0  88 E2 89 E8 */	lbz r7, lbl_805A1D08-_SDA2_BASE_(r2)
/* 80096274 0008BFF4  38 60 00 00 */	li r3, 0
/* 80096278 0008BFF8  88 C2 89 E9 */	lbz r6, lbl_805A1D09-_SDA2_BASE_(r2)
/* 8009627C 0008BFFC  FC 80 10 90 */	fmr f4, f2
/* 80096280 0008C000  88 A2 89 EA */	lbz r5, lbl_805A1D0A-_SDA2_BASE_(r2)
/* 80096284 0008C004  88 02 89 EB */	lbz r0, lbl_805A1D0B-_SDA2_BASE_(r2)
/* 80096288 0008C008  98 E1 00 08 */	stb r7, 8(r1)
/* 8009628C 0008C00C  C0 22 89 EC */	lfs f1, lbl_805A1D0C-_SDA2_BASE_(r2)
/* 80096290 0008C010  98 C1 00 09 */	stb r6, 9(r1)
/* 80096294 0008C014  C0 62 89 F4 */	lfs f3, lbl_805A1D14-_SDA2_BASE_(r2)
/* 80096298 0008C018  98 A1 00 0A */	stb r5, 0xa(r1)
/* 8009629C 0008C01C  98 01 00 0B */	stb r0, 0xb(r1)
/* 800962A0 0008C020  48 15 DF 7D */	bl GXSetFog
/* 800962A4 0008C024  38 60 00 09 */	li r3, 9
/* 800962A8 0008C028  38 80 00 01 */	li r4, 1
/* 800962AC 0008C02C  48 15 8F D5 */	bl GXSetVtxDesc
/* 800962B0 0008C030  38 60 00 0B */	li r3, 0xb
/* 800962B4 0008C034  38 80 00 01 */	li r4, 1
/* 800962B8 0008C038  48 15 8F C9 */	bl GXSetVtxDesc
/* 800962BC 0008C03C  38 60 00 00 */	li r3, 0
/* 800962C0 0008C040  48 15 F0 25 */	bl GXSetCurrentMtx
/* 800962C4 0008C044  38 60 00 06 */	li r3, 6
/* 800962C8 0008C048  38 80 00 05 */	li r4, 5
/* 800962CC 0008C04C  48 15 AF E1 */	bl GXSetLineWidth
/* 800962D0 0008C050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800962D4 0008C054  7C 08 03 A6 */	mtlr r0
/* 800962D8 0008C058  38 21 00 10 */	addi r1, r1, 0x10
/* 800962DC 0008C05C  4E 80 00 20 */	blr 

