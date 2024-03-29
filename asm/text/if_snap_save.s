.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfSnapSaveTask$7create
IfSnapSaveTask$7create:
/* 800F1820 000E75A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F1824 000E75A4  7C 08 02 A6 */	mflr r0
/* 800F1828 000E75A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800F182C 000E75AC  39 61 00 40 */	addi r11, r1, 0x40
/* 800F1830 000E75B0  48 2F FA E1 */	bl _savegpr_23
/* 800F1834 000E75B4  7D 1C 43 78 */	mr r28, r8
/* 800F1838 000E75B8  7C 77 1B 78 */	mr r23, r3
/* 800F183C 000E75BC  7C 98 23 78 */	mr r24, r4
/* 800F1840 000E75C0  7C B9 2B 78 */	mr r25, r5
/* 800F1844 000E75C4  7C DA 33 78 */	mr r26, r6
/* 800F1848 000E75C8  7C FB 3B 78 */	mr r27, r7
/* 800F184C 000E75CC  7D 3D 4B 78 */	mr r29, r9
/* 800F1850 000E75D0  7D 5E 53 78 */	mr r30, r10
/* 800F1854 000E75D4  7F 84 E3 78 */	mr r4, r28
/* 800F1858 000E75D8  38 60 00 E0 */	li r3, 0xe0
/* 800F185C 000E75DC  4B F1 B0 5D */	bl __nw__10srHeapTypeFUlUl
/* 800F1860 000E75E0  2C 03 00 00 */	cmpwi r3, 0
/* 800F1864 000E75E4  7C 7F 1B 78 */	mr r31, r3
/* 800F1868 000E75E8  41 82 00 0C */	beq lbl_800F1874
/* 800F186C 000E75EC  48 00 01 45 */	bl ifSimpleResultTask$7__ct
/* 800F1870 000E75F0  7C 7F 1B 78 */	mr r31, r3
lbl_800F1874:
/* 800F1874 000E75F4  93 A1 00 08 */	stw r29, 8(r1)
/* 800F1878 000E75F8  38 00 00 01 */	li r0, 1
/* 800F187C 000E75FC  7F E3 FB 78 */	mr r3, r31
/* 800F1880 000E7600  7E E5 BB 78 */	mr r5, r23
/* 800F1884 000E7604  93 C1 00 0C */	stw r30, 0xc(r1)
/* 800F1888 000E7608  7F 06 C3 78 */	mr r6, r24
/* 800F188C 000E760C  7F 27 CB 78 */	mr r7, r25
/* 800F1890 000E7610  7F 48 D3 78 */	mr r8, r26
/* 800F1894 000E7614  90 01 00 10 */	stw r0, 0x10(r1)
/* 800F1898 000E7618  7F 69 DB 78 */	mr r9, r27
/* 800F189C 000E761C  7F 8A E3 78 */	mr r10, r28
/* 800F18A0 000E7620  38 80 00 00 */	li r4, 0
/* 800F18A4 000E7624  48 00 02 0D */	bl IfSnapSaveTask$7initProc
/* 800F18A8 000E7628  39 61 00 40 */	addi r11, r1, 0x40
/* 800F18AC 000E762C  7F E3 FB 78 */	mr r3, r31
/* 800F18B0 000E7630  48 2F FA AD */	bl _restgpr_23
/* 800F18B4 000E7634  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F18B8 000E7638  7C 08 03 A6 */	mtlr r0
/* 800F18BC 000E763C  38 21 00 40 */	addi r1, r1, 0x40
/* 800F18C0 000E7640  4E 80 00 20 */	blr 

