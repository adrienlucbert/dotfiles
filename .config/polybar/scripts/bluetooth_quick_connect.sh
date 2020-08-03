#!/bin/sh

device=70:BF:92:01:DB:57

if [ "$(bluetoothctl info $device | grep "Connected: yes" | wc -l)" -eq 0 ]; then
    if [ $({
                echo -e "connect $device"
                sleep 2
            } | bluetoothctl | grep  "Connection successful" | wc -l
        ) -ne 0 ]; then

    fi
fi
