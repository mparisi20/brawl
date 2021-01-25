.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gti2AllocateBuffer
gti2AllocateBuffer:
/* 80373780 00369500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80373784 00369504  7C 08 02 A6 */	mflr r0
/* 80373788 00369508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037378C 0036950C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80373790 00369510  7C 9F 23 78 */	mr r31, r4
/* 80373794 00369514  93 C1 00 08 */	stw r30, 8(r1)
/* 80373798 00369518  7C 7E 1B 78 */	mr r30, r3
/* 8037379C 0036951C  7F E3 FB 78 */	mr r3, r31
/* 803737A0 00369520  4B FE A8 49 */	bl gsimalloc
/* 803737A4 00369524  2C 03 00 00 */	cmpwi r3, 0
/* 803737A8 00369528  90 7E 00 00 */	stw r3, 0(r30)
/* 803737AC 0036952C  40 82 00 0C */	bne lbl_803737B8
/* 803737B0 00369530  38 60 00 00 */	li r3, 0
/* 803737B4 00369534  48 00 00 0C */	b lbl_803737C0
lbl_803737B8:
/* 803737B8 00369538  93 FE 00 04 */	stw r31, 4(r30)
/* 803737BC 0036953C  38 60 00 01 */	li r3, 1
lbl_803737C0:
/* 803737C0 00369540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803737C4 00369544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803737C8 00369548  83 C1 00 08 */	lwz r30, 8(r1)
/* 803737CC 0036954C  7C 08 03 A6 */	mtlr r0
/* 803737D0 00369550  38 21 00 10 */	addi r1, r1, 0x10
/* 803737D4 00369554  4E 80 00 20 */	blr 

.global gti2GetBufferFreeSpace
gti2GetBufferFreeSpace:
/* 803737D8 00369558  80 83 00 08 */	lwz r4, 8(r3)
/* 803737DC 0036955C  80 03 00 04 */	lwz r0, 4(r3)
/* 803737E0 00369560  7C 64 00 50 */	subf r3, r4, r0
/* 803737E4 00369564  4E 80 00 20 */	blr 

.global gti2BufferWriteByte
gti2BufferWriteByte:
/* 803737E8 00369568  80 A3 00 08 */	lwz r5, 8(r3)
/* 803737EC 0036956C  80 C3 00 00 */	lwz r6, 0(r3)
/* 803737F0 00369570  38 05 00 01 */	addi r0, r5, 1
/* 803737F4 00369574  7C 86 29 AE */	stbx r4, r6, r5
/* 803737F8 00369578  90 03 00 08 */	stw r0, 8(r3)
/* 803737FC 0036957C  4E 80 00 20 */	blr 

.global gti2BufferWriteUShort
gti2BufferWriteUShort:
/* 80373800 00369580  80 A3 00 08 */	lwz r5, 8(r3)
/* 80373804 00369584  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 80373808 00369588  80 E3 00 00 */	lwz r7, 0(r3)
/* 8037380C 0036958C  38 C5 00 01 */	addi r6, r5, 1
/* 80373810 00369590  7C 07 29 AE */	stbx r0, r7, r5
/* 80373814 00369594  38 06 00 01 */	addi r0, r6, 1
/* 80373818 00369598  90 C3 00 08 */	stw r6, 8(r3)
/* 8037381C 0036959C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80373820 003695A0  7C 85 31 AE */	stbx r4, r5, r6
/* 80373824 003695A4  90 03 00 08 */	stw r0, 8(r3)
/* 80373828 003695A8  4E 80 00 20 */	blr 

