.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pdm_disk_convert_sector_into_block
pdm_disk_convert_sector_into_block:
/* 803D781C 003CD59C  90 87 00 00 */	stw r4, 0(r7)
/* 803D7820 003CD5A0  28 06 02 00 */	cmplwi r6, 0x200
/* 803D7824 003CD5A4  38 60 00 00 */	li r3, 0
/* 803D7828 003CD5A8  90 A8 00 00 */	stw r5, 0(r8)
/* 803D782C 003CD5AC  40 81 00 94 */	ble lbl_803D78C0
/* 803D7830 003CD5B0  54 C4 BE 7E */	rlwinm r4, r6, 0x17, 0x19, 0x1f
/* 803D7834 003CD5B4  28 04 00 02 */	cmplwi r4, 2
/* 803D7838 003CD5B8  40 82 00 14 */	bne lbl_803D784C
/* 803D783C 003CD5BC  80 07 00 00 */	lwz r0, 0(r7)
/* 803D7840 003CD5C0  54 00 08 3C */	slwi r0, r0, 1
/* 803D7844 003CD5C4  90 07 00 00 */	stw r0, 0(r7)
/* 803D7848 003CD5C8  48 00 00 30 */	b lbl_803D7878
lbl_803D784C:
/* 803D784C 003CD5CC  28 04 00 04 */	cmplwi r4, 4
/* 803D7850 003CD5D0  40 82 00 14 */	bne lbl_803D7864
/* 803D7854 003CD5D4  80 07 00 00 */	lwz r0, 0(r7)
/* 803D7858 003CD5D8  54 00 10 3A */	slwi r0, r0, 2
/* 803D785C 003CD5DC  90 07 00 00 */	stw r0, 0(r7)
/* 803D7860 003CD5E0  48 00 00 18 */	b lbl_803D7878
lbl_803D7864:
/* 803D7864 003CD5E4  28 04 00 08 */	cmplwi r4, 8
/* 803D7868 003CD5E8  40 82 00 10 */	bne lbl_803D7878
/* 803D786C 003CD5EC  80 07 00 00 */	lwz r0, 0(r7)
/* 803D7870 003CD5F0  54 00 18 38 */	slwi r0, r0, 3
/* 803D7874 003CD5F4  90 07 00 00 */	stw r0, 0(r7)
lbl_803D7878:
/* 803D7878 003CD5F8  28 04 00 02 */	cmplwi r4, 2
/* 803D787C 003CD5FC  40 82 00 14 */	bne lbl_803D7890
/* 803D7880 003CD600  80 08 00 00 */	lwz r0, 0(r8)
/* 803D7884 003CD604  54 00 08 3C */	slwi r0, r0, 1
/* 803D7888 003CD608  90 08 00 00 */	stw r0, 0(r8)
/* 803D788C 003CD60C  4E 80 00 20 */	blr 
lbl_803D7890:
/* 803D7890 003CD610  28 04 00 04 */	cmplwi r4, 4
/* 803D7894 003CD614  40 82 00 14 */	bne lbl_803D78A8
/* 803D7898 003CD618  80 08 00 00 */	lwz r0, 0(r8)
/* 803D789C 003CD61C  54 00 10 3A */	slwi r0, r0, 2
/* 803D78A0 003CD620  90 08 00 00 */	stw r0, 0(r8)
/* 803D78A4 003CD624  4E 80 00 20 */	blr 
lbl_803D78A8:
/* 803D78A8 003CD628  28 04 00 08 */	cmplwi r4, 8
/* 803D78AC 003CD62C  4C 82 00 20 */	bnelr 
/* 803D78B0 003CD630  80 08 00 00 */	lwz r0, 0(r8)
/* 803D78B4 003CD634  54 00 18 38 */	slwi r0, r0, 3
/* 803D78B8 003CD638  90 08 00 00 */	stw r0, 0(r8)
/* 803D78BC 003CD63C  4E 80 00 20 */	blr 
lbl_803D78C0:
/* 803D78C0 003CD640  4C 80 00 20 */	bgelr 
/* 803D78C4 003CD644  38 60 00 04 */	li r3, 4
/* 803D78C8 003CD648  4E 80 00 20 */	blr 

