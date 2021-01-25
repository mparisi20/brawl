.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global Block_link
Block_link:
/* 803F3048 003E8DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F304C 003E8DCC  7C 08 02 A6 */	mflr r0
/* 803F3050 003E8DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F3054 003E8DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F3058 003E8DD8  93 C1 00 08 */	stw r30, 8(r1)
/* 803F305C 003E8DDC  7C 7E 1B 78 */	mr r30, r3
/* 803F3060 003E8DE0  80 A4 00 00 */	lwz r5, 0(r4)
/* 803F3064 003E8DE4  54 A0 07 FA */	rlwinm r0, r5, 0, 0x1f, 0x1d
/* 803F3068 003E8DE8  54 A6 00 38 */	rlwinm r6, r5, 0, 0, 0x1c
/* 803F306C 003E8DEC  90 04 00 00 */	stw r0, 0(r4)
/* 803F3070 003E8DF0  7C A4 32 14 */	add r5, r4, r6
/* 803F3074 003E8DF4  7C 04 30 2E */	lwzx r0, r4, r6
/* 803F3078 003E8DF8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 803F307C 003E8DFC  7C 04 31 2E */	stwx r0, r4, r6
/* 803F3080 003E8E00  90 C5 FF FC */	stw r6, -4(r5)
/* 803F3084 003E8E04  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803F3088 003E8E08  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 803F308C 003E8E0C  7F E3 02 14 */	add r31, r3, r0
/* 803F3090 003E8E10  84 7F FF FC */	lwzu r3, -4(r31)
/* 803F3094 003E8E14  2C 03 00 00 */	cmpwi r3, 0
/* 803F3098 003E8E18  41 82 00 C0 */	beq lbl_803F3158
/* 803F309C 003E8E1C  80 A3 00 08 */	lwz r5, 8(r3)
/* 803F30A0 003E8E20  7C 83 23 78 */	mr r3, r4
/* 803F30A4 003E8E24  90 A4 00 08 */	stw r5, 8(r4)
/* 803F30A8 003E8E28  90 85 00 0C */	stw r4, 0xc(r5)
/* 803F30AC 003E8E2C  80 1F 00 00 */	lwz r0, 0(r31)
/* 803F30B0 003E8E30  90 04 00 0C */	stw r0, 0xc(r4)
/* 803F30B4 003E8E34  80 BF 00 00 */	lwz r5, 0(r31)
/* 803F30B8 003E8E38  90 85 00 08 */	stw r4, 8(r5)
/* 803F30BC 003E8E3C  90 9F 00 00 */	stw r4, 0(r31)
/* 803F30C0 003E8E40  80 04 00 00 */	lwz r0, 0(r4)
/* 803F30C4 003E8E44  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803F30C8 003E8E48  40 82 00 80 */	bne lbl_803F3148
/* 803F30CC 003E8E4C  80 C4 FF FC */	lwz r6, -4(r4)
/* 803F30D0 003E8E50  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 803F30D4 003E8E54  41 82 00 08 */	beq lbl_803F30DC
/* 803F30D8 003E8E58  48 00 00 70 */	b lbl_803F3148
lbl_803F30DC:
/* 803F30DC 003E8E5C  7C 66 20 50 */	subf r3, r6, r4
/* 803F30E0 003E8E60  80 03 00 00 */	lwz r0, 0(r3)
/* 803F30E4 003E8E64  54 05 07 7E */	clrlwi r5, r0, 0x1d
/* 803F30E8 003E8E68  90 A3 00 00 */	stw r5, 0(r3)
/* 803F30EC 003E8E6C  80 04 00 00 */	lwz r0, 0(r4)
/* 803F30F0 003E8E70  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 803F30F4 003E8E74  7C 06 02 14 */	add r0, r6, r0
/* 803F30F8 003E8E78  50 05 00 38 */	rlwimi r5, r0, 0, 0, 0x1c
/* 803F30FC 003E8E7C  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 803F3100 003E8E80  90 A3 00 00 */	stw r5, 0(r3)
/* 803F3104 003E8E84  40 82 00 18 */	bne lbl_803F311C
/* 803F3108 003E8E88  80 04 00 00 */	lwz r0, 0(r4)
/* 803F310C 003E8E8C  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 803F3110 003E8E90  7C 06 02 14 */	add r0, r6, r0
/* 803F3114 003E8E94  7C A3 02 14 */	add r5, r3, r0
/* 803F3118 003E8E98  90 05 FF FC */	stw r0, -4(r5)
lbl_803F311C:
/* 803F311C 003E8E9C  80 BF 00 00 */	lwz r5, 0(r31)
/* 803F3120 003E8EA0  7C 05 20 40 */	cmplw r5, r4
/* 803F3124 003E8EA4  40 82 00 0C */	bne lbl_803F3130
/* 803F3128 003E8EA8  80 05 00 0C */	lwz r0, 0xc(r5)
/* 803F312C 003E8EAC  90 1F 00 00 */	stw r0, 0(r31)
lbl_803F3130:
/* 803F3130 003E8EB0  80 04 00 08 */	lwz r0, 8(r4)
/* 803F3134 003E8EB4  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 803F3138 003E8EB8  90 05 00 08 */	stw r0, 8(r5)
/* 803F313C 003E8EBC  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 803F3140 003E8EC0  80 85 00 08 */	lwz r4, 8(r5)
/* 803F3144 003E8EC4  90 A4 00 0C */	stw r5, 0xc(r4)
lbl_803F3148:
/* 803F3148 003E8EC8  90 7F 00 00 */	stw r3, 0(r31)
/* 803F314C 003E8ECC  7F E4 FB 78 */	mr r4, r31
/* 803F3150 003E8ED0  48 00 00 49 */	bl SubBlock_merge_next
/* 803F3154 003E8ED4  48 00 00 10 */	b lbl_803F3164
lbl_803F3158:
/* 803F3158 003E8ED8  90 9F 00 00 */	stw r4, 0(r31)
/* 803F315C 003E8EDC  90 84 00 08 */	stw r4, 8(r4)
/* 803F3160 003E8EE0  90 84 00 0C */	stw r4, 0xc(r4)
lbl_803F3164:
/* 803F3164 003E8EE4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803F3168 003E8EE8  80 1E 00 08 */	lwz r0, 8(r30)
/* 803F316C 003E8EEC  80 63 00 00 */	lwz r3, 0(r3)
/* 803F3170 003E8EF0  54 63 00 38 */	rlwinm r3, r3, 0, 0, 0x1c
/* 803F3174 003E8EF4  7C 00 18 40 */	cmplw r0, r3
/* 803F3178 003E8EF8  40 80 00 08 */	bge lbl_803F3180
/* 803F317C 003E8EFC  90 7E 00 08 */	stw r3, 8(r30)
lbl_803F3180:
/* 803F3180 003E8F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F3184 003E8F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F3188 003E8F08  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F318C 003E8F0C  7C 08 03 A6 */	mtlr r0
/* 803F3190 003E8F10  38 21 00 10 */	addi r1, r1, 0x10
/* 803F3194 003E8F14  4E 80 00 20 */	blr 

