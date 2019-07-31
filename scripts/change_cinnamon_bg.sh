#!/usr/bin/fish

gsettings set org.cinnamon.desktop.background picture-uri (find ~/Pictures/Wallpapers/ -type f | shuf -n 1 | sed 's#^#file://#');
wal -i (gsettings get org.cinnamon.desktop.background picture-uri | sed "s/file.\{3\}//;s/'//g")
cp ~/.cache/wal/colors-rofi-dark.rasi ~/.config/rofi/config.rasi
cp ~/.cache/wal/termite ~/config/termite/config
cp ~/.cache/wal/colors.Xresources ~/.colors.Xdefaults


