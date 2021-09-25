.section .data, "wa"  # 0x80420680 - 0x80494840

.balign 8

.global lbl_8042B600
lbl_8042B600:
	.incbin "baserom.dol", 0x427700, 0x18
.global lbl_8042B618
lbl_8042B618:
	.incbin "baserom.dol", 0x427718, 0x2C
.global lbl_8042B644
lbl_8042B644:
	.incbin "baserom.dol", 0x427744, 0x3C
.global lbl_8042B680
lbl_8042B680:
	.incbin "baserom.dol", 0x427780, 0x38
.global lbl_8042B6B8
lbl_8042B6B8:
	.incbin "baserom.dol", 0x4277B8, 0x10
.global lbl_8042B6C8
lbl_8042B6C8:
	.incbin "baserom.dol", 0x4277C8, 0x148
.global lbl_8042B810
lbl_8042B810:
	.incbin "baserom.dol", 0x427910, 0x48
.global lbl_8042B858
lbl_8042B858:
	.incbin "baserom.dol", 0x427958, 0x138
.global lbl_8042B990
lbl_8042B990:
	.incbin "baserom.dol", 0x427A90, 0x288
.global lbl_8042BC18
lbl_8042BC18:
	.incbin "baserom.dol", 0x427D18, 0x1A8
.global lbl_8042BDC0
lbl_8042BDC0:
	.incbin "baserom.dol", 0x427EC0, 0x198
.global lbl_8042BF58
lbl_8042BF58:
	.incbin "baserom.dol", 0x428058, 0x40
.global lbl_8042BF98
lbl_8042BF98:
	.incbin "baserom.dol", 0x428098, 0xF8
.global lbl_8042C090
lbl_8042C090:
	.incbin "baserom.dol", 0x428190, 0x10
.global lbl_8042C0A0
lbl_8042C0A0:
	.incbin "baserom.dol", 0x4281A0, 0x30
.global lbl_8042C0D0
lbl_8042C0D0:
	.incbin "baserom.dol", 0x4281D0, 0x2C8
.global lbl_8042C398
lbl_8042C398:
	.incbin "baserom.dol", 0x428498, 0x120
.global lbl_8042C4B8
lbl_8042C4B8:
	.incbin "baserom.dol", 0x4285B8, 0x2B0
.global lbl_8042C768
lbl_8042C768:
	.incbin "baserom.dol", 0x428868, 0xC0
.global lbl_8042C828
lbl_8042C828:
	.incbin "baserom.dol", 0x428928, 0x130
.global lbl_8042C958
lbl_8042C958:
	.incbin "baserom.dol", 0x428A58, 0x330
.global lbl_8042CC88
lbl_8042CC88:
	.incbin "baserom.dol", 0x428D88, 0x330
.global lbl_8042CFB8
lbl_8042CFB8:
	.incbin "baserom.dol", 0x4290B8, 0xF0
.global lbl_8042D0A8
lbl_8042D0A8:
	.incbin "baserom.dol", 0x4291A8, 0xD8
.global lbl_8042D180
lbl_8042D180:
	.incbin "baserom.dol", 0x429280, 0x440
.global lbl_8042D5C0
lbl_8042D5C0:
	.incbin "baserom.dol", 0x4296C0, 0x600
.global lbl_8042DBC0
lbl_8042DBC0:
	.incbin "baserom.dol", 0x429CC0, 0x58
.global lbl_8042DC18
lbl_8042DC18:
	.incbin "baserom.dol", 0x429D18, 0xA0
.global lbl_8042DCB8
lbl_8042DCB8:
	.incbin "baserom.dol", 0x429DB8, 0x644
.global lbl_8042E2FC
lbl_8042E2FC:
	.incbin "baserom.dol", 0x42A3FC, 0x19C
.global lbl_8042E498
lbl_8042E498:
	.incbin "baserom.dol", 0x42A598, 0x19C
.global lbl_8042E634
lbl_8042E634:
	.incbin "baserom.dol", 0x42A734, 0x1FC
.global lbl_8042E830
lbl_8042E830:
	.incbin "baserom.dol", 0x42A930, 0x5C
.global lbl_8042E88C
lbl_8042E88C:
	.incbin "baserom.dol", 0x42A98C, 0x1C
.global lbl_8042E8A8
lbl_8042E8A8:
	.incbin "baserom.dol", 0x42A9A8, 0x10
.global lbl_8042E8B8
lbl_8042E8B8:
	.incbin "baserom.dol", 0x42A9B8, 0x20
.global lbl_8042E8D8
lbl_8042E8D8:
	.incbin "baserom.dol", 0x42A9D8, 0x24
.global lbl_8042E8FC
lbl_8042E8FC:
	.incbin "baserom.dol", 0x42A9FC, 0x84
