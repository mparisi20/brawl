#ifndef UT_RELOCATE_H
#define UT_RELOCATE_H

#include "global.h"

// 32-byte file header for .dat files, such as /toy/seal/ty_seal_data.dat
struct DATHeader {
    size_t fileSz;     // bytes
    size_t dataSz;     // bytes
    size_t nRels;      // words
    size_t nSymbols;   // DATSymbols
    size_t nImports;   // DATImports
    u32    unk14;
    BOOL   isAbsolute; // if false, apply relocations to the data section and set to true
    u32 unk1C;
};

struct DATSymbol {
    u32 offset; // offset into data section
    u32 name;   // offset into strtab section
};

/** 
 * A record representing the location of an reference to a symbol that
 * is undefined in this utRelocate module, but can be resolved against another
 * utRelocate that defines the symbol via utRelocate::resolveReference.
 * 
 * The locations of the references are compactly encoded into the .dat file. While DATImport::offset gives the 
 * first offset into the data section in which a reference is found, the word
 * originally at that offset gives another offset where the next reference is found. Thus, locateExtern
 * grabs the next offset as it performs each relocation, stopping when 
 * it reaches the sentinel value, 0xFFFFFFFF.
 */
struct DATImport {
    u32 offset; // offset into data section
    u32 name;   // offset into strtab section
};

/**
 * A relocatable .dat file that has been loaded into main memory. 
 * 
 * A .dat file contains:
 * 
 * 1. A 32-byte header, described in DATHeader
 * 2. A main payload, called the "data" section here
 * 3. A rel table containing offsets into the data section where a defined symbol is used
 * 4. A symbol table, with entries defining the name of the symbol and its offset in the data section
 * 5. An import table containing offsets into the data section where an undefined symbol is used
 * 6. A string table containing the names of all of the symbols used by the module.
 */
class utRelocate {
    DATHeader hdr;
    void* dataStart;
    void* relStart;
    void* symtabStart;
    void* importStart;
    void* strtabStart;
    void locateExtern(const char* externName, u32 p2);
public:
    utRelocate(void* fileBuf, size_t fileSz);
    ~utRelocate();
    void* getPublicAddress(const char* name);    
    void resolveReference(const utRelocate* p1);
};

#endif //UT_RELOCATE_H
