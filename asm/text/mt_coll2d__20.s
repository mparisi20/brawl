.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global clQuad2D$7__ct
clQuad2D$7__ct:
/* 80042998 00038718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004299C 0003871C  7C 08 02 A6 */	mflr r0
/* 800429A0 00038720  90 01 00 14 */	stw r0, 0x14(r1)
/* 800429A4 00038724  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800429A8 00038728  7C 7F 1B 78 */	mr r31, r3
/* 800429AC 0003872C  48 00 00 1D */	bl clQuad2D$7set
/* 800429B0 00038730  7F E3 FB 78 */	mr r3, r31
/* 800429B4 00038734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800429B8 00038738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800429BC 0003873C  7C 08 03 A6 */	mtlr r0
/* 800429C0 00038740  38 21 00 10 */	addi r1, r1, 0x10
/* 800429C4 00038744  4E 80 00 20 */	blr 

.global clQuad2D$7set
clQuad2D$7set:
/* 800429C8 00038748  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800429CC 0003874C  7C 08 02 A6 */	mflr r0
/* 800429D0 00038750  C0 64 00 00 */	lfs f3, 0(r4)
/* 800429D4 00038754  C0 44 00 08 */	lfs f2, 8(r4)
/* 800429D8 00038758  90 01 00 64 */	stw r0, 0x64(r1)
/* 800429DC 0003875C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 800429E0 00038760  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800429E4 00038764  7C 7F 1B 78 */	mr r31, r3
/* 800429E8 00038768  40 80 00 28 */	bge lbl_80042A10
/* 800429EC 0003876C  80 E4 00 00 */	lwz r7, 0(r4)
/* 800429F0 00038770  80 C4 00 04 */	lwz r6, 4(r4)
/* 800429F4 00038774  80 64 00 08 */	lwz r3, 8(r4)
/* 800429F8 00038778  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800429FC 0003877C  90 E1 00 48 */	stw r7, 0x48(r1)
/* 80042A00 00038780  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 80042A04 00038784  90 61 00 50 */	stw r3, 0x50(r1)
/* 80042A08 00038788  90 01 00 54 */	stw r0, 0x54(r1)
/* 80042A0C 0003878C  48 00 00 1C */	b lbl_80042A28
lbl_80042A10:
/* 80042A10 00038790  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80042A14 00038794  C0 04 00 04 */	lfs f0, 4(r4)
/* 80042A18 00038798  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80042A1C 0003879C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80042A20 000387A0  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80042A24 000387A4  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80042A28:
/* 80042A28 000387A8  C0 65 00 00 */	lfs f3, 0(r5)
/* 80042A2C 000387AC  C0 45 00 08 */	lfs f2, 8(r5)
/* 80042A30 000387B0  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80042A34 000387B4  40 80 00 28 */	bge lbl_80042A5C
/* 80042A38 000387B8  80 C5 00 00 */	lwz r6, 0(r5)
/* 80042A3C 000387BC  80 85 00 04 */	lwz r4, 4(r5)
/* 80042A40 000387C0  80 65 00 08 */	lwz r3, 8(r5)
/* 80042A44 000387C4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80042A48 000387C8  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80042A4C 000387CC  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80042A50 000387D0  90 61 00 40 */	stw r3, 0x40(r1)
/* 80042A54 000387D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80042A58 000387D8  48 00 00 1C */	b lbl_80042A74
lbl_80042A5C:
/* 80042A5C 000387DC  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80042A60 000387E0  C0 05 00 04 */	lfs f0, 4(r5)
/* 80042A64 000387E4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80042A68 000387E8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80042A6C 000387EC  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80042A70 000387F0  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_80042A74:
/* 80042A74 000387F4  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80042A78 000387F8  38 61 00 08 */	addi r3, r1, 8
/* 80042A7C 000387FC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80042A80 00038800  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80042A84 00038804  EC 01 00 28 */	fsubs f0, f1, f0
/* 80042A88 00038808  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80042A8C 0003880C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80042A90 00038810  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80042A94 00038814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80042A98 00038818  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80042A9C 0003881C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80042AA0 00038820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80042AA4 00038824  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80042AA8 00038828  90 81 00 10 */	stw r4, 0x10(r1)
/* 80042AAC 0003882C  FC 20 00 50 */	fneg f1, f0
/* 80042AB0 00038830  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80042AB4 00038834  90 81 00 18 */	stw r4, 0x18(r1)
/* 80042AB8 00038838  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80042ABC 0003883C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80042AC0 00038840  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80042AC4 00038844  4B FF B0 E5 */	bl Vec2f$7normalize
/* 80042AC8 00038848  C0 21 00 08 */	lfs f1, 8(r1)
/* 80042ACC 0003884C  C1 81 00 48 */	lfs f12, 0x48(r1)
/* 80042AD0 00038850  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80042AD4 00038854  C1 61 00 4C */	lfs f11, 0x4c(r1)
/* 80042AD8 00038858  EC 21 03 32 */	fmuls f1, f1, f12
/* 80042ADC 0003885C  C0 A1 00 08 */	lfs f5, 8(r1)
/* 80042AE0 00038860  EC 00 02 F2 */	fmuls f0, f0, f11
/* 80042AE4 00038864  C1 41 00 0C */	lfs f10, 0xc(r1)
/* 80042AE8 00038868  C1 01 00 38 */	lfs f8, 0x38(r1)
/* 80042AEC 0003886C  C0 E1 00 3C */	lfs f7, 0x3c(r1)
/* 80042AF0 00038870  EC C1 00 2A */	fadds f6, f1, f0
/* 80042AF4 00038874  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 80042AF8 00038878  EC 65 02 32 */	fmuls f3, f5, f8
/* 80042AFC 0003887C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80042B00 00038880  EC 2A 01 F2 */	fmuls f1, f10, f7
/* 80042B04 00038884  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 80042B08 00038888  FD 20 30 50 */	fneg f9, f6
/* 80042B0C 0003888C  C0 02 84 88 */	lfs f0, lbl_805A17A8-_SDA2_BASE_(r2)
/* 80042B10 00038890  EC C3 08 2A */	fadds f6, f3, f1
/* 80042B14 00038894  D1 41 00 2C */	stfs f10, 0x2c(r1)
/* 80042B18 00038898  EC 65 01 32 */	fmuls f3, f5, f4
/* 80042B1C 0003889C  FC A0 48 18 */	frsp f5, f9
/* 80042B20 000388A0  EC 2A 00 B2 */	fmuls f1, f10, f2
/* 80042B24 000388A4  D1 21 00 30 */	stfs f9, 0x30(r1)
/* 80042B28 000388A8  EC C5 30 2A */	fadds f6, f5, f6
/* 80042B2C 000388AC  EC 23 08 2A */	fadds f1, f3, f1
/* 80042B30 000388B0  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80042B34 000388B4  EC 25 08 2A */	fadds f1, f5, f1
/* 80042B38 000388B8  40 80 00 38 */	bge lbl_80042B70
/* 80042B3C 000388BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80042B40 000388C0  40 80 00 30 */	bge lbl_80042B70
/* 80042B44 000388C4  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80042B48 000388C8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80042B4C 000388CC  D1 9F 00 00 */	stfs f12, 0(r31)
/* 80042B50 000388D0  D1 7F 00 04 */	stfs f11, 4(r31)
/* 80042B54 000388D4  D1 1F 00 08 */	stfs f8, 8(r31)
/* 80042B58 000388D8  D0 FF 00 0C */	stfs f7, 0xc(r31)
/* 80042B5C 000388DC  D0 9F 00 10 */	stfs f4, 0x10(r31)
/* 80042B60 000388E0  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 80042B64 000388E4  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80042B68 000388E8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80042B6C 000388EC  48 00 00 F4 */	b lbl_80042C60
lbl_80042B70:
/* 80042B70 000388F0  C0 02 84 88 */	lfs f0, lbl_805A17A8-_SDA2_BASE_(r2)
/* 80042B74 000388F4  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80042B78 000388F8  40 81 00 50 */	ble lbl_80042BC8
/* 80042B7C 000388FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80042B80 00038900  40 81 00 48 */	ble lbl_80042BC8
/* 80042B84 00038904  C0 E1 00 38 */	lfs f7, 0x38(r1)
/* 80042B88 00038908  C0 C1 00 3C */	lfs f6, 0x3c(r1)
/* 80042B8C 0003890C  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 80042B90 00038910  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 80042B94 00038914  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 80042B98 00038918  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80042B9C 0003891C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80042BA0 00038920  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80042BA4 00038924  D0 FF 00 00 */	stfs f7, 0(r31)
/* 80042BA8 00038928  D0 DF 00 04 */	stfs f6, 4(r31)
/* 80042BAC 0003892C  D0 BF 00 08 */	stfs f5, 8(r31)
/* 80042BB0 00038930  D0 9F 00 0C */	stfs f4, 0xc(r31)
/* 80042BB4 00038934  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 80042BB8 00038938  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 80042BBC 0003893C  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80042BC0 00038940  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80042BC4 00038944  48 00 00 9C */	b lbl_80042C60
lbl_80042BC8:
/* 80042BC8 00038948  C0 02 84 88 */	lfs f0, lbl_805A17A8-_SDA2_BASE_(r2)
/* 80042BCC 0003894C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80042BD0 00038950  40 80 00 50 */	bge lbl_80042C20
/* 80042BD4 00038954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80042BD8 00038958  40 81 00 48 */	ble lbl_80042C20
/* 80042BDC 0003895C  C0 E1 00 48 */	lfs f7, 0x48(r1)
/* 80042BE0 00038960  C0 C1 00 4C */	lfs f6, 0x4c(r1)
/* 80042BE4 00038964  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 80042BE8 00038968  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 80042BEC 0003896C  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 80042BF0 00038970  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80042BF4 00038974  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80042BF8 00038978  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80042BFC 0003897C  D0 FF 00 00 */	stfs f7, 0(r31)
/* 80042C00 00038980  D0 DF 00 04 */	stfs f6, 4(r31)
/* 80042C04 00038984  D0 BF 00 08 */	stfs f5, 8(r31)
/* 80042C08 00038988  D0 9F 00 0C */	stfs f4, 0xc(r31)
/* 80042C0C 0003898C  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 80042C10 00038990  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 80042C14 00038994  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80042C18 00038998  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80042C1C 0003899C  48 00 00 44 */	b lbl_80042C60
lbl_80042C20:
/* 80042C20 000389A0  C0 E1 00 38 */	lfs f7, 0x38(r1)
/* 80042C24 000389A4  C0 C1 00 3C */	lfs f6, 0x3c(r1)
/* 80042C28 000389A8  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 80042C2C 000389AC  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 80042C30 000389B0  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 80042C34 000389B4  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80042C38 000389B8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80042C3C 000389BC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80042C40 000389C0  D0 FF 00 00 */	stfs f7, 0(r31)
/* 80042C44 000389C4  D0 DF 00 04 */	stfs f6, 4(r31)
/* 80042C48 000389C8  D0 BF 00 08 */	stfs f5, 8(r31)
/* 80042C4C 000389CC  D0 9F 00 0C */	stfs f4, 0xc(r31)
/* 80042C50 000389D0  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 80042C54 000389D4  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 80042C58 000389D8  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80042C5C 000389DC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
lbl_80042C60:
/* 80042C60 000389E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80042C64 000389E4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80042C68 000389E8  7C 08 03 A6 */	mtlr r0
/* 80042C6C 000389EC  38 21 00 60 */	addi r1, r1, 0x60
/* 80042C70 000389F0  4E 80 00 20 */	blr 

