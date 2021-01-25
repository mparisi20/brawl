.section .extabindex_, "wa"  # 0x80009760 - 0x8000C860

	.incbin "baserom.dol", 0x3FF4E0, 0x30CC
.global lbl_8000C82C
lbl_8000C82C:
	.incbin "baserom.dol", 0x4025AC, 0x34
