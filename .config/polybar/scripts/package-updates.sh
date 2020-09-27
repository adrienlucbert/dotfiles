#!/bin/sh

updates=$(pacman -Qu | wc -l)

if [ "$1" == "update" ]; then
    [ $updates -gt 0 ] && st -e sh -c 'sudo pacman -Syyu'
fi

if [ $updates -gt 0 ]; then
    printf '%s %s' '%{F#81A1C1}%{F-}' $updates
else
    printf '%s %s' '%{F#4c566a}%{F-}' $updates
fi
