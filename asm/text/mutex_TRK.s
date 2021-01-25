.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TRKReleaseMutex
TRKReleaseMutex:
/* 804035B4 003F9334  38 60 00 00 */	li r3, 0
/* 804035B8 003F9338  4E 80 00 20 */	blr 

.global TRKAcquireMutex
TRKAcquireMutex:
/* 804035BC 003F933C  38 60 00 00 */	li r3, 0
/* 804035C0 003F9340  4E 80 00 20 */	blr 

.global TRKInitializeMutex
TRKInitializeMutex:
/* 804035C4 003F9344  38 60 00 00 */	li r3, 0
/* 804035C8 003F9348  4E 80 00 20 */	blr 

