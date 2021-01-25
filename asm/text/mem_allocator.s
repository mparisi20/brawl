.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global AllocatorAllocForExpHeap_
AllocatorAllocForExpHeap_:
/* 80204E30 001FABB0  7C 65 1B 78 */	mr r5, r3
/* 80204E34 001FABB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80204E38 001FABB8  80 A5 00 08 */	lwz r5, 8(r5)
/* 80204E3C 001FABBC  4B FF F9 2C */	b MEMAllocFromExpHeapEx

.global AllocatorFreeForExpHeap_
AllocatorFreeForExpHeap_:
/* 80204E40 001FABC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80204E44 001FABC4  4B FF F9 D4 */	b MEMFreeToExpHeap

.global AllocatorAllocForFrmHeap_
AllocatorAllocForFrmHeap_:
/* 80204E48 001FABC8  7C 65 1B 78 */	mr r5, r3
/* 80204E4C 001FABCC  80 63 00 04 */	lwz r3, 4(r3)
/* 80204E50 001FABD0  80 A5 00 08 */	lwz r5, 8(r5)
/* 80204E54 001FABD4  4B FF FC 1C */	b MEMAllocFromFrmHeapEx

.global AllocatorFreeForFrmHeap_
AllocatorFreeForFrmHeap_:
/* 80204E58 001FABD8  4E 80 00 20 */	blr 

.global MEMAllocFromAllocator
MEMAllocFromAllocator:
/* 80204E5C 001FABDC  80 A3 00 00 */	lwz r5, 0(r3)
/* 80204E60 001FABE0  81 85 00 00 */	lwz r12, 0(r5)
/* 80204E64 001FABE4  7D 89 03 A6 */	mtctr r12
/* 80204E68 001FABE8  4E 80 04 20 */	bctr 

.global MEMFreeToAllocator
MEMFreeToAllocator:
/* 80204E6C 001FABEC  80 A3 00 00 */	lwz r5, 0(r3)
/* 80204E70 001FABF0  81 85 00 04 */	lwz r12, 4(r5)
/* 80204E74 001FABF4  7D 89 03 A6 */	mtctr r12
/* 80204E78 001FABF8  4E 80 04 20 */	bctr 

.global MEMInitAllocatorForExpHeap
MEMInitAllocatorForExpHeap:
/* 80204E7C 001FABFC  38 C2 A6 48 */	addi r6, r2, lbl_805A3968-_SDA2_BASE_
/* 80204E80 001FAC00  38 00 00 00 */	li r0, 0
/* 80204E84 001FAC04  90 C3 00 00 */	stw r6, 0(r3)
/* 80204E88 001FAC08  90 83 00 04 */	stw r4, 4(r3)
/* 80204E8C 001FAC0C  90 A3 00 08 */	stw r5, 8(r3)
/* 80204E90 001FAC10  90 03 00 0C */	stw r0, 0xc(r3)
/* 80204E94 001FAC14  4E 80 00 20 */	blr 

.global MEMInitAllocatorForFrmHeap
MEMInitAllocatorForFrmHeap:
/* 80204E98 001FAC18  38 C2 A6 50 */	addi r6, r2, lbl_805A3970-_SDA2_BASE_
/* 80204E9C 001FAC1C  38 00 00 00 */	li r0, 0
/* 80204EA0 001FAC20  90 C3 00 00 */	stw r6, 0(r3)
/* 80204EA4 001FAC24  90 83 00 04 */	stw r4, 4(r3)
/* 80204EA8 001FAC28  90 A3 00 08 */	stw r5, 8(r3)
/* 80204EAC 001FAC2C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80204EB0 001FAC30  4E 80 00 20 */	blr 