.global gti2BufferWriteData
gti2BufferWriteData:
/* 8037382C 003695AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80373830 003695B0  7C 08 02 A6 */	mflr r0
/* 80373834 003695B4  2C 04 00 00 */	cmpwi r4, 0
/* 80373838 003695B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037383C 003695BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80373840 003695C0  7C BF 2B 78 */	mr r31, r5
/* 80373844 003695C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80373848 003695C8  7C 9E 23 78 */	mr r30, r4
/* 8037384C 003695CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80373850 003695D0  7C 7D 1B 78 */	mr r29, r3
/* 80373854 003695D4  41 82 00 48 */	beq lbl_8037389C
/* 80373858 003695D8  2C 05 00 00 */	cmpwi r5, 0
/* 8037385C 003695DC  40 82 00 08 */	bne lbl_80373864
/* 80373860 003695E0  48 00 00 3C */	b lbl_8037389C
lbl_80373864:
/* 80373864 003695E4  2C 05 FF FF */	cmpwi r5, -1
/* 80373868 003695E8  40 82 00 10 */	bne lbl_80373878
/* 8037386C 003695EC  7F C3 F3 78 */	mr r3, r30
/* 80373870 003695F0  48 07 CD D1 */	bl strlen
/* 80373874 003695F4  7C 7F 1B 78 */	mr r31, r3
lbl_80373878:
/* 80373878 003695F8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8037387C 003695FC  7F C4 F3 78 */	mr r4, r30
/* 80373880 00369600  80 1D 00 08 */	lwz r0, 8(r29)
/* 80373884 00369604  7F E5 FB 78 */	mr r5, r31
/* 80373888 00369608  7C 63 02 14 */	add r3, r3, r0
/* 8037388C 0036960C  4B C9 0A AD */	bl func_80004338
/* 80373890 00369610  80 1D 00 08 */	lwz r0, 8(r29)
/* 80373894 00369614  7C 00 FA 14 */	add r0, r0, r31
/* 80373898 00369618  90 1D 00 08 */	stw r0, 8(r29)
lbl_8037389C:
/* 8037389C 0036961C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803738A0 00369620  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803738A4 00369624  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803738A8 00369628  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803738AC 0036962C  7C 08 03 A6 */	mtlr r0
/* 803738B0 00369630  38 21 00 20 */	addi r1, r1, 0x20
/* 803738B4 00369634  4E 80 00 20 */	blr 

.global gti2BufferShorten
gti2BufferShorten:
/* 803738B8 00369638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803738BC 0036963C  7C 08 02 A6 */	mflr r0
/* 803738C0 00369640  2C 04 FF FF */	cmpwi r4, -1
/* 803738C4 00369644  90 01 00 14 */	stw r0, 0x14(r1)
/* 803738C8 00369648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803738CC 0036964C  7C BF 2B 78 */	mr r31, r5
/* 803738D0 00369650  93 C1 00 08 */	stw r30, 8(r1)
/* 803738D4 00369654  7C 7E 1B 78 */	mr r30, r3
/* 803738D8 00369658  40 82 00 0C */	bne lbl_803738E4
/* 803738DC 0036965C  80 03 00 08 */	lwz r0, 8(r3)
/* 803738E0 00369660  7C 85 00 50 */	subf r4, r5, r0
lbl_803738E4:
/* 803738E4 00369664  80 63 00 00 */	lwz r3, 0(r3)
/* 803738E8 00369668  80 1E 00 08 */	lwz r0, 8(r30)
/* 803738EC 0036966C  7C 63 22 14 */	add r3, r3, r4
/* 803738F0 00369670  7C 04 00 50 */	subf r0, r4, r0
/* 803738F4 00369674  7C 83 2A 14 */	add r4, r3, r5
/* 803738F8 00369678  7C A5 00 50 */	subf r5, r5, r0
/* 803738FC 0036967C  48 08 27 31 */	bl memmove
/* 80373900 00369680  80 1E 00 08 */	lwz r0, 8(r30)
/* 80373904 00369684  7C 1F 00 50 */	subf r0, r31, r0
/* 80373908 00369688  90 1E 00 08 */	stw r0, 8(r30)
/* 8037390C 0036968C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80373910 00369690  83 C1 00 08 */	lwz r30, 8(r1)
/* 80373914 00369694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80373918 00369698  7C 08 03 A6 */	mtlr r0
/* 8037391C 0036969C  38 21 00 10 */	addi r1, r1, 0x10
/* 80373920 003696A0  4E 80 00 20 */	blr 
