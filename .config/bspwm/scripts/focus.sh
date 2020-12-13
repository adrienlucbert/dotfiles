#!/usr/bin/env bash

if [ -z $(bspc query -N -n "focused#$1.local") ]; then
    bspc monitor -f $1
else
    bspc node -f $1 --follow
fi
