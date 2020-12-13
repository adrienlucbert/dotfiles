#!/usr/bin/env bash

if [ -z $(bspc query -N -n "focused#$1.local") ]; then
    bspc node -m $1 --follow
else
    bspc node -s $1 --follow
fi
