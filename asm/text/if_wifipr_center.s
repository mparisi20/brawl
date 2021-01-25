.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfWifiprCenter$7__ct
IfWifiprCenter$7__ct:
/* 800FD1F8 000F2F78  3C A0 80 46 */	lis r5, lbl_8045C720@ha
/* 800FD1FC 000F2F7C  38 80 00 00 */	li r4, 0
/* 800FD200 000F2F80  38 A5 C7 20 */	addi r5, r5, lbl_8045C720@l
/* 800FD204 000F2F84  38 00 FF FF */	li r0, -1
/* 800FD208 000F2F88  90 A3 00 10 */	stw r5, 0x10(r3)
/* 800FD20C 000F2F8C  90 83 00 04 */	stw r4, 4(r3)
/* 800FD210 000F2F90  90 83 00 08 */	stw r4, 8(r3)
/* 800FD214 000F2F94  90 03 00 0C */	stw r0, 0xc(r3)
/* 800FD218 000F2F98  90 83 00 00 */	stw r4, 0(r3)
/* 800FD21C 000F2F9C  4E 80 00 20 */	blr 

.global IfWifiprCenter$7__dt
IfWifiprCenter$7__dt:
/* 800FD220 000F2FA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FD224 000F2FA4  7C 08 02 A6 */	mflr r0
/* 800FD228 000F2FA8  2C 03 00 00 */	cmpwi r3, 0
/* 800FD22C 000F2FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FD230 000F2FB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FD234 000F2FB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FD238 000F2FB8  7C 9E 23 78 */	mr r30, r4
/* 800FD23C 000F2FBC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FD240 000F2FC0  7C 7D 1B 78 */	mr r29, r3
/* 800FD244 000F2FC4  41 82 00 6C */	beq lbl_800FD2B0
/* 800FD248 000F2FC8  80 03 00 04 */	lwz r0, 4(r3)
/* 800FD24C 000F2FCC  3C 80 80 46 */	lis r4, lbl_8045C720@ha
/* 800FD250 000F2FD0  38 84 C7 20 */	addi r4, r4, lbl_8045C720@l
/* 800FD254 000F2FD4  2C 00 00 00 */	cmpwi r0, 0
/* 800FD258 000F2FD8  90 83 00 10 */	stw r4, 0x10(r3)
/* 800FD25C 000F2FDC  41 82 00 18 */	beq lbl_800FD274
/* 800FD260 000F2FE0  7C 03 03 78 */	mr r3, r0
/* 800FD264 000F2FE4  38 80 00 01 */	li r4, 1
/* 800FD268 000F2FE8  4B FB B7 A5 */	bl MuMsg$7__dt
/* 800FD26C 000F2FEC  38 00 00 00 */	li r0, 0
/* 800FD270 000F2FF0  90 1D 00 04 */	stw r0, 4(r29)
lbl_800FD274:
/* 800FD274 000F2FF4  80 7D 00 00 */	lwz r3, 0(r29)
/* 800FD278 000F2FF8  3B E0 00 00 */	li r31, 0
/* 800FD27C 000F2FFC  2C 03 00 00 */	cmpwi r3, 0
/* 800FD280 000F3000  41 82 00 20 */	beq lbl_800FD2A0
/* 800FD284 000F3004  41 82 00 18 */	beq lbl_800FD29C
/* 800FD288 000F3008  81 83 00 5C */	lwz r12, 0x5c(r3)
/* 800FD28C 000F300C  38 80 00 01 */	li r4, 1
/* 800FD290 000F3010  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FD294 000F3014  7D 89 03 A6 */	mtctr r12
/* 800FD298 000F3018  4E 80 04 21 */	bctrl 
lbl_800FD29C:
/* 800FD29C 000F301C  93 FD 00 00 */	stw r31, 0(r29)
lbl_800FD2A0:
/* 800FD2A0 000F3020  2C 1E 00 00 */	cmpwi r30, 0
/* 800FD2A4 000F3024  40 81 00 0C */	ble lbl_800FD2B0
/* 800FD2A8 000F3028  7F A3 EB 78 */	mr r3, r29
/* 800FD2AC 000F302C  4B F0 F6 1D */	bl __dl
lbl_800FD2B0:
/* 800FD2B0 000F3030  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FD2B4 000F3034  7F A3 EB 78 */	mr r3, r29
/* 800FD2B8 000F3038  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FD2BC 000F303C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FD2C0 000F3040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FD2C4 000F3044  7C 08 03 A6 */	mtlr r0
/* 800FD2C8 000F3048  38 21 00 20 */	addi r1, r1, 0x20
/* 800FD2CC 000F304C  4E 80 00 20 */	blr 

