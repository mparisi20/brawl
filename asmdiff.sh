#!/bin/bash

OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -D -bbinary -EB -mpowerpc -M gekko"

BrawltextStart=0x8000C860
BrawltextOffset=0x25E0
 # convert absolute address to DOL file offset
dolFileOff=$((16#$1 - $BrawltextStart + $BrawltextOffset))

OPTIONS="--start-address=$dolFileOff --stop-address=$((dolFileOff + 16#$2))"

elftextStart=0x801048EC
elftextOffset=0x34
elfFileOff=$((16#$1 - $elftextStart + $elftextOffset))
OPTIONS2="--start-address=$elfFileOff --stop-address=$(($elfFileOff + 16#$2))"
$OBJDUMP $OPTIONS baserom.dol > baserom.dump
$OBJDUMP $OPTIONS2 build/brawl/src/text/if_minigame_training.o > main.dump
sed -i 's/\t/    /g' baserom.dump
sed -i 's/\t/    /g' main.dump
diff -u --color=always baserom.dump main.dump
