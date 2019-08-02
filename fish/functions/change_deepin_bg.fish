function change_deepin_bg
    gsettings set com.deepin.wrap.gnome.desktop.background picture-uri (find ~/Pictures/Wallpapers/ -type f | shuf -n 1 | sed 's#^#file://#');

    if set -q argv[1]
        switch $argv
        case colorz
            wal -i (gsettings get com.deepin.wrap.gnome.desktop.background  picture-uri | sed "s/file.\{3\}//;s/'//g") --backend colorz
        case haishoku
            wal -i (gsettings get com.deepin.wrap.gnome.desktop.background picture-uri | sed "s/file.\{3\}//;s/'//g") --backend haishoku
        case colorthief
            wal -i (gsettings get com.deepin.wrap.gnome.desktop.background picture-uri | sed "s/file.\{3\}//;s/'//g") --backend colorthief
        case '*'
            wal -i (gsettings get com.deepin.wrap.gnome.desktop.background picture-uri | sed "s/file.\{3\}//;s/'//g")
        end
    else
        wal -i (gsettings get com.deepin.wrap.gnome.desktop.background picture-uri | sed "s/file.\{3\}//;s/'//g")
    end

    cp ~/.cache/wal/colors-rofi-dark.rasi ~/.config/rofi/config.rasi
    cp ~/.cache/wal/termite ~/config/termite/config
    cp ~/.cache/wal/colors.Xresources ~/.colors.Xdefaults
    cp ~/.cache/wal/deepin-terminal ~/config/deepin/deepin-terminal/themes/wal
end