.global pdm_disk_convert_block_into_sector
pdm_disk_convert_block_into_sector:
/* 803D78CC 003CD64C  90 87 00 00 */	stw r4, 0(r7)
/* 803D78D0 003CD650  28 06 02 00 */	cmplwi r6, 0x200
/* 803D78D4 003CD654  38 60 00 00 */	li r3, 0
/* 803D78D8 003CD658  90 A8 00 00 */	stw r5, 0(r8)
/* 803D78DC 003CD65C  40 81 00 94 */	ble lbl_803D7970
/* 803D78E0 003CD660  54 C4 BE 7E */	rlwinm r4, r6, 0x17, 0x19, 0x1f
/* 803D78E4 003CD664  28 04 00 02 */	cmplwi r4, 2
/* 803D78E8 003CD668  40 82 00 14 */	bne lbl_803D78FC
/* 803D78EC 003CD66C  80 07 00 00 */	lwz r0, 0(r7)
/* 803D78F0 003CD670  54 00 F8 7E */	srwi r0, r0, 1
/* 803D78F4 003CD674  90 07 00 00 */	stw r0, 0(r7)
/* 803D78F8 003CD678  48 00 00 30 */	b lbl_803D7928
lbl_803D78FC:
/* 803D78FC 003CD67C  28 04 00 04 */	cmplwi r4, 4
/* 803D7900 003CD680  40 82 00 14 */	bne lbl_803D7914
/* 803D7904 003CD684  80 07 00 00 */	lwz r0, 0(r7)
/* 803D7908 003CD688  54 00 F0 BE */	srwi r0, r0, 2
/* 803D790C 003CD68C  90 07 00 00 */	stw r0, 0(r7)
/* 803D7910 003CD690  48 00 00 18 */	b lbl_803D7928
lbl_803D7914:
/* 803D7914 003CD694  28 04 00 08 */	cmplwi r4, 8
/* 803D7918 003CD698  40 82 00 10 */	bne lbl_803D7928
/* 803D791C 003CD69C  80 07 00 00 */	lwz r0, 0(r7)
/* 803D7920 003CD6A0  54 00 E8 FE */	srwi r0, r0, 3
/* 803D7924 003CD6A4  90 07 00 00 */	stw r0, 0(r7)
lbl_803D7928:
/* 803D7928 003CD6A8  28 04 00 02 */	cmplwi r4, 2
/* 803D792C 003CD6AC  40 82 00 14 */	bne lbl_803D7940
/* 803D7930 003CD6B0  80 08 00 00 */	lwz r0, 0(r8)
/* 803D7934 003CD6B4  54 00 F8 7E */	srwi r0, r0, 1
/* 803D7938 003CD6B8  90 08 00 00 */	stw r0, 0(r8)
/* 803D793C 003CD6BC  4E 80 00 20 */	blr 
lbl_803D7940:
/* 803D7940 003CD6C0  28 04 00 04 */	cmplwi r4, 4
/* 803D7944 003CD6C4  40 82 00 14 */	bne lbl_803D7958
/* 803D7948 003CD6C8  80 08 00 00 */	lwz r0, 0(r8)
/* 803D794C 003CD6CC  54 00 F0 BE */	srwi r0, r0, 2
/* 803D7950 003CD6D0  90 08 00 00 */	stw r0, 0(r8)
/* 803D7954 003CD6D4  4E 80 00 20 */	blr 
lbl_803D7958:
/* 803D7958 003CD6D8  28 04 00 08 */	cmplwi r4, 8
/* 803D795C 003CD6DC  4C 82 00 20 */	bnelr 
/* 803D7960 003CD6E0  80 08 00 00 */	lwz r0, 0(r8)
/* 803D7964 003CD6E4  54 00 E8 FE */	srwi r0, r0, 3
/* 803D7968 003CD6E8  90 08 00 00 */	stw r0, 0(r8)
/* 803D796C 003CD6EC  4E 80 00 20 */	blr 
lbl_803D7970:
/* 803D7970 003CD6F0  4C 80 00 20 */	bgelr 
/* 803D7974 003CD6F4  38 60 00 04 */	li r3, 4
/* 803D7978 003CD6F8  4E 80 00 20 */	blr 

.global pdm_disk_init_disk_manager
pdm_disk_init_disk_manager:
/* 803D797C 003CD6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7980 003CD700  7C 08 02 A6 */	mflr r0
/* 803D7984 003CD704  3C 60 80 56 */	lis r3, lbl_805639C0@ha
/* 803D7988 003CD708  38 80 00 00 */	li r4, 0
/* 803D798C 003CD70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7990 003CD710  38 63 39 C0 */	addi r3, r3, lbl_805639C0@l
/* 803D7994 003CD714  38 A0 0A 2C */	li r5, 0xa2c
/* 803D7998 003CD718  4B FF E9 B5 */	bl pf_memset
/* 803D799C 003CD71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D79A0 003CD720  38 60 00 00 */	li r3, 0
/* 803D79A4 003CD724  7C 08 03 A6 */	mtlr r0
/* 803D79A8 003CD728  38 21 00 10 */	addi r1, r1, 0x10
/* 803D79AC 003CD72C  4E 80 00 20 */	blr 

