.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfKeepFrameBuffer$7update
gfKeepFrameBuffer$7update:
/* 80024D6C 0001AAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024D70 0001AAF0  7C 08 02 A6 */	mflr r0
/* 80024D74 0001AAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024D78 0001AAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024D7C 0001AAFC  7C 7F 1B 78 */	mr r31, r3
/* 80024D80 0001AB00  88 83 00 00 */	lbz r4, 0(r3)
/* 80024D84 0001AB04  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 80024D88 0001AB08  41 82 00 24 */	beq lbl_80024DAC
/* 80024D8C 0001AB0C  54 80 D7 FF */	rlwinm. r0, r4, 0x1a, 0x1f, 0x1f
/* 80024D90 0001AB10  41 82 00 1C */	beq lbl_80024DAC
/* 80024D94 0001AB14  48 00 B0 B5 */	bl gfCopyEFBMgr$7getInstance
/* 80024D98 0001AB18  38 80 00 00 */	li r4, 0
/* 80024D9C 0001AB1C  48 00 B1 A9 */	bl gfCopyEFBMgr$7getEFB
/* 80024DA0 0001AB20  88 1F 00 00 */	lbz r0, 0(r31)
/* 80024DA4 0001AB24  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80024DA8 0001AB28  98 1F 00 00 */	stb r0, 0(r31)
lbl_80024DAC:
/* 80024DAC 0001AB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024DB0 0001AB30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024DB4 0001AB34  7C 08 03 A6 */	mtlr r0
/* 80024DB8 0001AB38  38 21 00 10 */	addi r1, r1, 0x10
/* 80024DBC 0001AB3C  4E 80 00 20 */	blr 

.global gfKeepFrameBuffer$7render
gfKeepFrameBuffer$7render:
/* 80024DC0 0001AB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024DC4 0001AB44  7C 08 02 A6 */	mflr r0
/* 80024DC8 0001AB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024DCC 0001AB4C  88 03 00 00 */	lbz r0, 0(r3)
/* 80024DD0 0001AB50  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80024DD4 0001AB54  41 82 00 3C */	beq lbl_80024E10
/* 80024DD8 0001AB58  38 60 00 00 */	li r3, 0
/* 80024DDC 0001AB5C  38 80 00 07 */	li r4, 7
/* 80024DE0 0001AB60  38 A0 00 00 */	li r5, 0
/* 80024DE4 0001AB64  48 1C F9 91 */	bl GXSetZMode
/* 80024DE8 0001AB68  38 60 00 00 */	li r3, 0
/* 80024DEC 0001AB6C  38 00 00 FF */	li r0, 0xff
/* 80024DF0 0001AB70  98 61 00 08 */	stb r3, 8(r1)
/* 80024DF4 0001AB74  98 61 00 09 */	stb r3, 9(r1)
/* 80024DF8 0001AB78  98 61 00 0A */	stb r3, 0xa(r1)
/* 80024DFC 0001AB7C  98 01 00 0B */	stb r0, 0xb(r1)
/* 80024E00 0001AB80  48 00 B0 49 */	bl gfCopyEFBMgr$7getInstance
/* 80024E04 0001AB84  38 A1 00 08 */	addi r5, r1, 8
/* 80024E08 0001AB88  38 80 00 00 */	li r4, 0
/* 80024E0C 0001AB8C  48 00 B1 BD */	bl gfCopyEFBMgr$7drawCopyEFB
lbl_80024E10:
/* 80024E10 0001AB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024E14 0001AB94  7C 08 03 A6 */	mtlr r0
/* 80024E18 0001AB98  38 21 00 10 */	addi r1, r1, 0x10
/* 80024E1C 0001AB9C  4E 80 00 20 */	blr 

.global func_80024E20
func_80024E20:
/* 80024E20 0001ABA0  88 03 00 00 */	lbz r0, 0(r3)
/* 80024E24 0001ABA4  38 80 00 00 */	li r4, 0
/* 80024E28 0001ABA8  60 00 00 C0 */	ori r0, r0, 0xc0
/* 80024E2C 0001ABAC  98 03 00 00 */	stb r0, 0(r3)
/* 80024E30 0001ABB0  80 6D BB 60 */	lwz r3, lbl_8059FF80-_SDA_BASE_(r13)
/* 80024E34 0001ABB4  4B FE 93 C4 */	b gfSceneRoot$7setUseCopyFB

.global gfKeepFrameBuffer$7endKeepScreen
gfKeepFrameBuffer$7endKeepScreen:
/* 80024E38 0001ABB8  88 03 00 00 */	lbz r0, 0(r3)
/* 80024E3C 0001ABBC  38 80 00 01 */	li r4, 1
/* 80024E40 0001ABC0  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80024E44 0001ABC4  98 03 00 00 */	stb r0, 0(r3)
/* 80024E48 0001ABC8  80 6D BB 60 */	lwz r3, lbl_8059FF80-_SDA_BASE_(r13)
/* 80024E4C 0001ABCC  4B FE 93 AC */	b gfSceneRoot$7setUseCopyFB

.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfKeepFrameBuffer$7startKeepScreen
gfKeepFrameBuffer$7startKeepScreen:
/* 8002B61C 0002139C  88 03 00 35 */	lbz r0, 0x35(r3)
/* 8002B620 000213A0  60 00 00 80 */	ori r0, r0, 0x80
/* 8002B624 000213A4  98 03 00 35 */	stb r0, 0x35(r3)
/* 8002B628 000213A8  4E 80 00 20 */	blr 