.global SubBlock_merge_next
SubBlock_merge_next:
/* 803F3198 003E8F18  80 A3 00 00 */	lwz r5, 0(r3)
/* 803F319C 003E8F1C  54 A7 00 38 */	rlwinm r7, r5, 0, 0, 0x1c
/* 803F31A0 003E8F20  7C C3 38 2E */	lwzx r6, r3, r7
/* 803F31A4 003E8F24  7D 03 3A 14 */	add r8, r3, r7
/* 803F31A8 003E8F28  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 803F31AC 003E8F2C  4C 82 00 20 */	bnelr 
/* 803F31B0 003E8F30  54 C0 00 38 */	rlwinm r0, r6, 0, 0, 0x1c
/* 803F31B4 003E8F34  54 A5 07 7E */	clrlwi r5, r5, 0x1d
/* 803F31B8 003E8F38  7C C7 02 14 */	add r6, r7, r0
/* 803F31BC 003E8F3C  50 C5 00 38 */	rlwimi r5, r6, 0, 0, 0x1c
/* 803F31C0 003E8F40  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 803F31C4 003E8F44  90 A3 00 00 */	stw r5, 0(r3)
/* 803F31C8 003E8F48  40 82 00 0C */	bne lbl_803F31D4
/* 803F31CC 003E8F4C  7C A3 32 14 */	add r5, r3, r6
/* 803F31D0 003E8F50  90 C5 FF FC */	stw r6, -4(r5)
lbl_803F31D4:
/* 803F31D4 003E8F54  80 03 00 00 */	lwz r0, 0(r3)
/* 803F31D8 003E8F58  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803F31DC 003E8F5C  40 82 00 14 */	bne lbl_803F31F0
/* 803F31E0 003E8F60  7C 03 30 2E */	lwzx r0, r3, r6
/* 803F31E4 003E8F64  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 803F31E8 003E8F68  7C 03 31 2E */	stwx r0, r3, r6
/* 803F31EC 003E8F6C  48 00 00 10 */	b lbl_803F31FC
lbl_803F31F0:
/* 803F31F0 003E8F70  7C 03 30 2E */	lwzx r0, r3, r6
/* 803F31F4 003E8F74  60 00 00 04 */	ori r0, r0, 4
/* 803F31F8 003E8F78  7C 03 31 2E */	stwx r0, r3, r6
lbl_803F31FC:
/* 803F31FC 003E8F7C  80 64 00 00 */	lwz r3, 0(r4)
/* 803F3200 003E8F80  7C 03 40 40 */	cmplw r3, r8
/* 803F3204 003E8F84  40 82 00 0C */	bne lbl_803F3210
/* 803F3208 003E8F88  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803F320C 003E8F8C  90 04 00 00 */	stw r0, 0(r4)
lbl_803F3210:
/* 803F3210 003E8F90  80 04 00 00 */	lwz r0, 0(r4)
/* 803F3214 003E8F94  7C 00 40 40 */	cmplw r0, r8
/* 803F3218 003E8F98  40 82 00 0C */	bne lbl_803F3224
/* 803F321C 003E8F9C  38 00 00 00 */	li r0, 0
/* 803F3220 003E8FA0  90 04 00 00 */	stw r0, 0(r4)
lbl_803F3224:
/* 803F3224 003E8FA4  80 08 00 08 */	lwz r0, 8(r8)
/* 803F3228 003E8FA8  80 68 00 0C */	lwz r3, 0xc(r8)
/* 803F322C 003E8FAC  90 03 00 08 */	stw r0, 8(r3)
/* 803F3230 003E8FB0  80 08 00 0C */	lwz r0, 0xc(r8)
/* 803F3234 003E8FB4  80 68 00 08 */	lwz r3, 8(r8)
/* 803F3238 003E8FB8  90 03 00 0C */	stw r0, 0xc(r3)
/* 803F323C 003E8FBC  4E 80 00 20 */	blr 

