.section .ctors, "wa"  # 0x804064E0 - 0x804067E0

.global lbl_804064E0
lbl_804064E0:
	.incbin "baserom.dol", 0x4025E0, 0x30
