.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global RFLGetWorkSize
RFLGetWorkSize:
/* 803CCAA4 003C2824  2C 03 00 00 */	cmpwi r3, 0
/* 803CCAA8 003C2828  3C 60 00 05 */	lis r3, 0x0004CF20@ha
/* 803CCAAC 003C282C  38 63 CF 20 */	addi r3, r3, 0x0004CF20@l
/* 803CCAB0 003C2830  4D 82 00 20 */	beqlr 
/* 803CCAB4 003C2834  3C 60 00 06 */	lis r3, 0x00065F20@ha
/* 803CCAB8 003C2838  38 63 5F 20 */	addi r3, r3, 0x00065F20@l
/* 803CCABC 003C283C  4E 80 00 20 */	blr 

.global RFLInitResAsync
RFLInitResAsync:
/* 803CCAC0 003C2840  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CCAC4 003C2844  7C 08 02 A6 */	mflr r0
/* 803CCAC8 003C2848  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CCACC 003C284C  39 61 00 30 */	addi r11, r1, 0x30
/* 803CCAD0 003C2850  48 02 48 51 */	bl _savegpr_27
/* 803CCAD4 003C2854  2C 04 00 00 */	cmpwi r4, 0
/* 803CCAD8 003C2858  7C 7B 1B 78 */	mr r27, r3
/* 803CCADC 003C285C  7C 9D 23 78 */	mr r29, r4
/* 803CCAE0 003C2860  7C BE 2B 78 */	mr r30, r5
/* 803CCAE4 003C2864  7C DF 33 78 */	mr r31, r6
/* 803CCAE8 003C2868  40 82 00 0C */	bne lbl_803CCAF4
/* 803CCAEC 003C286C  38 60 00 05 */	li r3, 5
/* 803CCAF0 003C2870  48 00 03 14 */	b lbl_803CCE04
lbl_803CCAF4:
/* 803CCAF4 003C2874  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCAF8 003C2878  2C 00 00 00 */	cmpwi r0, 0
/* 803CCAFC 003C287C  40 82 03 00 */	bne lbl_803CCDFC
/* 803CCB00 003C2880  2C 06 00 00 */	cmpwi r6, 0
/* 803CCB04 003C2884  3C 80 00 05 */	lis r4, 0x0004B000@ha
/* 803CCB08 003C2888  38 A4 B0 00 */	addi r5, r4, 0x0004B000@l
/* 803CCB0C 003C288C  38 80 00 00 */	li r4, 0
/* 803CCB10 003C2890  41 82 00 0C */	beq lbl_803CCB1C
/* 803CCB14 003C2894  3C A0 00 06 */	lis r5, 0x00064000@ha
/* 803CCB18 003C2898  38 A5 40 00 */	addi r5, r5, 0x00064000@l
lbl_803CCB1C:
/* 803CCB1C 003C289C  4B C3 79 21 */	bl memset
/* 803CCB20 003C28A0  38 A0 00 00 */	li r5, 0
/* 803CCB24 003C28A4  38 80 00 01 */	li r4, 1
/* 803CCB28 003C28A8  93 6D CE 30 */	stw r27, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCB2C 003C28AC  2C 1F 00 00 */	cmpwi r31, 0
/* 803CCB30 003C28B0  38 1B 1F 20 */	addi r0, r27, 0x1f20
/* 803CCB34 003C28B4  3C 60 00 05 */	lis r3, 0x000490E0@ha
/* 803CCB38 003C28B8  90 8D BA 80 */	stw r4, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CCB3C 003C28BC  38 83 90 E0 */	addi r4, r3, 0x000490E0@l
/* 803CCB40 003C28C0  90 AD CE 34 */	stw r5, lbl_805A1254-_SDA_BASE_(r13)
/* 803CCB44 003C28C4  98 AD CE 38 */	stb r5, lbl_805A1258-_SDA_BASE_(r13)
/* 803CCB48 003C28C8  90 1B 00 00 */	stw r0, 0(r27)
/* 803CCB4C 003C28CC  41 82 00 0C */	beq lbl_803CCB58
/* 803CCB50 003C28D0  3C 60 00 06 */	lis r3, 0x000620E0@ha
/* 803CCB54 003C28D4  38 83 20 E0 */	addi r4, r3, 0x000620E0@l
lbl_803CCB58:
/* 803CCB58 003C28D8  83 6D CE 30 */	lwz r27, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCB5C 003C28DC  38 A0 00 01 */	li r5, 1
/* 803CCB60 003C28E0  80 7B 00 00 */	lwz r3, 0(r27)
/* 803CCB64 003C28E4  4B E3 7B 25 */	bl MEMCreateExpHeapEx
/* 803CCB68 003C28E8  90 7B 00 04 */	stw r3, 4(r27)
/* 803CCB6C 003C28EC  3F 80 00 02 */	lis r28, 0x00024800@ha
/* 803CCB70 003C28F0  38 9C 48 00 */	addi r4, r28, 0x00024800@l
/* 803CCB74 003C28F4  38 A0 00 20 */	li r5, 0x20
/* 803CCB78 003C28F8  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCB7C 003C28FC  80 63 00 04 */	lwz r3, 4(r3)
/* 803CCB80 003C2900  4B E3 7B E9 */	bl MEMAllocFromExpHeapEx
/* 803CCB84 003C2904  83 6D CE 30 */	lwz r27, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCB88 003C2908  38 9C 48 00 */	addi r4, r28, 0x4800
/* 803CCB8C 003C290C  38 A0 00 01 */	li r5, 1
/* 803CCB90 003C2910  4B E3 7A F9 */	bl MEMCreateExpHeapEx
/* 803CCB94 003C2914  90 7B 00 08 */	stw r3, 8(r27)
/* 803CCB98 003C2918  38 80 00 04 */	li r4, 4
/* 803CCB9C 003C291C  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCBA0 003C2920  80 63 00 04 */	lwz r3, 4(r3)
/* 803CCBA4 003C2924  4B E3 7D 41 */	bl MEMGetAllocatableSizeForExpHeapEx
/* 803CCBA8 003C2928  80 CD CE 30 */	lwz r6, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCBAC 003C292C  7C 7B 1B 78 */	mr r27, r3
/* 803CCBB0 003C2930  7F 64 DB 78 */	mr r4, r27
/* 803CCBB4 003C2934  38 A0 00 08 */	li r5, 8
/* 803CCBB8 003C2938  80 66 00 04 */	lwz r3, 4(r6)
/* 803CCBBC 003C293C  4B E3 7B AD */	bl MEMAllocFromExpHeapEx
/* 803CCBC0 003C2940  83 8D CE 30 */	lwz r28, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCBC4 003C2944  7F 64 DB 78 */	mr r4, r27
/* 803CCBC8 003C2948  38 A0 00 01 */	li r5, 1
/* 803CCBCC 003C294C  4B E3 7A BD */	bl MEMCreateExpHeapEx
/* 803CCBD0 003C2950  90 7C 00 0C */	stw r3, 0xc(r28)
/* 803CCBD4 003C2954  38 00 00 00 */	li r0, 0
/* 803CCBD8 003C2958  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCBDC 003C295C  90 03 1B 40 */	stw r0, 0x1b40(r3)
/* 803CCBE0 003C2960  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCBE4 003C2964  90 03 1B 44 */	stw r0, 0x1b44(r3)
/* 803CCBE8 003C2968  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCBEC 003C296C  90 03 1B 48 */	stw r0, 0x1b48(r3)
/* 803CCBF0 003C2970  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCBF4 003C2974  90 03 1B 4C */	stw r0, 0x1b4c(r3)
/* 803CCBF8 003C2978  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCBFC 003C297C  93 E3 1B 38 */	stw r31, 0x1b38(r3)
/* 803CCC00 003C2980  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCC04 003C2984  98 03 1B 3C */	stb r0, 0x1b3c(r3)
/* 803CCC08 003C2988  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCC0C 003C298C  90 03 1B 34 */	stw r0, 0x1b34(r3)
/* 803CCC10 003C2990  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCC14 003C2994  80 63 00 08 */	lwz r3, 8(r3)
/* 803CCC18 003C2998  48 00 7C 65 */	bl RFLiInitDatabase
/* 803CCC1C 003C299C  48 00 08 69 */	bl RFLiInitLoader
/* 803CCC20 003C29A0  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCC24 003C29A4  80 63 00 08 */	lwz r3, 8(r3)
/* 803CCC28 003C29A8  48 00 89 AD */	bl RFLiInitCtrlBuf
/* 803CCC2C 003C29AC  48 00 7C 1D */	bl RFLiInitHiddenDatabase
/* 803CCC30 003C29B0  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCC34 003C29B4  80 63 00 08 */	lwz r3, 8(r3)
/* 803CCC38 003C29B8  48 00 18 79 */	bl RFLiInitAccessInfo
/* 803CCC3C 003C29BC  2C 1D 00 00 */	cmpwi r29, 0
/* 803CCC40 003C29C0  41 82 00 2C */	beq lbl_803CCC6C
/* 803CCC44 003C29C4  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCC48 003C29C8  2C 03 00 00 */	cmpwi r3, 0
/* 803CCC4C 003C29CC  41 82 00 0C */	beq lbl_803CCC58
/* 803CCC50 003C29D0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 803CCC54 003C29D4  48 00 00 08 */	b lbl_803CCC5C
lbl_803CCC58:
/* 803CCC58 003C29D8  38 60 00 00 */	li r3, 0
lbl_803CCC5C:
/* 803CCC5C 003C29DC  38 00 00 01 */	li r0, 1
/* 803CCC60 003C29E0  90 03 00 98 */	stw r0, 0x98(r3)
/* 803CCC64 003C29E4  93 C3 00 90 */	stw r30, 0x90(r3)
/* 803CCC68 003C29E8  93 A3 00 94 */	stw r29, 0x94(r3)
lbl_803CCC6C:
/* 803CCC6C 003C29EC  3C 60 80 3D */	lis r3, bootloadDB2Res_@ha
/* 803CCC70 003C29F0  38 63 D0 44 */	addi r3, r3, bootloadDB2Res_@l
/* 803CCC74 003C29F4  48 00 7F 65 */	bl RFLiBootLoadDatabaseAsync
/* 803CCC78 003C29F8  2C 03 00 06 */	cmpwi r3, 6
/* 803CCC7C 003C29FC  7C 7F 1B 78 */	mr r31, r3
/* 803CCC80 003C2A00  41 82 01 80 */	beq lbl_803CCE00
/* 803CCC84 003C2A04  2C 03 00 00 */	cmpwi r3, 0
/* 803CCC88 003C2A08  41 82 01 78 */	beq lbl_803CCE00
/* 803CCC8C 003C2A0C  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCC90 003C2A10  2C 00 00 00 */	cmpwi r0, 0
/* 803CCC94 003C2A14  41 82 01 6C */	beq lbl_803CCE00
lbl_803CCC98:
/* 803CCC98 003C2A18  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCC9C 003C2A1C  2C 00 00 00 */	cmpwi r0, 0
/* 803CCCA0 003C2A20  40 82 00 0C */	bne lbl_803CCCAC
/* 803CCCA4 003C2A24  80 0D BA 80 */	lwz r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CCCA8 003C2A28  48 00 00 5C */	b lbl_803CCD04
lbl_803CCCAC:
/* 803CCCAC 003C2A2C  48 00 18 C5 */	bl RFLiIsWorking
/* 803CCCB0 003C2A30  2C 03 00 00 */	cmpwi r3, 0
/* 803CCCB4 003C2A34  41 82 00 0C */	beq lbl_803CCCC0
/* 803CCCB8 003C2A38  38 00 00 06 */	li r0, 6
/* 803CCCBC 003C2A3C  48 00 00 48 */	b lbl_803CCD04
lbl_803CCCC0:
/* 803CCCC0 003C2A40  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCCC4 003C2A44  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CCCC8 003C2A48  2C 05 00 00 */	cmpwi r5, 0
/* 803CCCCC 003C2A4C  41 82 00 08 */	beq lbl_803CCCD4
/* 803CCCD0 003C2A50  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CCCD4:
/* 803CCCD4 003C2A54  88 83 00 00 */	lbz r4, 0(r3)
/* 803CCCD8 003C2A58  38 60 00 01 */	li r3, 1
/* 803CCCDC 003C2A5C  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CCCE0 003C2A60  40 82 00 10 */	bne lbl_803CCCF0
/* 803CCCE4 003C2A64  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CCCE8 003C2A68  40 82 00 08 */	bne lbl_803CCCF0
/* 803CCCEC 003C2A6C  38 60 00 00 */	li r3, 0
lbl_803CCCF0:
/* 803CCCF0 003C2A70  2C 03 00 00 */	cmpwi r3, 0
/* 803CCCF4 003C2A74  41 82 00 0C */	beq lbl_803CCD00
/* 803CCCF8 003C2A78  38 00 00 05 */	li r0, 5
/* 803CCCFC 003C2A7C  48 00 00 08 */	b lbl_803CCD04
lbl_803CCD00:
/* 803CCD00 003C2A80  80 05 1B 40 */	lwz r0, 0x1b40(r5)
lbl_803CCD04:
/* 803CCD04 003C2A84  90 01 00 08 */	stw r0, 8(r1)
/* 803CCD08 003C2A88  80 01 00 08 */	lwz r0, 8(r1)
/* 803CCD0C 003C2A8C  2C 00 00 06 */	cmpwi r0, 6
/* 803CCD10 003C2A90  41 82 FF 88 */	beq lbl_803CCC98
/* 803CCD14 003C2A94  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCD18 003C2A98  80 61 00 08 */	lwz r3, 8(r1)
/* 803CCD1C 003C2A9C  2C 00 00 00 */	cmpwi r0, 0
/* 803CCD20 003C2AA0  40 82 00 0C */	bne lbl_803CCD2C
/* 803CCD24 003C2AA4  80 0D BA 80 */	lwz r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CCD28 003C2AA8  48 00 00 5C */	b lbl_803CCD84
lbl_803CCD2C:
/* 803CCD2C 003C2AAC  48 00 18 45 */	bl RFLiIsWorking
/* 803CCD30 003C2AB0  2C 03 00 00 */	cmpwi r3, 0
/* 803CCD34 003C2AB4  41 82 00 0C */	beq lbl_803CCD40
/* 803CCD38 003C2AB8  38 00 00 06 */	li r0, 6
/* 803CCD3C 003C2ABC  48 00 00 48 */	b lbl_803CCD84
lbl_803CCD40:
/* 803CCD40 003C2AC0  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCD44 003C2AC4  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CCD48 003C2AC8  2C 05 00 00 */	cmpwi r5, 0
/* 803CCD4C 003C2ACC  41 82 00 08 */	beq lbl_803CCD54
/* 803CCD50 003C2AD0  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CCD54:
/* 803CCD54 003C2AD4  88 83 00 00 */	lbz r4, 0(r3)
/* 803CCD58 003C2AD8  38 60 00 01 */	li r3, 1
/* 803CCD5C 003C2ADC  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CCD60 003C2AE0  40 82 00 10 */	bne lbl_803CCD70
/* 803CCD64 003C2AE4  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CCD68 003C2AE8  40 82 00 08 */	bne lbl_803CCD70
/* 803CCD6C 003C2AEC  38 60 00 00 */	li r3, 0
lbl_803CCD70:
/* 803CCD70 003C2AF0  2C 03 00 00 */	cmpwi r3, 0
/* 803CCD74 003C2AF4  41 82 00 0C */	beq lbl_803CCD80
/* 803CCD78 003C2AF8  38 00 00 05 */	li r0, 5
/* 803CCD7C 003C2AFC  48 00 00 08 */	b lbl_803CCD84
lbl_803CCD80:
/* 803CCD80 003C2B00  80 05 1B 40 */	lwz r0, 0x1b40(r5)
lbl_803CCD84:
/* 803CCD84 003C2B04  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCD88 003C2B08  90 0D BA 80 */	stw r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CCD8C 003C2B0C  2C 03 00 00 */	cmpwi r3, 0
/* 803CCD90 003C2B10  41 82 00 18 */	beq lbl_803CCDA8
/* 803CCD94 003C2B14  41 82 00 0C */	beq lbl_803CCDA0
/* 803CCD98 003C2B18  80 03 1B 48 */	lwz r0, 0x1b48(r3)
/* 803CCD9C 003C2B1C  48 00 00 10 */	b lbl_803CCDAC
lbl_803CCDA0:
/* 803CCDA0 003C2B20  38 00 00 00 */	li r0, 0
/* 803CCDA4 003C2B24  48 00 00 08 */	b lbl_803CCDAC
lbl_803CCDA8:
/* 803CCDA8 003C2B28  80 0D CE 34 */	lwz r0, lbl_805A1254-_SDA_BASE_(r13)
lbl_803CCDAC:
/* 803CCDAC 003C2B2C  90 0D CE 34 */	stw r0, lbl_805A1254-_SDA_BASE_(r13)
/* 803CCDB0 003C2B30  88 03 1B 3C */	lbz r0, 0x1b3c(r3)
/* 803CCDB4 003C2B34  98 0D CE 38 */	stb r0, lbl_805A1258-_SDA_BASE_(r13)
/* 803CCDB8 003C2B38  48 00 16 B1 */	bl RFLIsResourceCached
/* 803CCDBC 003C2B3C  2C 03 00 00 */	cmpwi r3, 0
/* 803CCDC0 003C2B40  41 82 00 08 */	beq lbl_803CCDC8
/* 803CCDC4 003C2B44  48 00 16 39 */	bl RFLFreeCachedResource
lbl_803CCDC8:
/* 803CCDC8 003C2B48  48 00 17 65 */	bl RFLiExitAccessInfo
/* 803CCDCC 003C2B4C  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCDD0 003C2B50  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803CCDD4 003C2B54  4B E3 79 65 */	bl MEMDestroyExpHeap
/* 803CCDD8 003C2B58  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCDDC 003C2B5C  80 63 00 08 */	lwz r3, 8(r3)
/* 803CCDE0 003C2B60  4B E3 79 59 */	bl MEMDestroyExpHeap
/* 803CCDE4 003C2B64  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCDE8 003C2B68  80 63 00 04 */	lwz r3, 4(r3)
/* 803CCDEC 003C2B6C  4B E3 79 4D */	bl MEMDestroyExpHeap
/* 803CCDF0 003C2B70  38 00 00 00 */	li r0, 0
/* 803CCDF4 003C2B74  90 0D CE 30 */	stw r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCDF8 003C2B78  48 00 00 08 */	b lbl_803CCE00
lbl_803CCDFC:
/* 803CCDFC 003C2B7C  3B E0 00 00 */	li r31, 0
lbl_803CCE00:
/* 803CCE00 003C2B80  7F E3 FB 78 */	mr r3, r31
lbl_803CCE04:
/* 803CCE04 003C2B84  39 61 00 30 */	addi r11, r1, 0x30
/* 803CCE08 003C2B88  48 02 45 65 */	bl _restgpr_27
/* 803CCE0C 003C2B8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CCE10 003C2B90  7C 08 03 A6 */	mtlr r0
/* 803CCE14 003C2B94  38 21 00 30 */	addi r1, r1, 0x30
/* 803CCE18 003C2B98  4E 80 00 20 */	blr 

