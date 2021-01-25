.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkAgent3Bridge$7registerAgent3
hkAgent3Bridge$7registerAgent3:
/* 802CAA50 002C07D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802CAA54 002C07D4  7C 08 02 A6 */	mflr r0
/* 802CAA58 002C07D8  3D 80 80 2D */	lis r12, hkAgent3Bridge$7create@ha
/* 802CAA5C 002C07DC  3D 60 80 2D */	lis r11, hkAgent3Bridge$7process@ha
/* 802CAA60 002C07E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 802CAA64 002C07E4  3D 40 80 2D */	lis r10, hkAgent3Bridge$7destroy@ha
/* 802CAA68 002C07E8  3D 20 80 2D */	lis r9, hkAgent3Bridge$7updateFilter@ha
/* 802CAA6C 002C07EC  3D 00 80 2D */	lis r8, hkAgent3Bridge$7invalidateTim@ha
/* 802CAA70 002C07F0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802CAA74 002C07F4  3F E0 80 2D */	lis r31, hkAgent3Bridge$7removePoint@ha
/* 802CAA78 002C07F8  3C E0 80 2D */	lis r7, hkAgent3Bridge$7warpTime@ha
/* 802CAA7C 002C07FC  39 8C AB 20 */	addi r12, r12, hkAgent3Bridge$7create@l
/* 802CAA80 002C0800  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802CAA84 002C0804  3F C0 80 2D */	lis r30, hkAgent3Bridge$7createZombie@ha
/* 802CAA88 002C0808  3B DE AC E0 */	addi r30, r30, hkAgent3Bridge$7createZombie@l
/* 802CAA8C 002C080C  3B FF AC B0 */	addi r31, r31, hkAgent3Bridge$7removePoint@l
/* 802CAA90 002C0810  93 A1 00 44 */	stw r29, 0x44(r1)
/* 802CAA94 002C0814  3F A0 80 2D */	lis r29, hkAgent3Bridge$7commitPotential@ha
/* 802CAA98 002C0818  3B BD AC C8 */	addi r29, r29, hkAgent3Bridge$7commitPotential@l
/* 802CAA9C 002C081C  39 6B AB FC */	addi r11, r11, hkAgent3Bridge$7process@l
/* 802CAAA0 002C0820  93 81 00 40 */	stw r28, 0x40(r1)
/* 802CAAA4 002C0824  3B 80 00 00 */	li r28, 0
/* 802CAAA8 002C0828  39 4A AC 4C */	addi r10, r10, hkAgent3Bridge$7destroy@l
/* 802CAAAC 002C082C  39 29 AC 60 */	addi r9, r9, hkAgent3Bridge$7updateFilter@l
/* 802CAAB0 002C0830  39 08 AC 80 */	addi r8, r8, hkAgent3Bridge$7invalidateTim@l
/* 802CAAB4 002C0834  38 E7 AC 98 */	addi r7, r7, hkAgent3Bridge$7warpTime@l
/* 802CAAB8 002C0838  38 00 00 01 */	li r0, 1
/* 802CAABC 002C083C  9B 81 00 35 */	stb r28, 0x35(r1)
/* 802CAAC0 002C0840  38 81 00 08 */	addi r4, r1, 8
/* 802CAAC4 002C0844  38 A0 FF FF */	li r5, -1
/* 802CAAC8 002C0848  93 A1 00 18 */	stw r29, 0x18(r1)
/* 802CAACC 002C084C  38 C0 FF FF */	li r6, -1
/* 802CAAD0 002C0850  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802CAAD4 002C0854  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802CAAD8 002C0858  91 81 00 08 */	stw r12, 8(r1)
/* 802CAADC 002C085C  91 61 00 30 */	stw r11, 0x30(r1)
/* 802CAAE0 002C0860  93 81 00 2C */	stw r28, 0x2c(r1)
/* 802CAAE4 002C0864  93 81 00 10 */	stw r28, 0x10(r1)
/* 802CAAE8 002C0868  91 41 00 0C */	stw r10, 0xc(r1)
/* 802CAAEC 002C086C  91 21 00 20 */	stw r9, 0x20(r1)
/* 802CAAF0 002C0870  91 01 00 24 */	stw r8, 0x24(r1)
/* 802CAAF4 002C0874  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802CAAF8 002C0878  98 01 00 34 */	stb r0, 0x34(r1)
/* 802CAAFC 002C087C  48 00 17 19 */	bl hkCollisionDispatcher$7registerAgent3
/* 802CAB00 002C0880  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802CAB04 002C0884  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802CAB08 002C0888  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802CAB0C 002C088C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 802CAB10 002C0890  83 81 00 40 */	lwz r28, 0x40(r1)
/* 802CAB14 002C0894  7C 08 03 A6 */	mtlr r0
/* 802CAB18 002C0898  38 21 00 50 */	addi r1, r1, 0x50
/* 802CAB1C 002C089C  4E 80 00 20 */	blr 

