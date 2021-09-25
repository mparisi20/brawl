WSLENV ?= no
ifeq ($(WSLENV),)
NOWINE = 1
else
NOWINE = 0
endif

ifeq ($(OS),Windows_NT)
EXE := .exe
WINE :=
else
EXE :=
WINE := wine
endif

ifeq ($(NOWINE),1)
WINE :=
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

# Used for elf2dol
TARGET_COL := wii

TARGET := brawl

BUILD_DIR := build/$(TARGET)

# Create the folders via recursive search.
ASM_DIRS := $(sort $(shell find asm -type d))
SRC_DIRS := $(sort $(shell find src -type d))
DATA_DIRS := $(sort $(shell find data -type d))

# Apply the slash removal after SRC_DIRS is created, otherwise asm/ gets into SRC.
ASM_DIRS := $(patsubst %/,%,$(ASM_DIRS))
SRC_DIRS := $(patsubst %/,%,$(SRC_DIRS))
DATA_DIRS := $(patsubst %/,%,$(DATA_DIRS))

# Inputs
S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
DATA_FILES := $(foreach dir,$(DATA_DIRS),$(wildcard $(dir)/*.s))
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
CPP_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.cpp))
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/$(TARGET).dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/$(TARGET).map

# Define O_FILES
include obj_files.mk

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 3.0

# Programs
AS          := $(DEVKITPPC)/bin/powerpc-eabi-as
OBJCOPY     := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
CPP         := cpp -P
CC          := $(WINE) tools/mwcc_compiler/GC/$(MWCC_VERSION)/mwcceppc.exe
LD          := $(WINE) tools/mwcc_compiler/GC/$(MWCC_VERSION)/mwldeppc.exe
ELF2DOL     := tools/elf2dol/elf2dol$(EXE)
SHA1SUM     := sha1sum
PYTHON      := python3

POSTPROC := tools/postprocess/postprocess.py
PRAGMAPROC := tools/pragma/pragma.py

# Options
INCLUDES := -i . -I- -i include
ASFLAGS := -mgekko -I include
LDFLAGS := -map $(MAP) -fp hard -nodefaults
CFLAGS  := -Cpp_exceptions off -proc gekko -fp hard -inline auto -O4,p -ipa file -nodefaults -msgstyle gcc $(INCLUDES) -W all -w nopragmas

# for postprocess.py
PROCFLAGS := -fsymbol-fixup

# elf2dol needs to know these in order to calculate sbss correctly.
SDATA_PDHR := 9
SBSS_PDHR := 10

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

TOOLS_DIR = tools
TOOLDIRS = $(filter-out $(TOOLS_DIR)/mwcc_compiler $(TOOLS_DIR)/postprocess $(TOOLS_DIR)/pragma,$(wildcard $(TOOLS_DIR)/*))
TOOLBASE = $(TOOLDIRS:$(TOOLS_DIR)/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),$(TOOLS_DIR)/$(tool)/$(tool)$(EXE))

#-------------------------------------------------------------------------------
# Per-file Compiler Flag Overrides
#-------------------------------------------------------------------------------

# Removing -ipa file / -inline auto since they change the emit order of floating point constants 
$(BUILD_DIR)/src/text/mt_prng.o: CFLAGS := -Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -msgstyle gcc $(INCLUDES) -W all -w nopragmas

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

ifeq (,$(filter-out all,$(MAKECMDGOALS)))
$(call infoshell, $(MAKE) tools)
endif

default: all

all: $(DOL)

ALL_DIRS := build $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS) $(DATA_DIRS))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

.PHONY: tools clean clean-tools $(TOOLDIRS)

$(LDSCRIPT): ldscript.lcf
	$(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(DOL): $(ELF)
	$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)
	$(SHA1SUM) -c $(TARGET).sha1

clean: clean-tools
	rm -f -d -r build

tools: $(TOOLDIRS)

$(TOOLDIRS):
	@$(MAKE) -C $@

clean-tools:
	$(foreach tool,$(TOOLDIRS),$(MAKE) clean -C $(tool);)

$(ELF): $(O_FILES) $(LDSCRIPT)
	echo $(O_FILES) | tr " " "\n" > build/o_files
	$(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files
# The Metrowerks linker doesn't generate physical addresses in the ELF program headers. This fixes it somehow.
	$(OBJCOPY) $@ $@
$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<
# resolve escape sequences for C++ mangled names in the .strtab section (assembler workaround).
	$(PYTHON) $(POSTPROC) $(PROCFLAGS) $@

$(BUILD_DIR)/%.o: %.cpp
	$(PYTHON) $(PRAGMAPROC) "$(CC)" "$(CFLAGS) -lang c++ -c" $@ $<
	$(PYTHON) $(POSTPROC) $(PROCFLAGS) $@

$(BUILD_DIR)/%.o: %.c
	$(PYTHON) $(PRAGMAPROC) "$(CC)" "$(CFLAGS) -lang c99 -c" $@ $<
	$(PYTHON) $(POSTPROC) $(PROCFLAGS) $@