.global RFLInitRes
RFLInitRes:
/* 803CCE1C 003C2B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CCE20 003C2BA0  7C 08 02 A6 */	mflr r0
/* 803CCE24 003C2BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CCE28 003C2BA8  4B FF FC 99 */	bl RFLInitResAsync
lbl_803CCE2C:
/* 803CCE2C 003C2BAC  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCE30 003C2BB0  2C 00 00 00 */	cmpwi r0, 0
/* 803CCE34 003C2BB4  40 82 00 0C */	bne lbl_803CCE40
/* 803CCE38 003C2BB8  80 0D BA 80 */	lwz r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CCE3C 003C2BBC  48 00 00 5C */	b lbl_803CCE98
lbl_803CCE40:
/* 803CCE40 003C2BC0  48 00 17 31 */	bl RFLiIsWorking
/* 803CCE44 003C2BC4  2C 03 00 00 */	cmpwi r3, 0
/* 803CCE48 003C2BC8  41 82 00 0C */	beq lbl_803CCE54
/* 803CCE4C 003C2BCC  38 00 00 06 */	li r0, 6
/* 803CCE50 003C2BD0  48 00 00 48 */	b lbl_803CCE98
lbl_803CCE54:
/* 803CCE54 003C2BD4  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCE58 003C2BD8  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CCE5C 003C2BDC  2C 05 00 00 */	cmpwi r5, 0
/* 803CCE60 003C2BE0  41 82 00 08 */	beq lbl_803CCE68
/* 803CCE64 003C2BE4  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CCE68:
/* 803CCE68 003C2BE8  88 83 00 00 */	lbz r4, 0(r3)
/* 803CCE6C 003C2BEC  38 60 00 01 */	li r3, 1
/* 803CCE70 003C2BF0  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CCE74 003C2BF4  40 82 00 10 */	bne lbl_803CCE84
/* 803CCE78 003C2BF8  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CCE7C 003C2BFC  40 82 00 08 */	bne lbl_803CCE84
/* 803CCE80 003C2C00  38 60 00 00 */	li r3, 0
lbl_803CCE84:
/* 803CCE84 003C2C04  2C 03 00 00 */	cmpwi r3, 0
/* 803CCE88 003C2C08  41 82 00 0C */	beq lbl_803CCE94
/* 803CCE8C 003C2C0C  38 00 00 05 */	li r0, 5
/* 803CCE90 003C2C10  48 00 00 08 */	b lbl_803CCE98
lbl_803CCE94:
/* 803CCE94 003C2C14  80 05 1B 40 */	lwz r0, 0x1b40(r5)
lbl_803CCE98:
/* 803CCE98 003C2C18  90 01 00 08 */	stw r0, 8(r1)
/* 803CCE9C 003C2C1C  80 01 00 08 */	lwz r0, 8(r1)
/* 803CCEA0 003C2C20  2C 00 00 06 */	cmpwi r0, 6
/* 803CCEA4 003C2C24  41 82 FF 88 */	beq lbl_803CCE2C
/* 803CCEA8 003C2C28  80 61 00 08 */	lwz r3, 8(r1)
/* 803CCEAC 003C2C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CCEB0 003C2C30  7C 08 03 A6 */	mtlr r0
/* 803CCEB4 003C2C34  38 21 00 10 */	addi r1, r1, 0x10
/* 803CCEB8 003C2C38  4E 80 00 20 */	blr 

