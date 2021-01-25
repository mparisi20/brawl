.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfMonitorThread$7run
gfMonitorThread$7run:
/* 8003D794 00033514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003D798 00033518  7C 08 02 A6 */	mflr r0
/* 8003D79C 0003351C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003D7A0 00033520  39 61 00 20 */	addi r11, r1, 0x20
/* 8003D7A4 00033524  48 3B 3B 79 */	bl _savegpr_26
/* 8003D7A8 00033528  3F A0 10 62 */	lis r29, 0x10624DD3@ha
/* 8003D7AC 0003352C  7C 7E 1B 78 */	mr r30, r3
/* 8003D7B0 00033530  3F 80 80 00 */	lis r28, 0x800000F8@ha
/* 8003D7B4 00033534  3B FD 4D D3 */	addi r31, r29, 0x10624DD3@l
lbl_8003D7B8:
/* 8003D7B8 00033538  80 1C 00 F8 */	lwz r0, 0x800000F8@l(r28)
/* 8003D7BC 0003353C  38 60 00 00 */	li r3, 0
/* 8003D7C0 00033540  54 00 F0 BE */	srwi r0, r0, 2
/* 8003D7C4 00033544  7C 9F 00 16 */	mulhwu r4, r31, r0
/* 8003D7C8 00033548  54 80 D1 BE */	srwi r0, r4, 6
/* 8003D7CC 0003354C  54 84 F0 B6 */	rlwinm r4, r4, 0x1e, 2, 0x1b
/* 8003D7D0 00033550  50 03 27 3E */	rlwimi r3, r0, 4, 0x1c, 0x1f
/* 8003D7D4 00033554  48 1A 42 AD */	bl OSSleepTicks
/* 8003D7D8 00033558  80 1E 03 40 */	lwz r0, 0x340(r30)
/* 8003D7DC 0003355C  2C 00 00 00 */	cmpwi r0, 0
/* 8003D7E0 00033560  41 82 00 6C */	beq lbl_8003D84C
/* 8003D7E4 00033564  88 1E 03 50 */	lbz r0, 0x350(r30)
/* 8003D7E8 00033568  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8003D7EC 0003356C  41 82 FF CC */	beq lbl_8003D7B8
/* 8003D7F0 00033570  48 1A 43 45 */	bl OSGetTime
/* 8003D7F4 00033574  88 1E 03 50 */	lbz r0, 0x350(r30)
/* 8003D7F8 00033578  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8003D7FC 0003357C  41 82 FF BC */	beq lbl_8003D7B8
/* 8003D800 00033580  48 1A 43 35 */	bl OSGetTime
/* 8003D804 00033584  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 8003D808 00033588  38 BD 4D D3 */	addi r5, r29, 0x4dd3
/* 8003D80C 0003358C  80 DE 03 4C */	lwz r6, 0x34c(r30)
/* 8003D810 00033590  7C 7B 1B 78 */	mr r27, r3
/* 8003D814 00033594  54 00 F0 BE */	srwi r0, r0, 2
/* 8003D818 00033598  7C 9A 23 78 */	mr r26, r4
/* 8003D81C 0003359C  7C 05 00 16 */	mulhwu r0, r5, r0
/* 8003D820 000335A0  7C 66 20 50 */	subf r3, r6, r4
/* 8003D824 000335A4  54 00 D1 BE */	srwi r0, r0, 6
/* 8003D828 000335A8  7C 03 03 96 */	divwu r0, r3, r0
/* 8003D82C 000335AC  28 00 00 64 */	cmplwi r0, 0x64
/* 8003D830 000335B0  40 81 FF 88 */	ble lbl_8003D7B8
/* 8003D834 000335B4  48 1B 31 59 */	bl GXReadDrawSync
/* 8003D838 000335B8  48 1B 2E ED */	bl GXAbortFrame
/* 8003D83C 000335BC  48 1B 31 5D */	bl GXSetDrawDone
/* 8003D840 000335C0  93 5E 03 4C */	stw r26, 0x34c(r30)
/* 8003D844 000335C4  93 7E 03 48 */	stw r27, 0x348(r30)
/* 8003D848 000335C8  4B FF FF 70 */	b lbl_8003D7B8
lbl_8003D84C:
/* 8003D84C 000335CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8003D850 000335D0  48 3B 3B 19 */	bl _restgpr_26
/* 8003D854 000335D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003D858 000335D8  7C 08 03 A6 */	mtlr r0
/* 8003D85C 000335DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003D860 000335E0  4E 80 00 20 */	blr 

