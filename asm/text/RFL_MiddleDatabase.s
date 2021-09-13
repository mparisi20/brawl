.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global RFLGetMiddleDBBufferSize
RFLGetMiddleDBBufferSize:
/* 803D5870 003CB5F0  54 63 32 B2 */	rlwinm r3, r3, 6, 0xa, 0x19
/* 803D5874 003CB5F4  4E 80 00 20 */	blr 

.global RFLInitMiddleDB
RFLInitMiddleDB:
/* 803D5878 003CB5F8  2C 03 00 00 */	cmpwi r3, 0
/* 803D587C 003CB5FC  4D 82 00 20 */	beqlr 
/* 803D5880 003CB600  2C 05 00 00 */	cmpwi r5, 0
/* 803D5884 003CB604  4D 82 00 20 */	beqlr 
/* 803D5888 003CB608  38 E0 00 00 */	li r7, 0
/* 803D588C 003CB60C  2C 04 00 03 */	cmpwi r4, 3
/* 803D5890 003CB610  90 83 00 00 */	stw r4, 0(r3)
/* 803D5894 003CB614  90 E3 00 04 */	stw r7, 4(r3)
/* 803D5898 003CB618  B0 C3 00 0C */	sth r6, 0xc(r3)
/* 803D589C 003CB61C  90 A3 00 08 */	stw r5, 8(r3)
/* 803D58A0 003CB620  B0 E3 00 0E */	sth r7, 0xe(r3)
/* 803D58A4 003CB624  90 E3 00 10 */	stw r7, 0x10(r3)
/* 803D58A8 003CB628  90 E3 00 14 */	stw r7, 0x14(r3)
/* 803D58AC 003CB62C  41 82 00 18 */	beq lbl_803D58C4
/* 803D58B0 003CB630  40 80 00 5C */	bge lbl_803D590C
/* 803D58B4 003CB634  2C 04 00 00 */	cmpwi r4, 0
/* 803D58B8 003CB638  41 82 00 48 */	beq lbl_803D5900
/* 803D58BC 003CB63C  40 80 00 28 */	bge lbl_803D58E4
/* 803D58C0 003CB640  48 00 00 4C */	b lbl_803D590C
lbl_803D58C4:
/* 803D58C4 003CB644  28 06 00 64 */	cmplwi r6, 0x64
/* 803D58C8 003CB648  4D 81 00 20 */	bgtlr 
/* 803D58CC 003CB64C  38 00 00 03 */	li r0, 3
/* 803D58D0 003CB650  38 80 00 02 */	li r4, 2
/* 803D58D4 003CB654  98 83 00 10 */	stb r4, 0x10(r3)
/* 803D58D8 003CB658  98 03 00 11 */	stb r0, 0x11(r3)
/* 803D58DC 003CB65C  98 03 00 12 */	stb r0, 0x12(r3)
/* 803D58E0 003CB660  48 00 00 2C */	b lbl_803D590C
lbl_803D58E4:
/* 803D58E4 003CB664  28 06 27 10 */	cmplwi r6, 0x2710
/* 803D58E8 003CB668  4D 81 00 20 */	bgtlr 
/* 803D58EC 003CB66C  38 80 FF FF */	li r4, -1
/* 803D58F0 003CB670  38 00 00 00 */	li r0, 0
/* 803D58F4 003CB674  50 80 78 A0 */	rlwimi r0, r4, 0xf, 2, 0x10
/* 803D58F8 003CB678  90 03 00 10 */	stw r0, 0x10(r3)
/* 803D58FC 003CB67C  48 00 00 10 */	b lbl_803D590C
lbl_803D5900:
/* 803D5900 003CB680  38 00 00 02 */	li r0, 2
/* 803D5904 003CB684  B0 E3 00 10 */	sth r7, 0x10(r3)
/* 803D5908 003CB688  98 03 00 12 */	stb r0, 0x12(r3)
lbl_803D590C:
/* 803D590C 003CB68C  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 803D5910 003CB690  38 80 00 00 */	li r4, 0
/* 803D5914 003CB694  80 63 00 08 */	lwz r3, 8(r3)
/* 803D5918 003CB698  54 05 30 32 */	slwi r5, r0, 6
/* 803D591C 003CB69C  4B C2 EB 20 */	b func_8000443C
/* 803D5920 003CB6A0  4E 80 00 20 */	blr 