.global pdm_disk_add_disk
pdm_disk_add_disk:
/* 803D79B0 003CD730  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D79B4 003CD734  7C 08 02 A6 */	mflr r0
/* 803D79B8 003CD738  3C A0 80 56 */	lis r5, lbl_805639C0@ha
/* 803D79BC 003CD73C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D79C0 003CD740  38 00 00 00 */	li r0, 0
/* 803D79C4 003CD744  38 A5 39 C0 */	addi r5, r5, lbl_805639C0@l
/* 803D79C8 003CD748  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803D79CC 003CD74C  7C 9F 23 78 */	mr r31, r4
/* 803D79D0 003CD750  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803D79D4 003CD754  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803D79D8 003CD758  90 04 00 00 */	stw r0, 0(r4)
/* 803D79DC 003CD75C  A0 05 00 02 */	lhz r0, 2(r5)
/* 803D79E0 003CD760  28 00 00 1A */	cmplwi r0, 0x1a
/* 803D79E4 003CD764  41 80 00 0C */	blt lbl_803D79F0
/* 803D79E8 003CD768  38 60 00 08 */	li r3, 8
/* 803D79EC 003CD76C  48 00 00 FC */	b lbl_803D7AE8
lbl_803D79F0:
/* 803D79F0 003CD770  38 00 00 0D */	li r0, 0xd
/* 803D79F4 003CD774  3B C0 00 00 */	li r30, 0
/* 803D79F8 003CD778  7C 09 03 A6 */	mtctr r0
lbl_803D79FC:
/* 803D79FC 003CD77C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803D7A00 003CD780  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 803D7A04 003CD784  7C 85 02 14 */	add r4, r5, r0
/* 803D7A08 003CD788  80 04 00 04 */	lwz r0, 4(r4)
/* 803D7A0C 003CD78C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7A10 003CD790  41 82 00 28 */	beq lbl_803D7A38
/* 803D7A14 003CD794  3B DE 00 01 */	addi r30, r30, 1
/* 803D7A18 003CD798  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803D7A1C 003CD79C  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 803D7A20 003CD7A0  7C 85 02 14 */	add r4, r5, r0
/* 803D7A24 003CD7A4  80 04 00 04 */	lwz r0, 4(r4)
/* 803D7A28 003CD7A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7A2C 003CD7AC  41 82 00 0C */	beq lbl_803D7A38
/* 803D7A30 003CD7B0  3B DE 00 01 */	addi r30, r30, 1
/* 803D7A34 003CD7B4  42 00 FF C8 */	bdnz lbl_803D79FC
lbl_803D7A38:
/* 803D7A38 003CD7B8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803D7A3C 003CD7BC  28 00 00 1A */	cmplwi r0, 0x1a
/* 803D7A40 003CD7C0  41 80 00 0C */	blt lbl_803D7A4C
/* 803D7A44 003CD7C4  38 60 00 08 */	li r3, 8
/* 803D7A48 003CD7C8  48 00 00 A0 */	b lbl_803D7AE8
lbl_803D7A4C:
/* 803D7A4C 003CD7CC  3C 80 80 56 */	lis r4, lbl_805643F0@ha
/* 803D7A50 003CD7D0  57 C0 1B 78 */	rlwinm r0, r30, 3, 0xd, 0x1c
/* 803D7A54 003CD7D4  38 84 43 F0 */	addi r4, r4, lbl_805643F0@l
/* 803D7A58 003CD7D8  81 83 00 00 */	lwz r12, 0(r3)
/* 803D7A5C 003CD7DC  7F A4 02 14 */	add r29, r4, r0
/* 803D7A60 003CD7E0  80 83 00 04 */	lwz r4, 4(r3)
/* 803D7A64 003CD7E4  7F A3 EB 78 */	mr r3, r29
/* 803D7A68 003CD7E8  7D 89 03 A6 */	mtctr r12
/* 803D7A6C 003CD7EC  4E 80 04 21 */	bctrl 
/* 803D7A70 003CD7F0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803D7A74 003CD7F4  38 80 00 01 */	li r4, 1
/* 803D7A78 003CD7F8  1C C0 00 3C */	mulli r6, r0, 0x3c
/* 803D7A7C 003CD7FC  3F C0 80 56 */	lis r30, lbl_805639C0@ha
/* 803D7A80 003CD800  80 1D 00 00 */	lwz r0, 0(r29)
/* 803D7A84 003CD804  38 61 00 08 */	addi r3, r1, 8
/* 803D7A88 003CD808  3B DE 39 C0 */	addi r30, r30, lbl_805639C0@l
/* 803D7A8C 003CD80C  80 BD 00 04 */	lwz r5, 4(r29)
/* 803D7A90 003CD810  7C DE 32 14 */	add r6, r30, r6
/* 803D7A94 003CD814  90 81 00 08 */	stw r4, 8(r1)
/* 803D7A98 003CD818  3B A6 00 04 */	addi r29, r6, 4
/* 803D7A9C 003CD81C  90 06 00 08 */	stw r0, 8(r6)
/* 803D7AA0 003CD820  38 1D 00 30 */	addi r0, r29, 0x30
/* 803D7AA4 003CD824  90 A6 00 0C */	stw r5, 0xc(r6)
/* 803D7AA8 003CD828  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D7AAC 003CD82C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803D7AB0 003CD830  48 01 48 49 */	bl pfk_create_semaphore
/* 803D7AB4 003CD834  2C 03 00 00 */	cmpwi r3, 0
/* 803D7AB8 003CD838  40 82 00 0C */	bne lbl_803D7AC4
/* 803D7ABC 003CD83C  38 60 00 13 */	li r3, 0x13
/* 803D7AC0 003CD840  48 00 00 28 */	b lbl_803D7AE8
lbl_803D7AC4:
/* 803D7AC4 003CD844  90 7D 00 14 */	stw r3, 0x14(r29)
/* 803D7AC8 003CD848  38 60 00 00 */	li r3, 0
/* 803D7ACC 003CD84C  80 1D 00 00 */	lwz r0, 0(r29)
/* 803D7AD0 003CD850  60 00 00 01 */	ori r0, r0, 1
/* 803D7AD4 003CD854  90 1D 00 00 */	stw r0, 0(r29)
/* 803D7AD8 003CD858  A0 9E 00 02 */	lhz r4, 2(r30)
/* 803D7ADC 003CD85C  38 04 00 01 */	addi r0, r4, 1
/* 803D7AE0 003CD860  B0 1E 00 02 */	sth r0, 2(r30)
/* 803D7AE4 003CD864  93 BF 00 00 */	stw r29, 0(r31)
lbl_803D7AE8:
/* 803D7AE8 003CD868  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D7AEC 003CD86C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803D7AF0 003CD870  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803D7AF4 003CD874  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803D7AF8 003CD878  7C 08 03 A6 */	mtlr r0
/* 803D7AFC 003CD87C  38 21 00 30 */	addi r1, r1, 0x30
/* 803D7B00 003CD880  4E 80 00 20 */	blr 

.global pdm_disk_set_disk
pdm_disk_set_disk:
/* 803D7B04 003CD884  90 83 00 2C */	stw r4, 0x2c(r3)
/* 803D7B08 003CD888  38 60 00 00 */	li r3, 0
/* 803D7B0C 003CD88C  4E 80 00 20 */	blr 

.global pdm_disk_get_media_attribute
pdm_disk_get_media_attribute:
/* 803D7B10 003CD890  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 803D7B14 003CD894  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803D7B18 003CD898  90 A4 00 00 */	stw r5, 0(r4)
/* 803D7B1C 003CD89C  90 04 00 04 */	stw r0, 4(r4)
/* 803D7B20 003CD8A0  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 803D7B24 003CD8A4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 803D7B28 003CD8A8  90 A4 00 08 */	stw r5, 8(r4)
/* 803D7B2C 003CD8AC  90 04 00 0C */	stw r0, 0xc(r4)
/* 803D7B30 003CD8B0  80 03 00 28 */	lwz r0, 0x28(r3)
/* 803D7B34 003CD8B4  38 60 00 00 */	li r3, 0
/* 803D7B38 003CD8B8  90 04 00 10 */	stw r0, 0x10(r4)
/* 803D7B3C 003CD8BC  4E 80 00 20 */	blr 

