.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global muWifiDataLoadTask$7create
muWifiDataLoadTask$7create:
/* 800DAA30 000D07B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DAA34 000D07B4  7C 08 02 A6 */	mflr r0
/* 800DAA38 000D07B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DAA3C 000D07BC  39 61 00 20 */	addi r11, r1, 0x20
/* 800DAA40 000D07C0  48 31 68 E1 */	bl _savegpr_27
/* 800DAA44 000D07C4  7C 7B 1B 78 */	mr r27, r3
/* 800DAA48 000D07C8  7C 9C 23 78 */	mr r28, r4
/* 800DAA4C 000D07CC  7C BD 2B 78 */	mr r29, r5
/* 800DAA50 000D07D0  7C DE 33 78 */	mr r30, r6
/* 800DAA54 000D07D4  38 60 00 70 */	li r3, 0x70
/* 800DAA58 000D07D8  38 80 00 2A */	li r4, 0x2a
/* 800DAA5C 000D07DC  4B F3 1E 5D */	bl srHeapType$7__nw
/* 800DAA60 000D07E0  2C 03 00 00 */	cmpwi r3, 0
/* 800DAA64 000D07E4  7C 7F 1B 78 */	mr r31, r3
/* 800DAA68 000D07E8  41 82 00 0C */	beq lbl_800DAA74
/* 800DAA6C 000D07EC  48 00 00 81 */	bl muWifiDataLoadTask$7__ct
/* 800DAA70 000D07F0  7C 7F 1B 78 */	mr r31, r3
lbl_800DAA74:
/* 800DAA74 000D07F4  93 7F 00 40 */	stw r27, 0x40(r31)
/* 800DAA78 000D07F8  38 60 00 02 */	li r3, 2
/* 800DAA7C 000D07FC  93 9F 00 44 */	stw r28, 0x44(r31)
/* 800DAA80 000D0800  93 BF 00 4C */	stw r29, 0x4c(r31)
/* 800DAA84 000D0804  93 DF 00 58 */	stw r30, 0x58(r31)
/* 800DAA88 000D0808  4B F5 5B 29 */	bl gfSysRecorder2$7isEnable
/* 800DAA8C 000D080C  2C 03 00 00 */	cmpwi r3, 0
/* 800DAA90 000D0810  40 82 00 18 */	bne lbl_800DAAA8
/* 800DAA94 000D0814  38 60 00 01 */	li r3, 1
/* 800DAA98 000D0818  38 00 00 04 */	li r0, 4
/* 800DAA9C 000D081C  90 7F 00 48 */	stw r3, 0x48(r31)
/* 800DAAA0 000D0820  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800DAAA4 000D0824  48 00 00 2C */	b lbl_800DAAD0
lbl_800DAAA8:
/* 800DAAA8 000D0828  38 60 00 2B */	li r3, 0x2b
/* 800DAAAC 000D082C  4B F5 5A 9D */	bl gfSysRecorder2$7createInstance
/* 800DAAB0 000D0830  2C 03 00 00 */	cmpwi r3, 0
/* 800DAAB4 000D0834  90 7F 00 60 */	stw r3, 0x60(r31)
/* 800DAAB8 000D0838  40 82 00 10 */	bne lbl_800DAAC8
/* 800DAABC 000D083C  38 00 00 05 */	li r0, 5
/* 800DAAC0 000D0840  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800DAAC4 000D0844  48 00 00 0C */	b lbl_800DAAD0
lbl_800DAAC8:
/* 800DAAC8 000D0848  38 00 00 00 */	li r0, 0
/* 800DAACC 000D084C  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_800DAAD0:
/* 800DAAD0 000D0850  39 61 00 20 */	addi r11, r1, 0x20
/* 800DAAD4 000D0854  7F E3 FB 78 */	mr r3, r31
/* 800DAAD8 000D0858  48 31 68 95 */	bl _restgpr_27
/* 800DAADC 000D085C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DAAE0 000D0860  7C 08 03 A6 */	mtlr r0
/* 800DAAE4 000D0864  38 21 00 20 */	addi r1, r1, 0x20
/* 800DAAE8 000D0868  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7__ct
muWifiDataLoadTask$7__ct:
/* 800DAAEC 000D086C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DAAF0 000D0870  7C 08 02 A6 */	mflr r0
/* 800DAAF4 000D0874  3C 80 80 46 */	lis r4, lbl_80459C28@ha
/* 800DAAF8 000D0878  38 A0 00 08 */	li r5, 8
/* 800DAAFC 000D087C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAB00 000D0880  38 84 9C 28 */	addi r4, r4, lbl_80459C28@l
/* 800DAB04 000D0884  38 C0 00 0F */	li r6, 0xf
/* 800DAB08 000D0888  38 E0 00 08 */	li r7, 8
/* 800DAB0C 000D088C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DAB10 000D0890  7C 7F 1B 78 */	mr r31, r3
/* 800DAB14 000D0894  39 00 00 01 */	li r8, 1
/* 800DAB18 000D0898  4B F5 2D A1 */	bl gfTask$7__ct
/* 800DAB1C 000D089C  88 1F 00 2C */	lbz r0, 0x2c(r31)
/* 800DAB20 000D08A0  38 C0 00 00 */	li r6, 0
/* 800DAB24 000D08A4  3C 60 80 46 */	lis r3, lbl_80459C38@ha
/* 800DAB28 000D08A8  38 A0 00 06 */	li r5, 6
/* 800DAB2C 000D08AC  38 63 9C 38 */	addi r3, r3, lbl_80459C38@l
/* 800DAB30 000D08B0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800DAB34 000D08B4  38 80 00 01 */	li r4, 1
/* 800DAB38 000D08B8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 800DAB3C 000D08BC  7F E3 FB 78 */	mr r3, r31
/* 800DAB40 000D08C0  90 DF 00 40 */	stw r6, 0x40(r31)
/* 800DAB44 000D08C4  90 DF 00 44 */	stw r6, 0x44(r31)
/* 800DAB48 000D08C8  90 DF 00 48 */	stw r6, 0x48(r31)
/* 800DAB4C 000D08CC  90 DF 00 4C */	stw r6, 0x4c(r31)
/* 800DAB50 000D08D0  90 DF 00 50 */	stw r6, 0x50(r31)
/* 800DAB54 000D08D4  90 BF 00 54 */	stw r5, 0x54(r31)
/* 800DAB58 000D08D8  90 9F 00 58 */	stw r4, 0x58(r31)
/* 800DAB5C 000D08DC  90 DF 00 5C */	stw r6, 0x5c(r31)
/* 800DAB60 000D08E0  90 DF 00 60 */	stw r6, 0x60(r31)
/* 800DAB64 000D08E4  90 DF 00 64 */	stw r6, 0x64(r31)
/* 800DAB68 000D08E8  90 DF 00 68 */	stw r6, 0x68(r31)
/* 800DAB6C 000D08EC  98 DF 00 6C */	stb r6, 0x6c(r31)
/* 800DAB70 000D08F0  98 1F 00 2C */	stb r0, 0x2c(r31)
/* 800DAB74 000D08F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DAB78 000D08F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DAB7C 000D08FC  7C 08 03 A6 */	mtlr r0
/* 800DAB80 000D0900  38 21 00 10 */	addi r1, r1, 0x10
/* 800DAB84 000D0904  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7exit
muWifiDataLoadTask$7exit:
/* 800DAB88 000D0908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DAB8C 000D090C  7C 08 02 A6 */	mflr r0
/* 800DAB90 000D0910  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAB94 000D0914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DAB98 000D0918  7C 7F 1B 78 */	mr r31, r3
/* 800DAB9C 000D091C  80 03 00 60 */	lwz r0, 0x60(r3)
/* 800DABA0 000D0920  2C 00 00 00 */	cmpwi r0, 0
/* 800DABA4 000D0924  41 82 00 08 */	beq lbl_800DABAC
/* 800DABA8 000D0928  4B F5 5C 0D */	bl gfSysRecorder2$7dropInstance
lbl_800DABAC:
/* 800DABAC 000D092C  7F E3 FB 78 */	mr r3, r31
/* 800DABB0 000D0930  4B F5 33 85 */	bl gfTask$7exit
/* 800DABB4 000D0934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DABB8 000D0938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DABBC 000D093C  7C 08 03 A6 */	mtlr r0
/* 800DABC0 000D0940  38 21 00 10 */	addi r1, r1, 0x10
/* 800DABC4 000D0944  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7__dt
muWifiDataLoadTask$7__dt:
/* 800DABC8 000D0948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DABCC 000D094C  7C 08 02 A6 */	mflr r0
/* 800DABD0 000D0950  2C 03 00 00 */	cmpwi r3, 0
/* 800DABD4 000D0954  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DABD8 000D0958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DABDC 000D095C  7C 9F 23 78 */	mr r31, r4
/* 800DABE0 000D0960  93 C1 00 08 */	stw r30, 8(r1)
/* 800DABE4 000D0964  7C 7E 1B 78 */	mr r30, r3
/* 800DABE8 000D0968  41 82 00 1C */	beq lbl_800DAC04
/* 800DABEC 000D096C  38 80 00 00 */	li r4, 0
/* 800DABF0 000D0970  4B F5 2E 2D */	bl gfTask$7__dt
/* 800DABF4 000D0974  2C 1F 00 00 */	cmpwi r31, 0
/* 800DABF8 000D0978  40 81 00 0C */	ble lbl_800DAC04
/* 800DABFC 000D097C  7F C3 F3 78 */	mr r3, r30
/* 800DAC00 000D0980  4B F3 1C C9 */	bl __dl
lbl_800DAC04:
/* 800DAC04 000D0984  7F C3 F3 78 */	mr r3, r30
/* 800DAC08 000D0988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DAC0C 000D098C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DAC10 000D0990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DAC14 000D0994  7C 08 03 A6 */	mtlr r0
/* 800DAC18 000D0998  38 21 00 10 */	addi r1, r1, 0x10
/* 800DAC1C 000D099C  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7processDefault
muWifiDataLoadTask$7processDefault:
/* 800DAC20 000D09A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DAC24 000D09A4  7C 08 02 A6 */	mflr r0
/* 800DAC28 000D09A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAC2C 000D09AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DAC30 000D09B0  7C 7F 1B 78 */	mr r31, r3
/* 800DAC34 000D09B4  80 83 00 54 */	lwz r4, 0x54(r3)
/* 800DAC38 000D09B8  80 03 00 50 */	lwz r0, 0x50(r3)
/* 800DAC3C 000D09BC  7C 04 00 00 */	cmpw r4, r0
/* 800DAC40 000D09C0  41 82 00 2C */	beq lbl_800DAC6C
/* 800DAC44 000D09C4  3C 80 80 41 */	lis r4, lbl_80408550@ha
/* 800DAC48 000D09C8  54 00 18 38 */	slwi r0, r0, 3
/* 800DAC4C 000D09CC  38 84 85 50 */	addi r4, r4, lbl_80408550@l
/* 800DAC50 000D09D0  7D 84 00 2E */	lwzx r12, r4, r0
/* 800DAC54 000D09D4  2C 0C 00 00 */	cmpwi r12, 0
/* 800DAC58 000D09D8  41 82 00 0C */	beq lbl_800DAC64
/* 800DAC5C 000D09DC  7D 89 03 A6 */	mtctr r12
/* 800DAC60 000D09E0  4E 80 04 21 */	bctrl 
lbl_800DAC64:
/* 800DAC64 000D09E4  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 800DAC68 000D09E8  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_800DAC6C:
/* 800DAC6C 000D09EC  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 800DAC70 000D09F0  3C 60 80 41 */	lis r3, lbl_80408550@ha
/* 800DAC74 000D09F4  38 63 85 50 */	addi r3, r3, lbl_80408550@l
/* 800DAC78 000D09F8  54 00 18 38 */	slwi r0, r0, 3
/* 800DAC7C 000D09FC  7C 63 02 14 */	add r3, r3, r0
/* 800DAC80 000D0A00  81 83 00 04 */	lwz r12, 4(r3)
/* 800DAC84 000D0A04  2C 0C 00 00 */	cmpwi r12, 0
/* 800DAC88 000D0A08  41 82 00 14 */	beq lbl_800DAC9C
/* 800DAC8C 000D0A0C  7F E3 FB 78 */	mr r3, r31
/* 800DAC90 000D0A10  7D 89 03 A6 */	mtctr r12
/* 800DAC94 000D0A14  4E 80 04 21 */	bctrl 
/* 800DAC98 000D0A18  90 7F 00 50 */	stw r3, 0x50(r31)
lbl_800DAC9C:
/* 800DAC9C 000D0A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DACA0 000D0A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DACA4 000D0A24  7C 08 03 A6 */	mtlr r0
/* 800DACA8 000D0A28  38 21 00 10 */	addi r1, r1, 0x10
/* 800DACAC 000D0A2C  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepLoadInit
muWifiDataLoadTask$7mainStepLoadInit:
/* 800DACB0 000D0A30  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800DACB4 000D0A34  38 80 00 2B */	li r4, 0x2b
/* 800DACB8 000D0A38  4B F5 62 E0 */	b gfSysRecorder2$7loadWifi

