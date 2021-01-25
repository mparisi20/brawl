.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __DBMtrHandler
__DBMtrHandler:
/* 8025F99C 0025571C  81 8D CA 48 */	lwz r12, lbl_805A0E68-_SDA_BASE_(r13)
/* 8025F9A0 00255720  38 00 00 01 */	li r0, 1
/* 8025F9A4 00255724  98 0D CA 50 */	stb r0, lbl_805A0E70-_SDA_BASE_(r13)
/* 8025F9A8 00255728  2C 0C 00 00 */	cmpwi r12, 0
/* 8025F9AC 0025572C  4D 82 00 20 */	beqlr 
/* 8025F9B0 00255730  38 60 00 00 */	li r3, 0
/* 8025F9B4 00255734  7D 89 03 A6 */	mtctr r12
/* 8025F9B8 00255738  4E 80 04 20 */	bctr 
/* 8025F9BC 0025573C  4E 80 00 20 */	blr 

.global __DBIntrHandler
__DBIntrHandler:
/* 8025F9C0 00255740  38 00 10 00 */	li r0, 0x1000
/* 8025F9C4 00255744  3C A0 CC 00 */	lis r5, 0xCC003000@ha
/* 8025F9C8 00255748  90 05 30 00 */	stw r0, 0xCC003000@l(r5)
/* 8025F9CC 0025574C  81 8D CA 4C */	lwz r12, lbl_805A0E6C-_SDA_BASE_(r13)
/* 8025F9D0 00255750  2C 0C 00 00 */	cmpwi r12, 0
/* 8025F9D4 00255754  4D 82 00 20 */	beqlr 
/* 8025F9D8 00255758  7D 89 03 A6 */	mtctr r12
/* 8025F9DC 0025575C  4E 80 04 20 */	bctr 
/* 8025F9E0 00255760  4E 80 00 20 */	blr 

.global DBInitComm
DBInitComm:
/* 8025F9E4 00255764  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025F9E8 00255768  7C 08 02 A6 */	mflr r0
/* 8025F9EC 0025576C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025F9F0 00255770  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025F9F4 00255774  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025F9F8 00255778  7C 9E 23 78 */	mr r30, r4
/* 8025F9FC 0025577C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025FA00 00255780  7C 7D 1B 78 */	mr r29, r3
/* 8025FA04 00255784  4B F7 D5 0D */	bl OSDisableInterrupts
/* 8025FA08 00255788  38 0D CA 50 */	addi r0, r13, lbl_805A0E70-_SDA_BASE_
/* 8025FA0C 0025578C  7C 7F 1B 78 */	mr r31, r3
/* 8025FA10 00255790  90 1D 00 00 */	stw r0, 0(r29)
/* 8025FA14 00255794  93 CD CA 48 */	stw r30, lbl_805A0E68-_SDA_BASE_(r13)
/* 8025FA18 00255798  48 00 05 A1 */	bl __DBEXIInit
/* 8025FA1C 0025579C  7F E3 FB 78 */	mr r3, r31
/* 8025FA20 002557A0  4B F7 D5 19 */	bl OSRestoreInterrupts
/* 8025FA24 002557A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025FA28 002557A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025FA2C 002557AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025FA30 002557B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025FA34 002557B4  7C 08 03 A6 */	mtlr r0
/* 8025FA38 002557B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8025FA3C 002557BC  4E 80 00 20 */	blr 

.global DBInitInterrupts
DBInitInterrupts:
/* 8025FA40 002557C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FA44 002557C4  7C 08 02 A6 */	mflr r0
/* 8025FA48 002557C8  3C 60 00 02 */	lis r3, 0x00018000@ha
/* 8025FA4C 002557CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FA50 002557D0  38 63 80 00 */	addi r3, r3, 0x00018000@l
/* 8025FA54 002557D4  4B F7 D8 4D */	bl __OSMaskInterrupts
/* 8025FA58 002557D8  38 60 00 40 */	li r3, 0x40
/* 8025FA5C 002557DC  4B F7 D8 45 */	bl __OSMaskInterrupts
/* 8025FA60 002557E0  3C 60 80 26 */	lis r3, __DBMtrHandler@ha
/* 8025FA64 002557E4  3C 80 80 26 */	lis r4, __DBIntrHandler@ha
/* 8025FA68 002557E8  38 63 F9 9C */	addi r3, r3, __DBMtrHandler@l
/* 8025FA6C 002557EC  90 6D CA 4C */	stw r3, lbl_805A0E6C-_SDA_BASE_(r13)
/* 8025FA70 002557F0  38 84 F9 C0 */	addi r4, r4, __DBIntrHandler@l
/* 8025FA74 002557F4  38 60 00 19 */	li r3, 0x19
/* 8025FA78 002557F8  4B F7 D4 E5 */	bl __OSSetInterruptHandler
/* 8025FA7C 002557FC  38 60 00 40 */	li r3, 0x40
/* 8025FA80 00255800  4B F7 D8 A1 */	bl __OSUnmaskInterrupts
/* 8025FA84 00255804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FA88 00255808  7C 08 03 A6 */	mtlr r0
/* 8025FA8C 0025580C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FA90 00255810  4E 80 00 20 */	blr 

