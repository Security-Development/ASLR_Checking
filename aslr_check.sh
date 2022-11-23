#!/bin/sh

ASLR_RES=$(cat /proc/sys/kernel/randomize_va_space)

if [ $ASLR_RES -eq 0 ] ; then
        echo "[*] ASLR : Disable"
elif [ $ASLR_RES -eq 1 ] ; then
        echo "[*] ASLR : Shared libraries and PIE binaries are randomized."
elif [ $ASLR_RES -eq 2 ] ; then
        echo "[*] ASLR : Conservative and start of brk area is randomized, too"
fi

#=] Reference: https://renenyffenegger.ch/notes/Linux/fhs/proc/sys/kernel/randomize_va_space
