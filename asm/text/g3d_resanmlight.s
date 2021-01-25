.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d11ResAnmLightCFPQ34nw4r3g3$7GetAnmResult
nw4r3g3d11ResAnmLightCFPQ34nw4r3g3$7GetAnmResult:
/* 80195FD8 0018BD58  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80195FDC 0018BD5C  7C 08 02 A6 */	mflr r0
/* 80195FE0 0018BD60  90 01 00 64 */	stw r0, 0x64(r1)
/* 80195FE4 0018BD64  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80195FE8 0018BD68  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80195FEC 0018BD6C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80195FF0 0018BD70  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 80195FF4 0018BD74  39 61 00 40 */	addi r11, r1, 0x40
/* 80195FF8 0018BD78  48 25 B3 19 */	bl _savegpr_23
/* 80195FFC 0018BD7C  83 E3 00 00 */	lwz r31, 0(r3)
/* 80196000 0018BD80  FF C0 08 90 */	fmr f30, f1
/* 80196004 0018BD84  7C 9B 23 78 */	mr r27, r4
/* 80196008 0018BD88  80 1F 00 04 */	lwz r0, 4(r31)
/* 8019600C 0018BD8C  83 DF 00 1C */	lwz r30, 0x1c(r31)
/* 80196010 0018BD90  2C 00 00 00 */	cmpwi r0, 0
/* 80196014 0018BD94  41 82 00 0C */	beq lbl_80196020
/* 80196018 0018BD98  7C 7F 02 14 */	add r3, r31, r0
/* 8019601C 0018BD9C  48 00 00 08 */	b lbl_80196024
lbl_80196020:
/* 80196020 0018BDA0  38 60 00 00 */	li r3, 0
lbl_80196024:
/* 80196024 0018BDA4  C3 E2 9F 10 */	lfs f31, lbl_805A3230-_SDA2_BASE_(r2)
/* 80196028 0018BDA8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8019602C 0018BDAC  4C 40 13 82 */	cror 2, 0, 2
/* 80196030 0018BDB0  40 82 00 08 */	bne lbl_80196038
/* 80196034 0018BDB4  48 00 00 44 */	b lbl_80196078
lbl_80196038:
/* 80196038 0018BDB8  A0 63 00 30 */	lhz r3, 0x30(r3)
/* 8019603C 0018BDBC  3C 00 43 30 */	lis r0, 0x4330
/* 80196040 0018BDC0  90 01 00 08 */	stw r0, 8(r1)
/* 80196044 0018BDC4  C8 42 9F 18 */	lfd f2, lbl_805A3238-_SDA2_BASE_(r2)
/* 80196048 0018BDC8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8019604C 0018BDCC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80196050 0018BDD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80196054 0018BDD4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80196058 0018BDD8  4C 40 13 82 */	cror 2, 0, 2
/* 8019605C 0018BDDC  40 82 00 18 */	bne lbl_80196074
/* 80196060 0018BDE0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80196064 0018BDE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80196068 0018BDE8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8019606C 0018BDEC  EF E0 10 28 */	fsubs f31, f0, f2
/* 80196070 0018BDF0  48 00 00 08 */	b lbl_80196078
lbl_80196074:
/* 80196074 0018BDF4  FF E0 F0 90 */	fmr f31, f30
lbl_80196078:
/* 80196078 0018BDF8  57 C0 02 11 */	rlwinm. r0, r30, 0, 8, 8
/* 8019607C 0018BDFC  57 C0 06 BE */	clrlwi r0, r30, 0x1a
/* 80196080 0018BE00  90 04 00 04 */	stw r0, 4(r4)
/* 80196084 0018BE04  40 82 00 50 */	bne lbl_801960D4
/* 80196088 0018BE08  FC 20 F8 90 */	fmr f1, f31
/* 8019608C 0018BE0C  48 26 A5 21 */	bl floor
/* 80196090 0018BE10  FC 00 08 18 */	frsp f0, f1
/* 80196094 0018BE14  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80196098 0018BE18  3C 60 80 00 */	lis r3, 0x8000
/* 8019609C 0018BE1C  7C BF 02 14 */	add r5, r31, r0
/* 801960A0 0018BE20  FC 00 00 1E */	fctiwz f0, f0
/* 801960A4 0018BE24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801960A8 0018BE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801960AC 0018BE2C  54 04 E8 FA */	rlwinm r4, r0, 0x1d, 3, 0x1d
/* 801960B0 0018BE30  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 801960B4 0018BE34  7C 85 22 14 */	add r4, r5, r4
/* 801960B8 0018BE38  80 84 00 20 */	lwz r4, 0x20(r4)
/* 801960BC 0018BE3C  7C 60 04 30 */	srw r0, r3, r0
/* 801960C0 0018BE40  7C 80 00 39 */	and. r0, r4, r0
/* 801960C4 0018BE44  41 82 00 10 */	beq lbl_801960D4
/* 801960C8 0018BE48  80 1B 00 04 */	lwz r0, 4(r27)
/* 801960CC 0018BE4C  60 00 00 04 */	ori r0, r0, 4
/* 801960D0 0018BE50  90 1B 00 04 */	stw r0, 4(r27)
lbl_801960D4:
/* 801960D4 0018BE54  80 1B 00 04 */	lwz r0, 4(r27)
/* 801960D8 0018BE58  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801960DC 0018BE5C  41 82 02 CC */	beq lbl_801963A8
/* 801960E0 0018BE60  57 DD 07 BF */	clrlwi. r29, r30, 0x1e
/* 801960E4 0018BE64  57 DC EF FE */	rlwinm r28, r30, 0x1d, 0x1f, 0x1f
/* 801960E8 0018BE68  3B 40 00 01 */	li r26, 1
/* 801960EC 0018BE6C  40 82 00 10 */	bne lbl_801960FC
/* 801960F0 0018BE70  2C 1C 00 00 */	cmpwi r28, 0
/* 801960F4 0018BE74  40 82 00 08 */	bne lbl_801960FC
/* 801960F8 0018BE78  3B 40 00 00 */	li r26, 0
lbl_801960FC:
/* 801960FC 0018BE7C  57 C0 03 19 */	rlwinm. r0, r30, 0, 0xc, 0xc
/* 80196100 0018BE80  57 D9 67 FE */	rlwinm r25, r30, 0xc, 0x1f, 0x1f
/* 80196104 0018BE84  57 D8 5F FE */	rlwinm r24, r30, 0xb, 0x1f, 0x1f
/* 80196108 0018BE88  57 D7 57 FE */	rlwinm r23, r30, 0xa, 0x1f, 0x1f
/* 8019610C 0018BE8C  41 82 00 0C */	beq lbl_80196118
/* 80196110 0018BE90  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80196114 0018BE94  48 00 00 18 */	b lbl_8019612C
lbl_80196118:
/* 80196118 0018BE98  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8019611C 0018BE9C  FC 20 F0 90 */	fmr f1, f30
/* 80196120 0018BEA0  7C 7F 02 14 */	add r3, r31, r0
/* 80196124 0018BEA4  38 63 00 24 */	addi r3, r3, 0x24
/* 80196128 0018BEA8  4B FF CF 59 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_8019612C:
/* 8019612C 0018BEAC  2C 19 00 00 */	cmpwi r25, 0
/* 80196130 0018BEB0  D0 3B 00 08 */	stfs f1, 8(r27)
/* 80196134 0018BEB4  41 82 00 0C */	beq lbl_80196140
/* 80196138 0018BEB8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8019613C 0018BEBC  48 00 00 18 */	b lbl_80196154
lbl_80196140:
/* 80196140 0018BEC0  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80196144 0018BEC4  FC 20 F0 90 */	fmr f1, f30
/* 80196148 0018BEC8  7C 7F 02 14 */	add r3, r31, r0
/* 8019614C 0018BECC  38 63 00 28 */	addi r3, r3, 0x28
/* 80196150 0018BED0  4B FF CF 31 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_80196154:
/* 80196154 0018BED4  2C 18 00 00 */	cmpwi r24, 0
/* 80196158 0018BED8  D0 3B 00 0C */	stfs f1, 0xc(r27)
/* 8019615C 0018BEDC  41 82 00 0C */	beq lbl_80196168
/* 80196160 0018BEE0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80196164 0018BEE4  48 00 00 18 */	b lbl_8019617C
lbl_80196168:
/* 80196168 0018BEE8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8019616C 0018BEEC  FC 20 F0 90 */	fmr f1, f30
/* 80196170 0018BEF0  7C 7F 02 14 */	add r3, r31, r0
/* 80196174 0018BEF4  38 63 00 2C */	addi r3, r3, 0x2c
/* 80196178 0018BEF8  4B FF CF 09 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_8019617C:
/* 8019617C 0018BEFC  2C 17 00 00 */	cmpwi r23, 0
/* 80196180 0018BF00  D0 3B 00 10 */	stfs f1, 0x10(r27)
/* 80196184 0018BF04  41 82 00 0C */	beq lbl_80196190
/* 80196188 0018BF08  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8019618C 0018BF0C  48 00 00 18 */	b lbl_801961A4
lbl_80196190:
/* 80196190 0018BF10  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80196194 0018BF14  FC 20 F8 90 */	fmr f1, f31
/* 80196198 0018BF18  7C 7F 02 14 */	add r3, r31, r0
/* 8019619C 0018BF1C  38 63 00 30 */	addi r3, r3, 0x30
/* 801961A0 0018BF20  4B FF D0 0D */	bl nw4r3g3d6detailFPCQ34nw4r3g3d21Res$7GetResColorAnmResult
lbl_801961A4:
/* 801961A4 0018BF24  2C 1A 00 00 */	cmpwi r26, 0
/* 801961A8 0018BF28  90 7B 00 20 */	stw r3, 0x20(r27)
/* 801961AC 0018BF2C  41 82 00 84 */	beq lbl_80196230
/* 801961B0 0018BF30  57 C0 01 CF */	rlwinm. r0, r30, 0, 7, 7
/* 801961B4 0018BF34  57 D7 3F FE */	rlwinm r23, r30, 7, 0x1f, 0x1f
/* 801961B8 0018BF38  57 D8 37 FE */	rlwinm r24, r30, 6, 0x1f, 0x1f
/* 801961BC 0018BF3C  41 82 00 0C */	beq lbl_801961C8
/* 801961C0 0018BF40  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 801961C4 0018BF44  48 00 00 18 */	b lbl_801961DC
lbl_801961C8:
/* 801961C8 0018BF48  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 801961CC 0018BF4C  FC 20 F0 90 */	fmr f1, f30
/* 801961D0 0018BF50  7C 7F 02 14 */	add r3, r31, r0
/* 801961D4 0018BF54  38 63 00 34 */	addi r3, r3, 0x34
/* 801961D8 0018BF58  4B FF CE A9 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_801961DC:
/* 801961DC 0018BF5C  2C 17 00 00 */	cmpwi r23, 0
/* 801961E0 0018BF60  D0 3B 00 14 */	stfs f1, 0x14(r27)
/* 801961E4 0018BF64  41 82 00 0C */	beq lbl_801961F0
/* 801961E8 0018BF68  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801961EC 0018BF6C  48 00 00 18 */	b lbl_80196204
lbl_801961F0:
/* 801961F0 0018BF70  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 801961F4 0018BF74  FC 20 F0 90 */	fmr f1, f30
/* 801961F8 0018BF78  7C 7F 02 14 */	add r3, r31, r0
/* 801961FC 0018BF7C  38 63 00 38 */	addi r3, r3, 0x38
/* 80196200 0018BF80  4B FF CE 81 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_80196204:
/* 80196204 0018BF84  2C 18 00 00 */	cmpwi r24, 0
/* 80196208 0018BF88  D0 3B 00 18 */	stfs f1, 0x18(r27)
/* 8019620C 0018BF8C  41 82 00 0C */	beq lbl_80196218
/* 80196210 0018BF90  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80196214 0018BF94  48 00 00 18 */	b lbl_8019622C
lbl_80196218:
/* 80196218 0018BF98  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8019621C 0018BF9C  FC 20 F0 90 */	fmr f1, f30
/* 80196220 0018BFA0  7C 7F 02 14 */	add r3, r31, r0
/* 80196224 0018BFA4  38 63 00 3C */	addi r3, r3, 0x3c
/* 80196228 0018BFA8  4B FF CE 59 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_8019622C:
/* 8019622C 0018BFAC  D0 3B 00 1C */	stfs f1, 0x1c(r27)
lbl_80196230:
/* 80196230 0018BFB0  2C 1D 00 01 */	cmpwi r29, 1
/* 80196234 0018BFB4  41 82 01 10 */	beq lbl_80196344
/* 80196238 0018BFB8  40 80 00 10 */	bge lbl_80196248
/* 8019623C 0018BFBC  2C 1D 00 00 */	cmpwi r29, 0
/* 80196240 0018BFC0  40 80 00 14 */	bge lbl_80196254
/* 80196244 0018BFC4  48 00 01 00 */	b lbl_80196344
lbl_80196248:
/* 80196248 0018BFC8  2C 1D 00 03 */	cmpwi r29, 3
/* 8019624C 0018BFCC  40 80 00 F8 */	bge lbl_80196344
/* 80196250 0018BFD0  48 00 00 64 */	b lbl_801962B4
lbl_80196254:
/* 80196254 0018BFD4  57 C0 00 C7 */	rlwinm. r0, r30, 0, 3, 3
/* 80196258 0018BFD8  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8019625C 0018BFDC  57 D7 1F FE */	rlwinm r23, r30, 3, 0x1f, 0x1f
/* 80196260 0018BFE0  90 1B 00 24 */	stw r0, 0x24(r27)
/* 80196264 0018BFE4  41 82 00 0C */	beq lbl_80196270
/* 80196268 0018BFE8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8019626C 0018BFEC  48 00 00 18 */	b lbl_80196284
lbl_80196270:
/* 80196270 0018BFF0  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80196274 0018BFF4  FC 20 F0 90 */	fmr f1, f30
/* 80196278 0018BFF8  7C 7F 02 14 */	add r3, r31, r0
/* 8019627C 0018BFFC  38 63 00 44 */	addi r3, r3, 0x44
/* 80196280 0018C000  4B FF CE 01 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_80196284:
/* 80196284 0018C004  2C 17 00 00 */	cmpwi r23, 0
/* 80196288 0018C008  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 8019628C 0018C00C  41 82 00 0C */	beq lbl_80196298
/* 80196290 0018C010  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80196294 0018C014  48 00 00 18 */	b lbl_801962AC
lbl_80196298:
/* 80196298 0018C018  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 8019629C 0018C01C  FC 20 F0 90 */	fmr f1, f30
/* 801962A0 0018C020  7C 7F 02 14 */	add r3, r31, r0
/* 801962A4 0018C024  38 63 00 48 */	addi r3, r3, 0x48
/* 801962A8 0018C028  4B FF CD D9 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_801962AC:
/* 801962AC 0018C02C  D0 3B 00 2C */	stfs f1, 0x2c(r27)
/* 801962B0 0018C030  48 00 00 94 */	b lbl_80196344
lbl_801962B4:
/* 801962B4 0018C034  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801962B8 0018C038  57 C0 01 09 */	rlwinm. r0, r30, 0, 4, 4
/* 801962BC 0018C03C  57 D7 27 FE */	rlwinm r23, r30, 4, 0x1f, 0x1f
/* 801962C0 0018C040  57 D8 1F FE */	rlwinm r24, r30, 3, 0x1f, 0x1f
/* 801962C4 0018C044  90 7B 00 24 */	stw r3, 0x24(r27)
/* 801962C8 0018C048  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 801962CC 0018C04C  90 1B 00 30 */	stw r0, 0x30(r27)
/* 801962D0 0018C050  41 82 00 0C */	beq lbl_801962DC
/* 801962D4 0018C054  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801962D8 0018C058  48 00 00 18 */	b lbl_801962F0
lbl_801962DC:
/* 801962DC 0018C05C  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 801962E0 0018C060  FC 20 F0 90 */	fmr f1, f30
/* 801962E4 0018C064  7C 7F 02 14 */	add r3, r31, r0
/* 801962E8 0018C068  38 63 00 50 */	addi r3, r3, 0x50
/* 801962EC 0018C06C  4B FF CD 95 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_801962F0:
/* 801962F0 0018C070  2C 17 00 00 */	cmpwi r23, 0
/* 801962F4 0018C074  D0 3B 00 34 */	stfs f1, 0x34(r27)
/* 801962F8 0018C078  41 82 00 0C */	beq lbl_80196304
/* 801962FC 0018C07C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80196300 0018C080  48 00 00 18 */	b lbl_80196318
lbl_80196304:
/* 80196304 0018C084  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80196308 0018C088  FC 20 F0 90 */	fmr f1, f30
/* 8019630C 0018C08C  7C 7F 02 14 */	add r3, r31, r0
/* 80196310 0018C090  38 63 00 44 */	addi r3, r3, 0x44
/* 80196314 0018C094  4B FF CD 6D */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_80196318:
/* 80196318 0018C098  2C 18 00 00 */	cmpwi r24, 0
/* 8019631C 0018C09C  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 80196320 0018C0A0  41 82 00 0C */	beq lbl_8019632C
/* 80196324 0018C0A4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80196328 0018C0A8  48 00 00 18 */	b lbl_80196340
lbl_8019632C:
/* 8019632C 0018C0AC  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80196330 0018C0B0  FC 20 F0 90 */	fmr f1, f30
/* 80196334 0018C0B4  7C 7F 02 14 */	add r3, r31, r0
/* 80196338 0018C0B8  38 63 00 48 */	addi r3, r3, 0x48
/* 8019633C 0018C0BC  4B FF CD 45 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_80196340:
/* 80196340 0018C0C0  D0 3B 00 2C */	stfs f1, 0x2c(r27)
lbl_80196344:
/* 80196344 0018C0C4  2C 1C 00 00 */	cmpwi r28, 0
/* 80196348 0018C0C8  41 82 00 60 */	beq lbl_801963A8
/* 8019634C 0018C0CC  57 C0 00 43 */	rlwinm. r0, r30, 0, 1, 1
/* 80196350 0018C0D0  57 D7 0F FE */	srwi r23, r30, 0x1f
/* 80196354 0018C0D4  41 82 00 0C */	beq lbl_80196360
/* 80196358 0018C0D8  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8019635C 0018C0DC  48 00 00 18 */	b lbl_80196374
lbl_80196360:
/* 80196360 0018C0E0  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80196364 0018C0E4  FC 20 F8 90 */	fmr f1, f31
/* 80196368 0018C0E8  7C 7F 02 14 */	add r3, r31, r0
/* 8019636C 0018C0EC  38 63 00 54 */	addi r3, r3, 0x54
/* 80196370 0018C0F0  4B FF CE 3D */	bl nw4r3g3d6detailFPCQ34nw4r3g3d21Res$7GetResColorAnmResult
lbl_80196374:
/* 80196374 0018C0F4  2C 17 00 00 */	cmpwi r23, 0
/* 80196378 0018C0F8  90 7B 00 38 */	stw r3, 0x38(r27)
/* 8019637C 0018C0FC  41 82 00 0C */	beq lbl_80196388
/* 80196380 0018C100  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80196384 0018C104  48 00 00 18 */	b lbl_8019639C
lbl_80196388:
/* 80196388 0018C108  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 8019638C 0018C10C  FC 20 F0 90 */	fmr f1, f30
/* 80196390 0018C110  7C 7F 02 14 */	add r3, r31, r0
/* 80196394 0018C114  38 63 00 58 */	addi r3, r3, 0x58
/* 80196398 0018C118  4B FF CC E9 */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_8019639C:
/* 8019639C 0018C11C  D0 3B 00 3C */	stfs f1, 0x3c(r27)
/* 801963A0 0018C120  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 801963A4 0018C124  90 1B 00 00 */	stw r0, 0(r27)
lbl_801963A8:
/* 801963A8 0018C128  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801963AC 0018C12C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801963B0 0018C130  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 801963B4 0018C134  39 61 00 40 */	addi r11, r1, 0x40
/* 801963B8 0018C138  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801963BC 0018C13C  48 25 AF A1 */	bl _restgpr_23
/* 801963C0 0018C140  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801963C4 0018C144  7C 08 03 A6 */	mtlr r0
/* 801963C8 0018C148  38 21 00 60 */	addi r1, r1, 0x60
/* 801963CC 0018C14C  4E 80 00 20 */	blr 

