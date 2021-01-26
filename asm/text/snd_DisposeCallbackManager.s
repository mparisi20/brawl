.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail22DisposeCallbackManagerFv$7GetInstance
nw4r3snd6detail22DisposeCallbackManagerFv$7GetInstance:
/* 801BE7BC 001B453C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BE7C0 001B4540  7C 08 02 A6 */	mflr r0
/* 801BE7C4 001B4544  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BE7C8 001B4548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BE7CC 001B454C  48 01 E7 45 */	bl OSDisableInterrupts
/* 801BE7D0 001B4550  88 0D C1 68 */	lbz r0, lbl_805A0588-_SDA_BASE_(r13)
/* 801BE7D4 001B4554  7C 7F 1B 78 */	mr r31, r3
/* 801BE7D8 001B4558  7C 00 07 75 */	extsb. r0, r0
/* 801BE7DC 001B455C  40 82 00 44 */	bne lbl_801BE820
/* 801BE7E0 001B4560  3C C0 80 4C */	lis r6, lbl_804C1CF4@ha
/* 801BE7E4 001B4564  38 00 00 00 */	li r0, 0
/* 801BE7E8 001B4568  38 66 1C F4 */	addi r3, r6, lbl_804C1CF4@l
/* 801BE7EC 001B456C  3C 80 80 1C */	lis r4, nw4r3snd6detail22DisposeCallbackManagerFv$7__dt@ha
/* 801BE7F0 001B4570  90 03 00 04 */	stw r0, 4(r3)
/* 801BE7F4 001B4574  38 E3 00 04 */	addi r7, r3, 4
/* 801BE7F8 001B4578  3C A0 80 4C */	lis r5, lbl_804C1CE8@ha
/* 801BE7FC 001B457C  38 84 E8 44 */	addi r4, r4, nw4r3snd6detail22DisposeCallbackManagerFv$7__dt@l
/* 801BE800 001B4580  90 03 00 08 */	stw r0, 8(r3)
/* 801BE804 001B4584  38 A5 1C E8 */	addi r5, r5, lbl_804C1CE8@l
/* 801BE808 001B4588  90 06 1C F4 */	stw r0, 0x1cf4(r6)
/* 801BE80C 001B458C  90 E3 00 04 */	stw r7, 4(r3)
/* 801BE810 001B4590  90 E3 00 08 */	stw r7, 8(r3)
/* 801BE814 001B4594  48 23 1F 11 */	bl __register_global_object_tmp
/* 801BE818 001B4598  38 00 00 01 */	li r0, 1
/* 801BE81C 001B459C  98 0D C1 68 */	stb r0, lbl_805A0588-_SDA_BASE_(r13)
lbl_801BE820:
/* 801BE820 001B45A0  7F E3 FB 78 */	mr r3, r31
/* 801BE824 001B45A4  48 01 E7 15 */	bl OSRestoreInterrupts
/* 801BE828 001B45A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BE82C 001B45AC  3C 60 80 4C */	lis r3, lbl_804C1CF4@ha
/* 801BE830 001B45B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BE834 001B45B4  38 63 1C F4 */	addi r3, r3, lbl_804C1CF4@l
/* 801BE838 001B45B8  7C 08 03 A6 */	mtlr r0
/* 801BE83C 001B45BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801BE840 001B45C0  4E 80 00 20 */	blr 

.global nw4r3snd6detail22DisposeCallbackManagerFv$7__dt
nw4r3snd6detail22DisposeCallbackManagerFv$7__dt:
/* 801BE844 001B45C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BE848 001B45C8  7C 08 02 A6 */	mflr r0
/* 801BE84C 001B45CC  2C 03 00 00 */	cmpwi r3, 0
/* 801BE850 001B45D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BE854 001B45D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BE858 001B45D8  7C 9F 23 78 */	mr r31, r4
/* 801BE85C 001B45DC  93 C1 00 08 */	stw r30, 8(r1)
/* 801BE860 001B45E0  7C 7E 1B 78 */	mr r30, r3
/* 801BE864 001B45E4  41 82 00 20 */	beq lbl_801BE884
/* 801BE868 001B45E8  41 82 00 0C */	beq lbl_801BE874
/* 801BE86C 001B45EC  38 80 00 00 */	li r4, 0
/* 801BE870 001B45F0  4B F9 D9 C9 */	bl nw4r2ut6detail12LinkListImplFv$7__dt
lbl_801BE874:
/* 801BE874 001B45F4  2C 1F 00 00 */	cmpwi r31, 0
/* 801BE878 001B45F8  40 81 00 0C */	ble lbl_801BE884
/* 801BE87C 001B45FC  7F C3 F3 78 */	mr r3, r30
/* 801BE880 001B4600  4B E4 E0 49 */	bl __dl
lbl_801BE884:
/* 801BE884 001B4604  7F C3 F3 78 */	mr r3, r30
/* 801BE888 001B4608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BE88C 001B460C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801BE890 001B4610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BE894 001B4614  7C 08 03 A6 */	mtlr r0
/* 801BE898 001B4618  38 21 00 10 */	addi r1, r1, 0x10
/* 801BE89C 001B461C  4E 80 00 20 */	blr 