.global deallocate_from_fixed_pools
deallocate_from_fixed_pools:
/* 803F3240 003E8FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F3244 003E8FC4  7C 08 02 A6 */	mflr r0
/* 803F3248 003E8FC8  3C C0 80 42 */	lis r6, lbl_8041F4E8@ha
/* 803F324C 003E8FCC  38 E0 00 00 */	li r7, 0
/* 803F3250 003E8FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F3254 003E8FD4  38 C6 F4 E8 */	addi r6, r6, lbl_8041F4E8@l
/* 803F3258 003E8FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F325C 003E8FDC  7C 7F 1B 78 */	mr r31, r3
/* 803F3260 003E8FE0  93 C1 00 08 */	stw r30, 8(r1)
/* 803F3264 003E8FE4  48 00 00 0C */	b lbl_803F3270
lbl_803F3268:
/* 803F3268 003E8FE8  38 C6 00 04 */	addi r6, r6, 4
/* 803F326C 003E8FEC  38 E7 00 01 */	addi r7, r7, 1
lbl_803F3270:
/* 803F3270 003E8FF0  80 06 00 00 */	lwz r0, 0(r6)
/* 803F3274 003E8FF4  7C 05 00 40 */	cmplw r5, r0
/* 803F3278 003E8FF8  41 81 FF F0 */	bgt lbl_803F3268
/* 803F327C 003E8FFC  38 C4 FF FC */	addi r6, r4, -4
/* 803F3280 003E9000  80 84 FF FC */	lwz r4, -4(r4)
/* 803F3284 003E9004  54 E0 18 38 */	slwi r0, r7, 3
/* 803F3288 003E9008  7C 63 02 14 */	add r3, r3, r0
/* 803F328C 003E900C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803F3290 003E9010  2C 00 00 00 */	cmpwi r0, 0
/* 803F3294 003E9014  40 82 00 6C */	bne lbl_803F3300
/* 803F3298 003E9018  80 A3 00 08 */	lwz r5, 8(r3)
/* 803F329C 003E901C  7C 05 20 40 */	cmplw r5, r4
/* 803F32A0 003E9020  41 82 00 60 */	beq lbl_803F3300
/* 803F32A4 003E9024  80 03 00 04 */	lwz r0, 4(r3)
/* 803F32A8 003E9028  7C 00 20 40 */	cmplw r0, r4
/* 803F32AC 003E902C  40 82 00 1C */	bne lbl_803F32C8
/* 803F32B0 003E9030  80 05 00 00 */	lwz r0, 0(r5)
/* 803F32B4 003E9034  90 03 00 08 */	stw r0, 8(r3)
/* 803F32B8 003E9038  80 A3 00 04 */	lwz r5, 4(r3)
/* 803F32BC 003E903C  80 05 00 00 */	lwz r0, 0(r5)
/* 803F32C0 003E9040  90 03 00 04 */	stw r0, 4(r3)
/* 803F32C4 003E9044  48 00 00 3C */	b lbl_803F3300
lbl_803F32C8:
/* 803F32C8 003E9048  80 04 00 04 */	lwz r0, 4(r4)
/* 803F32CC 003E904C  80 A4 00 00 */	lwz r5, 0(r4)
/* 803F32D0 003E9050  90 05 00 04 */	stw r0, 4(r5)
/* 803F32D4 003E9054  80 04 00 00 */	lwz r0, 0(r4)
/* 803F32D8 003E9058  80 A4 00 04 */	lwz r5, 4(r4)
/* 803F32DC 003E905C  90 05 00 00 */	stw r0, 0(r5)
/* 803F32E0 003E9060  80 A3 00 08 */	lwz r5, 8(r3)
/* 803F32E4 003E9064  90 A4 00 04 */	stw r5, 4(r4)
/* 803F32E8 003E9068  80 A5 00 00 */	lwz r5, 0(r5)
/* 803F32EC 003E906C  90 A4 00 00 */	stw r5, 0(r4)
/* 803F32F0 003E9070  90 85 00 04 */	stw r4, 4(r5)
/* 803F32F4 003E9074  80 A4 00 04 */	lwz r5, 4(r4)
/* 803F32F8 003E9078  90 85 00 00 */	stw r4, 0(r5)
/* 803F32FC 003E907C  90 83 00 08 */	stw r4, 8(r3)
lbl_803F3300:
/* 803F3300 003E9080  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803F3304 003E9084  90 06 00 04 */	stw r0, 4(r6)
/* 803F3308 003E9088  90 C4 00 0C */	stw r6, 0xc(r4)
/* 803F330C 003E908C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 803F3310 003E9090  34 00 FF FF */	addic. r0, r0, -1
/* 803F3314 003E9094  90 04 00 10 */	stw r0, 0x10(r4)
/* 803F3318 003E9098  40 82 00 FC */	bne lbl_803F3414
/* 803F331C 003E909C  80 03 00 08 */	lwz r0, 8(r3)
/* 803F3320 003E90A0  7C 00 20 40 */	cmplw r0, r4
/* 803F3324 003E90A4  40 82 00 0C */	bne lbl_803F3330
/* 803F3328 003E90A8  80 04 00 04 */	lwz r0, 4(r4)
/* 803F332C 003E90AC  90 03 00 08 */	stw r0, 8(r3)
lbl_803F3330:
/* 803F3330 003E90B0  80 03 00 04 */	lwz r0, 4(r3)
/* 803F3334 003E90B4  7C 00 20 40 */	cmplw r0, r4
/* 803F3338 003E90B8  40 82 00 0C */	bne lbl_803F3344
/* 803F333C 003E90BC  80 04 00 00 */	lwz r0, 0(r4)
/* 803F3340 003E90C0  90 03 00 04 */	stw r0, 4(r3)
lbl_803F3344:
/* 803F3344 003E90C4  80 04 00 04 */	lwz r0, 4(r4)
/* 803F3348 003E90C8  80 A4 00 00 */	lwz r5, 0(r4)
/* 803F334C 003E90CC  90 05 00 04 */	stw r0, 4(r5)
/* 803F3350 003E90D0  80 04 00 00 */	lwz r0, 0(r4)
/* 803F3354 003E90D4  80 A4 00 04 */	lwz r5, 4(r4)
/* 803F3358 003E90D8  90 05 00 00 */	stw r0, 0(r5)
/* 803F335C 003E90DC  80 03 00 08 */	lwz r0, 8(r3)
/* 803F3360 003E90E0  7C 00 20 40 */	cmplw r0, r4
/* 803F3364 003E90E4  40 82 00 0C */	bne lbl_803F3370
/* 803F3368 003E90E8  38 00 00 00 */	li r0, 0
/* 803F336C 003E90EC  90 03 00 08 */	stw r0, 8(r3)
lbl_803F3370:
/* 803F3370 003E90F0  80 03 00 04 */	lwz r0, 4(r3)
/* 803F3374 003E90F4  7C 00 20 40 */	cmplw r0, r4
/* 803F3378 003E90F8  40 82 00 0C */	bne lbl_803F3384
/* 803F337C 003E90FC  38 00 00 00 */	li r0, 0
/* 803F3380 003E9100  90 03 00 04 */	stw r0, 4(r3)
lbl_803F3384:
/* 803F3384 003E9104  38 84 FF F8 */	addi r4, r4, -8
/* 803F3388 003E9108  80 04 00 04 */	lwz r0, 4(r4)
/* 803F338C 003E910C  54 1E 00 3C */	rlwinm r30, r0, 0, 0, 0x1e
/* 803F3390 003E9110  7F C3 F3 78 */	mr r3, r30
/* 803F3394 003E9114  4B FF FC B5 */	bl Block_link
/* 803F3398 003E9118  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 803F339C 003E911C  38 A0 00 00 */	li r5, 0
/* 803F33A0 003E9120  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 803F33A4 003E9124  40 82 00 20 */	bne lbl_803F33C4
/* 803F33A8 003E9128  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803F33AC 003E912C  54 64 00 38 */	rlwinm r4, r3, 0, 0, 0x1c
/* 803F33B0 003E9130  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 803F33B4 003E9134  38 03 FF E8 */	addi r0, r3, -24
/* 803F33B8 003E9138  7C 04 00 40 */	cmplw r4, r0
/* 803F33BC 003E913C  40 82 00 08 */	bne lbl_803F33C4
/* 803F33C0 003E9140  38 A0 00 01 */	li r5, 1
lbl_803F33C4:
/* 803F33C4 003E9144  2C 05 00 00 */	cmpwi r5, 0
/* 803F33C8 003E9148  41 82 00 4C */	beq lbl_803F3414
/* 803F33CC 003E914C  80 9E 00 04 */	lwz r4, 4(r30)
/* 803F33D0 003E9150  7C 04 F0 40 */	cmplw r4, r30
/* 803F33D4 003E9154  40 82 00 08 */	bne lbl_803F33DC
/* 803F33D8 003E9158  38 80 00 00 */	li r4, 0
lbl_803F33DC:
/* 803F33DC 003E915C  80 1F 00 00 */	lwz r0, 0(r31)
/* 803F33E0 003E9160  7C 00 F0 40 */	cmplw r0, r30
/* 803F33E4 003E9164  40 82 00 08 */	bne lbl_803F33EC
/* 803F33E8 003E9168  90 9F 00 00 */	stw r4, 0(r31)
lbl_803F33EC:
/* 803F33EC 003E916C  2C 04 00 00 */	cmpwi r4, 0
/* 803F33F0 003E9170  41 82 00 10 */	beq lbl_803F3400
/* 803F33F4 003E9174  80 7E 00 00 */	lwz r3, 0(r30)
/* 803F33F8 003E9178  90 64 00 00 */	stw r3, 0(r4)
/* 803F33FC 003E917C  90 83 00 04 */	stw r4, 4(r3)
lbl_803F3400:
/* 803F3400 003E9180  38 00 00 00 */	li r0, 0
/* 803F3404 003E9184  7F C3 F3 78 */	mr r3, r30
/* 803F3408 003E9188  90 1E 00 04 */	stw r0, 4(r30)
/* 803F340C 003E918C  90 1E 00 00 */	stw r0, 0(r30)
/* 803F3410 003E9190  4B FF FB 81 */	bl __sys_free
lbl_803F3414:
/* 803F3414 003E9194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F3418 003E9198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F341C 003E919C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F3420 003E91A0  7C 08 03 A6 */	mtlr r0
/* 803F3424 003E91A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803F3428 003E91A8  4E 80 00 20 */	blr 