.global clQuad2D$7checkInclude
clQuad2D$7checkInclude:
/* 80042C74 000389F4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80042C78 000389F8  7C 08 02 A6 */	mflr r0
/* 80042C7C 000389FC  C0 63 00 00 */	lfs f3, 0(r3)
/* 80042C80 00038A00  C0 43 00 08 */	lfs f2, 8(r3)
/* 80042C84 00038A04  90 01 01 04 */	stw r0, 0x104(r1)
/* 80042C88 00038A08  EC 42 18 28 */	fsubs f2, f2, f3
/* 80042C8C 00038A0C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80042C90 00038A10  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80042C94 00038A14  3B E0 00 00 */	li r31, 0
/* 80042C98 00038A18  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80042C9C 00038A1C  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80042CA0 00038A20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80042CA4 00038A24  7C 9E 23 78 */	mr r30, r4
/* 80042CA8 00038A28  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 80042CAC 00038A2C  7C 7D 1B 78 */	mr r29, r3
/* 80042CB0 00038A30  38 81 00 60 */	addi r4, r1, 0x60
/* 80042CB4 00038A34  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80042CB8 00038A38  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80042CBC 00038A3C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80042CC0 00038A40  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 80042CC4 00038A44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80042CC8 00038A48  D0 61 00 D8 */	stfs f3, 0xd8(r1)
/* 80042CCC 00038A4C  90 A1 00 60 */	stw r5, 0x60(r1)
/* 80042CD0 00038A50  90 01 00 64 */	stw r0, 0x64(r1)
/* 80042CD4 00038A54  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80042CD8 00038A58  4B FF AF 29 */	bl Vec2f$7normalize_786
/* 80042CDC 00038A5C  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80042CE0 00038A60  38 61 00 38 */	addi r3, r1, 0x38
/* 80042CE4 00038A64  C0 21 00 E0 */	lfs f1, 0xe0(r1)
/* 80042CE8 00038A68  FC 00 00 50 */	fneg f0, f0
/* 80042CEC 00038A6C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80042CF0 00038A70  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80042CF4 00038A74  4B FF AE B5 */	bl Vec2f$7normalize
/* 80042CF8 00038A78  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 80042CFC 00038A7C  C0 41 00 D8 */	lfs f2, 0xd8(r1)
/* 80042D00 00038A80  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80042D04 00038A84  EC A3 00 B2 */	fmuls f5, f3, f2
/* 80042D08 00038A88  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80042D0C 00038A8C  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 80042D10 00038A90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80042D14 00038A94  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 80042D18 00038A98  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80042D1C 00038A9C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80042D20 00038AA0  EC A5 00 2A */	fadds f5, f5, f0
/* 80042D24 00038AA4  D0 61 00 C8 */	stfs f3, 0xc8(r1)
/* 80042D28 00038AA8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80042D2C 00038AAC  C0 02 84 88 */	lfs f0, lbl_805A17A8-_SDA2_BASE_(r2)
/* 80042D30 00038AB0  EC 24 00 72 */	fmuls f1, f4, f1
/* 80042D34 00038AB4  D0 81 00 CC */	stfs f4, 0xcc(r1)
/* 80042D38 00038AB8  FC 60 28 50 */	fneg f3, f5
/* 80042D3C 00038ABC  EC 42 08 2A */	fadds f2, f2, f1
/* 80042D40 00038AC0  FC 20 18 18 */	frsp f1, f3
/* 80042D44 00038AC4  D0 61 00 D0 */	stfs f3, 0xd0(r1)
/* 80042D48 00038AC8  EC 21 10 2A */	fadds f1, f1, f2
/* 80042D4C 00038ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80042D50 00038AD0  41 80 02 44 */	blt lbl_80042F94
/* 80042D54 00038AD4  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80042D58 00038AD8  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80042D5C 00038ADC  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 80042D60 00038AE0  38 81 00 58 */	addi r4, r1, 0x58
/* 80042D64 00038AE4  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80042D68 00038AE8  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80042D6C 00038AEC  EC 42 18 28 */	fsubs f2, f2, f3
/* 80042D70 00038AF0  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 80042D74 00038AF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80042D78 00038AF8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80042D7C 00038AFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80042D80 00038B00  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 80042D84 00038B04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80042D88 00038B08  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80042D8C 00038B0C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80042D90 00038B10  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80042D94 00038B14  4B FF AE 6D */	bl Vec2f$7normalize_786
/* 80042D98 00038B18  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80042D9C 00038B1C  38 61 00 28 */	addi r3, r1, 0x28
/* 80042DA0 00038B20  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 80042DA4 00038B24  FC 00 00 50 */	fneg f0, f0
/* 80042DA8 00038B28  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80042DAC 00038B2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80042DB0 00038B30  4B FF AD F9 */	bl Vec2f$7normalize
/* 80042DB4 00038B34  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 80042DB8 00038B38  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 80042DBC 00038B3C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80042DC0 00038B40  EC A3 00 B2 */	fmuls f5, f3, f2
/* 80042DC4 00038B44  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80042DC8 00038B48  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 80042DCC 00038B4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80042DD0 00038B50  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 80042DD4 00038B54  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80042DD8 00038B58  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80042DDC 00038B5C  EC A5 00 2A */	fadds f5, f5, f0
/* 80042DE0 00038B60  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 80042DE4 00038B64  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80042DE8 00038B68  C0 02 84 88 */	lfs f0, lbl_805A17A8-_SDA2_BASE_(r2)
/* 80042DEC 00038B6C  EC 24 00 72 */	fmuls f1, f4, f1
/* 80042DF0 00038B70  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 80042DF4 00038B74  FC 60 28 50 */	fneg f3, f5
/* 80042DF8 00038B78  EC 42 08 2A */	fadds f2, f2, f1
/* 80042DFC 00038B7C  FC 20 18 18 */	frsp f1, f3
/* 80042E00 00038B80  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80042E04 00038B84  EC 21 10 2A */	fadds f1, f1, f2
/* 80042E08 00038B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80042E0C 00038B8C  41 80 01 88 */	blt lbl_80042F94
/* 80042E10 00038B90  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 80042E14 00038B94  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80042E18 00038B98  C0 5D 00 18 */	lfs f2, 0x18(r29)
/* 80042E1C 00038B9C  38 81 00 50 */	addi r4, r1, 0x50
/* 80042E20 00038BA0  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80042E24 00038BA4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80042E28 00038BA8  EC 42 18 28 */	fsubs f2, f2, f3
/* 80042E2C 00038BAC  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 80042E30 00038BB0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80042E34 00038BB4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80042E38 00038BB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80042E3C 00038BBC  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80042E40 00038BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80042E44 00038BC4  90 A1 00 50 */	stw r5, 0x50(r1)
/* 80042E48 00038BC8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80042E4C 00038BCC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80042E50 00038BD0  4B FF AD B1 */	bl Vec2f$7normalize_786
/* 80042E54 00038BD4  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80042E58 00038BD8  38 61 00 18 */	addi r3, r1, 0x18
/* 80042E5C 00038BDC  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80042E60 00038BE0  FC 00 00 50 */	fneg f0, f0
/* 80042E64 00038BE4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80042E68 00038BE8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80042E6C 00038BEC  4B FF AD 3D */	bl Vec2f$7normalize
/* 80042E70 00038BF0  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80042E74 00038BF4  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 80042E78 00038BF8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80042E7C 00038BFC  EC A3 00 B2 */	fmuls f5, f3, f2
/* 80042E80 00038C00  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80042E84 00038C04  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80042E88 00038C08  EC 01 00 32 */	fmuls f0, f1, f0
/* 80042E8C 00038C0C  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 80042E90 00038C10  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80042E94 00038C14  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80042E98 00038C18  EC A5 00 2A */	fadds f5, f5, f0
/* 80042E9C 00038C1C  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 80042EA0 00038C20  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80042EA4 00038C24  C0 02 84 88 */	lfs f0, lbl_805A17A8-_SDA2_BASE_(r2)
/* 80042EA8 00038C28  EC 24 00 72 */	fmuls f1, f4, f1
/* 80042EAC 00038C2C  D0 81 00 8C */	stfs f4, 0x8c(r1)
/* 80042EB0 00038C30  FC 60 28 50 */	fneg f3, f5
/* 80042EB4 00038C34  EC 42 08 2A */	fadds f2, f2, f1
/* 80042EB8 00038C38  FC 20 18 18 */	frsp f1, f3
/* 80042EBC 00038C3C  D0 61 00 90 */	stfs f3, 0x90(r1)
/* 80042EC0 00038C40  EC 21 10 2A */	fadds f1, f1, f2
/* 80042EC4 00038C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80042EC8 00038C48  41 80 00 CC */	blt lbl_80042F94
/* 80042ECC 00038C4C  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 80042ED0 00038C50  38 61 00 80 */	addi r3, r1, 0x80
/* 80042ED4 00038C54  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80042ED8 00038C58  38 81 00 48 */	addi r4, r1, 0x48
/* 80042EDC 00038C5C  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80042EE0 00038C60  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80042EE4 00038C64  EC 42 18 28 */	fsubs f2, f2, f3
/* 80042EE8 00038C68  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 80042EEC 00038C6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80042EF0 00038C70  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80042EF4 00038C74  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80042EF8 00038C78  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80042EFC 00038C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80042F00 00038C80  90 A1 00 48 */	stw r5, 0x48(r1)
/* 80042F04 00038C84  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80042F08 00038C88  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80042F0C 00038C8C  4B FF AC F5 */	bl Vec2f$7normalize_786
/* 80042F10 00038C90  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80042F14 00038C94  38 61 00 08 */	addi r3, r1, 8
/* 80042F18 00038C98  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80042F1C 00038C9C  FC 00 00 50 */	fneg f0, f0
/* 80042F20 00038CA0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80042F24 00038CA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80042F28 00038CA8  4B FF AC 81 */	bl Vec2f$7normalize
/* 80042F2C 00038CAC  C0 61 00 08 */	lfs f3, 8(r1)
/* 80042F30 00038CB0  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 80042F34 00038CB4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80042F38 00038CB8  EC A3 00 B2 */	fmuls f5, f3, f2
/* 80042F3C 00038CBC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80042F40 00038CC0  C0 61 00 08 */	lfs f3, 8(r1)
/* 80042F44 00038CC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80042F48 00038CC8  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 80042F4C 00038CCC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80042F50 00038CD0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80042F54 00038CD4  EC A5 00 2A */	fadds f5, f5, f0
/* 80042F58 00038CD8  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 80042F5C 00038CDC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80042F60 00038CE0  C0 02 84 88 */	lfs f0, lbl_805A17A8-_SDA2_BASE_(r2)
/* 80042F64 00038CE4  EC 24 00 72 */	fmuls f1, f4, f1
/* 80042F68 00038CE8  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 80042F6C 00038CEC  FC 60 28 50 */	fneg f3, f5
/* 80042F70 00038CF0  EC 42 08 2A */	fadds f2, f2, f1
/* 80042F74 00038CF4  FC 20 18 18 */	frsp f1, f3
/* 80042F78 00038CF8  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 80042F7C 00038CFC  EC 21 10 2A */	fadds f1, f1, f2
/* 80042F80 00038D00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80042F84 00038D04  7C 00 00 26 */	mfcr r0
/* 80042F88 00038D08  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80042F8C 00038D0C  40 82 00 08 */	bne lbl_80042F94
/* 80042F90 00038D10  3B E0 00 01 */	li r31, 1
lbl_80042F94:
/* 80042F94 00038D14  7F E3 FB 78 */	mr r3, r31
/* 80042F98 00038D18  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 80042F9C 00038D1C  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80042FA0 00038D20  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 80042FA4 00038D24  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80042FA8 00038D28  7C 08 03 A6 */	mtlr r0
/* 80042FAC 00038D2C  38 21 01 00 */	addi r1, r1, 0x100
/* 80042FB0 00038D30  4E 80 00 20 */	blr 

