#include "global.h"


// TODO move
template<typename T>
struct soArrayContractibleTable
{
	soArrayContractibleTable* link; // 0x4
	T* arr; // 0x8
	s32 size; // 0xC
    
    soArrayContractibleTable() : link(0), arr(0), size(0) { }
    soArrayContractibleTable(soArrayContractibleTable* lnk, T* a, s32 sz)
        : link(lnk), arr(a), size(sz)
    {
        if (!arr)
            size = 0;
    }
    
    virtual BOOL isEmpty();
    
    // TODO add member functions
    
};



// TODO: data is a union?
struct acCmdArgConv {
    s32 argType; // 0x0
    // IntData, StringData, ValueIndexData, FloatData, 
    // AddressData, BoolData
    s32 data; // 0x4
};

// TODO: acCmdArg probably doesn't subclass soNullable, 
// because then unk0 would be a vptr. But what about soNullableInterface?
struct acCmdArg {
    const acCmdArgConv* dataPtr; // data pointer
    u8 isNull; // isNull?
    
    // TODO: possible inlined constructor
    acCmdArg() : dataPtr(NULL), isNull(false) { }
};

// TODO: Null instance?
acCmdArg gUnk805a0370;

// TODO: soAnimCmdAddressPack... see
// soAnimCmdControlUnit::getAddressPack
struct acAnimCmdConv
{
	u8 group; // 0x0 group 0 refers to systemCmds, >= 1 notSystemCmds
	u8 type; // 0x1 when group == 0, selects one of the 25 systemCmds to interpret
	s8 argNum; // 0x2
	u8 option; // 0x3
	const acCmdArgConv* args; // 0x4
};

struct acAnimCmdImpl
{
    u8 unk0[0x8];
    acAnimCmdConv* cmdAddr;
    
    virtual s8 getGroup() const;
    virtual s8 getType() const;
    virtual s32 getArgNum() const;
    virtual s32 getOption() const;
    virtual soArrayContractibleTable<const acCmdArgConv> getArgList();
    virtual BOOL getArg(acCmdArg* arg, s32 index) const;
    // getCmdAddress
    virtual u32 isArgEmpty() const;
    virtual BOOL isValid() const;
};

s8 acAnimCmdImpl::getGroup() const
{
    return (s8)cmdAddr->group;
}

s8 acAnimCmdImpl::getType() const
{
    return (s8)cmdAddr->type;
}

s32 acAnimCmdImpl::getArgNum() const
{
    return (!cmdAddr) ? 0 : cmdAddr->argNum;
}

s32 acAnimCmdImpl::getOption() const
{
    return (!cmdAddr) ? 0 : cmdAddr->option;
}

// TODO: fix vtable and static data ref
BOOL acAnimCmdImpl::getArg(acCmdArg* arg, s32 index) const
{
	if (isArgEmpty() == 1 || !cmdAddr->args) {
        *arg = gUnk805a0370;
		return FALSE;
	}
	if (index < 0 || index >= getArgNum()) {
        *arg = gUnk805a0370;
		return FALSE;
	}
    const acCmdArgConv* ptr = cmdAddr->args + index;
	arg->isNull = FALSE;
	arg->dataPtr = ptr;
	return TRUE;
}

u32 acAnimCmdImpl::isArgEmpty() const
{
    return getArgNum() == 0;
}

soArrayContractibleTable<const acCmdArgConv> acAnimCmdImpl::getArgList()
{
    s32 argNum = getArgNum();    
    if (argNum <= 0 || !cmdAddr->args) {
        return soArrayContractibleTable<const acCmdArgConv>();
    }
    return soArrayContractibleTable<const acCmdArgConv>(0, cmdAddr->args, argNum);
}

BOOL acAnimCmdImpl::isValid() const
{
    if (!cmdAddr || (s8)cmdAddr->type < 0 || (s8)cmdAddr->group < 0)
        return FALSE;
    return TRUE;
}




template<typename T>
BOOL soArrayContractibleTable<T>::isEmpty()
{
    return TRUE;
}