.global RFLExit
RFLExit:
/* 803CCEBC 003C2C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CCEC0 003C2C40  7C 08 02 A6 */	mflr r0
/* 803CCEC4 003C2C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CCEC8 003C2C48  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCECC 003C2C4C  2C 00 00 00 */	cmpwi r0, 0
/* 803CCED0 003C2C50  41 82 01 64 */	beq lbl_803CD034
lbl_803CCED4:
/* 803CCED4 003C2C54  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCED8 003C2C58  2C 00 00 00 */	cmpwi r0, 0
/* 803CCEDC 003C2C5C  40 82 00 0C */	bne lbl_803CCEE8
/* 803CCEE0 003C2C60  80 0D BA 80 */	lwz r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CCEE4 003C2C64  48 00 00 5C */	b lbl_803CCF40
lbl_803CCEE8:
/* 803CCEE8 003C2C68  48 00 16 89 */	bl RFLiIsWorking
/* 803CCEEC 003C2C6C  2C 03 00 00 */	cmpwi r3, 0
/* 803CCEF0 003C2C70  41 82 00 0C */	beq lbl_803CCEFC
/* 803CCEF4 003C2C74  38 00 00 06 */	li r0, 6
/* 803CCEF8 003C2C78  48 00 00 48 */	b lbl_803CCF40
lbl_803CCEFC:
/* 803CCEFC 003C2C7C  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCF00 003C2C80  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CCF04 003C2C84  2C 05 00 00 */	cmpwi r5, 0
/* 803CCF08 003C2C88  41 82 00 08 */	beq lbl_803CCF10
/* 803CCF0C 003C2C8C  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CCF10:
/* 803CCF10 003C2C90  88 83 00 00 */	lbz r4, 0(r3)
/* 803CCF14 003C2C94  38 60 00 01 */	li r3, 1
/* 803CCF18 003C2C98  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CCF1C 003C2C9C  40 82 00 10 */	bne lbl_803CCF2C
/* 803CCF20 003C2CA0  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CCF24 003C2CA4  40 82 00 08 */	bne lbl_803CCF2C
/* 803CCF28 003C2CA8  38 60 00 00 */	li r3, 0
lbl_803CCF2C:
/* 803CCF2C 003C2CAC  2C 03 00 00 */	cmpwi r3, 0
/* 803CCF30 003C2CB0  41 82 00 0C */	beq lbl_803CCF3C
/* 803CCF34 003C2CB4  38 00 00 05 */	li r0, 5
/* 803CCF38 003C2CB8  48 00 00 08 */	b lbl_803CCF40
lbl_803CCF3C:
/* 803CCF3C 003C2CBC  80 05 1B 40 */	lwz r0, 0x1b40(r5)
lbl_803CCF40:
/* 803CCF40 003C2CC0  90 01 00 08 */	stw r0, 8(r1)
/* 803CCF44 003C2CC4  80 01 00 08 */	lwz r0, 8(r1)
/* 803CCF48 003C2CC8  2C 00 00 06 */	cmpwi r0, 6
/* 803CCF4C 003C2CCC  41 82 FF 88 */	beq lbl_803CCED4
/* 803CCF50 003C2CD0  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCF54 003C2CD4  80 61 00 08 */	lwz r3, 8(r1)
/* 803CCF58 003C2CD8  2C 00 00 00 */	cmpwi r0, 0
/* 803CCF5C 003C2CDC  40 82 00 0C */	bne lbl_803CCF68
/* 803CCF60 003C2CE0  80 0D BA 80 */	lwz r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CCF64 003C2CE4  48 00 00 5C */	b lbl_803CCFC0
lbl_803CCF68:
/* 803CCF68 003C2CE8  48 00 16 09 */	bl RFLiIsWorking
/* 803CCF6C 003C2CEC  2C 03 00 00 */	cmpwi r3, 0
/* 803CCF70 003C2CF0  41 82 00 0C */	beq lbl_803CCF7C
/* 803CCF74 003C2CF4  38 00 00 06 */	li r0, 6
/* 803CCF78 003C2CF8  48 00 00 48 */	b lbl_803CCFC0
lbl_803CCF7C:
/* 803CCF7C 003C2CFC  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCF80 003C2D00  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CCF84 003C2D04  2C 05 00 00 */	cmpwi r5, 0
/* 803CCF88 003C2D08  41 82 00 08 */	beq lbl_803CCF90
/* 803CCF8C 003C2D0C  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CCF90:
/* 803CCF90 003C2D10  88 83 00 00 */	lbz r4, 0(r3)
/* 803CCF94 003C2D14  38 60 00 01 */	li r3, 1
/* 803CCF98 003C2D18  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CCF9C 003C2D1C  40 82 00 10 */	bne lbl_803CCFAC
/* 803CCFA0 003C2D20  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CCFA4 003C2D24  40 82 00 08 */	bne lbl_803CCFAC
/* 803CCFA8 003C2D28  38 60 00 00 */	li r3, 0
lbl_803CCFAC:
/* 803CCFAC 003C2D2C  2C 03 00 00 */	cmpwi r3, 0
/* 803CCFB0 003C2D30  41 82 00 0C */	beq lbl_803CCFBC
/* 803CCFB4 003C2D34  38 00 00 05 */	li r0, 5
/* 803CCFB8 003C2D38  48 00 00 08 */	b lbl_803CCFC0
lbl_803CCFBC:
/* 803CCFBC 003C2D3C  80 05 1B 40 */	lwz r0, 0x1b40(r5)
lbl_803CCFC0:
/* 803CCFC0 003C2D40  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CCFC4 003C2D44  90 0D BA 80 */	stw r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CCFC8 003C2D48  2C 03 00 00 */	cmpwi r3, 0
/* 803CCFCC 003C2D4C  41 82 00 18 */	beq lbl_803CCFE4
/* 803CCFD0 003C2D50  41 82 00 0C */	beq lbl_803CCFDC
/* 803CCFD4 003C2D54  80 03 1B 48 */	lwz r0, 0x1b48(r3)
/* 803CCFD8 003C2D58  48 00 00 10 */	b lbl_803CCFE8
lbl_803CCFDC:
/* 803CCFDC 003C2D5C  38 00 00 00 */	li r0, 0
/* 803CCFE0 003C2D60  48 00 00 08 */	b lbl_803CCFE8
lbl_803CCFE4:
/* 803CCFE4 003C2D64  80 0D CE 34 */	lwz r0, lbl_805A1254-_SDA_BASE_(r13)
lbl_803CCFE8:
/* 803CCFE8 003C2D68  90 0D CE 34 */	stw r0, lbl_805A1254-_SDA_BASE_(r13)
/* 803CCFEC 003C2D6C  88 03 1B 3C */	lbz r0, 0x1b3c(r3)
/* 803CCFF0 003C2D70  98 0D CE 38 */	stb r0, lbl_805A1258-_SDA_BASE_(r13)
/* 803CCFF4 003C2D74  48 00 14 75 */	bl RFLIsResourceCached
/* 803CCFF8 003C2D78  2C 03 00 00 */	cmpwi r3, 0
/* 803CCFFC 003C2D7C  41 82 00 08 */	beq lbl_803CD004
/* 803CD000 003C2D80  48 00 13 FD */	bl RFLFreeCachedResource
lbl_803CD004:
/* 803CD004 003C2D84  48 00 15 29 */	bl RFLiExitAccessInfo
/* 803CD008 003C2D88  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD00C 003C2D8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803CD010 003C2D90  4B E3 77 29 */	bl MEMDestroyExpHeap
/* 803CD014 003C2D94  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD018 003C2D98  80 63 00 08 */	lwz r3, 8(r3)
/* 803CD01C 003C2D9C  4B E3 77 1D */	bl MEMDestroyExpHeap
/* 803CD020 003C2DA0  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD024 003C2DA4  80 63 00 04 */	lwz r3, 4(r3)
/* 803CD028 003C2DA8  4B E3 77 11 */	bl MEMDestroyExpHeap
/* 803CD02C 003C2DAC  38 00 00 00 */	li r0, 0
/* 803CD030 003C2DB0  90 0D CE 30 */	stw r0, lbl_805A1250-_SDA_BASE_(r13)
lbl_803CD034:
/* 803CD034 003C2DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD038 003C2DB8  7C 08 03 A6 */	mtlr r0
/* 803CD03C 003C2DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CD040 003C2DC0  4E 80 00 20 */	blr 