.global muWifiDataLoadTask$7mainStepLoadMain
muWifiDataLoadTask$7mainStepLoadMain:
/* 800DACBC 000D0A3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DACC0 000D0A40  7C 08 02 A6 */	mflr r0
/* 800DACC4 000D0A44  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DACC8 000D0A48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DACCC 000D0A4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800DACD0 000D0A50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800DACD4 000D0A54  93 81 00 10 */	stw r28, 0x10(r1)
/* 800DACD8 000D0A58  7C 7C 1B 78 */	mr r28, r3
/* 800DACDC 000D0A5C  83 C3 00 60 */	lwz r30, 0x60(r3)
/* 800DACE0 000D0A60  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 800DACE4 000D0A64  2C 00 00 00 */	cmpwi r0, 0
/* 800DACE8 000D0A68  40 82 00 74 */	bne lbl_800DAD5C
/* 800DACEC 000D0A6C  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 800DACF0 000D0A70  2C 00 00 00 */	cmpwi r0, 0
/* 800DACF4 000D0A74  40 82 00 60 */	bne lbl_800DAD54
/* 800DACF8 000D0A78  48 07 1B D5 */	bl ntFriendInfo$7getInstance
/* 800DACFC 000D0A7C  7C 7D 1B 78 */	mr r29, r3
/* 800DAD00 000D0A80  38 7E 00 08 */	addi r3, r30, 8
/* 800DAD04 000D0A84  4B F4 72 85 */	bl gfFileIOHandle$7getSize
/* 800DAD08 000D0A88  7C 7F 1B 78 */	mr r31, r3
/* 800DAD0C 000D0A8C  38 7E 00 08 */	addi r3, r30, 8
/* 800DAD10 000D0A90  4B F4 72 85 */	bl gfFileIOHandle$7getBuffer
/* 800DAD14 000D0A94  7C 64 1B 78 */	mr r4, r3
/* 800DAD18 000D0A98  7F A3 EB 78 */	mr r3, r29
/* 800DAD1C 000D0A9C  7F E5 FB 78 */	mr r5, r31
/* 800DAD20 000D0AA0  48 07 1D 4D */	bl ntFriendInfo$7setSaveData
/* 800DAD24 000D0AA4  38 7E 00 08 */	addi r3, r30, 8
/* 800DAD28 000D0AA8  4B F4 72 6D */	bl gfFileIOHandle$7getBuffer
/* 800DAD2C 000D0AAC  4B F4 9D 21 */	bl gfHeapManager$7free
/* 800DAD30 000D0AB0  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 800DAD34 000D0AB4  2C 00 00 00 */	cmpwi r0, 0
/* 800DAD38 000D0AB8  41 82 00 14 */	beq lbl_800DAD4C
/* 800DAD3C 000D0ABC  38 00 00 00 */	li r0, 0
/* 800DAD40 000D0AC0  38 60 00 04 */	li r3, 4
/* 800DAD44 000D0AC4  90 1C 00 48 */	stw r0, 0x48(r28)
/* 800DAD48 000D0AC8  48 00 00 18 */	b lbl_800DAD60
lbl_800DAD4C:
/* 800DAD4C 000D0ACC  38 60 00 05 */	li r3, 5
/* 800DAD50 000D0AD0  48 00 00 10 */	b lbl_800DAD60
lbl_800DAD54:
/* 800DAD54 000D0AD4  38 60 00 01 */	li r3, 1
/* 800DAD58 000D0AD8  48 00 00 08 */	b lbl_800DAD60
lbl_800DAD5C:
/* 800DAD5C 000D0ADC  80 63 00 50 */	lwz r3, 0x50(r3)
lbl_800DAD60:
/* 800DAD60 000D0AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DAD64 000D0AE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DAD68 000D0AE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800DAD6C 000D0AEC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800DAD70 000D0AF0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800DAD74 000D0AF4  7C 08 03 A6 */	mtlr r0
/* 800DAD78 000D0AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 800DAD7C 000D0AFC  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepRemakeConfirmInit
muWifiDataLoadTask$7mainStepRemakeConfirmInit:
/* 800DAD80 000D0B00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DAD84 000D0B04  7C 08 02 A6 */	mflr r0
/* 800DAD88 000D0B08  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DAD8C 000D0B0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DAD90 000D0B10  7C 7F 1B 78 */	mr r31, r3
/* 800DAD94 000D0B14  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 800DAD98 000D0B18  2C 00 00 00 */	cmpwi r0, 0
/* 800DAD9C 000D0B1C  40 82 00 48 */	bne lbl_800DADE4
/* 800DADA0 000D0B20  38 00 00 2B */	li r0, 0x2b
/* 800DADA4 000D0B24  38 80 00 00 */	li r4, 0
/* 800DADA8 000D0B28  90 01 00 08 */	stw r0, 8(r1)
/* 800DADAC 000D0B2C  38 00 00 F0 */	li r0, 0xf0
/* 800DADB0 000D0B30  38 60 00 01 */	li r3, 1
/* 800DADB4 000D0B34  38 A0 00 44 */	li r5, 0x44
/* 800DADB8 000D0B38  90 81 00 0C */	stw r4, 0xc(r1)
/* 800DADBC 000D0B3C  39 20 00 00 */	li r9, 0
/* 800DADC0 000D0B40  39 40 00 2A */	li r10, 0x2a
/* 800DADC4 000D0B44  90 81 00 10 */	stw r4, 0x10(r1)
/* 800DADC8 000D0B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DADCC 000D0B4C  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 800DADD0 000D0B50  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 800DADD4 000D0B54  80 FF 00 44 */	lwz r7, 0x44(r31)
/* 800DADD8 000D0B58  81 1F 00 58 */	lwz r8, 0x58(r31)
/* 800DADDC 000D0B5C  4B FE 40 DD */	bl muNoticeWndTask$7create
/* 800DADE0 000D0B60  90 7F 00 5C */	stw r3, 0x5c(r31)
lbl_800DADE4:
/* 800DADE4 000D0B64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DADE8 000D0B68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DADEC 000D0B6C  7C 08 03 A6 */	mtlr r0
/* 800DADF0 000D0B70  38 21 00 20 */	addi r1, r1, 0x20
/* 800DADF4 000D0B74  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepRemakeConfirmMain
muWifiDataLoadTask$7mainStepRemakeConfirmMain:
/* 800DADF8 000D0B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DADFC 000D0B7C  7C 08 02 A6 */	mflr r0
/* 800DAE00 000D0B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAE04 000D0B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DAE08 000D0B88  93 C1 00 08 */	stw r30, 8(r1)
/* 800DAE0C 000D0B8C  7C 7E 1B 78 */	mr r30, r3
/* 800DAE10 000D0B90  80 83 00 5C */	lwz r4, 0x5c(r3)
/* 800DAE14 000D0B94  2C 04 00 00 */	cmpwi r4, 0
/* 800DAE18 000D0B98  40 82 00 0C */	bne lbl_800DAE24
/* 800DAE1C 000D0B9C  38 80 00 00 */	li r4, 0
/* 800DAE20 000D0BA0  48 00 00 2C */	b lbl_800DAE4C
lbl_800DAE24:
/* 800DAE24 000D0BA4  80 04 01 04 */	lwz r0, 0x104(r4)
/* 800DAE28 000D0BA8  2C 00 00 03 */	cmpwi r0, 3
/* 800DAE2C 000D0BAC  41 82 00 0C */	beq lbl_800DAE38
/* 800DAE30 000D0BB0  38 80 00 01 */	li r4, 1
/* 800DAE34 000D0BB4  48 00 00 18 */	b lbl_800DAE4C
lbl_800DAE38:
/* 800DAE38 000D0BB8  88 04 01 00 */	lbz r0, 0x100(r4)
/* 800DAE3C 000D0BBC  38 80 00 03 */	li r4, 3
/* 800DAE40 000D0BC0  2C 00 00 00 */	cmpwi r0, 0
/* 800DAE44 000D0BC4  41 82 00 08 */	beq lbl_800DAE4C
/* 800DAE48 000D0BC8  38 80 00 02 */	li r4, 2
lbl_800DAE4C:
/* 800DAE4C 000D0BCC  2C 04 00 02 */	cmpwi r4, 2
/* 800DAE50 000D0BD0  41 82 00 28 */	beq lbl_800DAE78
/* 800DAE54 000D0BD4  40 80 00 10 */	bge lbl_800DAE64
/* 800DAE58 000D0BD8  2C 04 00 01 */	cmpwi r4, 1
/* 800DAE5C 000D0BDC  40 80 00 14 */	bge lbl_800DAE70
/* 800DAE60 000D0BE0  48 00 00 2C */	b lbl_800DAE8C
lbl_800DAE64:
/* 800DAE64 000D0BE4  2C 04 00 04 */	cmpwi r4, 4
/* 800DAE68 000D0BE8  40 80 00 24 */	bge lbl_800DAE8C
/* 800DAE6C 000D0BEC  48 00 00 14 */	b lbl_800DAE80
lbl_800DAE70:
/* 800DAE70 000D0BF0  83 E3 00 50 */	lwz r31, 0x50(r3)
/* 800DAE74 000D0BF4  48 00 00 18 */	b lbl_800DAE8C
lbl_800DAE78:
/* 800DAE78 000D0BF8  3B E0 00 02 */	li r31, 2
/* 800DAE7C 000D0BFC  48 00 00 10 */	b lbl_800DAE8C
lbl_800DAE80:
/* 800DAE80 000D0C00  38 00 00 01 */	li r0, 1
/* 800DAE84 000D0C04  3B E0 00 04 */	li r31, 4
/* 800DAE88 000D0C08  90 03 00 48 */	stw r0, 0x48(r3)
lbl_800DAE8C:
/* 800DAE8C 000D0C0C  80 03 00 50 */	lwz r0, 0x50(r3)
/* 800DAE90 000D0C10  7C 1F 00 00 */	cmpw r31, r0
/* 800DAE94 000D0C14  41 82 00 1C */	beq lbl_800DAEB0
/* 800DAE98 000D0C18  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 800DAE9C 000D0C1C  2C 03 00 00 */	cmpwi r3, 0
/* 800DAEA0 000D0C20  41 82 00 10 */	beq lbl_800DAEB0
/* 800DAEA4 000D0C24  4B F5 30 91 */	bl gfTask$7exit
/* 800DAEA8 000D0C28  38 00 00 00 */	li r0, 0
/* 800DAEAC 000D0C2C  90 1E 00 5C */	stw r0, 0x5c(r30)
lbl_800DAEB0:
/* 800DAEB0 000D0C30  7F E3 FB 78 */	mr r3, r31
/* 800DAEB4 000D0C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DAEB8 000D0C38  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DAEBC 000D0C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DAEC0 000D0C40  7C 08 03 A6 */	mtlr r0
/* 800DAEC4 000D0C44  38 21 00 10 */	addi r1, r1, 0x10
/* 800DAEC8 000D0C48  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepRemakeInit
muWifiDataLoadTask$7mainStepRemakeInit:
/* 800DAECC 000D0C4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DAED0 000D0C50  7C 08 02 A6 */	mflr r0
/* 800DAED4 000D0C54  38 80 00 2B */	li r4, 0x2b
/* 800DAED8 000D0C58  38 A0 00 02 */	li r5, 2
/* 800DAEDC 000D0C5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DAEE0 000D0C60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DAEE4 000D0C64  7C 7F 1B 78 */	mr r31, r3
/* 800DAEE8 000D0C68  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800DAEEC 000D0C6C  4B F5 5B 0D */	bl gfShutdownManager$7update
/* 800DAEF0 000D0C70  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 800DAEF4 000D0C74  2C 00 00 00 */	cmpwi r0, 0
/* 800DAEF8 000D0C78  40 82 00 48 */	bne lbl_800DAF40
/* 800DAEFC 000D0C7C  38 00 00 2B */	li r0, 0x2b
/* 800DAF00 000D0C80  38 80 00 00 */	li r4, 0
/* 800DAF04 000D0C84  90 01 00 08 */	stw r0, 8(r1)
/* 800DAF08 000D0C88  38 00 00 F0 */	li r0, 0xf0
/* 800DAF0C 000D0C8C  38 60 00 03 */	li r3, 3
/* 800DAF10 000D0C90  38 A0 00 45 */	li r5, 0x45
/* 800DAF14 000D0C94  90 81 00 0C */	stw r4, 0xc(r1)
/* 800DAF18 000D0C98  39 20 00 00 */	li r9, 0
/* 800DAF1C 000D0C9C  39 40 00 2A */	li r10, 0x2a
/* 800DAF20 000D0CA0  90 81 00 10 */	stw r4, 0x10(r1)
/* 800DAF24 000D0CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAF28 000D0CA8  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 800DAF2C 000D0CAC  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 800DAF30 000D0CB0  80 FF 00 44 */	lwz r7, 0x44(r31)
/* 800DAF34 000D0CB4  81 1F 00 58 */	lwz r8, 0x58(r31)
/* 800DAF38 000D0CB8  4B FE 3F 81 */	bl muNoticeWndTask$7create
/* 800DAF3C 000D0CBC  90 7F 00 5C */	stw r3, 0x5c(r31)
lbl_800DAF40:
/* 800DAF40 000D0CC0  38 00 00 1E */	li r0, 0x1e
/* 800DAF44 000D0CC4  90 1F 00 64 */	stw r0, 0x64(r31)
/* 800DAF48 000D0CC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DAF4C 000D0CCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DAF50 000D0CD0  7C 08 03 A6 */	mtlr r0
/* 800DAF54 000D0CD4  38 21 00 20 */	addi r1, r1, 0x20
/* 800DAF58 000D0CD8  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepRemakeMain
muWifiDataLoadTask$7mainStepRemakeMain:
/* 800DAF5C 000D0CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DAF60 000D0CE0  7C 08 02 A6 */	mflr r0
/* 800DAF64 000D0CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAF68 000D0CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DAF6C 000D0CEC  93 C1 00 08 */	stw r30, 8(r1)
/* 800DAF70 000D0CF0  7C 7E 1B 78 */	mr r30, r3
/* 800DAF74 000D0CF4  80 A3 00 60 */	lwz r5, 0x60(r3)
/* 800DAF78 000D0CF8  83 E3 00 50 */	lwz r31, 0x50(r3)
/* 800DAF7C 000D0CFC  80 05 00 F0 */	lwz r0, 0xf0(r5)
/* 800DAF80 000D0D00  2C 00 00 00 */	cmpwi r0, 0
/* 800DAF84 000D0D04  40 82 00 80 */	bne lbl_800DB004
/* 800DAF88 000D0D08  80 83 00 64 */	lwz r4, 0x64(r3)
/* 800DAF8C 000D0D0C  34 04 FF FF */	addic. r0, r4, -1
/* 800DAF90 000D0D10  90 03 00 64 */	stw r0, 0x64(r3)
/* 800DAF94 000D0D14  41 81 00 70 */	bgt lbl_800DB004
/* 800DAF98 000D0D18  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 800DAF9C 000D0D1C  2C 00 00 01 */	cmpwi r0, 1
/* 800DAFA0 000D0D20  41 82 00 30 */	beq lbl_800DAFD0
/* 800DAFA4 000D0D24  40 80 00 10 */	bge lbl_800DAFB4
/* 800DAFA8 000D0D28  2C 00 00 00 */	cmpwi r0, 0
/* 800DAFAC 000D0D2C  40 80 00 14 */	bge lbl_800DAFC0
/* 800DAFB0 000D0D30  48 00 00 3C */	b lbl_800DAFEC
lbl_800DAFB4:
/* 800DAFB4 000D0D34  2C 00 00 03 */	cmpwi r0, 3
/* 800DAFB8 000D0D38  40 80 00 34 */	bge lbl_800DAFEC
/* 800DAFBC 000D0D3C  48 00 00 24 */	b lbl_800DAFE0
lbl_800DAFC0:
/* 800DAFC0 000D0D40  38 00 00 01 */	li r0, 1
/* 800DAFC4 000D0D44  3B E0 00 00 */	li r31, 0
/* 800DAFC8 000D0D48  98 03 00 6C */	stb r0, 0x6c(r3)
/* 800DAFCC 000D0D4C  48 00 00 20 */	b lbl_800DAFEC
lbl_800DAFD0:
/* 800DAFD0 000D0D50  38 00 00 00 */	li r0, 0
/* 800DAFD4 000D0D54  3B E0 00 03 */	li r31, 3
/* 800DAFD8 000D0D58  90 03 00 68 */	stw r0, 0x68(r3)
/* 800DAFDC 000D0D5C  48 00 00 10 */	b lbl_800DAFEC
lbl_800DAFE0:
/* 800DAFE0 000D0D60  38 00 00 01 */	li r0, 1
/* 800DAFE4 000D0D64  3B E0 00 03 */	li r31, 3
/* 800DAFE8 000D0D68  90 03 00 68 */	stw r0, 0x68(r3)
lbl_800DAFEC:
/* 800DAFEC 000D0D6C  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 800DAFF0 000D0D70  2C 03 00 00 */	cmpwi r3, 0
/* 800DAFF4 000D0D74  41 82 00 10 */	beq lbl_800DB004
/* 800DAFF8 000D0D78  4B F5 2F 3D */	bl gfTask$7exit
/* 800DAFFC 000D0D7C  38 00 00 00 */	li r0, 0
/* 800DB000 000D0D80  90 1E 00 5C */	stw r0, 0x5c(r30)
lbl_800DB004:
/* 800DB004 000D0D84  7F E3 FB 78 */	mr r3, r31
/* 800DB008 000D0D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB00C 000D0D8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DB010 000D0D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB014 000D0D94  7C 08 03 A6 */	mtlr r0
/* 800DB018 000D0D98  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB01C 000D0D9C  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepRemakeErrorInit
muWifiDataLoadTask$7mainStepRemakeErrorInit:
/* 800DB020 000D0DA0  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 800DB024 000D0DA4  7C 08 02 A6 */	mflr r0
/* 800DB028 000D0DA8  90 01 01 44 */	stw r0, 0x144(r1)
/* 800DB02C 000D0DAC  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 800DB030 000D0DB0  93 C1 01 38 */	stw r30, 0x138(r1)
/* 800DB034 000D0DB4  93 A1 01 34 */	stw r29, 0x134(r1)
/* 800DB038 000D0DB8  7C 7D 1B 78 */	mr r29, r3
/* 800DB03C 000D0DBC  80 03 00 68 */	lwz r0, 0x68(r3)
/* 800DB040 000D0DC0  2C 00 00 00 */	cmpwi r0, 0
/* 800DB044 000D0DC4  40 82 00 58 */	bne lbl_800DB09C
/* 800DB048 000D0DC8  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 800DB04C 000D0DCC  2C 00 00 00 */	cmpwi r0, 0
/* 800DB050 000D0DD0  40 82 01 44 */	bne lbl_800DB194
/* 800DB054 000D0DD4  38 00 00 2B */	li r0, 0x2b
/* 800DB058 000D0DD8  38 80 00 00 */	li r4, 0
/* 800DB05C 000D0DDC  90 01 00 08 */	stw r0, 8(r1)
/* 800DB060 000D0DE0  38 00 00 F0 */	li r0, 0xf0
/* 800DB064 000D0DE4  38 60 00 00 */	li r3, 0
/* 800DB068 000D0DE8  38 A0 00 2D */	li r5, 0x2d
/* 800DB06C 000D0DEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 800DB070 000D0DF0  39 20 00 00 */	li r9, 0
/* 800DB074 000D0DF4  39 40 00 2A */	li r10, 0x2a
/* 800DB078 000D0DF8  90 81 00 10 */	stw r4, 0x10(r1)
/* 800DB07C 000D0DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB080 000D0E00  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 800DB084 000D0E04  80 DD 00 40 */	lwz r6, 0x40(r29)
/* 800DB088 000D0E08  80 FD 00 44 */	lwz r7, 0x44(r29)
/* 800DB08C 000D0E0C  81 1D 00 58 */	lwz r8, 0x58(r29)
/* 800DB090 000D0E10  4B FE 3E 29 */	bl muNoticeWndTask$7create
/* 800DB094 000D0E14  90 7D 00 5C */	stw r3, 0x5c(r29)
/* 800DB098 000D0E18  48 00 00 FC */	b lbl_800DB194
lbl_800DB09C:
/* 800DB09C 000D0E1C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800DB0A0 000D0E20  38 A1 00 24 */	addi r5, r1, 0x24
/* 800DB0A4 000D0E24  38 C1 00 20 */	addi r6, r1, 0x20
/* 800DB0A8 000D0E28  38 80 00 02 */	li r4, 2
/* 800DB0AC 000D0E2C  38 E0 00 01 */	li r7, 1
/* 800DB0B0 000D0E30  4B F5 5A B9 */	bl gfSysRecorder2$7getRequire
/* 800DB0B4 000D0E34  80 1D 00 5C */	lwz r0, 0x5c(r29)
/* 800DB0B8 000D0E38  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800DB0BC 000D0E3C  2C 00 00 00 */	cmpwi r0, 0
/* 800DB0C0 000D0E40  40 82 00 D4 */	bne lbl_800DB194
/* 800DB0C4 000D0E44  38 61 00 28 */	addi r3, r1, 0x28
/* 800DB0C8 000D0E48  4B F8 F3 A9 */	bl Message$7getTagDisableStack
/* 800DB0CC 000D0E4C  7C 7F 1B 78 */	mr r31, r3
/* 800DB0D0 000D0E50  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 800DB0D4 000D0E54  38 A1 00 18 */	addi r5, r1, 0x18
/* 800DB0D8 000D0E58  38 C1 00 1C */	addi r6, r1, 0x1c
/* 800DB0DC 000D0E5C  38 80 00 2E */	li r4, 0x2e
/* 800DB0E0 000D0E60  4B F9 00 55 */	bl Message$7getPrintIndexData
/* 800DB0E4 000D0E64  38 61 00 28 */	addi r3, r1, 0x28
/* 800DB0E8 000D0E68  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800DB0EC 000D0E6C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 800DB0F0 000D0E70  7C 63 FA 14 */	add r3, r3, r31
/* 800DB0F4 000D0E74  4B F2 92 45 */	bl func_80004338
/* 800DB0F8 000D0E78  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800DB0FC 000D0E7C  7F C5 F3 78 */	mr r5, r30
/* 800DB100 000D0E80  38 61 00 28 */	addi r3, r1, 0x28
/* 800DB104 000D0E84  38 8D 9D 78 */	addi r4, r13, lbl_8059E198-_SDA_BASE_
/* 800DB108 000D0E88  7F DF 02 14 */	add r30, r31, r0
/* 800DB10C 000D0E8C  7C 63 F2 14 */	add r3, r3, r30
/* 800DB110 000D0E90  4C C6 31 82 */	crclr 6
/* 800DB114 000D0E94  48 31 D8 E9 */	bl sprintf
/* 800DB118 000D0E98  7F DE 1A 14 */	add r30, r30, r3
/* 800DB11C 000D0E9C  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 800DB120 000D0EA0  38 A1 00 18 */	addi r5, r1, 0x18
/* 800DB124 000D0EA4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 800DB128 000D0EA8  38 80 00 2F */	li r4, 0x2f
/* 800DB12C 000D0EAC  4B F9 00 09 */	bl Message$7getPrintIndexData
/* 800DB130 000D0EB0  38 61 00 28 */	addi r3, r1, 0x28
/* 800DB134 000D0EB4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800DB138 000D0EB8  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 800DB13C 000D0EBC  7C 63 F2 14 */	add r3, r3, r30
/* 800DB140 000D0EC0  4B F2 91 F9 */	bl func_80004338
/* 800DB144 000D0EC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800DB148 000D0EC8  38 81 00 28 */	addi r4, r1, 0x28
/* 800DB14C 000D0ECC  38 E0 00 00 */	li r7, 0
/* 800DB150 000D0ED0  38 C0 00 2B */	li r6, 0x2b
/* 800DB154 000D0ED4  7F DE 02 14 */	add r30, r30, r0
/* 800DB158 000D0ED8  38 00 00 F0 */	li r0, 0xf0
/* 800DB15C 000D0EDC  7C E4 F1 AE */	stbx r7, r4, r30
/* 800DB160 000D0EE0  38 BE 00 01 */	addi r5, r30, 1
/* 800DB164 000D0EE4  38 60 00 00 */	li r3, 0
/* 800DB168 000D0EE8  39 20 00 00 */	li r9, 0
/* 800DB16C 000D0EEC  90 C1 00 08 */	stw r6, 8(r1)
/* 800DB170 000D0EF0  39 40 00 2A */	li r10, 0x2a
/* 800DB174 000D0EF4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 800DB178 000D0EF8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 800DB17C 000D0EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB180 000D0F00  80 DD 00 40 */	lwz r6, 0x40(r29)
/* 800DB184 000D0F04  80 FD 00 44 */	lwz r7, 0x44(r29)
/* 800DB188 000D0F08  81 1D 00 58 */	lwz r8, 0x58(r29)
/* 800DB18C 000D0F0C  4B FE 3E BD */	bl muNoticeWndTask$7create_2532
/* 800DB190 000D0F10  90 7D 00 5C */	stw r3, 0x5c(r29)
lbl_800DB194:
/* 800DB194 000D0F14  80 01 01 44 */	lwz r0, 0x144(r1)
/* 800DB198 000D0F18  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 800DB19C 000D0F1C  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 800DB1A0 000D0F20  83 A1 01 34 */	lwz r29, 0x134(r1)
/* 800DB1A4 000D0F24  7C 08 03 A6 */	mtlr r0
/* 800DB1A8 000D0F28  38 21 01 40 */	addi r1, r1, 0x140
/* 800DB1AC 000D0F2C  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepRemakeErrorMain
muWifiDataLoadTask$7mainStepRemakeErrorMain:
/* 800DB1B0 000D0F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB1B4 000D0F34  7C 08 02 A6 */	mflr r0
/* 800DB1B8 000D0F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB1BC 000D0F3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DB1C0 000D0F40  7C 7F 1B 78 */	mr r31, r3
/* 800DB1C4 000D0F44  80 A3 00 5C */	lwz r5, 0x5c(r3)
/* 800DB1C8 000D0F48  2C 05 00 00 */	cmpwi r5, 0
/* 800DB1CC 000D0F4C  40 82 00 0C */	bne lbl_800DB1D8
/* 800DB1D0 000D0F50  38 80 00 00 */	li r4, 0
/* 800DB1D4 000D0F54  48 00 00 2C */	b lbl_800DB200
lbl_800DB1D8:
/* 800DB1D8 000D0F58  80 05 01 04 */	lwz r0, 0x104(r5)
/* 800DB1DC 000D0F5C  2C 00 00 03 */	cmpwi r0, 3
/* 800DB1E0 000D0F60  41 82 00 0C */	beq lbl_800DB1EC
/* 800DB1E4 000D0F64  38 80 00 01 */	li r4, 1
/* 800DB1E8 000D0F68  48 00 00 18 */	b lbl_800DB200
lbl_800DB1EC:
/* 800DB1EC 000D0F6C  88 05 01 00 */	lbz r0, 0x100(r5)
/* 800DB1F0 000D0F70  38 80 00 03 */	li r4, 3
/* 800DB1F4 000D0F74  2C 00 00 00 */	cmpwi r0, 0
/* 800DB1F8 000D0F78  41 82 00 08 */	beq lbl_800DB200
/* 800DB1FC 000D0F7C  38 80 00 02 */	li r4, 2
lbl_800DB200:
/* 800DB200 000D0F80  2C 04 00 01 */	cmpwi r4, 1
/* 800DB204 000D0F84  41 82 00 2C */	beq lbl_800DB230
/* 800DB208 000D0F88  2C 05 00 00 */	cmpwi r5, 0
/* 800DB20C 000D0F8C  41 82 00 14 */	beq lbl_800DB220
/* 800DB210 000D0F90  7C A3 2B 78 */	mr r3, r5
/* 800DB214 000D0F94  4B F5 2D 21 */	bl gfTask$7exit
/* 800DB218 000D0F98  38 00 00 00 */	li r0, 0
/* 800DB21C 000D0F9C  90 1F 00 5C */	stw r0, 0x5c(r31)
lbl_800DB220:
/* 800DB220 000D0FA0  38 00 00 01 */	li r0, 1
/* 800DB224 000D0FA4  38 60 00 04 */	li r3, 4
/* 800DB228 000D0FA8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800DB22C 000D0FAC  48 00 00 08 */	b lbl_800DB234
lbl_800DB230:
/* 800DB230 000D0FB0  80 63 00 50 */	lwz r3, 0x50(r3)
lbl_800DB234:
/* 800DB234 000D0FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB238 000D0FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB23C 000D0FBC  7C 08 03 A6 */	mtlr r0
/* 800DB240 000D0FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB244 000D0FC4  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepDoneInit
muWifiDataLoadTask$7mainStepDoneInit:
/* 800DB248 000D0FC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DB24C 000D0FCC  7C 08 02 A6 */	mflr r0
/* 800DB250 000D0FD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DB254 000D0FD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DB258 000D0FD8  7C 7F 1B 78 */	mr r31, r3
/* 800DB25C 000D0FDC  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 800DB260 000D0FE0  2C 00 00 00 */	cmpwi r0, 0
/* 800DB264 000D0FE4  40 82 00 58 */	bne lbl_800DB2BC
/* 800DB268 000D0FE8  38 00 00 2B */	li r0, 0x2b
/* 800DB26C 000D0FEC  38 80 00 00 */	li r4, 0
/* 800DB270 000D0FF0  90 01 00 08 */	stw r0, 8(r1)
/* 800DB274 000D0FF4  38 00 00 F0 */	li r0, 0xf0
/* 800DB278 000D0FF8  38 60 00 00 */	li r3, 0
/* 800DB27C 000D0FFC  38 A0 00 31 */	li r5, 0x31
/* 800DB280 000D1000  90 81 00 0C */	stw r4, 0xc(r1)
/* 800DB284 000D1004  90 81 00 10 */	stw r4, 0x10(r1)
/* 800DB288 000D1008  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB28C 000D100C  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 800DB290 000D1010  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 800DB294 000D1014  2C 00 00 00 */	cmpwi r0, 0
/* 800DB298 000D1018  40 82 00 08 */	bne lbl_800DB2A0
/* 800DB29C 000D101C  38 A0 00 46 */	li r5, 0x46
lbl_800DB2A0:
/* 800DB2A0 000D1020  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 800DB2A4 000D1024  39 20 00 00 */	li r9, 0
/* 800DB2A8 000D1028  80 FF 00 44 */	lwz r7, 0x44(r31)
/* 800DB2AC 000D102C  39 40 00 2A */	li r10, 0x2a
/* 800DB2B0 000D1030  81 1F 00 58 */	lwz r8, 0x58(r31)
/* 800DB2B4 000D1034  4B FE 3C 05 */	bl muNoticeWndTask$7create
/* 800DB2B8 000D1038  90 7F 00 5C */	stw r3, 0x5c(r31)
lbl_800DB2BC:
/* 800DB2BC 000D103C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DB2C0 000D1040  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DB2C4 000D1044  7C 08 03 A6 */	mtlr r0
/* 800DB2C8 000D1048  38 21 00 20 */	addi r1, r1, 0x20
/* 800DB2CC 000D104C  4E 80 00 20 */	blr 

