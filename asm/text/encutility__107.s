.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ENCiCheckBreakType
ENCiCheckBreakType:
/* 802187D0 0020E550  28 00 00 05 */	cmplwi r0, 5
/* 802187D4 0020E554  40 81 00 08 */	ble lbl_802187DC
/* 802187D8 0020E558  38 00 00 05 */	li r0, 5
lbl_802187DC:
/* 802187DC 0020E55C  98 0D C8 59 */	stb r0, lbl_805A0C79-_SDA_BASE_(r13)
/* 802187E0 0020E560  4B FF 76 FD */	bl SCGetEuRgb60Mode
/* 802187E4 0020E564  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802187E8 0020E568  38 03 FF FF */	addi r0, r3, -1
/* 802187EC 0020E56C  7C 00 00 34 */	cntlzw r0, r0
/* 802187F0 0020E570  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 802187F4 0020E574  98 0D C8 58 */	stb r0, lbl_805A0C78-_SDA_BASE_(r13)
/* 802187F8 0020E578  4B FF 76 89 */	bl SCGetWpadMotorMode
/* 802187FC 0020E57C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80218800 0020E580  38 03 FF FF */	addi r0, r3, -1
/* 80218804 0020E584  7C 00 00 34 */	cntlzw r0, r0
/* 80218808 0020E588  54 00 D9 7E */	srwi r0, r0, 5
/* 8021880C 0020E58C  90 0D C8 54 */	stw r0, lbl_805A0C74-_SDA_BASE_(r13)
/* 80218810 0020E590  4B FF 77 21 */	bl SCGetWpadSpeakerVolume
/* 80218814 0020E594  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80218818 0020E598  7C 64 1B 78 */	mr r4, r3
/* 8021881C 0020E59C  40 82 00 08 */	bne lbl_80218824
/* 80218820 0020E5A0  38 80 00 00 */	li r4, 0
lbl_80218824:
/* 80218824 0020E5A4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80218828 0020E5A8  28 00 00 7F */	cmplwi r0, 0x7f
/* 8021882C 0020E5AC  41 80 00 08 */	blt lbl_80218834
/* 80218830 0020E5B0  38 80 00 7F */	li r4, 0x7f
lbl_80218834:
/* 80218834 0020E5B4  38 00 00 00 */	li r0, 0
/* 80218838 0020E5B8  98 8D C8 52 */	stb r4, lbl_805A0C72-_SDA_BASE_(r13)
/* 8021883C 0020E5BC  98 0D C8 46 */	stb r0, lbl_805A0C66-_SDA_BASE_(r13)
lbl_80218840:
/* 80218840 0020E5C0  48 01 ED 6D */	bl BTA_HhGetAclQueueInfo
lbl_80218844:
/* 80218844 0020E5C4  39 61 01 60 */	addi r11, r1, 0x160
/* 80218848 0020E5C8  48 1D 8B 09 */	bl _restgpr_20
/* 8021884C 0020E5CC  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80218850 0020E5D0  7C 08 03 A6 */	mtlr r0
/* 80218854 0020E5D4  38 21 01 60 */	addi r1, r1, 0x160
/* 80218858 0020E5D8  4E 80 00 20 */	blr 