.global bootloadDB2Res_
bootloadDB2Res_:
/* 803CD044 003C2DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CD048 003C2DC8  7C 08 02 A6 */	mflr r0
/* 803CD04C 003C2DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CD050 003C2DD0  48 00 09 E5 */	bl RFLiLoadResourceHeaderAsync
lbl_803CD054:
/* 803CD054 003C2DD4  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD058 003C2DD8  2C 00 00 00 */	cmpwi r0, 0
/* 803CD05C 003C2DDC  40 82 00 0C */	bne lbl_803CD068
/* 803CD060 003C2DE0  80 0D BA 80 */	lwz r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CD064 003C2DE4  48 00 00 5C */	b lbl_803CD0C0
lbl_803CD068:
/* 803CD068 003C2DE8  48 00 15 09 */	bl RFLiIsWorking
/* 803CD06C 003C2DEC  2C 03 00 00 */	cmpwi r3, 0
/* 803CD070 003C2DF0  41 82 00 0C */	beq lbl_803CD07C
/* 803CD074 003C2DF4  38 00 00 06 */	li r0, 6
/* 803CD078 003C2DF8  48 00 00 48 */	b lbl_803CD0C0
lbl_803CD07C:
/* 803CD07C 003C2DFC  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD080 003C2E00  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CD084 003C2E04  2C 05 00 00 */	cmpwi r5, 0
/* 803CD088 003C2E08  41 82 00 08 */	beq lbl_803CD090
/* 803CD08C 003C2E0C  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CD090:
/* 803CD090 003C2E10  88 83 00 00 */	lbz r4, 0(r3)
/* 803CD094 003C2E14  38 60 00 01 */	li r3, 1
/* 803CD098 003C2E18  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CD09C 003C2E1C  40 82 00 10 */	bne lbl_803CD0AC
/* 803CD0A0 003C2E20  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CD0A4 003C2E24  40 82 00 08 */	bne lbl_803CD0AC
/* 803CD0A8 003C2E28  38 60 00 00 */	li r3, 0
lbl_803CD0AC:
/* 803CD0AC 003C2E2C  2C 03 00 00 */	cmpwi r3, 0
/* 803CD0B0 003C2E30  41 82 00 0C */	beq lbl_803CD0BC
/* 803CD0B4 003C2E34  38 00 00 05 */	li r0, 5
/* 803CD0B8 003C2E38  48 00 00 08 */	b lbl_803CD0C0
lbl_803CD0BC:
/* 803CD0BC 003C2E3C  80 05 1B 40 */	lwz r0, 0x1b40(r5)
lbl_803CD0C0:
/* 803CD0C0 003C2E40  90 01 00 0C */	stw r0, 0xc(r1)
/* 803CD0C4 003C2E44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803CD0C8 003C2E48  2C 00 00 06 */	cmpwi r0, 6
/* 803CD0CC 003C2E4C  41 82 FF 88 */	beq lbl_803CD054
/* 803CD0D0 003C2E50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803CD0D4 003C2E54  2C 00 00 03 */	cmpwi r0, 3
/* 803CD0D8 003C2E58  41 82 01 88 */	beq lbl_803CD260
/* 803CD0DC 003C2E5C  40 80 00 10 */	bge lbl_803CD0EC
/* 803CD0E0 003C2E60  2C 00 00 00 */	cmpwi r0, 0
/* 803CD0E4 003C2E64  41 82 01 7C */	beq lbl_803CD260
/* 803CD0E8 003C2E68  48 00 00 0C */	b lbl_803CD0F4
lbl_803CD0EC:
/* 803CD0EC 003C2E6C  2C 00 00 06 */	cmpwi r0, 6
/* 803CD0F0 003C2E70  41 82 01 70 */	beq lbl_803CD260
lbl_803CD0F4:
/* 803CD0F4 003C2E74  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD0F8 003C2E78  2C 00 00 00 */	cmpwi r0, 0
/* 803CD0FC 003C2E7C  41 82 01 64 */	beq lbl_803CD260
lbl_803CD100:
/* 803CD100 003C2E80  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD104 003C2E84  2C 00 00 00 */	cmpwi r0, 0
/* 803CD108 003C2E88  40 82 00 0C */	bne lbl_803CD114
/* 803CD10C 003C2E8C  80 0D BA 80 */	lwz r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CD110 003C2E90  48 00 00 5C */	b lbl_803CD16C
lbl_803CD114:
/* 803CD114 003C2E94  48 00 14 5D */	bl RFLiIsWorking
/* 803CD118 003C2E98  2C 03 00 00 */	cmpwi r3, 0
/* 803CD11C 003C2E9C  41 82 00 0C */	beq lbl_803CD128
/* 803CD120 003C2EA0  38 00 00 06 */	li r0, 6
/* 803CD124 003C2EA4  48 00 00 48 */	b lbl_803CD16C
lbl_803CD128:
/* 803CD128 003C2EA8  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD12C 003C2EAC  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CD130 003C2EB0  2C 05 00 00 */	cmpwi r5, 0
/* 803CD134 003C2EB4  41 82 00 08 */	beq lbl_803CD13C
/* 803CD138 003C2EB8  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CD13C:
/* 803CD13C 003C2EBC  88 83 00 00 */	lbz r4, 0(r3)
/* 803CD140 003C2EC0  38 60 00 01 */	li r3, 1
/* 803CD144 003C2EC4  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CD148 003C2EC8  40 82 00 10 */	bne lbl_803CD158
/* 803CD14C 003C2ECC  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CD150 003C2ED0  40 82 00 08 */	bne lbl_803CD158
/* 803CD154 003C2ED4  38 60 00 00 */	li r3, 0
lbl_803CD158:
/* 803CD158 003C2ED8  2C 03 00 00 */	cmpwi r3, 0
/* 803CD15C 003C2EDC  41 82 00 0C */	beq lbl_803CD168
/* 803CD160 003C2EE0  38 00 00 05 */	li r0, 5
/* 803CD164 003C2EE4  48 00 00 08 */	b lbl_803CD16C
lbl_803CD168:
/* 803CD168 003C2EE8  80 05 1B 40 */	lwz r0, 0x1b40(r5)
lbl_803CD16C:
/* 803CD16C 003C2EEC  90 01 00 08 */	stw r0, 8(r1)
/* 803CD170 003C2EF0  80 01 00 08 */	lwz r0, 8(r1)
/* 803CD174 003C2EF4  2C 00 00 06 */	cmpwi r0, 6
/* 803CD178 003C2EF8  41 82 FF 88 */	beq lbl_803CD100
/* 803CD17C 003C2EFC  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD180 003C2F00  80 61 00 08 */	lwz r3, 8(r1)
/* 803CD184 003C2F04  2C 00 00 00 */	cmpwi r0, 0
/* 803CD188 003C2F08  40 82 00 0C */	bne lbl_803CD194
/* 803CD18C 003C2F0C  80 0D BA 80 */	lwz r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CD190 003C2F10  48 00 00 5C */	b lbl_803CD1EC
lbl_803CD194:
/* 803CD194 003C2F14  48 00 13 DD */	bl RFLiIsWorking
/* 803CD198 003C2F18  2C 03 00 00 */	cmpwi r3, 0
/* 803CD19C 003C2F1C  41 82 00 0C */	beq lbl_803CD1A8
/* 803CD1A0 003C2F20  38 00 00 06 */	li r0, 6
/* 803CD1A4 003C2F24  48 00 00 48 */	b lbl_803CD1EC
lbl_803CD1A8:
/* 803CD1A8 003C2F28  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD1AC 003C2F2C  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CD1B0 003C2F30  2C 05 00 00 */	cmpwi r5, 0
/* 803CD1B4 003C2F34  41 82 00 08 */	beq lbl_803CD1BC
/* 803CD1B8 003C2F38  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CD1BC:
/* 803CD1BC 003C2F3C  88 83 00 00 */	lbz r4, 0(r3)
/* 803CD1C0 003C2F40  38 60 00 01 */	li r3, 1
/* 803CD1C4 003C2F44  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CD1C8 003C2F48  40 82 00 10 */	bne lbl_803CD1D8
/* 803CD1CC 003C2F4C  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CD1D0 003C2F50  40 82 00 08 */	bne lbl_803CD1D8
/* 803CD1D4 003C2F54  38 60 00 00 */	li r3, 0
lbl_803CD1D8:
/* 803CD1D8 003C2F58  2C 03 00 00 */	cmpwi r3, 0
/* 803CD1DC 003C2F5C  41 82 00 0C */	beq lbl_803CD1E8
/* 803CD1E0 003C2F60  38 00 00 05 */	li r0, 5
/* 803CD1E4 003C2F64  48 00 00 08 */	b lbl_803CD1EC
lbl_803CD1E8:
/* 803CD1E8 003C2F68  80 05 1B 40 */	lwz r0, 0x1b40(r5)
lbl_803CD1EC:
/* 803CD1EC 003C2F6C  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD1F0 003C2F70  90 0D BA 80 */	stw r0, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CD1F4 003C2F74  2C 03 00 00 */	cmpwi r3, 0
/* 803CD1F8 003C2F78  41 82 00 18 */	beq lbl_803CD210
/* 803CD1FC 003C2F7C  41 82 00 0C */	beq lbl_803CD208
/* 803CD200 003C2F80  80 03 1B 48 */	lwz r0, 0x1b48(r3)
/* 803CD204 003C2F84  48 00 00 10 */	b lbl_803CD214
lbl_803CD208:
/* 803CD208 003C2F88  38 00 00 00 */	li r0, 0
/* 803CD20C 003C2F8C  48 00 00 08 */	b lbl_803CD214
lbl_803CD210:
/* 803CD210 003C2F90  80 0D CE 34 */	lwz r0, lbl_805A1254-_SDA_BASE_(r13)
lbl_803CD214:
/* 803CD214 003C2F94  90 0D CE 34 */	stw r0, lbl_805A1254-_SDA_BASE_(r13)
/* 803CD218 003C2F98  88 03 1B 3C */	lbz r0, 0x1b3c(r3)
/* 803CD21C 003C2F9C  98 0D CE 38 */	stb r0, lbl_805A1258-_SDA_BASE_(r13)
/* 803CD220 003C2FA0  48 00 12 49 */	bl RFLIsResourceCached
/* 803CD224 003C2FA4  2C 03 00 00 */	cmpwi r3, 0
/* 803CD228 003C2FA8  41 82 00 08 */	beq lbl_803CD230
/* 803CD22C 003C2FAC  48 00 11 D1 */	bl RFLFreeCachedResource
lbl_803CD230:
/* 803CD230 003C2FB0  48 00 12 FD */	bl RFLiExitAccessInfo
/* 803CD234 003C2FB4  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD238 003C2FB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803CD23C 003C2FBC  4B E3 74 FD */	bl MEMDestroyExpHeap
/* 803CD240 003C2FC0  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD244 003C2FC4  80 63 00 08 */	lwz r3, 8(r3)
/* 803CD248 003C2FC8  4B E3 74 F1 */	bl MEMDestroyExpHeap
/* 803CD24C 003C2FCC  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD250 003C2FD0  80 63 00 04 */	lwz r3, 4(r3)
/* 803CD254 003C2FD4  4B E3 74 E5 */	bl MEMDestroyExpHeap
/* 803CD258 003C2FD8  38 00 00 00 */	li r0, 0
/* 803CD25C 003C2FDC  90 0D CE 30 */	stw r0, lbl_805A1250-_SDA_BASE_(r13)
lbl_803CD260:
/* 803CD260 003C2FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD264 003C2FE4  7C 08 03 A6 */	mtlr r0
/* 803CD268 003C2FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803CD26C 003C2FEC  4E 80 00 20 */	blr 