.global nw4r3snd6detail22DisposeCallbackManagerFPQ44$7RegisterDisposeCallback
nw4r3snd6detail22DisposeCallbackManagerFPQ44$7RegisterDisposeCallback:
/* 801BE8A0 001B4620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BE8A4 001B4624  7C 08 02 A6 */	mflr r0
/* 801BE8A8 001B4628  7C 85 23 78 */	mr r5, r4
/* 801BE8AC 001B462C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BE8B0 001B4630  38 03 00 04 */	addi r0, r3, 4
/* 801BE8B4 001B4634  38 81 00 08 */	addi r4, r1, 8
/* 801BE8B8 001B4638  90 01 00 08 */	stw r0, 8(r1)
/* 801BE8BC 001B463C  4B F9 DA 8D */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801BE8C0 001B4640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BE8C4 001B4644  7C 08 03 A6 */	mtlr r0
/* 801BE8C8 001B4648  38 21 00 10 */	addi r1, r1, 0x10
/* 801BE8CC 001B464C  4E 80 00 20 */	blr 

.global nw4r3snd6detail22DisposeCallbackManagerFPQ44$7UnregisterDisposeCallback
nw4r3snd6detail22DisposeCallbackManagerFPQ44$7UnregisterDisposeCallback:
/* 801BE8D0 001B4650  4B F9 DA A4 */	b nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase

