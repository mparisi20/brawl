#include "global.h"

struct soNullableInterface
{
    virtual BOOL isNull() const = 0;
};

template<typename T>
struct soArrayFixed : public soNullableInterface
{
    // TODO: placeholder
    virtual BOOL isNull() const
    {
        return FALSE;
    }
    
    // TODO: placeholder
    virtual T* at(s32)
    {
        return 0;
    }
    
    // TODO: placeholder
    virtual T* at(s32, s32)
    {
        return 0;
    }
    
    // TODO: placeholder
    virtual s32 size() const
    {
        return 0;
    }
    
    virtual BOOL isEmpty() const
    {
        return size() == 0;
    }
    
    virtual ~soArrayFixed() { }
};

template<typename T>
struct soArrayContractible : public soArrayFixed<T>
{
    // TODO: defined in the RELs
    virtual ~soArrayContractible() { }
};

template<typename T>
struct soConnectable
{
    
    // TODO: placeholder
    void connect();
    
};

// TODO move to header
template<typename T>
struct soArrayContractibleTable : public soArrayContractible<T>, public soConnectable<soArrayContractibleTable<T> >
{
	soArrayContractibleTable* link_; // 0x4
	T* arr_; // 0x8
	s32 count_; // 0xC
    
    soArrayContractibleTable() : link_(0), arr_(0), count_(0) { }
    soArrayContractibleTable(soArrayContractibleTable* lnk, T* a, s32 sz)
        : link_(lnk), arr_(a), count_(sz)
    {
        if (!arr_)
            count_ = 0;
    }
    
    virtual BOOL isNull() const
    {
        return FALSE;
    }
    
    virtual T* at(s32 i)
    {
        return atSub(i);
    }
    
    // overload
    virtual T* at(s32 i, s32)
    {
        return atSub(i);
    }
    
    virtual s32 size() const
    {
        s32 subcount = count_;
        if (!arr_)
            subcount = 0;
        if (link_)
            return subcount + link_->size();
        return subcount;
    }
    
    virtual ~soArrayContractibleTable() { }
    
    virtual void shift()
    {
        if (!isEmpty()) {
            if (count_ > 0) {
                count_--;
                if (count_ <= 0)
                    arr_ = 0;
                else
                    arr_++;
            } else if (link_) {
                link_->shift();
            }
        }
    }
    
    virtual void pop()
    {
        if (link_ && !link_->isEmpty())
            link_->pop();
        else if (count_ > 0)
            count_--;
    }
    
    virtual void clear()
    {
        if (link_)
            link_->clear();
        arr_ = 0;
        count_ = 0;
    }
    
    virtual T* atSub(s32 i)
    {
        if (i >= count_ && link_)
            return link_->at(i - count_);
        return arr_ + i;
    }
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

struct soNullable
{
    // TODO: defined in ac_cmd_interpreter.o
    virtual BOOL isNull() const { return FALSE; }
};

struct acAnimCmd : public soNullable
{
    
};

struct acAnimCmdImpl : public acAnimCmd
{
    u8 unk0[0x4];
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

// TODO: fix vtable
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




