.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2utFPQ34nw4r2ut4List$7List_Init
nw4r2utFPQ34nw4r2ut4List$7List_Init:
/* 8015BF9C 00151D1C  38 00 00 00 */	li r0, 0
/* 8015BFA0 00151D20  B0 83 00 0A */	sth r4, 0xa(r3)
/* 8015BFA4 00151D24  90 03 00 00 */	stw r0, 0(r3)
/* 8015BFA8 00151D28  90 03 00 04 */	stw r0, 4(r3)
/* 8015BFAC 00151D2C  B0 03 00 08 */	sth r0, 8(r3)
/* 8015BFB0 00151D30  4E 80 00 20 */	blr 

.global nw4r2utFPQ34nw4r2ut4List$7List_Append
nw4r2utFPQ34nw4r2ut4List$7List_Append:
/* 8015BFB4 00151D34  80 03 00 00 */	lwz r0, 0(r3)
/* 8015BFB8 00151D38  2C 00 00 00 */	cmpwi r0, 0
/* 8015BFBC 00151D3C  40 82 00 30 */	bne lbl_8015BFEC
/* 8015BFC0 00151D40  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 8015BFC4 00151D44  38 00 00 00 */	li r0, 0
/* 8015BFC8 00151D48  7C A4 2A 14 */	add r5, r4, r5
/* 8015BFCC 00151D4C  90 05 00 04 */	stw r0, 4(r5)
/* 8015BFD0 00151D50  90 05 00 00 */	stw r0, 0(r5)
/* 8015BFD4 00151D54  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8015BFD8 00151D58  90 83 00 00 */	stw r4, 0(r3)
/* 8015BFDC 00151D5C  38 05 00 01 */	addi r0, r5, 1
/* 8015BFE0 00151D60  90 83 00 04 */	stw r4, 4(r3)
/* 8015BFE4 00151D64  B0 03 00 08 */	sth r0, 8(r3)
/* 8015BFE8 00151D68  4E 80 00 20 */	blr 
lbl_8015BFEC:
/* 8015BFEC 00151D6C  A0 C3 00 0A */	lhz r6, 0xa(r3)
/* 8015BFF0 00151D70  38 00 00 00 */	li r0, 0
/* 8015BFF4 00151D74  80 A3 00 04 */	lwz r5, 4(r3)
/* 8015BFF8 00151D78  7C A6 21 6E */	stwux r5, r6, r4
/* 8015BFFC 00151D7C  90 06 00 04 */	stw r0, 4(r6)
/* 8015C000 00151D80  80 A3 00 04 */	lwz r5, 4(r3)
/* 8015C004 00151D84  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C008 00151D88  7C A5 02 14 */	add r5, r5, r0
/* 8015C00C 00151D8C  90 85 00 04 */	stw r4, 4(r5)
/* 8015C010 00151D90  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8015C014 00151D94  90 83 00 04 */	stw r4, 4(r3)
/* 8015C018 00151D98  38 05 00 01 */	addi r0, r5, 1
/* 8015C01C 00151D9C  B0 03 00 08 */	sth r0, 8(r3)
/* 8015C020 00151DA0  4E 80 00 20 */	blr 

