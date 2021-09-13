#if 0
80043e1c __ct/[utRelocate]/(ut_relocate.o)
80043f6c __dt/[utRelocate]/(ut_relocate.o)
80043fac getPublicAddress/[utRelocate]/(ut_relocate.o)
8004403c locateExtern/[utRelocate]/(ut_relocate.o)
80044104 resolveReference/[utRelocate]/(ut_relocate.o)
#endif

#include "global.h"
//#include "OS.h"
//#include <string.h>

extern "C" {
    void* memcpy(void* dest, const void* src, size_t n);
    int strcmp(const char* s1, const char* s2);
    void OSReport(const char* msg, ...);
}

// 32-byte file header for .dat files, such as /toy/seal/ty_seal_data.dat
struct DATHeader {
    size_t fileSz;     // bytes
    size_t dataSz;     // bytes
    size_t nRels;    // 4-byte words
            // NOTE: represents offsets into the data section labeling
            // 4-byte objects that need to be relocated
    size_t nSymbols;   // each corresponding to an 8-byte record and string
    size_t nImports;     // 8-byte structs. TODO: external relocations
    u32    unk14;
    BOOL   isAbsolute; // if false, then apply relocations to the data section
    u32 unk1C;
};

/**
 * A relocatable .dat file that has been loaded into main memory. 
 * 
 * A .dat file contains:
 * 
 * 1. A 32-byte header, described in DATHeader
 * 2. A main payload, called the "data" section here
 * 3. A rel table containing offsets into the data section where an internally-defined symbol is used
 * 4. A symbol table, with entries deinfing the name of the symbol and its offset in the data section
 * 5. An import table containing offsets into the data section where an externally-defined symbol is used
 * 6. A string table containing the names of all of the symbols used by the module.
 * 
 */
class utRelocate {
    DATHeader hdr;
    void* dataStart;
    void* relStart; // internal relocations
    void* symtabStart;
    void* importStart; // external relocations
    void* strtabStart;
public:
    utRelocate(void* fileBuf, size_t fileSz);
    ~utRelocate();
    void* getPublicAddress(const char* name);
    // private?
    void locateExtern(const char* externName, u32 p2);
    void resolveReference(const utRelocate* p1);
};

/**
 * fileBuf is a void* for now, but it may be useful to know:
 * type of fileBuf == type of gfArchive::getData() 
 *                 == type of gfFileIOHandle::getBuffer()
 * 
 */

// NONMATCHING due to r4 -> r5 -> r6 register rotation
#pragma regswap 80043f0c 80043f40 r4 r14 80043e1c
#pragma regswap 80043f0c 80043f40 r5 r15 80043e1c
#pragma regswap 80043f0c 80043f40 r6 r16 80043e1c
#pragma regswap 80043f0c 80043f40 r14 r5 80043e1c
#pragma regswap 80043f0c 80043f40 r15 r6 80043e1c
#pragma regswap 80043f0c 80043f40 r16 r4 80043e1c
utRelocate::utRelocate(void* fileBuf, size_t fileSz) {
    this->dataStart = 0;
    this->relStart = 0;
    this->symtabStart = 0;
    this->importStart = 0;
    this->strtabStart = 0;
    memcpy(&this->hdr, fileBuf, sizeof(DATHeader));
    if (this->hdr.fileSz != fileSz) {
        OSReport("utRelocate: byte-order mismatch! Please check data format\n");
    }

    u32 r4 = 0x20;
    if (this->hdr.dataSz) {
        this->dataStart = static_cast<char*>(fileBuf) + 0x20;
        r4 = this->hdr.dataSz + 0x20;
    }

    if (this->hdr.nRels) {
        this->relStart = static_cast<char*>(fileBuf) + r4;
        r4 += this->hdr.nRels << 2;
    }

    if (this->hdr.nSymbols) {
        this->symtabStart = static_cast<char*>(fileBuf) + r4;
        r4 += this->hdr.nSymbols << 3;
    }

    if (this->hdr.nImports) {
        this->importStart = static_cast<char*>(fileBuf) + r4;
        r4 += this->hdr.nImports << 3;
    }

    if (r4 < this->hdr.fileSz) {
        this->strtabStart = static_cast<char*>(fileBuf) + r4;
    }

    if (!this->hdr.isAbsolute) {
        // Relocate objects in data section
        for (size_t i = 0; i < this->hdr.nRels; i++) {
            char* data = static_cast<char*>(this->dataStart);
            u32* reloc = static_cast<u32*>(this->relStart); // r3
            u32* ref = reinterpret_cast<u32*>(&data[reloc[i]]);
            *ref += reinterpret_cast<u32>(this->dataStart);
        }
        DATHeader* hdr = static_cast<DATHeader*>(fileBuf);
        hdr->isAbsolute = TRUE;
    }
}