.global RFLiGetCharInfoMiddleDB
RFLiGetCharInfoMiddleDB:
/* 803D5924 003CB6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5928 003CB6A8  7C 08 02 A6 */	mflr r0
/* 803D592C 003CB6AC  2C 04 00 00 */	cmpwi r4, 0
/* 803D5930 003CB6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5934 003CB6B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5938 003CB6B8  93 C1 00 08 */	stw r30, 8(r1)
/* 803D593C 003CB6BC  7C 7E 1B 78 */	mr r30, r3
/* 803D5940 003CB6C0  40 82 00 0C */	bne lbl_803D594C
/* 803D5944 003CB6C4  38 60 00 00 */	li r3, 0
/* 803D5948 003CB6C8  48 00 00 60 */	b lbl_803D59A8
lbl_803D594C:
/* 803D594C 003CB6CC  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 803D5950 003CB6D0  7C 05 00 40 */	cmplw r5, r0
/* 803D5954 003CB6D4  41 80 00 0C */	blt lbl_803D5960
/* 803D5958 003CB6D8  38 60 00 00 */	li r3, 0
/* 803D595C 003CB6DC  48 00 00 4C */	b lbl_803D59A8
lbl_803D5960:
/* 803D5960 003CB6E0  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 803D5964 003CB6E4  2C 00 00 00 */	cmpwi r0, 0
/* 803D5968 003CB6E8  40 82 00 0C */	bne lbl_803D5974
/* 803D596C 003CB6EC  38 60 00 00 */	li r3, 0
/* 803D5970 003CB6F0  48 00 00 38 */	b lbl_803D59A8
lbl_803D5974:
/* 803D5974 003CB6F4  80 64 00 08 */	lwz r3, 8(r4)
/* 803D5978 003CB6F8  54 A0 32 B2 */	rlwinm r0, r5, 6, 0xa, 0x19
/* 803D597C 003CB6FC  7F E3 02 14 */	add r31, r3, r0
/* 803D5980 003CB700  38 7F 00 18 */	addi r3, r31, 0x18
/* 803D5984 003CB704  4B FF F8 99 */	bl RFLiIsValidID
/* 803D5988 003CB708  2C 03 00 00 */	cmpwi r3, 0
/* 803D598C 003CB70C  40 82 00 0C */	bne lbl_803D5998
/* 803D5990 003CB710  38 60 00 00 */	li r3, 0
/* 803D5994 003CB714  48 00 00 14 */	b lbl_803D59A8
lbl_803D5998:
/* 803D5998 003CB718  7F E3 FB 78 */	mr r3, r31
/* 803D599C 003CB71C  7F C4 F3 78 */	mr r4, r30
/* 803D59A0 003CB720  4B FF F6 75 */	bl RFLiConvertHRaw2Info
/* 803D59A4 003CB724  38 60 00 01 */	li r3, 1
lbl_803D59A8:
/* 803D59A8 003CB728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D59AC 003CB72C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D59B0 003CB730  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D59B4 003CB734  7C 08 03 A6 */	mtlr r0
/* 803D59B8 003CB738  38 21 00 10 */	addi r1, r1, 0x10
/* 803D59BC 003CB73C  4E 80 00 20 */	blr 