.global lbl_8042E980
lbl_8042E980:
	.incbin "baserom.dol", 0x42AA80, 0x30
.global lbl_8042E9B0
lbl_8042E9B0:
	.incbin "baserom.dol", 0x42AAB0, 0x10
.global lbl_8042E9C0
lbl_8042E9C0:
	.incbin "baserom.dol", 0x42AAC0, 0x80
.global lbl_8042EA40
lbl_8042EA40:
	.incbin "baserom.dol", 0x42AB40, 0x8C
.global lbl_8042EACC
lbl_8042EACC:
	.incbin "baserom.dol", 0x42ABCC, 0x3C
.global lbl_8042EB08
lbl_8042EB08:
	.incbin "baserom.dol", 0x42AC08, 0x44
.global lbl_8042EB4C
lbl_8042EB4C:
	.incbin "baserom.dol", 0x42AC4C, 0x3C
.global lbl_8042EB88
lbl_8042EB88:
	.incbin "baserom.dol", 0x42AC88, 0x58
.global lbl_8042EBE0
lbl_8042EBE0:
	.incbin "baserom.dol", 0x42ACE0, 0x38
.global lbl_8042EC18
lbl_8042EC18:
	.incbin "baserom.dol", 0x42AD18, 0x18
.global lbl_8042EC30
lbl_8042EC30:
	.incbin "baserom.dol", 0x42AD30, 0x38
.global lbl_8042EC68
lbl_8042EC68:
	.incbin "baserom.dol", 0x42AD68, 0x139C
.global lbl_80430004
lbl_80430004:
	.incbin "baserom.dol", 0x42C104, 0x19F94
.global lbl_80449F98
lbl_80449F98:
	.incbin "baserom.dol", 0x446098, 0x606C
.global lbl_80450004
lbl_80450004:
	.incbin "baserom.dol", 0x44C104, 0x3BD0
.global lbl_80453BD4
lbl_80453BD4:
	.incbin "baserom.dol", 0x44FCD4, 0x1E4
.global lbl_80453DB8
lbl_80453DB8:
	.incbin "baserom.dol", 0x44FEB8, 0x88
.global lbl_80453E40
lbl_80453E40:
	.incbin "baserom.dol", 0x44FF40, 0x60
.global lbl_80453EA0
lbl_80453EA0:
	.incbin "baserom.dol", 0x44FFA0, 0x40
.global lbl_80453EE0
lbl_80453EE0:
	.incbin "baserom.dol", 0x44FFE0, 0x200
.global lbl_804540E0
lbl_804540E0:
	.incbin "baserom.dol", 0x4501E0, 0x40
.global lbl_80454120
lbl_80454120:
	.incbin "baserom.dol", 0x450220, 0x58
.global lbl_80454178
lbl_80454178:
	.incbin "baserom.dol", 0x450278, 0x20
.global lbl_80454198
lbl_80454198:
	.incbin "baserom.dol", 0x450298, 0x1C
.global lbl_804541B4
lbl_804541B4:
	.incbin "baserom.dol", 0x4502B4, 0x20
.global lbl_804541D4
lbl_804541D4:
	.incbin "baserom.dol", 0x4502D4, 0x9C
.global lbl_80454270
lbl_80454270:
	.incbin "baserom.dol", 0x450370, 0x78
.global lbl_804542E8
lbl_804542E8:
	.incbin "baserom.dol", 0x4503E8, 0x78
.global lbl_80454360
lbl_80454360:
	.incbin "baserom.dol", 0x450460, 0x58
.global lbl_804543B8
lbl_804543B8:
	.incbin "baserom.dol", 0x4504B8, 0x20
.global lbl_804543D8
lbl_804543D8:
	.incbin "baserom.dol", 0x4504D8, 0x18
.global lbl_804543F0
lbl_804543F0:
	.incbin "baserom.dol", 0x4504F0, 0x20
.global lbl_80454410
lbl_80454410:
	.incbin "baserom.dol", 0x450510, 0x60
.global lbl_80454470
lbl_80454470:
	.incbin "baserom.dol", 0x450570, 0x18
.global lbl_80454488
lbl_80454488:
	.incbin "baserom.dol", 0x450588, 0x10
.global lbl_80454498
lbl_80454498:
	.incbin "baserom.dol", 0x450598, 0x10
.global lbl_804544A8
lbl_804544A8:
	.incbin "baserom.dol", 0x4505A8, 0x28
.global lbl_804544D0
lbl_804544D0:
	.incbin "baserom.dol", 0x4505D0, 0x28
.global lbl_804544F8
lbl_804544F8:
	.incbin "baserom.dol", 0x4505F8, 0x18
.global lbl_80454510
lbl_80454510:
	.incbin "baserom.dol", 0x450610, 0x20
.global lbl_80454530
lbl_80454530:
	.incbin "baserom.dol", 0x450630, 0x20
