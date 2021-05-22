#!/bin/bash

export BACKGROUND=$(fd | rofi -modi drun                        \
-file-browser-hide-parent                                       \
-file-browser-only-files enabled                                \
-theme /home/abrahamr/.config/polybar/themes/rofi/clean.rasi    \
-window-thumbnail enabled                                       \
-show file-browser-extended [ -file-browser-dir ~/wallpapers/ ] \
-file-browser-disable-status                                    \
-file-browser-stdout) 

wal -i $BACKGROUND

cd /home/abrahamr/repos/pywal-discord && ./pywal-discord -t abou
pywalfox update
cd ~/.config/dunst/ && ./reload_dunst.sh
cd "/home/abrahamr/Python Scripts" && python skin.py

string=$(cat ~/.cache/wal/colors | head -2 | tail -1)
rgb_keyboard -p 2 -c ${string:1}  -l fixed