.global RFLiAddMiddleDBUserData
RFLiAddMiddleDBUserData:
/* 803D59C0 003CB740  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 803D59C4 003CB744  7C 08 02 A6 */	mflr r0
/* 803D59C8 003CB748  2C 03 00 00 */	cmpwi r3, 0
/* 803D59CC 003CB74C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 803D59D0 003CB750  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 803D59D4 003CB754  7C 9F 23 78 */	mr r31, r4
/* 803D59D8 003CB758  93 C1 00 98 */	stw r30, 0x98(r1)
/* 803D59DC 003CB75C  7C 7E 1B 78 */	mr r30, r3
/* 803D59E0 003CB760  40 82 00 0C */	bne lbl_803D59EC
/* 803D59E4 003CB764  38 60 00 0F */	li r3, 0xf
/* 803D59E8 003CB768  48 00 00 C4 */	b lbl_803D5AAC
lbl_803D59EC:
/* 803D59EC 003CB76C  2C 04 00 00 */	cmpwi r4, 0
/* 803D59F0 003CB770  40 82 00 0C */	bne lbl_803D59FC
/* 803D59F4 003CB774  38 60 00 0F */	li r3, 0xf
/* 803D59F8 003CB778  48 00 00 B4 */	b lbl_803D5AAC
lbl_803D59FC:
/* 803D59FC 003CB77C  4B FF 78 75 */	bl RFLAvailable
/* 803D5A00 003CB780  2C 03 00 00 */	cmpwi r3, 0
/* 803D5A04 003CB784  40 82 00 0C */	bne lbl_803D5A10
/* 803D5A08 003CB788  38 60 00 01 */	li r3, 1
/* 803D5A0C 003CB78C  48 00 00 A0 */	b lbl_803D5AAC
lbl_803D5A10:
/* 803D5A10 003CB790  7F E3 FB 78 */	mr r3, r31
/* 803D5A14 003CB794  38 81 00 08 */	addi r4, r1, 8
/* 803D5A18 003CB798  4B FF F6 4D */	bl RFLiConvertRaw2HRaw
/* 803D5A1C 003CB79C  80 1E 00 00 */	lwz r0, 0(r30)
/* 803D5A20 003CB7A0  2C 00 00 04 */	cmpwi r0, 4
/* 803D5A24 003CB7A4  41 82 00 0C */	beq lbl_803D5A30
/* 803D5A28 003CB7A8  38 60 00 01 */	li r3, 1
/* 803D5A2C 003CB7AC  48 00 00 80 */	b lbl_803D5AAC
lbl_803D5A30:
/* 803D5A30 003CB7B0  38 61 00 20 */	addi r3, r1, 0x20
/* 803D5A34 003CB7B4  4B FF F7 E9 */	bl RFLiIsValidID
/* 803D5A38 003CB7B8  2C 03 00 00 */	cmpwi r3, 0
/* 803D5A3C 003CB7BC  40 82 00 0C */	bne lbl_803D5A48
/* 803D5A40 003CB7C0  38 60 00 07 */	li r3, 7
/* 803D5A44 003CB7C4  48 00 00 68 */	b lbl_803D5AAC
lbl_803D5A48:
/* 803D5A48 003CB7C8  7F E3 FB 78 */	mr r3, r31
/* 803D5A4C 003CB7CC  38 81 00 48 */	addi r4, r1, 0x48
/* 803D5A50 003CB7D0  4B FF F5 75 */	bl RFLiConvertRaw2Info
/* 803D5A54 003CB7D4  38 61 00 48 */	addi r3, r1, 0x48
/* 803D5A58 003CB7D8  48 00 01 39 */	bl RFLiCheckValidInfo
/* 803D5A5C 003CB7DC  2C 03 00 00 */	cmpwi r3, 0
/* 803D5A60 003CB7E0  40 82 00 0C */	bne lbl_803D5A6C
/* 803D5A64 003CB7E4  38 60 00 07 */	li r3, 7
/* 803D5A68 003CB7E8  48 00 00 44 */	b lbl_803D5AAC
lbl_803D5A6C:
/* 803D5A6C 003CB7EC  A0 9E 00 0E */	lhz r4, 0xe(r30)
/* 803D5A70 003CB7F0  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 803D5A74 003CB7F4  7C 04 00 40 */	cmplw r4, r0
/* 803D5A78 003CB7F8  41 80 00 0C */	blt lbl_803D5A84
/* 803D5A7C 003CB7FC  38 60 00 09 */	li r3, 9
/* 803D5A80 003CB800  48 00 00 2C */	b lbl_803D5AAC
lbl_803D5A84:
/* 803D5A84 003CB804  80 7E 00 08 */	lwz r3, 8(r30)
/* 803D5A88 003CB808  54 80 32 B2 */	rlwinm r0, r4, 6, 0xa, 0x19
/* 803D5A8C 003CB80C  38 81 00 08 */	addi r4, r1, 8
/* 803D5A90 003CB810  38 A0 00 40 */	li r5, 0x40
/* 803D5A94 003CB814  7C 63 02 14 */	add r3, r3, r0
/* 803D5A98 003CB818  4B C2 E8 A1 */	bl memcpy
/* 803D5A9C 003CB81C  A0 9E 00 0E */	lhz r4, 0xe(r30)
/* 803D5AA0 003CB820  38 60 00 00 */	li r3, 0
/* 803D5AA4 003CB824  38 04 00 01 */	addi r0, r4, 1
/* 803D5AA8 003CB828  B0 1E 00 0E */	sth r0, 0xe(r30)
lbl_803D5AAC:
/* 803D5AAC 003CB82C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 803D5AB0 003CB830  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 803D5AB4 003CB834  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 803D5AB8 003CB838  7C 08 03 A6 */	mtlr r0
/* 803D5ABC 003CB83C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 803D5AC0 003CB840  4E 80 00 20 */	blr 

