#!/bin/sh

# Script from https://github.com/msaitz/polybar-bluetooth

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
    echo "%{F#F1FA8C}"
else
    if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]; then 
        echo ""
    fi
    echo "%{F#5360E6}"
fi