.global pdm_disk_get_media_bps
pdm_disk_get_media_bps:
/* 803D7B40 003CD8C0  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 803D7B44 003CD8C4  38 60 00 00 */	li r3, 0
/* 803D7B48 003CD8C8  B0 04 00 00 */	sth r0, 0(r4)
/* 803D7B4C 003CD8CC  4E 80 00 20 */	blr 

.global pdm_disk_init
pdm_disk_init:
/* 803D7B50 003CD8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7B54 003CD8D4  7C 08 02 A6 */	mflr r0
/* 803D7B58 003CD8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7B5C 003CD8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D7B60 003CD8E0  93 C1 00 08 */	stw r30, 8(r1)
/* 803D7B64 003CD8E4  7C 7E 1B 78 */	mr r30, r3
/* 803D7B68 003CD8E8  A8 03 00 0C */	lha r0, 0xc(r3)
/* 803D7B6C 003CD8EC  2C 00 00 00 */	cmpwi r0, 0
/* 803D7B70 003CD8F0  40 82 00 68 */	bne lbl_803D7BD8
/* 803D7B74 003CD8F4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803D7B78 003CD8F8  48 01 48 5D */	bl pfk_get_semaphore
/* 803D7B7C 003CD8FC  2C 03 00 00 */	cmpwi r3, 0
/* 803D7B80 003CD900  41 82 00 0C */	beq lbl_803D7B8C
/* 803D7B84 003CD904  38 60 00 14 */	li r3, 0x14
/* 803D7B88 003CD908  48 00 00 60 */	b lbl_803D7BE8
lbl_803D7B8C:
/* 803D7B8C 003CD90C  80 9E 00 04 */	lwz r4, 4(r30)
/* 803D7B90 003CD910  7F C3 F3 78 */	mr r3, r30
/* 803D7B94 003CD914  81 84 00 00 */	lwz r12, 0(r4)
/* 803D7B98 003CD918  7D 89 03 A6 */	mtctr r12
/* 803D7B9C 003CD91C  4E 80 04 21 */	bctrl 
/* 803D7BA0 003CD920  7C 7F 1B 78 */	mr r31, r3
/* 803D7BA4 003CD924  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 803D7BA8 003CD928  48 01 48 71 */	bl pfk_release_semaphore
/* 803D7BAC 003CD92C  2C 03 00 00 */	cmpwi r3, 0
/* 803D7BB0 003CD930  41 82 00 0C */	beq lbl_803D7BBC
/* 803D7BB4 003CD934  38 60 00 14 */	li r3, 0x14
/* 803D7BB8 003CD938  48 00 00 30 */	b lbl_803D7BE8
lbl_803D7BBC:
/* 803D7BBC 003CD93C  2C 1F 00 00 */	cmpwi r31, 0
/* 803D7BC0 003CD940  41 82 00 18 */	beq lbl_803D7BD8
/* 803D7BC4 003CD944  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 803D7BC8 003CD948  7F E4 FB 78 */	mr r4, r31
/* 803D7BCC 003CD94C  48 00 0D C9 */	bl pdm_part_set_driver_error_code
/* 803D7BD0 003CD950  38 60 00 15 */	li r3, 0x15
/* 803D7BD4 003CD954  48 00 00 14 */	b lbl_803D7BE8
lbl_803D7BD8:
/* 803D7BD8 003CD958  A8 9E 00 0C */	lha r4, 0xc(r30)
/* 803D7BDC 003CD95C  38 60 00 00 */	li r3, 0
/* 803D7BE0 003CD960  38 04 00 01 */	addi r0, r4, 1
/* 803D7BE4 003CD964  B0 1E 00 0C */	sth r0, 0xc(r30)
lbl_803D7BE8:
/* 803D7BE8 003CD968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7BEC 003CD96C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7BF0 003CD970  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D7BF4 003CD974  7C 08 03 A6 */	mtlr r0
/* 803D7BF8 003CD978  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7BFC 003CD97C  4E 80 00 20 */	blr 