.global DBQueryData
DBQueryData:
/* 8025FA94 00255814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025FA98 00255818  7C 08 02 A6 */	mflr r0
/* 8025FA9C 0025581C  38 60 00 00 */	li r3, 0
/* 8025FAA0 00255820  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025FAA4 00255824  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025FAA8 00255828  80 0D CA 58 */	lwz r0, lbl_805A0E78-_SDA_BASE_(r13)
/* 8025FAAC 0025582C  98 6D CA 50 */	stb r3, lbl_805A0E70-_SDA_BASE_(r13)
/* 8025FAB0 00255830  2C 00 00 00 */	cmpwi r0, 0
/* 8025FAB4 00255834  40 82 00 6C */	bne lbl_8025FB20
/* 8025FAB8 00255838  4B F7 D4 59 */	bl OSDisableInterrupts
/* 8025FABC 0025583C  7C 7F 1B 78 */	mr r31, r3
/* 8025FAC0 00255840  38 81 00 08 */	addi r4, r1, 8
/* 8025FAC4 00255844  3C 60 34 00 */	lis r3, 0x3400
/* 8025FAC8 00255848  38 A0 00 01 */	li r5, 1
/* 8025FACC 0025584C  48 00 05 A9 */	bl __DBEXIReadReg
/* 8025FAD0 00255850  88 01 00 08 */	lbz r0, 8(r1)
/* 8025FAD4 00255854  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8025FAD8 00255858  40 82 00 40 */	bne lbl_8025FB18
/* 8025FADC 0025585C  3C 60 34 00 */	lis r3, 0x34000200@ha
/* 8025FAE0 00255860  38 81 00 0C */	addi r4, r1, 0xc
/* 8025FAE4 00255864  38 63 02 00 */	addi r3, r3, 0x34000200@l
/* 8025FAE8 00255868  38 A0 00 04 */	li r5, 4
/* 8025FAEC 0025586C  48 00 05 89 */	bl __DBEXIReadReg
/* 8025FAF0 00255870  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8025FAF4 00255874  54 83 00 CE */	rlwinm r3, r4, 0, 3, 7
/* 8025FAF8 00255878  3C 03 E1 00 */	addis r0, r3, 0xe100
/* 8025FAFC 0025587C  28 00 00 00 */	cmplwi r0, 0
/* 8025FB00 00255880  40 82 00 18 */	bne lbl_8025FB18
/* 8025FB04 00255884  54 83 04 FE */	clrlwi r3, r4, 0x13
/* 8025FB08 00255888  38 00 00 01 */	li r0, 1
/* 8025FB0C 0025588C  90 8D CA 54 */	stw r4, lbl_805A0E74-_SDA_BASE_(r13)
/* 8025FB10 00255890  90 6D CA 58 */	stw r3, lbl_805A0E78-_SDA_BASE_(r13)
/* 8025FB14 00255894  98 0D CA 50 */	stb r0, lbl_805A0E70-_SDA_BASE_(r13)
lbl_8025FB18:
/* 8025FB18 00255898  7F E3 FB 78 */	mr r3, r31
/* 8025FB1C 0025589C  4B F7 D4 1D */	bl OSRestoreInterrupts
lbl_8025FB20:
/* 8025FB20 002558A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025FB24 002558A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025FB28 002558A8  80 6D CA 58 */	lwz r3, lbl_805A0E78-_SDA_BASE_(r13)
/* 8025FB2C 002558AC  7C 08 03 A6 */	mtlr r0
/* 8025FB30 002558B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8025FB34 002558B4  4E 80 00 20 */	blr 