.global IfSnapSaveTask$7create_3071
IfSnapSaveTask$7create_3071:
/* 800F18C4 000E7644  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800F18C8 000E7648  7C 08 02 A6 */	mflr r0
/* 800F18CC 000E764C  90 01 00 54 */	stw r0, 0x54(r1)
/* 800F18D0 000E7650  39 61 00 50 */	addi r11, r1, 0x50
/* 800F18D4 000E7654  48 2F FA 31 */	bl _savegpr_20
/* 800F18D8 000E7658  7D 5B 53 78 */	mr r27, r10
/* 800F18DC 000E765C  83 81 00 58 */	lwz r28, 0x58(r1)
/* 800F18E0 000E7660  7C 74 1B 78 */	mr r20, r3
/* 800F18E4 000E7664  7C 95 23 78 */	mr r21, r4
/* 800F18E8 000E7668  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 800F18EC 000E766C  7C B6 2B 78 */	mr r22, r5
/* 800F18F0 000E7670  7C D7 33 78 */	mr r23, r6
/* 800F18F4 000E7674  7C F8 3B 78 */	mr r24, r7
/* 800F18F8 000E7678  7D 19 43 78 */	mr r25, r8
/* 800F18FC 000E767C  7D 3A 4B 78 */	mr r26, r9
/* 800F1900 000E7680  7F 64 DB 78 */	mr r4, r27
/* 800F1904 000E7684  38 60 00 E0 */	li r3, 0xe0
/* 800F1908 000E7688  4B F1 AF B1 */	bl __nw__10srHeapTypeFUlUl
/* 800F190C 000E768C  2C 03 00 00 */	cmpwi r3, 0
/* 800F1910 000E7690  7C 7F 1B 78 */	mr r31, r3
/* 800F1914 000E7694  41 82 00 0C */	beq lbl_800F1920
/* 800F1918 000E7698  48 00 00 99 */	bl ifSimpleResultTask$7__ct
/* 800F191C 000E769C  7C 7F 1B 78 */	mr r31, r3
lbl_800F1920:
/* 800F1920 000E76A0  2C 1D 00 FF */	cmpwi r29, 0xff
/* 800F1924 000E76A4  7F BE EB 78 */	mr r30, r29
/* 800F1928 000E76A8  40 82 00 08 */	bne lbl_800F1930
/* 800F192C 000E76AC  7F 9E E3 78 */	mr r30, r28
lbl_800F1930:
/* 800F1930 000E76B0  48 0F 02 05 */	bl OSGetTime
/* 800F1934 000E76B4  7C 86 23 78 */	mr r6, r4
/* 800F1938 000E76B8  7C 65 1B 78 */	mr r5, r3
/* 800F193C 000E76BC  7F 24 CB 78 */	mr r4, r25
/* 800F1940 000E76C0  7F C7 F3 78 */	mr r7, r30
/* 800F1944 000E76C4  38 7F 00 9C */	addi r3, r31, 0x9c
/* 800F1948 000E76C8  39 00 00 00 */	li r8, 0
/* 800F194C 000E76CC  39 20 00 00 */	li r9, 0
/* 800F1950 000E76D0  48 06 1C C1 */	bl nteSection$7createSection
/* 800F1954 000E76D4  93 5F 00 A4 */	stw r26, 0xa4(r31)
/* 800F1958 000E76D8  38 00 00 00 */	li r0, 0
/* 800F195C 000E76DC  38 82 92 98 */	addi r4, r2, lbl_805A25B8-_SDA2_BASE_
/* 800F1960 000E76E0  7F E3 FB 78 */	mr r3, r31
/* 800F1964 000E76E4  81 39 00 00 */	lwz r9, 0(r25)
/* 800F1968 000E76E8  7E 85 A3 78 */	mr r5, r20
/* 800F196C 000E76EC  7E A6 AB 78 */	mr r6, r21
/* 800F1970 000E76F0  7E C7 B3 78 */	mr r7, r22
/* 800F1974 000E76F4  93 81 00 08 */	stw r28, 8(r1)
/* 800F1978 000E76F8  7E E8 BB 78 */	mr r8, r23
/* 800F197C 000E76FC  7C 84 48 AE */	lbzx r4, r4, r9
/* 800F1980 000E7700  7F 09 C3 78 */	mr r9, r24
/* 800F1984 000E7704  93 A1 00 0C */	stw r29, 0xc(r1)
/* 800F1988 000E7708  7F 6A DB 78 */	mr r10, r27
/* 800F198C 000E770C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800F1990 000E7710  48 00 01 21 */	bl IfSnapSaveTask$7initProc
/* 800F1994 000E7714  39 61 00 50 */	addi r11, r1, 0x50
/* 800F1998 000E7718  7F E3 FB 78 */	mr r3, r31
/* 800F199C 000E771C  48 2F F9 B5 */	bl _restgpr_20
/* 800F19A0 000E7720  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800F19A4 000E7724  7C 08 03 A6 */	mtlr r0
/* 800F19A8 000E7728  38 21 00 50 */	addi r1, r1, 0x50
/* 800F19AC 000E772C  4E 80 00 20 */	blr 

