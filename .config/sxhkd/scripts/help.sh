#!/usr/bin/env bash

source ~/.local/bin/modules/menu.sh

awk '/^[a-z]/ && last {print $0,"\t",last} {last=""} /^#/{last=$0}' ~/.config/sxhkd/sxhkdrc |
    column -t -s $'\t' |
    open-menu
