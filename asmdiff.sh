#!/bin/bash

OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -D -bbinary -EB -mpowerpc -M gekko"

BrawltextStart=2147534944
BrawltextOffset=9696
fileOff=$((16#$1 - 2147525248)) # convert hex address to file offset

OPTIONS="--start-address=$fileOff --stop-address=$((fileOff + 16#$2))"
$OBJDUMP $OPTIONS baserom.dol > baserom.dump
$OBJDUMP $OPTIONS build/brawl/brawl.dol > main.dump
sed -i 's/\t/    /g' baserom.dump
sed -i 's/\t/    /g' main.dump
diff -u --color=always baserom.dump main.dump