.global DBRead
DBRead:
/* 8025FB38 002558B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FB3C 002558BC  7C 08 02 A6 */	mflr r0
/* 8025FB40 002558C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FB44 002558C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025FB48 002558C8  7C 9F 23 78 */	mr r31, r4
/* 8025FB4C 002558CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8025FB50 002558D0  7C 7E 1B 78 */	mr r30, r3
/* 8025FB54 002558D4  4B F7 D3 BD */	bl OSDisableInterrupts
/* 8025FB58 002558D8  80 AD CA 54 */	lwz r5, lbl_805A0E74-_SDA_BASE_(r13)
/* 8025FB5C 002558DC  38 1F 00 03 */	addi r0, r31, 3
/* 8025FB60 002558E0  7C 7F 1B 78 */	mr r31, r3
/* 8025FB64 002558E4  7F C4 F3 78 */	mr r4, r30
/* 8025FB68 002558E8  54 A3 87 FE */	rlwinm r3, r5, 0x10, 0x1f, 0x1f
/* 8025FB6C 002558EC  54 05 00 3A */	rlwinm r5, r0, 0, 0, 0x1d
/* 8025FB70 002558F0  7C 03 00 D0 */	neg r0, r3
/* 8025FB74 002558F4  54 03 05 28 */	rlwinm r3, r0, 0, 0x14, 0x14
/* 8025FB78 002558F8  3C 63 00 D1 */	addis r3, r3, 0xd1
/* 8025FB7C 002558FC  38 03 10 00 */	addi r0, r3, 0x1000
/* 8025FB80 00255900  54 03 30 AE */	rlwinm r3, r0, 6, 2, 0x17
/* 8025FB84 00255904  48 00 07 19 */	bl __DBEXIReadRam
/* 8025FB88 00255908  38 00 00 00 */	li r0, 0
/* 8025FB8C 0025590C  7F E3 FB 78 */	mr r3, r31
/* 8025FB90 00255910  90 0D CA 58 */	stw r0, lbl_805A0E78-_SDA_BASE_(r13)
/* 8025FB94 00255914  98 0D CA 50 */	stb r0, lbl_805A0E70-_SDA_BASE_(r13)
/* 8025FB98 00255918  4B F7 D3 A1 */	bl OSRestoreInterrupts
/* 8025FB9C 0025591C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025FBA0 00255920  38 60 00 00 */	li r3, 0
/* 8025FBA4 00255924  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025FBA8 00255928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FBAC 0025592C  7C 08 03 A6 */	mtlr r0
/* 8025FBB0 00255930  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FBB4 00255934  4E 80 00 20 */	blr 

