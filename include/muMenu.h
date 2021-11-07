#ifndef MU_MENU
#define MU_MENU

struct muMenu {
    static u32 getItemNameID(s32 p1);
    static u32 exchangeMuItemKindToItKind(s32);
};

#define INPUT_UP    0x8
#define INPUT_DOWN  0x4
#define INPUT_RIGHT 0x2
#define INPUT_LEFT  0x1
#define INPUT_A     0x100

struct muMenuController {
    u8 unk0[0xC];
    u32 padInput1;
    u32 padInput2;
    u8 unk14[0x94];

    void init(u8 p1);
    void setControllerID(u8 id);
    void main();
};

#endif //MU_MENU
