#include "global.h"
#include "OS.h"
#include "ut_relocate.h"
#include <string.h>

/**
 * NOTE:
 * fileBuf is a void* for now, but it may be useful to know:
 * typeof fileBuf == typeof gfArchive::getData() 
 *                == typeof gfFileIOHandle::getBuffer()
 * 
 */

#ifndef NONMATCHING
// r4 -> r5 -> r6 register rotation
#pragma regswap 80043f0c 80043f40 r4 r14 80043e1c
#pragma regswap 80043f0c 80043f40 r5 r15 80043e1c
#pragma regswap 80043f0c 80043f40 r6 r16 80043e1c
#pragma regswap 80043f0c 80043f40 r14 r5 80043e1c
#pragma regswap 80043f0c 80043f40 r15 r6 80043e1c
#pragma regswap 80043f0c 80043f40 r16 r4 80043e1c
#endif
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

#ifndef NONMATCHING
// r27 -> r26 -> r25 register rotation
#pragma regswap 80044124 800441ec r27 r14 80043e1c
#pragma regswap 80044124 800441ec r26 r15 80043e1c
#pragma regswap 80044124 800441ec r25 r16 80043e1c
#pragma regswap 80044124 800441ec r14 r26 80043e1c
#pragma regswap 80044124 800441ec r15 r25 80043e1c
#pragma regswap 80044124 800441ec r16 r27 80043e1c
#endif
// Resolve all undefined references in this utRelocate against 
// the symbols defined in other
void utRelocate::resolveReference(const utRelocate* other) {
    s32 j;
    u32 r27;
    s32 i;
    u32 data;
    size_t nSyms;
    const DATSymbol* sym;
    DATImport* imp;
    const char* strtab;
    const char* importName;

    for (i = 0; i < this->hdr.nImports; i++) {
        if (i < 0 || this->hdr.nImports <= i) {
            importName = 0;
        } else {
            imp = static_cast<DATImport*>(this->importStart);
            strtab = static_cast<const char*>(this->strtabStart);
            importName = strtab + imp[i].name;
        }
        
        if (importName) {
            nSyms = other->hdr.nSymbols;
            for (j = 0; j < nSyms; j++) {
                sym = static_cast<const DATSymbol*>(other->symtabStart);
                strtab = static_cast<const char*>(other->strtabStart);
                if (!strcmp(strtab + sym[j].name, importName)) {
                    data = reinterpret_cast<u32>(other->dataStart);
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