.global RFLAvailable
RFLAvailable:
/* 803CD270 003C2FF0  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD274 003C2FF4  7C 03 00 D0 */	neg r0, r3
/* 803CD278 003C2FF8  7C 00 1B 78 */	or r0, r0, r3
/* 803CD27C 003C2FFC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803CD280 003C3000  4E 80 00 20 */	blr 

.global RFLiAlloc32
RFLiAlloc32:
/* 803CD284 003C3004  80 CD CE 30 */	lwz r6, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD288 003C3008  7C 64 1B 78 */	mr r4, r3
/* 803CD28C 003C300C  38 A0 00 20 */	li r5, 0x20
/* 803CD290 003C3010  80 66 00 0C */	lwz r3, 0xc(r6)
/* 803CD294 003C3014  4B E3 74 D4 */	b MEMAllocFromExpHeapEx

.global RFLiFree
RFLiFree:
/* 803CD298 003C3018  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD29C 003C301C  7C 64 1B 78 */	mr r4, r3
/* 803CD2A0 003C3020  80 65 00 0C */	lwz r3, 0xc(r5)
/* 803CD2A4 003C3024  4B E3 75 74 */	b MEMFreeToExpHeap

.global RFLiGetDBManager
RFLiGetDBManager:
/* 803CD2A8 003C3028  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD2AC 003C302C  2C 03 00 00 */	cmpwi r3, 0
/* 803CD2B0 003C3030  40 82 00 0C */	bne lbl_803CD2BC
/* 803CD2B4 003C3034  38 60 00 00 */	li r3, 0
/* 803CD2B8 003C3038  4E 80 00 20 */	blr 
lbl_803CD2BC:
/* 803CD2BC 003C303C  38 63 00 10 */	addi r3, r3, 0x10
/* 803CD2C0 003C3040  4E 80 00 20 */	blr 