.global nw4r2utFPQ34nw4r2ut4List$7List_Insert
nw4r2utFPQ34nw4r2ut4List$7List_Insert:
/* 8015C024 00151DA4  2C 04 00 00 */	cmpwi r4, 0
/* 8015C028 00151DA8  40 82 00 74 */	bne lbl_8015C09C
/* 8015C02C 00151DAC  80 03 00 00 */	lwz r0, 0(r3)
/* 8015C030 00151DB0  2C 00 00 00 */	cmpwi r0, 0
/* 8015C034 00151DB4  40 82 00 30 */	bne lbl_8015C064
/* 8015C038 00151DB8  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8015C03C 00151DBC  38 00 00 00 */	li r0, 0
/* 8015C040 00151DC0  7C 85 22 14 */	add r4, r5, r4
/* 8015C044 00151DC4  90 04 00 04 */	stw r0, 4(r4)
/* 8015C048 00151DC8  90 04 00 00 */	stw r0, 0(r4)
/* 8015C04C 00151DCC  A0 83 00 08 */	lhz r4, 8(r3)
/* 8015C050 00151DD0  90 A3 00 00 */	stw r5, 0(r3)
/* 8015C054 00151DD4  38 04 00 01 */	addi r0, r4, 1
/* 8015C058 00151DD8  90 A3 00 04 */	stw r5, 4(r3)
/* 8015C05C 00151DDC  B0 03 00 08 */	sth r0, 8(r3)
/* 8015C060 00151DE0  4E 80 00 20 */	blr 
lbl_8015C064:
/* 8015C064 00151DE4  A0 C3 00 0A */	lhz r6, 0xa(r3)
/* 8015C068 00151DE8  38 00 00 00 */	li r0, 0
/* 8015C06C 00151DEC  80 83 00 04 */	lwz r4, 4(r3)
/* 8015C070 00151DF0  7C 86 29 6E */	stwux r4, r6, r5
/* 8015C074 00151DF4  90 06 00 04 */	stw r0, 4(r6)
/* 8015C078 00151DF8  80 83 00 04 */	lwz r4, 4(r3)
/* 8015C07C 00151DFC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C080 00151E00  7C 84 02 14 */	add r4, r4, r0
/* 8015C084 00151E04  90 A4 00 04 */	stw r5, 4(r4)
/* 8015C088 00151E08  A0 83 00 08 */	lhz r4, 8(r3)
/* 8015C08C 00151E0C  90 A3 00 04 */	stw r5, 4(r3)
/* 8015C090 00151E10  38 04 00 01 */	addi r0, r4, 1
/* 8015C094 00151E14  B0 03 00 08 */	sth r0, 8(r3)
/* 8015C098 00151E18  4E 80 00 20 */	blr 
lbl_8015C09C:
/* 8015C09C 00151E1C  80 03 00 00 */	lwz r0, 0(r3)
/* 8015C0A0 00151E20  7C 04 00 40 */	cmplw r4, r0
/* 8015C0A4 00151E24  40 82 00 6C */	bne lbl_8015C110
/* 8015C0A8 00151E28  2C 00 00 00 */	cmpwi r0, 0
/* 8015C0AC 00151E2C  40 82 00 30 */	bne lbl_8015C0DC
/* 8015C0B0 00151E30  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8015C0B4 00151E34  38 00 00 00 */	li r0, 0
/* 8015C0B8 00151E38  7C 85 22 14 */	add r4, r5, r4
/* 8015C0BC 00151E3C  90 04 00 04 */	stw r0, 4(r4)
/* 8015C0C0 00151E40  90 04 00 00 */	stw r0, 0(r4)
/* 8015C0C4 00151E44  A0 83 00 08 */	lhz r4, 8(r3)
/* 8015C0C8 00151E48  90 A3 00 00 */	stw r5, 0(r3)
/* 8015C0CC 00151E4C  38 04 00 01 */	addi r0, r4, 1
/* 8015C0D0 00151E50  90 A3 00 04 */	stw r5, 4(r3)
/* 8015C0D4 00151E54  B0 03 00 08 */	sth r0, 8(r3)
/* 8015C0D8 00151E58  4E 80 00 20 */	blr 
lbl_8015C0DC:
/* 8015C0DC 00151E5C  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8015C0E0 00151E60  38 00 00 00 */	li r0, 0
/* 8015C0E4 00151E64  7C 04 29 6E */	stwux r0, r4, r5
/* 8015C0E8 00151E68  80 03 00 00 */	lwz r0, 0(r3)
/* 8015C0EC 00151E6C  90 04 00 04 */	stw r0, 4(r4)
/* 8015C0F0 00151E70  80 83 00 00 */	lwz r4, 0(r3)
/* 8015C0F4 00151E74  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C0F8 00151E78  7C A4 01 2E */	stwx r5, r4, r0
/* 8015C0FC 00151E7C  A0 83 00 08 */	lhz r4, 8(r3)
/* 8015C100 00151E80  90 A3 00 00 */	stw r5, 0(r3)
/* 8015C104 00151E84  38 04 00 01 */	addi r0, r4, 1
/* 8015C108 00151E88  B0 03 00 08 */	sth r0, 8(r3)
/* 8015C10C 00151E8C  4E 80 00 20 */	blr 
lbl_8015C110:
/* 8015C110 00151E90  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C114 00151E94  7C C4 00 2E */	lwzx r6, r4, r0
/* 8015C118 00151E98  7C E5 02 14 */	add r7, r5, r0
/* 8015C11C 00151E9C  7C C5 01 2E */	stwx r6, r5, r0
/* 8015C120 00151EA0  7C C6 02 14 */	add r6, r6, r0
/* 8015C124 00151EA4  90 87 00 04 */	stw r4, 4(r7)
/* 8015C128 00151EA8  90 A6 00 04 */	stw r5, 4(r6)
/* 8015C12C 00151EAC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C130 00151EB0  7C A4 01 2E */	stwx r5, r4, r0
/* 8015C134 00151EB4  A0 83 00 08 */	lhz r4, 8(r3)
/* 8015C138 00151EB8  38 04 00 01 */	addi r0, r4, 1
/* 8015C13C 00151EBC  B0 03 00 08 */	sth r0, 8(r3)
/* 8015C140 00151EC0  4E 80 00 20 */	blr 