.global DBWrite
DBWrite:
/* 8025FBB8 00255938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8025FBBC 0025593C  7C 08 02 A6 */	mflr r0
/* 8025FBC0 00255940  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025FBC4 00255944  39 61 00 30 */	addi r11, r1, 0x30
/* 8025FBC8 00255948  48 19 17 59 */	bl _savegpr_27
/* 8025FBCC 0025594C  7C 7B 1B 78 */	mr r27, r3
/* 8025FBD0 00255950  7C 9C 23 78 */	mr r28, r4
/* 8025FBD4 00255954  4B F7 D3 3D */	bl OSDisableInterrupts
/* 8025FBD8 00255958  7C 7F 1B 78 */	mr r31, r3
lbl_8025FBDC:
/* 8025FBDC 0025595C  38 81 00 0A */	addi r4, r1, 0xa
/* 8025FBE0 00255960  3C 60 34 00 */	lis r3, 0x3400
/* 8025FBE4 00255964  38 A0 00 01 */	li r5, 1
/* 8025FBE8 00255968  48 00 04 8D */	bl __DBEXIReadReg
/* 8025FBEC 0025596C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8025FBF0 00255970  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8025FBF4 00255974  40 82 FF E8 */	bne lbl_8025FBDC
/* 8025FBF8 00255978  88 6D AA 28 */	lbz r3, lbl_8059EE48-_SDA_BASE_(r13)
/* 8025FBFC 0025597C  38 1C 00 03 */	addi r0, r28, 3
/* 8025FC00 00255980  54 1D 00 3A */	rlwinm r29, r0, 0, 0, 0x1d
/* 8025FC04 00255984  38 63 00 01 */	addi r3, r3, 1
/* 8025FC08 00255988  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 8025FC0C 0025598C  98 6D AA 28 */	stb r3, lbl_8059EE48-_SDA_BASE_(r13)
/* 8025FC10 00255990  7C 00 00 D0 */	neg r0, r0
/* 8025FC14 00255994  54 03 05 28 */	rlwinm r3, r0, 0, 0x14, 0x14
/* 8025FC18 00255998  3C 03 00 D1 */	addis r0, r3, 0xd1
/* 8025FC1C 0025599C  54 00 30 AE */	rlwinm r0, r0, 6, 2, 0x17
/* 8025FC20 002559A0  64 1E 80 00 */	oris r30, r0, 0x8000
lbl_8025FC24:
/* 8025FC24 002559A4  7F C3 F3 78 */	mr r3, r30
/* 8025FC28 002559A8  7F 64 DB 78 */	mr r4, r27
/* 8025FC2C 002559AC  7F A5 EB 78 */	mr r5, r29
/* 8025FC30 002559B0  48 00 07 4D */	bl __DBEXIWriteRam
/* 8025FC34 002559B4  2C 03 00 00 */	cmpwi r3, 0
/* 8025FC38 002559B8  41 82 FF EC */	beq lbl_8025FC24
lbl_8025FC3C:
/* 8025FC3C 002559BC  38 81 00 09 */	addi r4, r1, 9
/* 8025FC40 002559C0  3C 60 34 00 */	lis r3, 0x3400
/* 8025FC44 002559C4  38 A0 00 01 */	li r5, 1
/* 8025FC48 002559C8  48 00 04 2D */	bl __DBEXIReadReg
/* 8025FC4C 002559CC  88 01 00 09 */	lbz r0, 9(r1)
/* 8025FC50 002559D0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8025FC54 002559D4  40 82 FF E8 */	bne lbl_8025FC3C
/* 8025FC58 002559D8  88 6D AA 28 */	lbz r3, lbl_8059EE48-_SDA_BASE_(r13)
/* 8025FC5C 002559DC  57 80 04 FE */	clrlwi r0, r28, 0x13
/* 8025FC60 002559E0  64 1D 1F 00 */	oris r29, r0, 0x1f00
/* 8025FC64 002559E4  3F C0 B4 00 */	lis r30, 0xB4000100@ha
/* 8025FC68 002559E8  50 7D 82 1E */	rlwimi r29, r3, 0x10, 8, 0xf
lbl_8025FC6C:
/* 8025FC6C 002559EC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8025FC70 002559F0  38 7E 01 00 */	addi r3, r30, 0xB4000100@l
/* 8025FC74 002559F4  38 81 00 0C */	addi r4, r1, 0xc
/* 8025FC78 002559F8  38 A0 00 04 */	li r5, 4
/* 8025FC7C 002559FC  48 00 05 1D */	bl __DBEXIWriteReg
/* 8025FC80 00255A00  2C 03 00 00 */	cmpwi r3, 0
/* 8025FC84 00255A04  41 82 FF E8 */	beq lbl_8025FC6C
lbl_8025FC88:
/* 8025FC88 00255A08  38 81 00 08 */	addi r4, r1, 8
/* 8025FC8C 00255A0C  3C 60 34 00 */	lis r3, 0x3400
/* 8025FC90 00255A10  38 A0 00 01 */	li r5, 1
/* 8025FC94 00255A14  48 00 03 E1 */	bl __DBEXIReadReg
/* 8025FC98 00255A18  88 01 00 08 */	lbz r0, 8(r1)
/* 8025FC9C 00255A1C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8025FCA0 00255A20  40 82 FF E8 */	bne lbl_8025FC88
/* 8025FCA4 00255A24  7F E3 FB 78 */	mr r3, r31
/* 8025FCA8 00255A28  4B F7 D2 91 */	bl OSRestoreInterrupts
/* 8025FCAC 00255A2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8025FCB0 00255A30  38 60 00 00 */	li r3, 0
/* 8025FCB4 00255A34  48 19 16 B9 */	bl _restgpr_27
/* 8025FCB8 00255A38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025FCBC 00255A3C  7C 08 03 A6 */	mtlr r0
/* 8025FCC0 00255A40  38 21 00 30 */	addi r1, r1, 0x30
/* 8025FCC4 00255A44  4E 80 00 20 */	blr 

.global DBOpen
DBOpen:
/* 8025FCC8 00255A48  4E 80 00 20 */	blr 

.global DBClose
DBClose:
/* 8025FCCC 00255A4C  4E 80 00 20 */	blr 