.global RFLiGetHDBManager
RFLiGetHDBManager:
/* 803CD2C4 003C3044  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD2C8 003C3048  2C 03 00 00 */	cmpwi r3, 0
/* 803CD2CC 003C304C  40 82 00 0C */	bne lbl_803CD2D8
/* 803CD2D0 003C3050  38 60 00 00 */	li r3, 0
/* 803CD2D4 003C3054  4E 80 00 20 */	blr 
lbl_803CD2D8:
/* 803CD2D8 003C3058  38 63 01 6C */	addi r3, r3, 0x16c
/* 803CD2DC 003C305C  4E 80 00 20 */	blr 

.global RFLiGetLoader
RFLiGetLoader:
/* 803CD2E0 003C3060  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD2E4 003C3064  2C 03 00 00 */	cmpwi r3, 0
/* 803CD2E8 003C3068  40 82 00 0C */	bne lbl_803CD2F4
/* 803CD2EC 003C306C  38 60 00 00 */	li r3, 0
/* 803CD2F0 003C3070  4E 80 00 20 */	blr 
lbl_803CD2F4:
/* 803CD2F4 003C3074  38 63 00 C0 */	addi r3, r3, 0xc0
/* 803CD2F8 003C3078  4E 80 00 20 */	blr 

.global RFLiGetWorking
RFLiGetWorking:
/* 803CD2FC 003C307C  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD300 003C3080  2C 03 00 00 */	cmpwi r3, 0
/* 803CD304 003C3084  40 82 00 0C */	bne lbl_803CD310
/* 803CD308 003C3088  38 60 00 00 */	li r3, 0
/* 803CD30C 003C308C  4E 80 00 20 */	blr 
lbl_803CD310:
/* 803CD310 003C3090  80 63 1B 34 */	lwz r3, 0x1b34(r3)
/* 803CD314 003C3094  4E 80 00 20 */	blr 