.global pdm_disk_mount
pdm_disk_mount:
/* 803D7C00 003CD980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7C04 003CD984  7C 08 02 A6 */	mflr r0
/* 803D7C08 003CD988  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7C0C 003CD98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D7C10 003CD990  93 C1 00 08 */	stw r30, 8(r1)
/* 803D7C14 003CD994  7C 7E 1B 78 */	mr r30, r3
/* 803D7C18 003CD998  A8 03 00 0E */	lha r0, 0xe(r3)
/* 803D7C1C 003CD99C  2C 00 00 00 */	cmpwi r0, 0
/* 803D7C20 003CD9A0  40 82 00 E0 */	bne lbl_803D7D00
/* 803D7C24 003CD9A4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803D7C28 003CD9A8  48 01 47 AD */	bl pfk_get_semaphore
/* 803D7C2C 003CD9AC  2C 03 00 00 */	cmpwi r3, 0
/* 803D7C30 003CD9B0  41 82 00 0C */	beq lbl_803D7C3C
/* 803D7C34 003CD9B4  38 60 00 14 */	li r3, 0x14
/* 803D7C38 003CD9B8  48 00 00 D8 */	b lbl_803D7D10
lbl_803D7C3C:
/* 803D7C3C 003CD9BC  80 9E 00 04 */	lwz r4, 4(r30)
/* 803D7C40 003CD9C0  7F C3 F3 78 */	mr r3, r30
/* 803D7C44 003CD9C4  81 84 00 08 */	lwz r12, 8(r4)
/* 803D7C48 003CD9C8  7D 89 03 A6 */	mtctr r12
/* 803D7C4C 003CD9CC  4E 80 04 21 */	bctrl 
/* 803D7C50 003CD9D0  2C 03 00 00 */	cmpwi r3, 0
/* 803D7C54 003CD9D4  7C 7F 1B 78 */	mr r31, r3
/* 803D7C58 003CD9D8  41 82 00 30 */	beq lbl_803D7C88
/* 803D7C5C 003CD9DC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 803D7C60 003CD9E0  48 01 47 B9 */	bl pfk_release_semaphore
/* 803D7C64 003CD9E4  2C 03 00 00 */	cmpwi r3, 0
/* 803D7C68 003CD9E8  41 82 00 0C */	beq lbl_803D7C74
/* 803D7C6C 003CD9EC  38 60 00 14 */	li r3, 0x14
/* 803D7C70 003CD9F0  48 00 00 A0 */	b lbl_803D7D10
lbl_803D7C74:
/* 803D7C74 003CD9F4  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 803D7C78 003CD9F8  7F E4 FB 78 */	mr r4, r31
/* 803D7C7C 003CD9FC  48 00 0D 19 */	bl pdm_part_set_driver_error_code
/* 803D7C80 003CDA00  38 60 00 15 */	li r3, 0x15
/* 803D7C84 003CDA04  48 00 00 8C */	b lbl_803D7D10
lbl_803D7C88:
/* 803D7C88 003CDA08  80 BE 00 04 */	lwz r5, 4(r30)
/* 803D7C8C 003CDA0C  7F C3 F3 78 */	mr r3, r30
/* 803D7C90 003CDA10  38 9E 00 18 */	addi r4, r30, 0x18
/* 803D7C94 003CDA14  81 85 00 1C */	lwz r12, 0x1c(r5)
/* 803D7C98 003CDA18  7D 89 03 A6 */	mtctr r12
/* 803D7C9C 003CDA1C  4E 80 04 21 */	bctrl 
/* 803D7CA0 003CDA20  7C 7F 1B 78 */	mr r31, r3
/* 803D7CA4 003CDA24  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 803D7CA8 003CDA28  48 01 47 71 */	bl pfk_release_semaphore
/* 803D7CAC 003CDA2C  2C 03 00 00 */	cmpwi r3, 0
/* 803D7CB0 003CDA30  41 82 00 0C */	beq lbl_803D7CBC
/* 803D7CB4 003CDA34  38 60 00 14 */	li r3, 0x14
/* 803D7CB8 003CDA38  48 00 00 58 */	b lbl_803D7D10
lbl_803D7CBC:
/* 803D7CBC 003CDA3C  2C 1F 00 00 */	cmpwi r31, 0
/* 803D7CC0 003CDA40  41 82 00 18 */	beq lbl_803D7CD8
/* 803D7CC4 003CDA44  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 803D7CC8 003CDA48  7F E4 FB 78 */	mr r4, r31
/* 803D7CCC 003CDA4C  48 00 0C C9 */	bl pdm_part_set_driver_error_code
/* 803D7CD0 003CDA50  38 60 00 15 */	li r3, 0x15
/* 803D7CD4 003CDA54  48 00 00 3C */	b lbl_803D7D10
lbl_803D7CD8:
/* 803D7CD8 003CDA58  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 803D7CDC 003CDA5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7CE0 003CDA60  41 82 00 14 */	beq lbl_803D7CF4
/* 803D7CE4 003CDA64  80 1E 00 00 */	lwz r0, 0(r30)
/* 803D7CE8 003CDA68  60 00 00 02 */	ori r0, r0, 2
/* 803D7CEC 003CDA6C  90 1E 00 00 */	stw r0, 0(r30)
/* 803D7CF0 003CDA70  48 00 00 10 */	b lbl_803D7D00
lbl_803D7CF4:
/* 803D7CF4 003CDA74  80 1E 00 00 */	lwz r0, 0(r30)
/* 803D7CF8 003CDA78  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 803D7CFC 003CDA7C  90 1E 00 00 */	stw r0, 0(r30)
lbl_803D7D00:
/* 803D7D00 003CDA80  A8 9E 00 0E */	lha r4, 0xe(r30)
/* 803D7D04 003CDA84  38 60 00 00 */	li r3, 0
/* 803D7D08 003CDA88  38 04 00 01 */	addi r0, r4, 1
/* 803D7D0C 003CDA8C  B0 1E 00 0E */	sth r0, 0xe(r30)
lbl_803D7D10:
/* 803D7D10 003CDA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7D14 003CDA94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7D18 003CDA98  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D7D1C 003CDA9C  7C 08 03 A6 */	mtlr r0
/* 803D7D20 003CDAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7D24 003CDAA4  4E 80 00 20 */	blr 

.global pdm_disk_format
pdm_disk_format:
/* 803D7D28 003CDAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7D2C 003CDAAC  7C 08 02 A6 */	mflr r0
/* 803D7D30 003CDAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7D34 003CDAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D7D38 003CDAB8  7C 9F 23 78 */	mr r31, r4
/* 803D7D3C 003CDABC  93 C1 00 08 */	stw r30, 8(r1)
/* 803D7D40 003CDAC0  7C 7E 1B 78 */	mr r30, r3
/* 803D7D44 003CDAC4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803D7D48 003CDAC8  48 01 46 8D */	bl pfk_get_semaphore
/* 803D7D4C 003CDACC  2C 03 00 00 */	cmpwi r3, 0
/* 803D7D50 003CDAD0  41 82 00 0C */	beq lbl_803D7D5C
/* 803D7D54 003CDAD4  38 60 00 14 */	li r3, 0x14
/* 803D7D58 003CDAD8  48 00 00 58 */	b lbl_803D7DB0
lbl_803D7D5C:
/* 803D7D5C 003CDADC  80 BE 00 04 */	lwz r5, 4(r30)
/* 803D7D60 003CDAE0  7F C3 F3 78 */	mr r3, r30
/* 803D7D64 003CDAE4  7F E4 FB 78 */	mr r4, r31
/* 803D7D68 003CDAE8  81 85 00 10 */	lwz r12, 0x10(r5)
/* 803D7D6C 003CDAEC  7D 89 03 A6 */	mtctr r12
/* 803D7D70 003CDAF0  4E 80 04 21 */	bctrl 
/* 803D7D74 003CDAF4  7C 7F 1B 78 */	mr r31, r3
/* 803D7D78 003CDAF8  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 803D7D7C 003CDAFC  48 01 46 9D */	bl pfk_release_semaphore
/* 803D7D80 003CDB00  2C 03 00 00 */	cmpwi r3, 0
/* 803D7D84 003CDB04  41 82 00 0C */	beq lbl_803D7D90
/* 803D7D88 003CDB08  38 60 00 14 */	li r3, 0x14
/* 803D7D8C 003CDB0C  48 00 00 24 */	b lbl_803D7DB0
lbl_803D7D90:
/* 803D7D90 003CDB10  2C 1F 00 00 */	cmpwi r31, 0
/* 803D7D94 003CDB14  41 82 00 18 */	beq lbl_803D7DAC
/* 803D7D98 003CDB18  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 803D7D9C 003CDB1C  7F E4 FB 78 */	mr r4, r31
/* 803D7DA0 003CDB20  48 00 0B F5 */	bl pdm_part_set_driver_error_code
/* 803D7DA4 003CDB24  38 60 00 15 */	li r3, 0x15
/* 803D7DA8 003CDB28  48 00 00 08 */	b lbl_803D7DB0
lbl_803D7DAC:
/* 803D7DAC 003CDB2C  38 60 00 00 */	li r3, 0
lbl_803D7DB0:
/* 803D7DB0 003CDB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7DB4 003CDB34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7DB8 003CDB38  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D7DBC 003CDB3C  7C 08 03 A6 */	mtlr r0
/* 803D7DC0 003CDB40  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7DC4 003CDB44  4E 80 00 20 */	blr 