.global free
free:
/* 803F342C 003E91AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F3430 003E91B0  7C 08 02 A6 */	mflr r0
/* 803F3434 003E91B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F3438 003E91B8  88 0D CE B8 */	lbz r0, lbl_805A12D8-_SDA_BASE_(r13)
/* 803F343C 003E91BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F3440 003E91C0  7C 7F 1B 78 */	mr r31, r3
/* 803F3444 003E91C4  2C 00 00 00 */	cmpwi r0, 0
/* 803F3448 003E91C8  93 C1 00 08 */	stw r30, 8(r1)
/* 803F344C 003E91CC  40 82 00 20 */	bne lbl_803F346C
/* 803F3450 003E91D0  3C 60 80 5A */	lis r3, lbl_80599BF0@ha
/* 803F3454 003E91D4  38 80 00 00 */	li r4, 0
/* 803F3458 003E91D8  38 63 9B F0 */	addi r3, r3, lbl_80599BF0@l
/* 803F345C 003E91DC  38 A0 00 34 */	li r5, 0x34
/* 803F3460 003E91E0  4B C1 0F DD */	bl func_8000443C
/* 803F3464 003E91E4  38 00 00 01 */	li r0, 1
/* 803F3468 003E91E8  98 0D CE B8 */	stb r0, lbl_805A12D8-_SDA_BASE_(r13)
lbl_803F346C:
/* 803F346C 003E91EC  2C 1F 00 00 */	cmpwi r31, 0
/* 803F3470 003E91F0  3F C0 80 5A */	lis r30, lbl_80599BF0@ha
/* 803F3474 003E91F4  3B DE 9B F0 */	addi r30, r30, lbl_80599BF0@l
/* 803F3478 003E91F8  41 82 00 CC */	beq lbl_803F3544
/* 803F347C 003E91FC  80 7F FF FC */	lwz r3, -4(r31)
/* 803F3480 003E9200  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803F3484 003E9204  40 82 00 0C */	bne lbl_803F3490
/* 803F3488 003E9208  80 A3 00 08 */	lwz r5, 8(r3)
/* 803F348C 003E920C  48 00 00 10 */	b lbl_803F349C
lbl_803F3490:
/* 803F3490 003E9210  80 1F FF F8 */	lwz r0, -8(r31)
/* 803F3494 003E9214  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 803F3498 003E9218  38 A3 FF F8 */	addi r5, r3, -8
lbl_803F349C:
/* 803F349C 003E921C  28 05 00 44 */	cmplwi r5, 0x44
/* 803F34A0 003E9220  41 81 00 14 */	bgt lbl_803F34B4
/* 803F34A4 003E9224  7F C3 F3 78 */	mr r3, r30
/* 803F34A8 003E9228  7F E4 FB 78 */	mr r4, r31
/* 803F34AC 003E922C  4B FF FD 95 */	bl deallocate_from_fixed_pools
/* 803F34B0 003E9230  48 00 00 94 */	b lbl_803F3544
lbl_803F34B4:
/* 803F34B4 003E9234  80 1F FF FC */	lwz r0, -4(r31)
/* 803F34B8 003E9238  38 9F FF F8 */	addi r4, r31, -8
/* 803F34BC 003E923C  54 1F 00 3C */	rlwinm r31, r0, 0, 0, 0x1e
/* 803F34C0 003E9240  7F E3 FB 78 */	mr r3, r31
/* 803F34C4 003E9244  4B FF FB 85 */	bl Block_link
/* 803F34C8 003E9248  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803F34CC 003E924C  38 A0 00 00 */	li r5, 0
/* 803F34D0 003E9250  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 803F34D4 003E9254  40 82 00 20 */	bne lbl_803F34F4
/* 803F34D8 003E9258  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803F34DC 003E925C  54 64 00 38 */	rlwinm r4, r3, 0, 0, 0x1c
/* 803F34E0 003E9260  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 803F34E4 003E9264  38 03 FF E8 */	addi r0, r3, -24
/* 803F34E8 003E9268  7C 04 00 40 */	cmplw r4, r0
/* 803F34EC 003E926C  40 82 00 08 */	bne lbl_803F34F4
/* 803F34F0 003E9270  38 A0 00 01 */	li r5, 1
lbl_803F34F4:
/* 803F34F4 003E9274  2C 05 00 00 */	cmpwi r5, 0
/* 803F34F8 003E9278  41 82 00 4C */	beq lbl_803F3544
/* 803F34FC 003E927C  80 9F 00 04 */	lwz r4, 4(r31)
/* 803F3500 003E9280  7C 04 F8 40 */	cmplw r4, r31
/* 803F3504 003E9284  40 82 00 08 */	bne lbl_803F350C
/* 803F3508 003E9288  38 80 00 00 */	li r4, 0
lbl_803F350C:
/* 803F350C 003E928C  80 1E 00 00 */	lwz r0, 0(r30)
/* 803F3510 003E9290  7C 00 F8 40 */	cmplw r0, r31
/* 803F3514 003E9294  40 82 00 08 */	bne lbl_803F351C
/* 803F3518 003E9298  90 9E 00 00 */	stw r4, 0(r30)
lbl_803F351C:
/* 803F351C 003E929C  2C 04 00 00 */	cmpwi r4, 0
/* 803F3520 003E92A0  41 82 00 10 */	beq lbl_803F3530
/* 803F3524 003E92A4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803F3528 003E92A8  90 64 00 00 */	stw r3, 0(r4)
/* 803F352C 003E92AC  90 83 00 04 */	stw r4, 4(r3)
lbl_803F3530:
/* 803F3530 003E92B0  38 00 00 00 */	li r0, 0
/* 803F3534 003E92B4  7F E3 FB 78 */	mr r3, r31
/* 803F3538 003E92B8  90 1F 00 04 */	stw r0, 4(r31)
/* 803F353C 003E92BC  90 1F 00 00 */	stw r0, 0(r31)
/* 803F3540 003E92C0  4B FF FA 51 */	bl __sys_free
lbl_803F3544:
/* 803F3544 003E92C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F3548 003E92C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F354C 003E92CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F3550 003E92D0  7C 08 03 A6 */	mtlr r0
/* 803F3554 003E92D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803F3558 003E92D8  4E 80 00 20 */	blr 