.global RFLiSetWorking
RFLiSetWorking:
/* 803CD318 003C3098  80 8D CE 30 */	lwz r4, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD31C 003C309C  90 64 1B 34 */	stw r3, 0x1b34(r4)
/* 803CD320 003C30A0  4E 80 00 20 */	blr 

.global RFLiGetManager
RFLiGetManager:
/* 803CD324 003C30A4  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD328 003C30A8  4E 80 00 20 */	blr 

.global RFLGetAsyncStatus
RFLGetAsyncStatus:
/* 803CD32C 003C30AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CD330 003C30B0  7C 08 02 A6 */	mflr r0
/* 803CD334 003C30B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CD338 003C30B8  80 0D CE 30 */	lwz r0, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD33C 003C30BC  2C 00 00 00 */	cmpwi r0, 0
/* 803CD340 003C30C0  40 82 00 0C */	bne lbl_803CD34C
/* 803CD344 003C30C4  80 6D BA 80 */	lwz r3, lbl_8059FEA0-_SDA_BASE_(r13)
/* 803CD348 003C30C8  48 00 00 5C */	b lbl_803CD3A4
lbl_803CD34C:
/* 803CD34C 003C30CC  48 00 12 25 */	bl RFLiIsWorking
/* 803CD350 003C30D0  2C 03 00 00 */	cmpwi r3, 0
/* 803CD354 003C30D4  41 82 00 0C */	beq lbl_803CD360
/* 803CD358 003C30D8  38 60 00 06 */	li r3, 6
/* 803CD35C 003C30DC  48 00 00 48 */	b lbl_803CD3A4
lbl_803CD360:
/* 803CD360 003C30E0  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD364 003C30E4  38 6D CE 38 */	addi r3, r13, lbl_805A1258-_SDA_BASE_
/* 803CD368 003C30E8  2C 05 00 00 */	cmpwi r5, 0
/* 803CD36C 003C30EC  41 82 00 08 */	beq lbl_803CD374
/* 803CD370 003C30F0  38 65 1B 3C */	addi r3, r5, 0x1b3c
lbl_803CD374:
/* 803CD374 003C30F4  88 83 00 00 */	lbz r4, 0(r3)
/* 803CD378 003C30F8  38 60 00 01 */	li r3, 1
/* 803CD37C 003C30FC  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803CD380 003C3100  40 82 00 10 */	bne lbl_803CD390
/* 803CD384 003C3104  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803CD388 003C3108  40 82 00 08 */	bne lbl_803CD390
/* 803CD38C 003C310C  38 60 00 00 */	li r3, 0
lbl_803CD390:
/* 803CD390 003C3110  2C 03 00 00 */	cmpwi r3, 0
/* 803CD394 003C3114  41 82 00 0C */	beq lbl_803CD3A0
/* 803CD398 003C3118  38 60 00 05 */	li r3, 5
/* 803CD39C 003C311C  48 00 00 08 */	b lbl_803CD3A4
lbl_803CD3A0:
/* 803CD3A0 003C3120  80 65 1B 40 */	lwz r3, 0x1b40(r5)
lbl_803CD3A4:
/* 803CD3A4 003C3124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD3A8 003C3128  7C 08 03 A6 */	mtlr r0
/* 803CD3AC 003C312C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CD3B0 003C3130  4E 80 00 20 */	blr 

