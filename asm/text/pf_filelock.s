.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFiPF_InitLockFile
VFiPF_InitLockFile:
/* 803C2E7C 003B8BFC  38 00 00 00 */	li r0, 0
/* 803C2E80 003B8C00  90 0D CD E0 */	stw r0, lbl_805A1200-_SDA_BASE_(r13)
/* 803C2E84 003B8C04  4E 80 00 20 */	blr 

.global VFiPF_UnLockFile
VFiPF_UnLockFile:
/* 803C2E88 003B8C08  38 60 FF FF */	li r3, -1
/* 803C2E8C 003B8C0C  4E 80 00 20 */	blr 

