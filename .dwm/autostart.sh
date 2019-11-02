#!/bin/sh
compton -bfz
nitrogen --set-auto /home/k2/Pictures/wallpaper.png
xset r rate 150 25
cd /home/k2/.dwm/
./statusbar.sh &