.global RFLiGetAccInfo
RFLiGetAccInfo:
/* 803CD3B4 003C3134  80 8D CE 30 */	lwz r4, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD3B8 003C3138  2C 04 00 00 */	cmpwi r4, 0
/* 803CD3BC 003C313C  40 82 00 0C */	bne lbl_803CD3C8
/* 803CD3C0 003C3140  38 60 00 00 */	li r3, 0
/* 803CD3C4 003C3144  4E 80 00 20 */	blr 
lbl_803CD3C8:
/* 803CD3C8 003C3148  1C 03 01 E0 */	mulli r0, r3, 0x1e0
/* 803CD3CC 003C314C  7C 64 02 14 */	add r3, r4, r0
/* 803CD3D0 003C3150  38 63 1B 50 */	addi r3, r3, 0x1b50
/* 803CD3D4 003C3154  4E 80 00 20 */	blr 

.global RFLiGetCtrlBufManager
RFLiGetCtrlBufManager:
/* 803CD3D8 003C3158  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD3DC 003C315C  2C 03 00 00 */	cmpwi r3, 0
/* 803CD3E0 003C3160  40 82 00 0C */	bne lbl_803CD3EC
/* 803CD3E4 003C3164  38 60 00 00 */	li r3, 0
/* 803CD3E8 003C3168  4E 80 00 20 */	blr 
lbl_803CD3EC:
/* 803CD3EC 003C316C  38 63 1A AC */	addi r3, r3, 0x1aac
/* 803CD3F0 003C3170  4E 80 00 20 */	blr 

.global RFLiGetLastReason
RFLiGetLastReason:
/* 803CD3F4 003C3174  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD3F8 003C3178  2C 03 00 00 */	cmpwi r3, 0
/* 803CD3FC 003C317C  40 82 00 0C */	bne lbl_803CD408
/* 803CD400 003C3180  38 60 00 00 */	li r3, 0
/* 803CD404 003C3184  4E 80 00 20 */	blr 
lbl_803CD408:
/* 803CD408 003C3188  80 63 1B 48 */	lwz r3, 0x1b48(r3)
/* 803CD40C 003C318C  4E 80 00 20 */	blr 

.global RFLiSetFileBroken
RFLiSetFileBroken:
/* 803CD410 003C3190  80 AD CE 30 */	lwz r5, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD414 003C3194  2C 05 00 00 */	cmpwi r5, 0
/* 803CD418 003C3198  4D 82 00 20 */	beqlr 
/* 803CD41C 003C319C  38 00 00 01 */	li r0, 1
/* 803CD420 003C31A0  88 85 1B 3C */	lbz r4, 0x1b3c(r5)
/* 803CD424 003C31A4  7C 00 18 30 */	slw r0, r0, r3
/* 803CD428 003C31A8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803CD42C 003C31AC  7C 80 03 78 */	or r0, r4, r0
/* 803CD430 003C31B0  98 05 1B 3C */	stb r0, 0x1b3c(r5)
/* 803CD434 003C31B4  4E 80 00 20 */	blr 

.global RFLiNotFoundError
RFLiNotFoundError:
/* 803CD438 003C31B8  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD43C 003C31BC  38 8D CE 38 */	addi r4, r13, lbl_805A1258-_SDA_BASE_
/* 803CD440 003C31C0  2C 03 00 00 */	cmpwi r3, 0
/* 803CD444 003C31C4  41 82 00 08 */	beq lbl_803CD44C
/* 803CD448 003C31C8  38 83 1B 3C */	addi r4, r3, 0x1b3c
lbl_803CD44C:
/* 803CD44C 003C31CC  88 04 00 00 */	lbz r0, 0(r4)
/* 803CD450 003C31D0  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803CD454 003C31D4  4E 80 00 20 */	blr 

.global RFLiNeedRepairError
RFLiNeedRepairError:
/* 803CD458 003C31D8  80 6D CE 30 */	lwz r3, lbl_805A1250-_SDA_BASE_(r13)
/* 803CD45C 003C31DC  38 8D CE 38 */	addi r4, r13, lbl_805A1258-_SDA_BASE_
/* 803CD460 003C31E0  2C 03 00 00 */	cmpwi r3, 0
/* 803CD464 003C31E4  41 82 00 08 */	beq lbl_803CD46C
/* 803CD468 003C31E8  38 83 1B 3C */	addi r4, r3, 0x1b3c
lbl_803CD46C:
/* 803CD46C 003C31EC  88 04 00 00 */	lbz r0, 0(r4)
/* 803CD470 003C31F0  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 803CD474 003C31F4  4E 80 00 20 */	blr 

.global RFLGetArcFilePath
RFLGetArcFilePath:
/* 803CD478 003C31F8  3C 60 80 49 */	lis r3, lbl_80492F50@ha
/* 803CD47C 003C31FC  38 63 2F 50 */	addi r3, r3, lbl_80492F50@l
/* 803CD480 003C3200  4E 80 00 20 */	blr 

