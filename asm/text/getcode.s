.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TMCC_JPEGDEC_init_buff
TMCC_JPEGDEC_init_buff:
/* 80261264 00256FE4  38 00 00 00 */	li r0, 0
/* 80261268 00256FE8  90 03 00 00 */	stw r0, 0(r3)
/* 8026126C 00256FEC  90 03 00 04 */	stw r0, 4(r3)
/* 80261270 00256FF0  4B FF FF 08 */	b TMCC_JPEGDEC_load_buff

.global TMCC_JPEGDEC_rewind_ptr
TMCC_JPEGDEC_rewind_ptr:
/* 80261274 00256FF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80261278 00256FF8  7C 08 02 A6 */	mflr r0
/* 8026127C 00256FFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80261280 00257000  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80261284 00257004  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80261288 00257008  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026128C 0025700C  7C 7D 1B 78 */	mr r29, r3
/* 80261290 00257010  83 C3 00 04 */	lwz r30, 4(r3)
/* 80261294 00257014  83 E3 00 00 */	lwz r31, 0(r3)
/* 80261298 00257018  3B DE FF F8 */	addi r30, r30, -8
/* 8026129C 0025701C  48 00 00 48 */	b lbl_802612E4
lbl_802612A0:
/* 802612A0 00257020  7F A4 EB 78 */	mr r4, r29
/* 802612A4 00257024  38 60 FF FF */	li r3, -1
/* 802612A8 00257028  4B FF FE 61 */	bl TMCC_JPEGDEC_move_ptr
/* 802612AC 0025702C  2C 03 00 00 */	cmpwi r3, 0
/* 802612B0 00257030  40 80 00 08 */	bge lbl_802612B8
/* 802612B4 00257034  48 00 00 48 */	b lbl_802612FC
lbl_802612B8:
/* 802612B8 00257038  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802612BC 0025703C  28 00 00 FF */	cmplwi r0, 0xff
/* 802612C0 00257040  40 82 00 1C */	bne lbl_802612DC
/* 802612C4 00257044  7F A4 EB 78 */	mr r4, r29
/* 802612C8 00257048  38 60 FF FF */	li r3, -1
/* 802612CC 0025704C  4B FF FE 3D */	bl TMCC_JPEGDEC_move_ptr
/* 802612D0 00257050  2C 03 00 00 */	cmpwi r3, 0
/* 802612D4 00257054  40 80 00 08 */	bge lbl_802612DC
/* 802612D8 00257058  48 00 00 24 */	b lbl_802612FC
lbl_802612DC:
/* 802612DC 0025705C  57 FF C2 3E */	srwi r31, r31, 8
/* 802612E0 00257060  3B DE FF F8 */	addi r30, r30, -8
lbl_802612E4:
/* 802612E4 00257064  2C 1E 00 00 */	cmpwi r30, 0
/* 802612E8 00257068  40 80 FF B8 */	bge lbl_802612A0
/* 802612EC 0025706C  38 00 00 00 */	li r0, 0
/* 802612F0 00257070  38 60 00 00 */	li r3, 0
/* 802612F4 00257074  90 1D 00 04 */	stw r0, 4(r29)
/* 802612F8 00257078  90 1D 00 00 */	stw r0, 0(r29)
lbl_802612FC:
/* 802612FC 0025707C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80261300 00257080  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80261304 00257084  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80261308 00257088  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026130C 0025708C  7C 08 03 A6 */	mtlr r0
/* 80261310 00257090  38 21 00 20 */	addi r1, r1, 0x20
/* 80261314 00257094  4E 80 00 20 */	blr 