.global nw4r2utFPQ34nw4r2ut4List$7List_Remove
nw4r2utFPQ34nw4r2ut4List$7List_Remove:
/* 8015C144 00151EC4  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 8015C148 00151EC8  7C C4 2A 14 */	add r6, r4, r5
/* 8015C14C 00151ECC  7C 84 28 2E */	lwzx r4, r4, r5
/* 8015C150 00151ED0  2C 04 00 00 */	cmpwi r4, 0
/* 8015C154 00151ED4  40 82 00 10 */	bne lbl_8015C164
/* 8015C158 00151ED8  80 06 00 04 */	lwz r0, 4(r6)
/* 8015C15C 00151EDC  90 03 00 00 */	stw r0, 0(r3)
/* 8015C160 00151EE0  48 00 00 10 */	b lbl_8015C170
lbl_8015C164:
/* 8015C164 00151EE4  80 06 00 04 */	lwz r0, 4(r6)
/* 8015C168 00151EE8  7C 84 2A 14 */	add r4, r4, r5
/* 8015C16C 00151EEC  90 04 00 04 */	stw r0, 4(r4)
lbl_8015C170:
/* 8015C170 00151EF0  80 A6 00 04 */	lwz r5, 4(r6)
/* 8015C174 00151EF4  2C 05 00 00 */	cmpwi r5, 0
/* 8015C178 00151EF8  40 82 00 10 */	bne lbl_8015C188
/* 8015C17C 00151EFC  80 06 00 00 */	lwz r0, 0(r6)
/* 8015C180 00151F00  90 03 00 04 */	stw r0, 4(r3)
/* 8015C184 00151F04  48 00 00 10 */	b lbl_8015C194
lbl_8015C188:
/* 8015C188 00151F08  80 86 00 00 */	lwz r4, 0(r6)
/* 8015C18C 00151F0C  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C190 00151F10  7C 85 01 2E */	stwx r4, r5, r0
lbl_8015C194:
/* 8015C194 00151F14  38 00 00 00 */	li r0, 0
/* 8015C198 00151F18  90 06 00 00 */	stw r0, 0(r6)
/* 8015C19C 00151F1C  90 06 00 04 */	stw r0, 4(r6)
/* 8015C1A0 00151F20  A0 83 00 08 */	lhz r4, 8(r3)
/* 8015C1A4 00151F24  38 04 FF FF */	addi r0, r4, -1
/* 8015C1A8 00151F28  B0 03 00 08 */	sth r0, 8(r3)
/* 8015C1AC 00151F2C  4E 80 00 20 */	blr 

