.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DWC_Init
DWC_Init:
/* 80335264 0032AFE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80335268 0032AFE8  7C 08 02 A6 */	mflr r0
/* 8033526C 0032AFEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80335270 0032AFF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80335274 0032AFF4  48 0B C0 AD */	bl _savegpr_27
/* 80335278 0032AFF8  3D 00 80 49 */	lis r8, lbl_80489148@ha
/* 8033527C 0032AFFC  7C 7B 1B 78 */	mr r27, r3
/* 80335280 0032B000  7C 9C 23 78 */	mr r28, r4
/* 80335284 0032B004  7C BD 2B 78 */	mr r29, r5
/* 80335288 0032B008  7C DE 33 78 */	mr r30, r6
/* 8033528C 0032B00C  7C FF 3B 78 */	mr r31, r7
/* 80335290 0032B010  38 68 91 48 */	addi r3, r8, lbl_80489148@l
/* 80335294 0032B014  4B EA 12 F9 */	bl OSRegisterVersion
/* 80335298 0032B018  7F C3 F3 78 */	mr r3, r30
/* 8033529C 0032B01C  7F E4 FB 78 */	mr r4, r31
/* 803352A0 0032B020  48 00 00 E5 */	bl DWCi_SetMemFunc
/* 803352A4 0032B024  7F 63 DB 78 */	mr r3, r27
/* 803352A8 0032B028  48 01 CD 99 */	bl DWCi_Auth_InitInterface
/* 803352AC 0032B02C  3C 60 80 33 */	lis r3, DWCi_GsMalloc@ha
/* 803352B0 0032B030  3C 80 80 33 */	lis r4, DWCi_GsFree@ha
/* 803352B4 0032B034  3C A0 80 33 */	lis r5, DWCi_GsRealloc@ha
/* 803352B8 0032B038  3C C0 80 33 */	lis r6, DWCi_GsMemalign@ha
/* 803352BC 0032B03C  93 AD CB 30 */	stw r29, lbl_805A0F50-_SDA_BASE_(r13)
/* 803352C0 0032B040  38 63 54 6C */	addi r3, r3, DWCi_GsMalloc@l
/* 803352C4 0032B044  38 84 55 A4 */	addi r4, r4, DWCi_GsFree@l
/* 803352C8 0032B048  38 A5 54 D4 */	addi r5, r5, DWCi_GsRealloc@l
/* 803352CC 0032B04C  38 C6 55 C8 */	addi r6, r6, DWCi_GsMemalign@l
/* 803352D0 0032B050  48 02 8C FD */	bl gsiMemoryCallbacksSet
/* 803352D4 0032B054  3C 60 80 53 */	lis r3, lbl_80535BE0@ha
/* 803352D8 0032B058  7F 84 E3 78 */	mr r4, r28
/* 803352DC 0032B05C  38 63 5B E0 */	addi r3, r3, lbl_80535BE0@l
/* 803352E0 0032B060  48 0C 4F A1 */	bl strcpy
/* 803352E4 0032B064  2C 1B 00 00 */	cmpwi r27, 0
/* 803352E8 0032B068  40 82 00 18 */	bne lbl_80335300
/* 803352EC 0032B06C  3C 60 80 49 */	lis r3, lbl_804909D0@ha
/* 803352F0 0032B070  3C 80 80 49 */	lis r4, lbl_80489190@ha
/* 803352F4 0032B074  38 63 09 D0 */	addi r3, r3, lbl_804909D0@l
/* 803352F8 0032B078  38 84 91 90 */	addi r4, r4, lbl_80489190@l
/* 803352FC 0032B07C  48 0C 4F 85 */	bl strcpy
lbl_80335300:
/* 80335300 0032B080  38 60 00 01 */	li r3, 1
/* 80335304 0032B084  48 01 9D 1D */	bl DWCi_Np_SetInitFlag
/* 80335308 0032B088  48 01 A3 7D */	bl DWCi_Np_GetConsoleId
/* 8033530C 0032B08C  39 61 00 20 */	addi r11, r1, 0x20
/* 80335310 0032B090  38 60 00 00 */	li r3, 0
/* 80335314 0032B094  48 0B C0 59 */	bl _restgpr_27
/* 80335318 0032B098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033531C 0032B09C  7C 08 03 A6 */	mtlr r0
/* 80335320 0032B0A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80335324 0032B0A4  4E 80 00 20 */	blr 

.global DWC_Shutdown
DWC_Shutdown:
/* 80335328 0032B0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033532C 0032B0AC  7C 08 02 A6 */	mflr r0
/* 80335330 0032B0B0  3C 60 80 33 */	lis r3, DWCi_GsMalloc@ha
/* 80335334 0032B0B4  3C 80 80 33 */	lis r4, DWCi_GsFree@ha
/* 80335338 0032B0B8  3C A0 80 33 */	lis r5, DWCi_GsRealloc@ha
/* 8033533C 0032B0BC  3C C0 80 33 */	lis r6, DWCi_GsMemalign@ha
/* 80335340 0032B0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80335344 0032B0C4  38 63 54 6C */	addi r3, r3, DWCi_GsMalloc@l
/* 80335348 0032B0C8  38 84 55 A4 */	addi r4, r4, DWCi_GsFree@l
/* 8033534C 0032B0CC  38 A5 54 D4 */	addi r5, r5, DWCi_GsRealloc@l
/* 80335350 0032B0D0  38 C6 55 C8 */	addi r6, r6, DWCi_GsMemalign@l
/* 80335354 0032B0D4  48 02 8C 79 */	bl gsiMemoryCallbacksSet
/* 80335358 0032B0D8  38 6D AC 40 */	addi r3, r13, lbl_8059F060-_SDA_BASE_
/* 8033535C 0032B0DC  48 02 74 2D */	bl gethostbyname
/* 80335360 0032B0E0  48 01 B8 5D */	bl DWCi_CfReset
/* 80335364 0032B0E4  38 60 00 00 */	li r3, 0
/* 80335368 0032B0E8  48 01 9C B9 */	bl DWCi_Np_SetInitFlag
/* 8033536C 0032B0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80335370 0032B0F0  7C 08 03 A6 */	mtlr r0
/* 80335374 0032B0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80335378 0032B0F8  4E 80 00 20 */	blr 

.global DWCi_GetGamecode
DWCi_GetGamecode:
/* 8033537C 0032B0FC  80 6D CB 30 */	lwz r3, lbl_805A0F50-_SDA_BASE_(r13)
/* 80335380 0032B100  4E 80 00 20 */	blr 

