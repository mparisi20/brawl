.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pdm_init_diskmanager
pdm_init_diskmanager:
/* 803D72BC 003CD03C  48 00 06 C0 */	b pdm_disk_init_disk_manager

.global pdm_open_disk
pdm_open_disk:
/* 803D72C0 003CD040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D72C4 003CD044  7C 08 02 A6 */	mflr r0
/* 803D72C8 003CD048  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D72CC 003CD04C  38 00 00 00 */	li r0, 0
/* 803D72D0 003CD050  90 04 00 00 */	stw r0, 0(r4)
/* 803D72D4 003CD054  48 00 06 DD */	bl pdm_disk_add_disk
/* 803D72D8 003CD058  7C 03 00 D0 */	neg r0, r3
/* 803D72DC 003CD05C  7C 00 1B 78 */	or r0, r0, r3
/* 803D72E0 003CD060  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 803D72E4 003CD064  7C 63 00 38 */	and r3, r3, r0
/* 803D72E8 003CD068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D72EC 003CD06C  7C 08 03 A6 */	mtlr r0
/* 803D72F0 003CD070  38 21 00 10 */	addi r1, r1, 0x10
/* 803D72F4 003CD074  4E 80 00 20 */	blr 

.global pdm_open_partition
pdm_open_partition:
/* 803D72F8 003CD078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D72FC 003CD07C  7C 08 02 A6 */	mflr r0
/* 803D7300 003CD080  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7304 003CD084  38 00 00 00 */	li r0, 0
/* 803D7308 003CD088  90 05 00 00 */	stw r0, 0(r5)
/* 803D730C 003CD08C  48 00 15 6D */	bl pdm_part_get_partition
/* 803D7310 003CD090  7C 03 00 D0 */	neg r0, r3
/* 803D7314 003CD094  7C 00 1B 78 */	or r0, r0, r3
/* 803D7318 003CD098  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 803D731C 003CD09C  7C 63 00 38 */	and r3, r3, r0
/* 803D7320 003CD0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7324 003CD0A4  7C 08 03 A6 */	mtlr r0
/* 803D7328 003CD0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D732C 003CD0AC  4E 80 00 20 */	blr 