.global nw4r3snd6detail22DisposeCallbackManagerFPvUl$7Dispose
nw4r3snd6detail22DisposeCallbackManagerFPvUl$7Dispose:
/* 801BE8D4 001B4654  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801BE8D8 001B4658  7C 08 02 A6 */	mflr r0
/* 801BE8DC 001B465C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BE8E0 001B4660  39 61 00 40 */	addi r11, r1, 0x40
/* 801BE8E4 001B4664  48 23 2A 25 */	bl _savegpr_21
/* 801BE8E8 001B4668  7C 9F 23 78 */	mr r31, r4
/* 801BE8EC 001B466C  7F C4 2A 14 */	add r30, r4, r5
/* 801BE8F0 001B4670  48 00 D9 F5 */	bl nw4r3snd6detail11SoundThreadFv$7GetInstance
/* 801BE8F4 001B4674  38 63 03 54 */	addi r3, r3, 0x354
/* 801BE8F8 001B4678  48 02 02 BD */	bl OSLockMutex
/* 801BE8FC 001B467C  48 01 E6 15 */	bl OSDisableInterrupts
/* 801BE900 001B4680  88 0D C1 68 */	lbz r0, lbl_805A0588-_SDA_BASE_(r13)
/* 801BE904 001B4684  7C 7D 1B 78 */	mr r29, r3
/* 801BE908 001B4688  7C 00 07 75 */	extsb. r0, r0
/* 801BE90C 001B468C  40 82 00 44 */	bne lbl_801BE950
/* 801BE910 001B4690  3C C0 80 4C */	lis r6, lbl_804C1CF4@ha
/* 801BE914 001B4694  38 00 00 00 */	li r0, 0
/* 801BE918 001B4698  38 66 1C F4 */	addi r3, r6, lbl_804C1CF4@l
/* 801BE91C 001B469C  3C 80 80 1C */	lis r4, nw4r3snd6detail22DisposeCallbackManagerFv$7__dt@ha
/* 801BE920 001B46A0  90 03 00 04 */	stw r0, 4(r3)
/* 801BE924 001B46A4  38 E3 00 04 */	addi r7, r3, 4
/* 801BE928 001B46A8  3C A0 80 4C */	lis r5, lbl_804C1CE8@ha
/* 801BE92C 001B46AC  38 84 E8 44 */	addi r4, r4, nw4r3snd6detail22DisposeCallbackManagerFv$7__dt@l
/* 801BE930 001B46B0  90 03 00 08 */	stw r0, 8(r3)
/* 801BE934 001B46B4  38 A5 1C E8 */	addi r5, r5, lbl_804C1CE8@l
/* 801BE938 001B46B8  90 06 1C F4 */	stw r0, 0x1cf4(r6)
/* 801BE93C 001B46BC  90 E3 00 04 */	stw r7, 4(r3)
/* 801BE940 001B46C0  90 E3 00 08 */	stw r7, 8(r3)
/* 801BE944 001B46C4  48 23 1D E1 */	bl __register_global_object_tmp
/* 801BE948 001B46C8  38 00 00 01 */	li r0, 1
/* 801BE94C 001B46CC  98 0D C1 68 */	stb r0, lbl_805A0588-_SDA_BASE_(r13)
lbl_801BE950:
/* 801BE950 001B46D0  7F A3 EB 78 */	mr r3, r29
/* 801BE954 001B46D4  48 01 E5 E5 */	bl OSRestoreInterrupts
/* 801BE958 001B46D8  3E A0 80 4C */	lis r21, lbl_804C1CF4@ha
/* 801BE95C 001B46DC  3A E0 00 00 */	li r23, 0
/* 801BE960 001B46E0  3A D5 1C F4 */	addi r22, r21, lbl_804C1CF4@l
/* 801BE964 001B46E4  3F 00 80 1C */	lis r24, 0x801c
/* 801BE968 001B46E8  83 B6 00 04 */	lwz r29, 4(r22)
/* 801BE96C 001B46EC  3B 76 00 04 */	addi r27, r22, 4
/* 801BE970 001B46F0  3F 20 80 4C */	lis r25, 0x804c
/* 801BE974 001B46F4  3B 40 00 01 */	li r26, 1
/* 801BE978 001B46F8  48 00 00 24 */	b lbl_801BE99C
lbl_801BE97C:
/* 801BE97C 001B46FC  81 9D 00 08 */	lwz r12, 8(r29)
/* 801BE980 001B4700  7F A3 EB 78 */	mr r3, r29
/* 801BE984 001B4704  7F E4 FB 78 */	mr r4, r31
/* 801BE988 001B4708  7F C5 F3 78 */	mr r5, r30
/* 801BE98C 001B470C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BE990 001B4710  83 BD 00 00 */	lwz r29, 0(r29)
/* 801BE994 001B4714  7D 89 03 A6 */	mtctr r12
/* 801BE998 001B4718  4E 80 04 21 */	bctrl 
lbl_801BE99C:
/* 801BE99C 001B471C  48 01 E5 75 */	bl OSDisableInterrupts
/* 801BE9A0 001B4720  88 0D C1 68 */	lbz r0, lbl_805A0588-_SDA_BASE_(r13)
/* 801BE9A4 001B4724  7C 7C 1B 78 */	mr r28, r3
/* 801BE9A8 001B4728  7C 00 07 75 */	extsb. r0, r0
/* 801BE9AC 001B472C  40 82 00 30 */	bne lbl_801BE9DC
/* 801BE9B0 001B4730  92 F6 00 04 */	stw r23, 4(r22)
/* 801BE9B4 001B4734  38 D6 00 04 */	addi r6, r22, 4
/* 801BE9B8 001B4738  7E C3 B3 78 */	mr r3, r22
/* 801BE9BC 001B473C  38 98 E8 44 */	addi r4, r24, -6076
/* 801BE9C0 001B4740  92 F6 00 08 */	stw r23, 8(r22)
/* 801BE9C4 001B4744  38 B9 1C E8 */	addi r5, r25, 0x1ce8
/* 801BE9C8 001B4748  92 F5 1C F4 */	stw r23, 0x1cf4(r21)
/* 801BE9CC 001B474C  90 D6 00 04 */	stw r6, 4(r22)
/* 801BE9D0 001B4750  90 D6 00 08 */	stw r6, 8(r22)
/* 801BE9D4 001B4754  48 23 1D 51 */	bl __register_global_object_tmp
/* 801BE9D8 001B4758  9B 4D C1 68 */	stb r26, lbl_805A0588-_SDA_BASE_(r13)
lbl_801BE9DC:
/* 801BE9DC 001B475C  7F 83 E3 78 */	mr r3, r28
/* 801BE9E0 001B4760  48 01 E5 59 */	bl OSRestoreInterrupts
/* 801BE9E4 001B4764  7C 1D D8 40 */	cmplw r29, r27
/* 801BE9E8 001B4768  40 82 FF 94 */	bne lbl_801BE97C
/* 801BE9EC 001B476C  48 00 D8 F9 */	bl nw4r3snd6detail11SoundThreadFv$7GetInstance
/* 801BE9F0 001B4770  38 63 03 54 */	addi r3, r3, 0x354
/* 801BE9F4 001B4774  48 02 02 9D */	bl OSUnlockMutex
/* 801BE9F8 001B4778  39 61 00 40 */	addi r11, r1, 0x40
/* 801BE9FC 001B477C  48 23 29 59 */	bl _restgpr_21
/* 801BEA00 001B4780  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801BEA04 001B4784  7C 08 03 A6 */	mtlr r0
/* 801BEA08 001B4788  38 21 00 40 */	addi r1, r1, 0x40
/* 801BEA0C 001B478C  4E 80 00 20 */	blr 