.global pdm_disk_physical_read
pdm_disk_physical_read:
/* 803D7DC8 003CDB48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D7DCC 003CDB4C  7C 08 02 A6 */	mflr r0
/* 803D7DD0 003CDB50  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D7DD4 003CDB54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803D7DD8 003CDB58  7C 9F 23 78 */	mr r31, r4
/* 803D7DDC 003CDB5C  7C A4 2B 78 */	mr r4, r5
/* 803D7DE0 003CDB60  7C C5 33 78 */	mr r5, r6
/* 803D7DE4 003CDB64  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803D7DE8 003CDB68  7D 1E 43 78 */	mr r30, r8
/* 803D7DEC 003CDB6C  39 01 00 0C */	addi r8, r1, 0xc
/* 803D7DF0 003CDB70  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803D7DF4 003CDB74  7C FD 3B 78 */	mr r29, r7
/* 803D7DF8 003CDB78  7F A6 EB 78 */	mr r6, r29
/* 803D7DFC 003CDB7C  38 E1 00 10 */	addi r7, r1, 0x10
/* 803D7E00 003CDB80  93 81 00 20 */	stw r28, 0x20(r1)
/* 803D7E04 003CDB84  7C 7C 1B 78 */	mr r28, r3
/* 803D7E08 003CDB88  4B FF FA 15 */	bl pdm_disk_convert_sector_into_block
/* 803D7E0C 003CDB8C  2C 03 00 00 */	cmpwi r3, 0
/* 803D7E10 003CDB90  41 82 00 08 */	beq lbl_803D7E18
/* 803D7E14 003CDB94  48 00 00 98 */	b lbl_803D7EAC
lbl_803D7E18:
/* 803D7E18 003CDB98  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 803D7E1C 003CDB9C  48 01 45 B9 */	bl pfk_get_semaphore
/* 803D7E20 003CDBA0  2C 03 00 00 */	cmpwi r3, 0
/* 803D7E24 003CDBA4  41 82 00 0C */	beq lbl_803D7E30
/* 803D7E28 003CDBA8  38 60 00 14 */	li r3, 0x14
/* 803D7E2C 003CDBAC  48 00 00 80 */	b lbl_803D7EAC
lbl_803D7E30:
/* 803D7E30 003CDBB0  80 BC 00 04 */	lwz r5, 4(r28)
/* 803D7E34 003CDBB4  7F 83 E3 78 */	mr r3, r28
/* 803D7E38 003CDBB8  7F E4 FB 78 */	mr r4, r31
/* 803D7E3C 003CDBBC  7F C7 F3 78 */	mr r7, r30
/* 803D7E40 003CDBC0  81 85 00 14 */	lwz r12, 0x14(r5)
/* 803D7E44 003CDBC4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803D7E48 003CDBC8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803D7E4C 003CDBCC  7D 89 03 A6 */	mtctr r12
/* 803D7E50 003CDBD0  4E 80 04 21 */	bctrl 
/* 803D7E54 003CDBD4  7C 7F 1B 78 */	mr r31, r3
/* 803D7E58 003CDBD8  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 803D7E5C 003CDBDC  48 01 45 BD */	bl pfk_release_semaphore
/* 803D7E60 003CDBE0  2C 03 00 00 */	cmpwi r3, 0
/* 803D7E64 003CDBE4  41 82 00 0C */	beq lbl_803D7E70
/* 803D7E68 003CDBE8  38 60 00 14 */	li r3, 0x14
/* 803D7E6C 003CDBEC  48 00 00 40 */	b lbl_803D7EAC
lbl_803D7E70:
/* 803D7E70 003CDBF0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803D7E74 003CDBF4  7F 83 E3 78 */	mr r3, r28
/* 803D7E78 003CDBF8  80 BE 00 00 */	lwz r5, 0(r30)
/* 803D7E7C 003CDBFC  7F A6 EB 78 */	mr r6, r29
/* 803D7E80 003CDC00  7F C8 F3 78 */	mr r8, r30
/* 803D7E84 003CDC04  38 E1 00 08 */	addi r7, r1, 8
/* 803D7E88 003CDC08  4B FF FA 45 */	bl pdm_disk_convert_block_into_sector
/* 803D7E8C 003CDC0C  2C 1F 00 00 */	cmpwi r31, 0
/* 803D7E90 003CDC10  41 82 00 18 */	beq lbl_803D7EA8
/* 803D7E94 003CDC14  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 803D7E98 003CDC18  7F E4 FB 78 */	mr r4, r31
/* 803D7E9C 003CDC1C  48 00 0A F9 */	bl pdm_part_set_driver_error_code
/* 803D7EA0 003CDC20  38 60 00 15 */	li r3, 0x15
/* 803D7EA4 003CDC24  48 00 00 08 */	b lbl_803D7EAC
lbl_803D7EA8:
/* 803D7EA8 003CDC28  38 60 00 00 */	li r3, 0
lbl_803D7EAC:
/* 803D7EAC 003CDC2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D7EB0 003CDC30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803D7EB4 003CDC34  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803D7EB8 003CDC38  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803D7EBC 003CDC3C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803D7EC0 003CDC40  7C 08 03 A6 */	mtlr r0
/* 803D7EC4 003CDC44  38 21 00 30 */	addi r1, r1, 0x30
/* 803D7EC8 003CDC48  4E 80 00 20 */	blr 