.global muWifiDataLoadTask$7mainStepDoneMain
muWifiDataLoadTask$7mainStepDoneMain:
/* 800DB2D0 000D1050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB2D4 000D1054  7C 08 02 A6 */	mflr r0
/* 800DB2D8 000D1058  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB2DC 000D105C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DB2E0 000D1060  7C 7F 1B 78 */	mr r31, r3
/* 800DB2E4 000D1064  80 A3 00 5C */	lwz r5, 0x5c(r3)
/* 800DB2E8 000D1068  2C 05 00 00 */	cmpwi r5, 0
/* 800DB2EC 000D106C  40 82 00 0C */	bne lbl_800DB2F8
/* 800DB2F0 000D1070  38 80 00 00 */	li r4, 0
/* 800DB2F4 000D1074  48 00 00 2C */	b lbl_800DB320
lbl_800DB2F8:
/* 800DB2F8 000D1078  80 05 01 04 */	lwz r0, 0x104(r5)
/* 800DB2FC 000D107C  2C 00 00 03 */	cmpwi r0, 3
/* 800DB300 000D1080  41 82 00 0C */	beq lbl_800DB30C
/* 800DB304 000D1084  38 80 00 01 */	li r4, 1
/* 800DB308 000D1088  48 00 00 18 */	b lbl_800DB320
lbl_800DB30C:
/* 800DB30C 000D108C  88 05 01 00 */	lbz r0, 0x100(r5)
/* 800DB310 000D1090  38 80 00 03 */	li r4, 3
/* 800DB314 000D1094  2C 00 00 00 */	cmpwi r0, 0
/* 800DB318 000D1098  41 82 00 08 */	beq lbl_800DB320
/* 800DB31C 000D109C  38 80 00 02 */	li r4, 2
lbl_800DB320:
/* 800DB320 000D10A0  2C 04 00 01 */	cmpwi r4, 1
/* 800DB324 000D10A4  41 82 00 24 */	beq lbl_800DB348
/* 800DB328 000D10A8  2C 05 00 00 */	cmpwi r5, 0
/* 800DB32C 000D10AC  41 82 00 14 */	beq lbl_800DB340
/* 800DB330 000D10B0  7C A3 2B 78 */	mr r3, r5
/* 800DB334 000D10B4  4B F5 2C 01 */	bl gfTask$7exit
/* 800DB338 000D10B8  38 00 00 00 */	li r0, 0
/* 800DB33C 000D10BC  90 1F 00 5C */	stw r0, 0x5c(r31)
lbl_800DB340:
/* 800DB340 000D10C0  38 60 00 05 */	li r3, 5
/* 800DB344 000D10C4  48 00 00 08 */	b lbl_800DB34C
lbl_800DB348:
/* 800DB348 000D10C8  80 63 00 50 */	lwz r3, 0x50(r3)
lbl_800DB34C:
/* 800DB34C 000D10CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB350 000D10D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB354 000D10D4  7C 08 03 A6 */	mtlr r0
/* 800DB358 000D10D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB35C 000D10DC  4E 80 00 20 */	blr 