.global hkAgent3Bridge$7create
hkAgent3Bridge$7create:
/* 802CAB20 002C08A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CAB24 002C08A4  7C 08 02 A6 */	mflr r0
/* 802CAB28 002C08A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CAB2C 002C08AC  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 802CAB30 002C08B0  7C 9E 23 78 */	mr r30, r4
/* 802CAB34 002C08B4  83 03 00 08 */	lwz r24, 8(r3)
/* 802CAB38 002C08B8  7C BF 2B 78 */	mr r31, r5
/* 802CAB3C 002C08BC  83 63 00 00 */	lwz r27, 0(r3)
/* 802CAB40 002C08C0  83 23 00 0C */	lwz r25, 0xc(r3)
/* 802CAB44 002C08C4  83 43 00 04 */	lwz r26, 4(r3)
/* 802CAB48 002C08C8  80 7B 00 00 */	lwz r3, 0(r27)
/* 802CAB4C 002C08CC  83 98 00 00 */	lwz r28, 0(r24)
/* 802CAB50 002C08D0  81 83 00 00 */	lwz r12, 0(r3)
/* 802CAB54 002C08D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CAB58 002C08D8  7D 89 03 A6 */	mtctr r12
/* 802CAB5C 002C08DC  4E 80 04 21 */	bctrl 
/* 802CAB60 002C08E0  7C 7D 1B 78 */	mr r29, r3
/* 802CAB64 002C08E4  80 7A 00 00 */	lwz r3, 0(r26)
/* 802CAB68 002C08E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802CAB6C 002C08EC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CAB70 002C08F0  7D 89 03 A6 */	mtctr r12
/* 802CAB74 002C08F4  4E 80 04 21 */	bctrl 
/* 802CAB78 002C08F8  88 18 00 0C */	lbz r0, 0xc(r24)
/* 802CAB7C 002C08FC  7C 68 1B 78 */	mr r8, r3
/* 802CAB80 002C0900  7F 63 DB 78 */	mr r3, r27
/* 802CAB84 002C0904  7F 44 D3 78 */	mr r4, r26
/* 802CAB88 002C0908  7C 07 07 74 */	extsb r7, r0
/* 802CAB8C 002C090C  7F 05 C3 78 */	mr r5, r24
/* 802CAB90 002C0910  7C 07 00 D0 */	neg r0, r7
/* 802CAB94 002C0914  7F 26 CB 78 */	mr r6, r25
/* 802CAB98 002C0918  7C 00 3B 78 */	or r0, r0, r7
/* 802CAB9C 002C091C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802CABA0 002C0920  41 82 00 0C */	beq lbl_802CABAC
/* 802CABA4 002C0924  38 1C 05 90 */	addi r0, r28, 0x590
/* 802CABA8 002C0928  48 00 00 08 */	b lbl_802CABB0
lbl_802CABAC:
/* 802CABAC 002C092C  38 1C 01 90 */	addi r0, r28, 0x190
lbl_802CABB0:
/* 802CABB0 002C0930  57 A7 28 34 */	slwi r7, r29, 5
/* 802CABB4 002C0934  7C 08 02 14 */	add r0, r8, r0
/* 802CABB8 002C0938  7C 07 00 AE */	lbzx r0, r7, r0
/* 802CABBC 002C093C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802CABC0 002C0940  7C FC 02 14 */	add r7, r28, r0
/* 802CABC4 002C0944  81 87 09 90 */	lwz r12, 0x990(r7)
/* 802CABC8 002C0948  7D 89 03 A6 */	mtctr r12
/* 802CABCC 002C094C  4E 80 04 21 */	bctrl 
/* 802CABD0 002C0950  38 80 00 06 */	li r4, 6
/* 802CABD4 002C0954  38 00 00 FF */	li r0, 0xff
/* 802CABD8 002C0958  90 7E 00 04 */	stw r3, 4(r30)
/* 802CABDC 002C095C  7F E3 FB 78 */	mr r3, r31
/* 802CABE0 002C0960  98 9E 00 00 */	stb r4, 0(r30)
/* 802CABE4 002C0964  98 1E 00 02 */	stb r0, 2(r30)
/* 802CABE8 002C0968  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 802CABEC 002C096C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CABF0 002C0970  7C 08 03 A6 */	mtlr r0
/* 802CABF4 002C0974  38 21 00 30 */	addi r1, r1, 0x30
/* 802CABF8 002C0978  4E 80 00 20 */	blr 