.global IfWifiprCenter$7createModel
IfWifiprCenter$7createModel:
/* 800FD2D0 000F3050  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800FD2D4 000F3054  7C 08 02 A6 */	mflr r0
/* 800FD2D8 000F3058  90 01 00 64 */	stw r0, 0x64(r1)
/* 800FD2DC 000F305C  39 61 00 60 */	addi r11, r1, 0x60
/* 800FD2E0 000F3060  48 2F 40 3D */	bl _savegpr_26
/* 800FD2E4 000F3064  3B A2 93 E8 */	addi r29, r2, lbl_805A2708-_SDA2_BASE_
/* 800FD2E8 000F3068  7C 7A 1B 78 */	mr r26, r3
/* 800FD2EC 000F306C  88 7D 00 05 */	lbz r3, 5(r29)
/* 800FD2F0 000F3070  7C 9B 23 78 */	mr r27, r4
/* 800FD2F4 000F3074  88 1D 00 04 */	lbz r0, 4(r29)
/* 800FD2F8 000F3078  7C BC 2B 78 */	mr r28, r5
/* 800FD2FC 000F307C  3B E0 00 01 */	li r31, 1
/* 800FD300 000F3080  7C 00 18 40 */	cmplw r0, r3
/* 800FD304 000F3084  40 80 00 08 */	bge lbl_800FD30C
/* 800FD308 000F3088  7F E0 18 50 */	subf r31, r0, r3
lbl_800FD30C:
/* 800FD30C 000F308C  80 BD 00 00 */	lwz r5, 0(r29)
/* 800FD310 000F3090  38 61 00 08 */	addi r3, r1, 8
/* 800FD314 000F3094  38 8D A0 D0 */	addi r4, r13, lbl_8059E4F0-_SDA_BASE_
/* 800FD318 000F3098  4C C6 31 82 */	crclr 6
/* 800FD31C 000F309C  48 2F B6 E1 */	bl sprintf
/* 800FD320 000F30A0  3B C0 00 00 */	li r30, 0
/* 800FD324 000F30A4  48 00 00 48 */	b lbl_800FD36C
lbl_800FD328:
/* 800FD328 000F30A8  80 9D 00 00 */	lwz r4, 0(r29)
/* 800FD32C 000F30AC  7F 63 DB 78 */	mr r3, r27
/* 800FD330 000F30B0  88 BD 00 06 */	lbz r5, 6(r29)
/* 800FD334 000F30B4  38 C0 00 00 */	li r6, 0
/* 800FD338 000F30B8  38 E0 00 28 */	li r7, 0x28
/* 800FD33C 000F30BC  4B FB 50 59 */	bl MuObject$7create
/* 800FD340 000F30C0  88 1D 00 04 */	lbz r0, 4(r29)
/* 800FD344 000F30C4  38 81 00 08 */	addi r4, r1, 8
/* 800FD348 000F30C8  7C 00 F2 14 */	add r0, r0, r30
/* 800FD34C 000F30CC  54 00 10 3A */	slwi r0, r0, 2
/* 800FD350 000F30D0  7C 7A 01 2E */	stwx r3, r26, r0
/* 800FD354 000F30D4  88 1D 00 04 */	lbz r0, 4(r29)
/* 800FD358 000F30D8  7C 00 F2 14 */	add r0, r0, r30
/* 800FD35C 000F30DC  54 00 10 3A */	slwi r0, r0, 2
/* 800FD360 000F30E0  7C 7A 00 2E */	lwzx r3, r26, r0
/* 800FD364 000F30E4  4B FB 7F E9 */	bl MuObject$7changeAnimN
/* 800FD368 000F30E8  3B DE 00 01 */	addi r30, r30, 1
lbl_800FD36C:
/* 800FD36C 000F30EC  7C 1E F8 00 */	cmpw r30, r31
/* 800FD370 000F30F0  41 80 FF B8 */	blt lbl_800FD328
/* 800FD374 000F30F4  93 9A 00 08 */	stw r28, 8(r26)
/* 800FD378 000F30F8  38 60 00 08 */	li r3, 8
/* 800FD37C 000F30FC  38 80 00 28 */	li r4, 0x28
/* 800FD380 000F3100  38 A0 00 2A */	li r5, 0x2a
/* 800FD384 000F3104  4B FB B5 AD */	bl MuMsg$7create
/* 800FD388 000F3108  90 7A 00 04 */	stw r3, 4(r26)
/* 800FD38C 000F310C  7C 7F 1B 78 */	mr r31, r3
/* 800FD390 000F3110  38 80 01 00 */	li r4, 0x100
/* 800FD394 000F3114  38 A0 00 02 */	li r5, 2
/* 800FD398 000F3118  4B FB B7 71 */	bl MuMsg$7allocMsgBuf
/* 800FD39C 000F311C  80 BA 00 00 */	lwz r5, 0(r26)
/* 800FD3A0 000F3120  7F E3 FB 78 */	mr r3, r31
/* 800FD3A4 000F3124  C0 22 93 F0 */	lfs f1, lbl_805A2710-_SDA2_BASE_(r2)
/* 800FD3A8 000F3128  38 80 00 00 */	li r4, 0
/* 800FD3AC 000F312C  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800FD3B0 000F3130  38 C0 00 00 */	li r6, 0
/* 800FD3B4 000F3134  4B FB B8 DD */	bl MuMsg$7attachScnMdlSimple
/* 800FD3B8 000F3138  7F E3 FB 78 */	mr r3, r31
/* 800FD3BC 000F313C  38 80 00 00 */	li r4, 0
/* 800FD3C0 000F3140  38 A0 00 F0 */	li r5, 0xf0
/* 800FD3C4 000F3144  38 C0 00 F0 */	li r6, 0xf0
/* 800FD3C8 000F3148  38 E0 00 F0 */	li r7, 0xf0
/* 800FD3CC 000F314C  39 00 00 FF */	li r8, 0xff
/* 800FD3D0 000F3150  4B FB BF D5 */	bl MuMsg$7setFontColor
/* 800FD3D4 000F3154  7F E3 FB 78 */	mr r3, r31
/* 800FD3D8 000F3158  38 80 00 00 */	li r4, 0
/* 800FD3DC 000F315C  38 A0 00 04 */	li r5, 4
/* 800FD3E0 000F3160  4B FB C0 A9 */	bl func_800B9488
/* 800FD3E4 000F3164  80 7F 00 08 */	lwz r3, 8(r31)
/* 800FD3E8 000F3168  38 80 00 00 */	li r4, 0
/* 800FD3EC 000F316C  38 A0 00 07 */	li r5, 7
/* 800FD3F0 000F3170  4B F6 E2 71 */	bl Message$7setObjZcompare
/* 800FD3F4 000F3174  80 BA 00 00 */	lwz r5, 0(r26)
/* 800FD3F8 000F3178  7F E3 FB 78 */	mr r3, r31
/* 800FD3FC 000F317C  C0 22 93 F0 */	lfs f1, lbl_805A2710-_SDA2_BASE_(r2)
/* 800FD400 000F3180  38 80 00 01 */	li r4, 1
/* 800FD404 000F3184  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800FD408 000F3188  38 C0 00 01 */	li r6, 1
/* 800FD40C 000F318C  4B FB B8 85 */	bl MuMsg$7attachScnMdlSimple
/* 800FD410 000F3190  7F E3 FB 78 */	mr r3, r31
/* 800FD414 000F3194  38 80 00 01 */	li r4, 1
/* 800FD418 000F3198  38 A0 00 04 */	li r5, 4
/* 800FD41C 000F319C  4B FB C0 6D */	bl func_800B9488
/* 800FD420 000F31A0  80 7F 00 08 */	lwz r3, 8(r31)
/* 800FD424 000F31A4  38 80 00 01 */	li r4, 1
/* 800FD428 000F31A8  38 A0 00 07 */	li r5, 7
/* 800FD42C 000F31AC  4B F6 E2 35 */	bl Message$7setObjZcompare
/* 800FD430 000F31B0  39 61 00 60 */	addi r11, r1, 0x60
/* 800FD434 000F31B4  48 2F 3F 35 */	bl _restgpr_26
/* 800FD438 000F31B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800FD43C 000F31BC  7C 08 03 A6 */	mtlr r0
/* 800FD440 000F31C0  38 21 00 60 */	addi r1, r1, 0x60
/* 800FD444 000F31C4  4E 80 00 20 */	blr 

