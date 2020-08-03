#!/bin/bash

[ $(playerctl -l | grep spotify | wc -l) -ne 0 ] && zscroll -l 30 \
        --delay 0.1 \
        --match-command "playerctl --player=playerctld status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/alucbert/.config/polybar/scripts/get_spotify_status.sh' &

wait