.global pdm_disk_physical_write
pdm_disk_physical_write:
/* 803D7ECC 003CDC4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D7ED0 003CDC50  7C 08 02 A6 */	mflr r0
/* 803D7ED4 003CDC54  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D7ED8 003CDC58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803D7EDC 003CDC5C  7C 9F 23 78 */	mr r31, r4
/* 803D7EE0 003CDC60  7C A4 2B 78 */	mr r4, r5
/* 803D7EE4 003CDC64  7C C5 33 78 */	mr r5, r6
/* 803D7EE8 003CDC68  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803D7EEC 003CDC6C  7D 1E 43 78 */	mr r30, r8
/* 803D7EF0 003CDC70  39 01 00 0C */	addi r8, r1, 0xc
/* 803D7EF4 003CDC74  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803D7EF8 003CDC78  7C FD 3B 78 */	mr r29, r7
/* 803D7EFC 003CDC7C  7F A6 EB 78 */	mr r6, r29
/* 803D7F00 003CDC80  38 E1 00 10 */	addi r7, r1, 0x10
/* 803D7F04 003CDC84  93 81 00 20 */	stw r28, 0x20(r1)
/* 803D7F08 003CDC88  7C 7C 1B 78 */	mr r28, r3
/* 803D7F0C 003CDC8C  4B FF F9 11 */	bl pdm_disk_convert_sector_into_block
/* 803D7F10 003CDC90  2C 03 00 00 */	cmpwi r3, 0
/* 803D7F14 003CDC94  41 82 00 08 */	beq lbl_803D7F1C
/* 803D7F18 003CDC98  48 00 00 98 */	b lbl_803D7FB0
lbl_803D7F1C:
/* 803D7F1C 003CDC9C  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 803D7F20 003CDCA0  48 01 44 B5 */	bl pfk_get_semaphore
/* 803D7F24 003CDCA4  2C 03 00 00 */	cmpwi r3, 0
/* 803D7F28 003CDCA8  41 82 00 0C */	beq lbl_803D7F34
/* 803D7F2C 003CDCAC  38 60 00 14 */	li r3, 0x14
/* 803D7F30 003CDCB0  48 00 00 80 */	b lbl_803D7FB0
lbl_803D7F34:
/* 803D7F34 003CDCB4  80 BC 00 04 */	lwz r5, 4(r28)
/* 803D7F38 003CDCB8  7F 83 E3 78 */	mr r3, r28
/* 803D7F3C 003CDCBC  7F E4 FB 78 */	mr r4, r31
/* 803D7F40 003CDCC0  7F C7 F3 78 */	mr r7, r30
/* 803D7F44 003CDCC4  81 85 00 18 */	lwz r12, 0x18(r5)
/* 803D7F48 003CDCC8  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803D7F4C 003CDCCC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803D7F50 003CDCD0  7D 89 03 A6 */	mtctr r12
/* 803D7F54 003CDCD4  4E 80 04 21 */	bctrl 
/* 803D7F58 003CDCD8  7C 7F 1B 78 */	mr r31, r3
/* 803D7F5C 003CDCDC  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 803D7F60 003CDCE0  48 01 44 B9 */	bl pfk_release_semaphore
/* 803D7F64 003CDCE4  2C 03 00 00 */	cmpwi r3, 0
/* 803D7F68 003CDCE8  41 82 00 0C */	beq lbl_803D7F74
/* 803D7F6C 003CDCEC  38 60 00 14 */	li r3, 0x14
/* 803D7F70 003CDCF0  48 00 00 40 */	b lbl_803D7FB0
lbl_803D7F74:
/* 803D7F74 003CDCF4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803D7F78 003CDCF8  7F 83 E3 78 */	mr r3, r28
/* 803D7F7C 003CDCFC  80 BE 00 00 */	lwz r5, 0(r30)
/* 803D7F80 003CDD00  7F A6 EB 78 */	mr r6, r29
/* 803D7F84 003CDD04  7F C8 F3 78 */	mr r8, r30
/* 803D7F88 003CDD08  38 E1 00 08 */	addi r7, r1, 8
/* 803D7F8C 003CDD0C  4B FF F9 41 */	bl pdm_disk_convert_block_into_sector
/* 803D7F90 003CDD10  2C 1F 00 00 */	cmpwi r31, 0
/* 803D7F94 003CDD14  41 82 00 18 */	beq lbl_803D7FAC
/* 803D7F98 003CDD18  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 803D7F9C 003CDD1C  7F E4 FB 78 */	mr r4, r31
/* 803D7FA0 003CDD20  48 00 09 F5 */	bl pdm_part_set_driver_error_code
/* 803D7FA4 003CDD24  38 60 00 15 */	li r3, 0x15
/* 803D7FA8 003CDD28  48 00 00 08 */	b lbl_803D7FB0
lbl_803D7FAC:
/* 803D7FAC 003CDD2C  38 60 00 00 */	li r3, 0
lbl_803D7FB0:
/* 803D7FB0 003CDD30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D7FB4 003CDD34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803D7FB8 003CDD38  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803D7FBC 003CDD3C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803D7FC0 003CDD40  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803D7FC4 003CDD44  7C 08 03 A6 */	mtlr r0
/* 803D7FC8 003CDD48  38 21 00 30 */	addi r1, r1, 0x30
/* 803D7FCC 003CDD4C  4E 80 00 20 */	blr 

