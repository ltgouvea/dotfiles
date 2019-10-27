#!/bin/sh
compton -bfz
feh --bg-scale /home/k2/Pictures/wallpaper.png
xset r rate 150 25
cd /home/k2/.dwm/
./statusbar.sh &