.global nw4r3snd6detail22DisposeCallbackManagerFPvUl$7DisposeWave
nw4r3snd6detail22DisposeCallbackManagerFPvUl$7DisposeWave:
/* 801BEA10 001B4790  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801BEA14 001B4794  7C 08 02 A6 */	mflr r0
/* 801BEA18 001B4798  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BEA1C 001B479C  39 61 00 40 */	addi r11, r1, 0x40
/* 801BEA20 001B47A0  48 23 28 E9 */	bl _savegpr_21
/* 801BEA24 001B47A4  7C 9F 23 78 */	mr r31, r4
/* 801BEA28 001B47A8  7F C4 2A 14 */	add r30, r4, r5
/* 801BEA2C 001B47AC  48 00 D8 B9 */	bl nw4r3snd6detail11SoundThreadFv$7GetInstance
/* 801BEA30 001B47B0  38 63 03 54 */	addi r3, r3, 0x354
/* 801BEA34 001B47B4  48 02 01 81 */	bl OSLockMutex
/* 801BEA38 001B47B8  48 01 E4 D9 */	bl OSDisableInterrupts
/* 801BEA3C 001B47BC  88 0D C1 68 */	lbz r0, lbl_805A0588-_SDA_BASE_(r13)
/* 801BEA40 001B47C0  7C 7D 1B 78 */	mr r29, r3
/* 801BEA44 001B47C4  7C 00 07 75 */	extsb. r0, r0
/* 801BEA48 001B47C8  40 82 00 44 */	bne lbl_801BEA8C
/* 801BEA4C 001B47CC  3C C0 80 4C */	lis r6, lbl_804C1CF4@ha
/* 801BEA50 001B47D0  38 00 00 00 */	li r0, 0
/* 801BEA54 001B47D4  38 66 1C F4 */	addi r3, r6, lbl_804C1CF4@l
/* 801BEA58 001B47D8  3C 80 80 1C */	lis r4, nw4r3snd6detail22DisposeCallbackManagerFv$7__dt@ha
/* 801BEA5C 001B47DC  90 03 00 04 */	stw r0, 4(r3)
/* 801BEA60 001B47E0  38 E3 00 04 */	addi r7, r3, 4
/* 801BEA64 001B47E4  3C A0 80 4C */	lis r5, lbl_804C1CE8@ha
/* 801BEA68 001B47E8  38 84 E8 44 */	addi r4, r4, nw4r3snd6detail22DisposeCallbackManagerFv$7__dt@l
/* 801BEA6C 001B47EC  90 03 00 08 */	stw r0, 8(r3)
/* 801BEA70 001B47F0  38 A5 1C E8 */	addi r5, r5, lbl_804C1CE8@l
/* 801BEA74 001B47F4  90 06 1C F4 */	stw r0, 0x1cf4(r6)
/* 801BEA78 001B47F8  90 E3 00 04 */	stw r7, 4(r3)
/* 801BEA7C 001B47FC  90 E3 00 08 */	stw r7, 8(r3)
/* 801BEA80 001B4800  48 23 1C A5 */	bl __register_global_object_tmp
/* 801BEA84 001B4804  38 00 00 01 */	li r0, 1
/* 801BEA88 001B4808  98 0D C1 68 */	stb r0, lbl_805A0588-_SDA_BASE_(r13)
lbl_801BEA8C:
/* 801BEA8C 001B480C  7F A3 EB 78 */	mr r3, r29
/* 801BEA90 001B4810  48 01 E4 A9 */	bl OSRestoreInterrupts
/* 801BEA94 001B4814  3E A0 80 4C */	lis r21, lbl_804C1CF4@ha
/* 801BEA98 001B4818  3A E0 00 00 */	li r23, 0
/* 801BEA9C 001B481C  3A D5 1C F4 */	addi r22, r21, lbl_804C1CF4@l
/* 801BEAA0 001B4820  3F 00 80 1C */	lis r24, 0x801c
/* 801BEAA4 001B4824  83 B6 00 04 */	lwz r29, 4(r22)
/* 801BEAA8 001B4828  3B 76 00 04 */	addi r27, r22, 4
/* 801BEAAC 001B482C  3F 20 80 4C */	lis r25, 0x804c
/* 801BEAB0 001B4830  3B 40 00 01 */	li r26, 1
/* 801BEAB4 001B4834  48 00 00 24 */	b lbl_801BEAD8
lbl_801BEAB8:
/* 801BEAB8 001B4838  81 9D 00 08 */	lwz r12, 8(r29)
/* 801BEABC 001B483C  7F A3 EB 78 */	mr r3, r29
/* 801BEAC0 001B4840  7F E4 FB 78 */	mr r4, r31
/* 801BEAC4 001B4844  7F C5 F3 78 */	mr r5, r30
/* 801BEAC8 001B4848  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801BEACC 001B484C  83 BD 00 00 */	lwz r29, 0(r29)
/* 801BEAD0 001B4850  7D 89 03 A6 */	mtctr r12
/* 801BEAD4 001B4854  4E 80 04 21 */	bctrl 
lbl_801BEAD8:
/* 801BEAD8 001B4858  48 01 E4 39 */	bl OSDisableInterrupts
/* 801BEADC 001B485C  88 0D C1 68 */	lbz r0, lbl_805A0588-_SDA_BASE_(r13)
/* 801BEAE0 001B4860  7C 7C 1B 78 */	mr r28, r3
/* 801BEAE4 001B4864  7C 00 07 75 */	extsb. r0, r0
/* 801BEAE8 001B4868  40 82 00 30 */	bne lbl_801BEB18
/* 801BEAEC 001B486C  92 F6 00 04 */	stw r23, 4(r22)
/* 801BEAF0 001B4870  38 D6 00 04 */	addi r6, r22, 4
/* 801BEAF4 001B4874  7E C3 B3 78 */	mr r3, r22
/* 801BEAF8 001B4878  38 98 E8 44 */	addi r4, r24, -6076
/* 801BEAFC 001B487C  92 F6 00 08 */	stw r23, 8(r22)
/* 801BEB00 001B4880  38 B9 1C E8 */	addi r5, r25, 0x1ce8
/* 801BEB04 001B4884  92 F5 1C F4 */	stw r23, 0x1cf4(r21)
/* 801BEB08 001B4888  90 D6 00 04 */	stw r6, 4(r22)
/* 801BEB0C 001B488C  90 D6 00 08 */	stw r6, 8(r22)
/* 801BEB10 001B4890  48 23 1C 15 */	bl __register_global_object_tmp
/* 801BEB14 001B4894  9B 4D C1 68 */	stb r26, lbl_805A0588-_SDA_BASE_(r13)
lbl_801BEB18:
/* 801BEB18 001B4898  7F 83 E3 78 */	mr r3, r28
/* 801BEB1C 001B489C  48 01 E4 1D */	bl OSRestoreInterrupts
/* 801BEB20 001B48A0  7C 1D D8 40 */	cmplw r29, r27
/* 801BEB24 001B48A4  40 82 FF 94 */	bne lbl_801BEAB8
/* 801BEB28 001B48A8  48 00 D7 BD */	bl nw4r3snd6detail11SoundThreadFv$7GetInstance
/* 801BEB2C 001B48AC  38 63 03 54 */	addi r3, r3, 0x354
/* 801BEB30 001B48B0  48 02 01 61 */	bl OSUnlockMutex
/* 801BEB34 001B48B4  39 61 00 40 */	addi r11, r1, 0x40
/* 801BEB38 001B48B8  48 23 28 1D */	bl _restgpr_21
/* 801BEB3C 001B48BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801BEB40 001B48C0  7C 08 03 A6 */	mtlr r0
/* 801BEB44 001B48C4  38 21 00 40 */	addi r1, r1, 0x40
/* 801BEB48 001B48C8  4E 80 00 20 */	blr 