.global IfWifiprCenter$7main
IfWifiprCenter$7main:
/* 800FD448 000F31C8  4E 80 00 20 */	blr 

.global IfWifiprCenter$7startMelee
IfWifiprCenter$7startMelee:
/* 800FD44C 000F31CC  81 84 00 00 */	lwz r12, 0(r4)
/* 800FD450 000F31D0  7C 65 1B 78 */	mr r5, r3
/* 800FD454 000F31D4  80 A5 00 00 */	lwz r5, 0(r5)
/* 800FD458 000F31D8  7C 83 23 78 */	mr r3, r4
/* 800FD45C 000F31DC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800FD460 000F31E0  80 84 00 E4 */	lwz r4, 0xe4(r4)
/* 800FD464 000F31E4  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800FD468 000F31E8  7D 89 03 A6 */	mtctr r12
/* 800FD46C 000F31EC  4E 80 04 20 */	bctr 

.global IfWifiprCenter$7dispMsg
IfWifiprCenter$7dispMsg:
/* 800FD470 000F31F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FD474 000F31F4  7C 08 02 A6 */	mflr r0
/* 800FD478 000F31F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FD47C 000F31FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FD480 000F3200  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FD484 000F3204  7C 9E 23 78 */	mr r30, r4
/* 800FD488 000F3208  7F C5 F3 78 */	mr r5, r30
/* 800FD48C 000F320C  38 80 00 00 */	li r4, 0
/* 800FD490 000F3210  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FD494 000F3214  7C 7D 1B 78 */	mr r29, r3
/* 800FD498 000F3218  80 63 00 04 */	lwz r3, 4(r3)
/* 800FD49C 000F321C  80 DD 00 08 */	lwz r6, 8(r29)
/* 800FD4A0 000F3220  4B FB BD 19 */	bl MuMsg$7printIndex
/* 800FD4A4 000F3224  83 FD 00 00 */	lwz r31, 0(r29)
/* 800FD4A8 000F3228  C0 22 93 F4 */	lfs f1, lbl_805A2714-_SDA2_BASE_(r2)
/* 800FD4AC 000F322C  7F E3 FB 78 */	mr r3, r31
/* 800FD4B0 000F3230  4B FB A2 E9 */	bl MuObject$7setFrameNode
/* 800FD4B4 000F3234  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800FD4B8 000F3238  C0 22 93 F8 */	lfs f1, lbl_805A2718-_SDA2_BASE_(r2)
/* 800FD4BC 000F323C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800FD4C0 000F3240  81 83 00 00 */	lwz r12, 0(r3)
/* 800FD4C4 000F3244  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800FD4C8 000F3248  7D 89 03 A6 */	mtctr r12
/* 800FD4CC 000F324C  4E 80 04 21 */	bctrl 
/* 800FD4D0 000F3250  93 DD 00 0C */	stw r30, 0xc(r29)
/* 800FD4D4 000F3254  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FD4D8 000F3258  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FD4DC 000F325C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FD4E0 000F3260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FD4E4 000F3264  7C 08 03 A6 */	mtlr r0
/* 800FD4E8 000F3268  38 21 00 20 */	addi r1, r1, 0x20
/* 800FD4EC 000F326C  4E 80 00 20 */	blr 

.global IfWifiprCenter$7startBeginMeleeAnim
IfWifiprCenter$7startBeginMeleeAnim:
/* 800FD4F0 000F3270  80 63 00 00 */	lwz r3, 0(r3)
/* 800FD4F4 000F3274  38 80 00 01 */	li r4, 1
/* 800FD4F8 000F3278  38 A0 00 10 */	li r5, 0x10
/* 800FD4FC 000F327C  38 C0 00 01 */	li r6, 1
/* 800FD500 000F3280  38 E0 00 00 */	li r7, 0
/* 800FD504 000F3284  4B FB 83 50 */	b MuObject$7setActionNo

.global IfWifiprCenter$7isBeginMeleeAnimFinished
IfWifiprCenter$7isBeginMeleeAnimFinished:
/* 800FD508 000F3288  80 63 00 00 */	lwz r3, 0(r3)
/* 800FD50C 000F328C  4B FB 8E 04 */	b MuObject$7isClrAnimFinished