.global hkAgent3Bridge$7process
hkAgent3Bridge$7process:
/* 802CABFC 002C097C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CAC00 002C0980  7C 08 02 A6 */	mflr r0
/* 802CAC04 002C0984  7C 66 1B 78 */	mr r6, r3
/* 802CAC08 002C0988  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CAC0C 002C098C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CAC10 002C0990  7C BF 2B 78 */	mr r31, r5
/* 802CAC14 002C0994  80 A6 00 04 */	lwz r5, 4(r6)
/* 802CAC18 002C0998  80 64 00 04 */	lwz r3, 4(r4)
/* 802CAC1C 002C099C  80 86 00 00 */	lwz r4, 0(r6)
/* 802CAC20 002C09A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802CAC24 002C09A4  80 C6 00 08 */	lwz r6, 8(r6)
/* 802CAC28 002C09A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CAC2C 002C09AC  7D 89 03 A6 */	mtctr r12
/* 802CAC30 002C09B0  4E 80 04 21 */	bctrl 
/* 802CAC34 002C09B4  7F E3 FB 78 */	mr r3, r31
/* 802CAC38 002C09B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CAC3C 002C09BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CAC40 002C09C0  7C 08 03 A6 */	mtlr r0
/* 802CAC44 002C09C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CAC48 002C09C8  4E 80 00 20 */	blr 

.global hkAgent3Bridge$7destroy
hkAgent3Bridge$7destroy:
/* 802CAC4C 002C09CC  80 63 00 04 */	lwz r3, 4(r3)
/* 802CAC50 002C09D0  81 83 00 00 */	lwz r12, 0(r3)
/* 802CAC54 002C09D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802CAC58 002C09D8  7D 89 03 A6 */	mtctr r12
/* 802CAC5C 002C09DC  4E 80 04 20 */	bctr 

.global hkAgent3Bridge$7updateFilter
hkAgent3Bridge$7updateFilter:
/* 802CAC60 002C09E0  80 63 00 04 */	lwz r3, 4(r3)
/* 802CAC64 002C09E4  7C A4 2B 78 */	mr r4, r5
/* 802CAC68 002C09E8  7C C5 33 78 */	mr r5, r6
/* 802CAC6C 002C09EC  7C E6 3B 78 */	mr r6, r7
/* 802CAC70 002C09F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802CAC74 002C09F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802CAC78 002C09F8  7D 89 03 A6 */	mtctr r12
/* 802CAC7C 002C09FC  4E 80 04 20 */	bctr 

.global hkAgent3Bridge$7invalidateTim
hkAgent3Bridge$7invalidateTim:
/* 802CAC80 002C0A00  80 63 00 04 */	lwz r3, 4(r3)
/* 802CAC84 002C0A04  7C A4 2B 78 */	mr r4, r5
/* 802CAC88 002C0A08  81 83 00 00 */	lwz r12, 0(r3)
/* 802CAC8C 002C0A0C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802CAC90 002C0A10  7D 89 03 A6 */	mtctr r12
/* 802CAC94 002C0A14  4E 80 04 20 */	bctr 

.global hkAgent3Bridge$7warpTime
hkAgent3Bridge$7warpTime:
/* 802CAC98 002C0A18  80 63 00 04 */	lwz r3, 4(r3)
/* 802CAC9C 002C0A1C  7C A4 2B 78 */	mr r4, r5
/* 802CACA0 002C0A20  81 83 00 00 */	lwz r12, 0(r3)
/* 802CACA4 002C0A24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802CACA8 002C0A28  7D 89 03 A6 */	mtctr r12
/* 802CACAC 002C0A2C  4E 80 04 20 */	bctr 

.global hkAgent3Bridge$7removePoint
hkAgent3Bridge$7removePoint:
/* 802CACB0 002C0A30  80 63 00 04 */	lwz r3, 4(r3)
/* 802CACB4 002C0A34  7C A4 2B 78 */	mr r4, r5
/* 802CACB8 002C0A38  81 83 00 00 */	lwz r12, 0(r3)
/* 802CACBC 002C0A3C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802CACC0 002C0A40  7D 89 03 A6 */	mtctr r12
/* 802CACC4 002C0A44  4E 80 04 20 */	bctr 

.global hkAgent3Bridge$7commitPotential
hkAgent3Bridge$7commitPotential:
/* 802CACC8 002C0A48  80 63 00 04 */	lwz r3, 4(r3)
/* 802CACCC 002C0A4C  7C A4 2B 78 */	mr r4, r5
/* 802CACD0 002C0A50  81 83 00 00 */	lwz r12, 0(r3)
/* 802CACD4 002C0A54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802CACD8 002C0A58  7D 89 03 A6 */	mtctr r12
/* 802CACDC 002C0A5C  4E 80 04 20 */	bctr 

.global hkAgent3Bridge$7createZombie
hkAgent3Bridge$7createZombie:
/* 802CACE0 002C0A60  80 63 00 04 */	lwz r3, 4(r3)
/* 802CACE4 002C0A64  7C A4 2B 78 */	mr r4, r5
/* 802CACE8 002C0A68  81 83 00 00 */	lwz r12, 0(r3)
/* 802CACEC 002C0A6C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802CACF0 002C0A70  7D 89 03 A6 */	mtctr r12
/* 802CACF4 002C0A74  4E 80 04 20 */	bctr 