.global nw4r2utFPCQ34nw4r2ut4Lis$7List_GetNext
nw4r2utFPCQ34nw4r2ut4Lis$7List_GetNext:
/* 8015C1B0 00151F30  2C 04 00 00 */	cmpwi r4, 0
/* 8015C1B4 00151F34  40 82 00 0C */	bne lbl_8015C1C0
/* 8015C1B8 00151F38  80 63 00 00 */	lwz r3, 0(r3)
/* 8015C1BC 00151F3C  4E 80 00 20 */	blr 
lbl_8015C1C0:
/* 8015C1C0 00151F40  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C1C4 00151F44  7C 64 02 14 */	add r3, r4, r0
/* 8015C1C8 00151F48  80 63 00 04 */	lwz r3, 4(r3)
/* 8015C1CC 00151F4C  4E 80 00 20 */	blr 

.global nw4r2utFPCQ34nw4r2ut4Lis$7List_GetPrev
nw4r2utFPCQ34nw4r2ut4Lis$7List_GetPrev:
/* 8015C1D0 00151F50  2C 04 00 00 */	cmpwi r4, 0
/* 8015C1D4 00151F54  40 82 00 0C */	bne lbl_8015C1E0
/* 8015C1D8 00151F58  80 63 00 04 */	lwz r3, 4(r3)
/* 8015C1DC 00151F5C  4E 80 00 20 */	blr 
lbl_8015C1E0:
/* 8015C1E0 00151F60  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C1E4 00151F64  7C 64 00 2E */	lwzx r3, r4, r0
/* 8015C1E8 00151F68  4E 80 00 20 */	blr 

.global nw4r2utFPCQ34nw4r2ut4Lis$7List_GetNth
nw4r2utFPCQ34nw4r2ut4Lis$7List_GetNth:
/* 8015C1EC 00151F6C  38 C0 00 00 */	li r6, 0
/* 8015C1F0 00151F70  38 A0 00 00 */	li r5, 0
/* 8015C1F4 00151F74  48 00 00 18 */	b lbl_8015C20C
lbl_8015C1F8:
/* 8015C1F8 00151F78  7C 04 30 00 */	cmpw r4, r6
/* 8015C1FC 00151F7C  40 82 00 0C */	bne lbl_8015C208
/* 8015C200 00151F80  7C A3 2B 78 */	mr r3, r5
/* 8015C204 00151F84  4E 80 00 20 */	blr 
lbl_8015C208:
/* 8015C208 00151F88  38 C6 00 01 */	addi r6, r6, 1
lbl_8015C20C:
/* 8015C20C 00151F8C  2C 05 00 00 */	cmpwi r5, 0
/* 8015C210 00151F90  41 82 00 14 */	beq lbl_8015C224
/* 8015C214 00151F94  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8015C218 00151F98  7C A5 02 14 */	add r5, r5, r0
/* 8015C21C 00151F9C  80 A5 00 04 */	lwz r5, 4(r5)
/* 8015C220 00151FA0  48 00 00 08 */	b lbl_8015C228
lbl_8015C224:
/* 8015C224 00151FA4  80 A3 00 00 */	lwz r5, 0(r3)
lbl_8015C228:
/* 8015C228 00151FA8  2C 05 00 00 */	cmpwi r5, 0
/* 8015C22C 00151FAC  40 82 FF CC */	bne lbl_8015C1F8
/* 8015C230 00151FB0  38 60 00 00 */	li r3, 0
/* 8015C234 00151FB4  4E 80 00 20 */	blr 