.global RFLAddMiddleDBStoreData
RFLAddMiddleDBStoreData:
/* 803D5AC4 003CB844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5AC8 003CB848  7C 08 02 A6 */	mflr r0
/* 803D5ACC 003CB84C  2C 03 00 00 */	cmpwi r3, 0
/* 803D5AD0 003CB850  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5AD4 003CB854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5AD8 003CB858  7C 9F 23 78 */	mr r31, r4
/* 803D5ADC 003CB85C  93 C1 00 08 */	stw r30, 8(r1)
/* 803D5AE0 003CB860  7C 7E 1B 78 */	mr r30, r3
/* 803D5AE4 003CB864  40 82 00 0C */	bne lbl_803D5AF0
/* 803D5AE8 003CB868  38 60 00 0F */	li r3, 0xf
/* 803D5AEC 003CB86C  48 00 00 50 */	b lbl_803D5B3C
lbl_803D5AF0:
/* 803D5AF0 003CB870  2C 04 00 00 */	cmpwi r4, 0
/* 803D5AF4 003CB874  40 82 00 0C */	bne lbl_803D5B00
/* 803D5AF8 003CB878  38 60 00 0F */	li r3, 0xf
/* 803D5AFC 003CB87C  48 00 00 40 */	b lbl_803D5B3C
lbl_803D5B00:
/* 803D5B00 003CB880  4B FF 77 71 */	bl RFLAvailable
/* 803D5B04 003CB884  2C 03 00 00 */	cmpwi r3, 0
/* 803D5B08 003CB888  40 82 00 0C */	bne lbl_803D5B14
/* 803D5B0C 003CB88C  38 60 00 01 */	li r3, 1
/* 803D5B10 003CB890  48 00 00 2C */	b lbl_803D5B3C
lbl_803D5B14:
/* 803D5B14 003CB894  7F E3 FB 78 */	mr r3, r31
/* 803D5B18 003CB898  38 80 00 4C */	li r4, 0x4c
/* 803D5B1C 003CB89C  4B FF F7 39 */	bl RFLiCalculateCRC
/* 803D5B20 003CB8A0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803D5B24 003CB8A4  41 82 00 0C */	beq lbl_803D5B30
/* 803D5B28 003CB8A8  38 60 00 07 */	li r3, 7
/* 803D5B2C 003CB8AC  48 00 00 10 */	b lbl_803D5B3C
lbl_803D5B30:
/* 803D5B30 003CB8B0  7F C3 F3 78 */	mr r3, r30
/* 803D5B34 003CB8B4  7F E4 FB 78 */	mr r4, r31
/* 803D5B38 003CB8B8  4B FF FE 89 */	bl RFLiAddMiddleDBUserData
lbl_803D5B3C:
/* 803D5B3C 003CB8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5B40 003CB8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5B44 003CB8C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D5B48 003CB8C8  7C 08 03 A6 */	mtlr r0
/* 803D5B4C 003CB8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5B50 003CB8D0  4E 80 00 20 */	blr 

