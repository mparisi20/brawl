.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hidd_conn_initiate
hidd_conn_initiate:
/* 80247040 0023CDC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80247044 0023CDC4  7C 08 02 A6 */	mflr r0
/* 80247048 0023CDC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024704C 0023CDCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80247050 0023CDD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80247054 0023CDD4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80247058 0023CDD8  3F A0 80 53 */	lis r29, lbl_8052C870@ha
/* 8024705C 0023CDDC  3B BD C8 70 */	addi r29, r29, lbl_8052C870@l
/* 80247060 0023CDE0  88 1D 01 41 */	lbz r0, 0x141(r29)
/* 80247064 0023CDE4  28 00 00 04 */	cmplwi r0, 4
/* 80247068 0023CDE8  41 80 00 18 */	blt lbl_80247080
/* 8024706C 0023CDEC  3C 60 00 1E */	lis r3, 0x001E0003@ha
/* 80247070 0023CDF0  3C 80 80 48 */	lis r4, lbl_80482328@ha
/* 80247074 0023CDF4  38 63 00 03 */	addi r3, r3, 0x001E0003@l
/* 80247078 0023CDF8  38 84 23 28 */	addi r4, r4, lbl_80482328@l
/* 8024707C 0023CDFC  4B FE A9 69 */	bl LogMsg_0
lbl_80247080:
/* 80247080 0023CE00  38 00 00 00 */	li r0, 0
/* 80247084 0023CE04  3B C0 00 01 */	li r30, 1
/* 80247088 0023CE08  3F E0 80 53 */	lis r31, lbl_8052C870@ha
/* 8024708C 0023CE0C  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 80247090 0023CE10  38 9F C8 70 */	addi r4, r31, lbl_8052C870@l
/* 80247094 0023CE14  38 60 00 11 */	li r3, 0x11
/* 80247098 0023CE18  B0 1D 00 16 */	sth r0, 0x16(r29)
/* 8024709C 0023CE1C  9B DD 00 11 */	stb r30, 0x11(r29)
/* 802470A0 0023CE20  48 00 34 91 */	bl L2CA_ConnectReq
/* 802470A4 0023CE24  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 802470A8 0023CE28  B0 7D 00 14 */	sth r3, 0x14(r29)
/* 802470AC 0023CE2C  40 82 00 30 */	bne lbl_802470DC
/* 802470B0 0023CE30  38 7F C8 70 */	addi r3, r31, -14224
/* 802470B4 0023CE34  88 03 01 41 */	lbz r0, 0x141(r3)
/* 802470B8 0023CE38  28 00 00 02 */	cmplwi r0, 2
/* 802470BC 0023CE3C  41 80 00 18 */	blt lbl_802470D4
/* 802470C0 0023CE40  3C 60 00 1E */	lis r3, 0x001E0001@ha
/* 802470C4 0023CE44  3C 80 80 48 */	lis r4, lbl_80482340@ha
/* 802470C8 0023CE48  38 63 00 01 */	addi r3, r3, 0x001E0001@l
/* 802470CC 0023CE4C  38 84 23 40 */	addi r4, r4, lbl_80482340@l
/* 802470D0 0023CE50  4B FE A9 15 */	bl LogMsg_0
lbl_802470D4:
/* 802470D4 0023CE54  38 60 00 0E */	li r3, 0xe
/* 802470D8 0023CE58  48 00 00 0C */	b lbl_802470E4
lbl_802470DC:
/* 802470DC 0023CE5C  9B DD 00 10 */	stb r30, 0x10(r29)
/* 802470E0 0023CE60  38 60 00 00 */	li r3, 0
lbl_802470E4:
/* 802470E4 0023CE64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802470E8 0023CE68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802470EC 0023CE6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802470F0 0023CE70  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802470F4 0023CE74  7C 08 03 A6 */	mtlr r0
/* 802470F8 0023CE78  38 21 00 20 */	addi r1, r1, 0x20
/* 802470FC 0023CE7C  4E 80 00 20 */	blr 

