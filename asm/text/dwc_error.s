.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DWC_GetLastError
DWC_GetLastError:
/* 8033514C 0032AECC  2C 03 00 00 */	cmpwi r3, 0
/* 80335150 0032AED0  41 82 00 0C */	beq lbl_8033515C
/* 80335154 0032AED4  80 0D CB 2C */	lwz r0, lbl_805A0F4C-_SDA_BASE_(r13)
/* 80335158 0032AED8  90 03 00 00 */	stw r0, 0(r3)
lbl_8033515C:
/* 8033515C 0032AEDC  80 6D CB 28 */	lwz r3, lbl_805A0F48-_SDA_BASE_(r13)
/* 80335160 0032AEE0  4E 80 00 20 */	blr 

.global DWC_GetLastErrorEx
DWC_GetLastErrorEx:
/* 80335164 0032AEE4  2C 03 00 00 */	cmpwi r3, 0
/* 80335168 0032AEE8  41 82 00 0C */	beq lbl_80335174
/* 8033516C 0032AEEC  80 0D CB 2C */	lwz r0, lbl_805A0F4C-_SDA_BASE_(r13)
/* 80335170 0032AEF0  90 03 00 00 */	stw r0, 0(r3)
lbl_80335174:
/* 80335174 0032AEF4  2C 04 00 00 */	cmpwi r4, 0
/* 80335178 0032AEF8  41 82 00 9C */	beq lbl_80335214
/* 8033517C 0032AEFC  80 0D CB 28 */	lwz r0, lbl_805A0F48-_SDA_BASE_(r13)
/* 80335180 0032AF00  28 00 00 15 */	cmplwi r0, 0x15
/* 80335184 0032AF04  41 81 00 88 */	bgt lbl_8033520C
/* 80335188 0032AF08  3C 60 80 49 */	lis r3, lbl_804890F0@ha
/* 8033518C 0032AF0C  54 00 10 3A */	slwi r0, r0, 2
/* 80335190 0032AF10  38 63 90 F0 */	addi r3, r3, lbl_804890F0@l
/* 80335194 0032AF14  7C 63 00 2E */	lwzx r3, r3, r0
/* 80335198 0032AF18  7C 69 03 A6 */	mtctr r3
/* 8033519C 0032AF1C  4E 80 04 20 */	bctr 
/* 803351A0 0032AF20  38 00 00 06 */	li r0, 6
/* 803351A4 0032AF24  90 04 00 00 */	stw r0, 0(r4)
/* 803351A8 0032AF28  48 00 00 6C */	b lbl_80335214
/* 803351AC 0032AF2C  38 00 00 03 */	li r0, 3
/* 803351B0 0032AF30  90 04 00 00 */	stw r0, 0(r4)
/* 803351B4 0032AF34  48 00 00 60 */	b lbl_80335214
/* 803351B8 0032AF38  38 00 00 04 */	li r0, 4
/* 803351BC 0032AF3C  90 04 00 00 */	stw r0, 0(r4)
/* 803351C0 0032AF40  48 00 00 54 */	b lbl_80335214
/* 803351C4 0032AF44  38 00 00 01 */	li r0, 1
/* 803351C8 0032AF48  90 04 00 00 */	stw r0, 0(r4)
/* 803351CC 0032AF4C  48 00 00 48 */	b lbl_80335214
/* 803351D0 0032AF50  38 00 00 07 */	li r0, 7
/* 803351D4 0032AF54  90 04 00 00 */	stw r0, 0(r4)
/* 803351D8 0032AF58  48 00 00 3C */	b lbl_80335214
/* 803351DC 0032AF5C  38 00 00 05 */	li r0, 5
/* 803351E0 0032AF60  90 04 00 00 */	stw r0, 0(r4)
/* 803351E4 0032AF64  48 00 00 30 */	b lbl_80335214
/* 803351E8 0032AF68  38 00 00 06 */	li r0, 6
/* 803351EC 0032AF6C  90 04 00 00 */	stw r0, 0(r4)
/* 803351F0 0032AF70  48 00 00 24 */	b lbl_80335214
/* 803351F4 0032AF74  38 00 00 02 */	li r0, 2
/* 803351F8 0032AF78  90 04 00 00 */	stw r0, 0(r4)
/* 803351FC 0032AF7C  48 00 00 18 */	b lbl_80335214
/* 80335200 0032AF80  38 00 00 01 */	li r0, 1
/* 80335204 0032AF84  90 04 00 00 */	stw r0, 0(r4)
/* 80335208 0032AF88  48 00 00 0C */	b lbl_80335214
lbl_8033520C:
/* 8033520C 0032AF8C  38 00 00 00 */	li r0, 0
/* 80335210 0032AF90  90 04 00 00 */	stw r0, 0(r4)
lbl_80335214:
/* 80335214 0032AF94  80 6D CB 28 */	lwz r3, lbl_805A0F48-_SDA_BASE_(r13)
/* 80335218 0032AF98  4E 80 00 20 */	blr 

.global DWC_ClearError
DWC_ClearError:
/* 8033521C 0032AF9C  80 0D CB 28 */	lwz r0, lbl_805A0F48-_SDA_BASE_(r13)
/* 80335220 0032AFA0  2C 00 00 09 */	cmpwi r0, 9
/* 80335224 0032AFA4  4D 82 00 20 */	beqlr 
/* 80335228 0032AFA8  38 00 00 00 */	li r0, 0
/* 8033522C 0032AFAC  90 0D CB 28 */	stw r0, lbl_805A0F48-_SDA_BASE_(r13)
/* 80335230 0032AFB0  90 0D CB 2C */	stw r0, lbl_805A0F4C-_SDA_BASE_(r13)
/* 80335234 0032AFB4  4E 80 00 20 */	blr 

.global DWCi_IsError
DWCi_IsError:
/* 80335238 0032AFB8  80 6D CB 28 */	lwz r3, lbl_805A0F48-_SDA_BASE_(r13)
/* 8033523C 0032AFBC  7C 03 00 D0 */	neg r0, r3
/* 80335240 0032AFC0  7C 00 1B 78 */	or r0, r0, r3
/* 80335244 0032AFC4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80335248 0032AFC8  4E 80 00 20 */	blr 

.global DWCi_SetError
DWCi_SetError:
/* 8033524C 0032AFCC  80 0D CB 28 */	lwz r0, lbl_805A0F48-_SDA_BASE_(r13)
/* 80335250 0032AFD0  2C 00 00 09 */	cmpwi r0, 9
/* 80335254 0032AFD4  4D 82 00 20 */	beqlr 
/* 80335258 0032AFD8  90 6D CB 28 */	stw r3, lbl_805A0F48-_SDA_BASE_(r13)
/* 8033525C 0032AFDC  90 8D CB 2C */	stw r4, lbl_805A0F4C-_SDA_BASE_(r13)
/* 80335260 0032AFE0  4E 80 00 20 */	blr 