.global lbl_80454550
lbl_80454550:
	.incbin "baserom.dol", 0x450650, 0x30
.global lbl_80454580
lbl_80454580:
	.incbin "baserom.dol", 0x450680, 0x30
.global lbl_804545B0
lbl_804545B0:
	.incbin "baserom.dol", 0x4506B0, 0x68
.global lbl_80454618
lbl_80454618:
	.incbin "baserom.dol", 0x450718, 0x14
.global lbl_8045462C
lbl_8045462C:
	.incbin "baserom.dol", 0x45072C, 0x84
.global lbl_804546B0
lbl_804546B0:
	.incbin "baserom.dol", 0x4507B0, 0x58
.global lbl_80454708
lbl_80454708:
	.incbin "baserom.dol", 0x450808, 0x9C
.global lbl_804547A4
lbl_804547A4:
	.incbin "baserom.dol", 0x4508A4, 0x7C
.global lbl_80454820
lbl_80454820:
	.incbin "baserom.dol", 0x450920, 0x24
.global lbl_80454844
lbl_80454844:
	.incbin "baserom.dol", 0x450944, 0x14
.global lbl_80454858
lbl_80454858:
	.incbin "baserom.dol", 0x450958, 0x38
.global lbl_80454890
lbl_80454890:
	.incbin "baserom.dol", 0x450990, 0x10
.global lbl_804548A0
lbl_804548A0:
	.incbin "baserom.dol", 0x4509A0, 0x1F0
.global lbl_80454A90
lbl_80454A90:
	.incbin "baserom.dol", 0x450B90, 0x10
.global lbl_80454AA0
lbl_80454AA0:
	.incbin "baserom.dol", 0x450BA0, 0x10
.global lbl_80454AB0
lbl_80454AB0:
	.incbin "baserom.dol", 0x450BB0, 0x30
.global lbl_80454AE0
lbl_80454AE0:
	.incbin "baserom.dol", 0x450BE0, 0x10
.global lbl_80454AF0
lbl_80454AF0:
	.incbin "baserom.dol", 0x450BF0, 0x10
.global lbl_80454B00
lbl_80454B00:
	.incbin "baserom.dol", 0x450C00, 0x10
.global lbl_80454B10
lbl_80454B10:
	.incbin "baserom.dol", 0x450C10, 0x68
.global lbl_80454B78
lbl_80454B78:
	.incbin "baserom.dol", 0x450C78, 0x3C
.global lbl_80454BB4
lbl_80454BB4:
	.incbin "baserom.dol", 0x450CB4, 0x3C
.global lbl_80454BF0
lbl_80454BF0:
	.incbin "baserom.dol", 0x450CF0, 0xD0
.global lbl_80454CC0
lbl_80454CC0:
	.incbin "baserom.dol", 0x450DC0, 0x10
.global lbl_80454CD0
lbl_80454CD0:
	.incbin "baserom.dol", 0x450DD0, 0x80
.global lbl_80454D50
lbl_80454D50:
	.incbin "baserom.dol", 0x450E50, 0x38
.global lbl_80454D88
lbl_80454D88:
	.incbin "baserom.dol", 0x450E88, 0x18
.global lbl_80454DA0
lbl_80454DA0:
	.incbin "baserom.dol", 0x450EA0, 0x38
.global lbl_80454DD8
lbl_80454DD8:
	.incbin "baserom.dol", 0x450ED8, 0x20
.global lbl_80454DF8
lbl_80454DF8:
	.incbin "baserom.dol", 0x450EF8, 0x38
.global lbl_80454E30
lbl_80454E30:
	.incbin "baserom.dol", 0x450F30, 0x40
.global lbl_80454E70
lbl_80454E70:
	.incbin "baserom.dol", 0x450F70, 0x38
.global lbl_80454EA8
lbl_80454EA8:
	.incbin "baserom.dol", 0x450FA8, 0x30
.global lbl_80454ED8
lbl_80454ED8:
	.incbin "baserom.dol", 0x450FD8, 0x50
.global lbl_80454F28
lbl_80454F28:
	.incbin "baserom.dol", 0x451028, 0x34
.global lbl_80454F5C
lbl_80454F5C:
	.incbin "baserom.dol", 0x45105C, 0x3C
.global lbl_80454F98
lbl_80454F98:
	.incbin "baserom.dol", 0x451098, 0x38
.global lbl_80454FD0
lbl_80454FD0:
	.incbin "baserom.dol", 0x4510D0, 0x30
.global lbl_80455000
lbl_80455000:
	.incbin "baserom.dol", 0x451100, 0x48
.global lbl_80455048
lbl_80455048:
	.incbin "baserom.dol", 0x451148, 0x70
.global lbl_804550B8
lbl_804550B8:
	.incbin "baserom.dol", 0x4511B8, 0x68