utRelocate::~utRelocate() { }

struct DATSymbol {
    u32 offset; // offset into data section
    u32 name;   // offset into strtab section
};

void* utRelocate::getPublicAddress(const char* symName) {
    size_t nSymbols = this->hdr.nSymbols;
    DATSymbol* sym;
    for (size_t i = 0; i < nSymbols; i++) {
        sym = static_cast<DATSymbol*>(this->symtabStart);
        char* strtab = static_cast<char*>(this->strtabStart);
        if (!strcmp(strtab + sym[i].name, symName)) {
            char* data = static_cast<char*>(this->dataStart);
            return static_cast<void*>(data + sym[i].offset);
        }
    }
    return 0;
}

/** 
 * A record representing the location of an reference to a symbol that
 * is undefined in this utRelocate module, but can be resolved against another
 * utRelocate that defines the symbol.
 * 
 * The location of the references are encoded into the .dat file. While DATImport::offset gives the 
 * first offset into the data section in which a reference is found, the four
 * bytes at that offset give another offset where the next reference is found. Thus, locateExtern
 * performs the relocation while grabbing the next offset.
 */
struct DATImport {
    u32 offset; // offset into data section
    u32 name;   // offset into strtab section
};

// Resolve all references to externName within this module to addr
void utRelocate::locateExtern(const char* externName, u32 addr) {
    size_t count = this->hdr.nImports;
    DATImport* r29;
    u32 nextOffset = 0xffffffff;
    for (size_t i = 0; i < count; i++) {
        r29 = static_cast<DATImport*>(this->importStart);
        char* strtab = static_cast<char*>(this->strtabStart);
        if (!strcmp(externName, strtab + r29[i].name)) {
            nextOffset = r29[i].offset;
            break;
        }
    }
    if (nextOffset + 0x10000 == 0xffff) {
        return;
    } else {
        while (nextOffset + 0x10000 != 0xffff && nextOffset < this->hdr.dataSz) {
            char* data = static_cast<char*>(this->dataStart);
            u32* ref = reinterpret_cast<u32*>(data + nextOffset);
            nextOffset = *ref;
            *ref = addr;
        }
    }
}

// Resolve all undefined references in this utRelocate against the symbols defined 
// in other
void utRelocate::resolveReference(const utRelocate* other) {
    char* importName;
    for (s32 i = 0; i < this->hdr.nImports; i++) {
        if (i < 0 || this->hdr.nImports <= i) {
            importName = 0;
        } else {
            DATImport* imp = static_cast<DATImport*>(this->importStart);
            char* strtab = static_cast<char*>(this->strtabStart);
            importName = strtab + imp[i].name;
        }
        
        if (importName) {
            size_t nSyms = other->hdr.nSymbols;
            u32 r27;
            for (size_t j = 0; j < nSyms; j++) {
                const DATSymbol* sym = static_cast<const DATSymbol*>(other->symtabStart);
                const char* strtab = static_cast<const char*>(other->strtabStart);
                if (!strcmp(strtab + sym[j].name, importName)) {
                    u32 data = reinterpret_cast<u32>(other->dataStart);
                    r27 = data + sym[j].offset;
                    goto EndSearch;
                }
            }
            r27 = 0;
        EndSearch:
            if (!r27) {
                OSReport("utRelocate: not found symbol! ->[%s] \n", importName);
            }
            locateExtern(importName, r27);
        }
    }
}