.global pdm_disk_unmount
pdm_disk_unmount:
/* 803D7FD0 003CDD50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D7FD4 003CDD54  7C 08 02 A6 */	mflr r0
/* 803D7FD8 003CDD58  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7FDC 003CDD5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D7FE0 003CDD60  3B E0 00 00 */	li r31, 0
/* 803D7FE4 003CDD64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D7FE8 003CDD68  7C 9E 23 78 */	mr r30, r4
/* 803D7FEC 003CDD6C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D7FF0 003CDD70  7C 7D 1B 78 */	mr r29, r3
/* 803D7FF4 003CDD74  A8 03 00 0E */	lha r0, 0xe(r3)
/* 803D7FF8 003CDD78  2C 00 00 01 */	cmpwi r0, 1
/* 803D7FFC 003CDD7C  40 82 00 68 */	bne lbl_803D8064
/* 803D8000 003CDD80  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803D8004 003CDD84  48 01 43 D1 */	bl pfk_get_semaphore
/* 803D8008 003CDD88  2C 03 00 00 */	cmpwi r3, 0
/* 803D800C 003CDD8C  41 82 00 0C */	beq lbl_803D8018
/* 803D8010 003CDD90  38 60 00 14 */	li r3, 0x14
/* 803D8014 003CDD94  48 00 00 80 */	b lbl_803D8094
lbl_803D8018:
/* 803D8018 003CDD98  80 9D 00 04 */	lwz r4, 4(r29)
/* 803D801C 003CDD9C  7F A3 EB 78 */	mr r3, r29
/* 803D8020 003CDDA0  81 84 00 0C */	lwz r12, 0xc(r4)
/* 803D8024 003CDDA4  7D 89 03 A6 */	mtctr r12
/* 803D8028 003CDDA8  4E 80 04 21 */	bctrl 
/* 803D802C 003CDDAC  7C 7F 1B 78 */	mr r31, r3
/* 803D8030 003CDDB0  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 803D8034 003CDDB4  48 01 43 E5 */	bl pfk_release_semaphore
/* 803D8038 003CDDB8  2C 03 00 00 */	cmpwi r3, 0
/* 803D803C 003CDDBC  41 82 00 0C */	beq lbl_803D8048
/* 803D8040 003CDDC0  38 60 00 14 */	li r3, 0x14
/* 803D8044 003CDDC4  48 00 00 50 */	b lbl_803D8094
lbl_803D8048:
/* 803D8048 003CDDC8  2C 1F 00 00 */	cmpwi r31, 0
/* 803D804C 003CDDCC  41 82 00 28 */	beq lbl_803D8074
/* 803D8050 003CDDD0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 803D8054 003CDDD4  7F E4 FB 78 */	mr r4, r31
/* 803D8058 003CDDD8  48 00 09 3D */	bl pdm_part_set_driver_error_code
/* 803D805C 003CDDDC  3B E0 00 15 */	li r31, 0x15
/* 803D8060 003CDDE0  48 00 00 14 */	b lbl_803D8074
lbl_803D8064:
/* 803D8064 003CDDE4  2C 00 00 00 */	cmpwi r0, 0
/* 803D8068 003CDDE8  40 82 00 0C */	bne lbl_803D8074
/* 803D806C 003CDDEC  38 60 00 0E */	li r3, 0xe
/* 803D8070 003CDDF0  48 00 00 24 */	b lbl_803D8094
lbl_803D8074:
/* 803D8074 003CDDF4  2C 1F 00 00 */	cmpwi r31, 0
/* 803D8078 003CDDF8  41 82 00 0C */	beq lbl_803D8084
/* 803D807C 003CDDFC  28 1E 00 01 */	cmplwi r30, 1
/* 803D8080 003CDE00  40 82 00 10 */	bne lbl_803D8090
lbl_803D8084:
/* 803D8084 003CDE04  A8 7D 00 0E */	lha r3, 0xe(r29)
/* 803D8088 003CDE08  38 03 FF FF */	addi r0, r3, -1
/* 803D808C 003CDE0C  B0 1D 00 0E */	sth r0, 0xe(r29)
lbl_803D8090:
/* 803D8090 003CDE10  7F E3 FB 78 */	mr r3, r31
lbl_803D8094:
/* 803D8094 003CDE14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D8098 003CDE18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D809C 003CDE1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D80A0 003CDE20  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D80A4 003CDE24  7C 08 03 A6 */	mtlr r0
/* 803D80A8 003CDE28  38 21 00 20 */	addi r1, r1, 0x20
/* 803D80AC 003CDE2C  4E 80 00 20 */	blr 

.global pdm_disk_notify_media_eject
pdm_disk_notify_media_eject:
/* 803D80B0 003CDE30  80 03 00 00 */	lwz r0, 0(r3)
/* 803D80B4 003CDE34  38 80 00 00 */	li r4, 0
/* 803D80B8 003CDE38  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 803D80BC 003CDE3C  90 03 00 00 */	stw r0, 0(r3)
/* 803D80C0 003CDE40  48 00 0D 40 */	b pdm_part_set_change_media_state

.global pdm_disk_notify_media_insert
pdm_disk_notify_media_insert:
/* 803D80C4 003CDE44  80 03 00 00 */	lwz r0, 0(r3)
/* 803D80C8 003CDE48  38 80 00 01 */	li r4, 1
/* 803D80CC 003CDE4C  60 00 00 04 */	ori r0, r0, 4
/* 803D80D0 003CDE50  90 03 00 00 */	stw r0, 0(r3)
/* 803D80D4 003CDE54  48 00 0D 2C */	b pdm_part_set_change_media_state

