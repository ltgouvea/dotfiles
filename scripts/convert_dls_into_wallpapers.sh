#!/usr/bin/env bash

function get_new_wallpaper_name()
{
        LastWallPaperNumber=$(ls -Art ~/Pictures/Wallpapers/ | tail -n 1 | sed 's/\..*$//')
        NewWallPaperNumber= expr $LastWallPaperNumber + 1

        return $NewWallPaperNumber
}

function convert_downloads_to_wallpapers() {
        wallpapers=$(ls ~/Downloads | grep -E '..g$')

        for image in $wallpapers; do
                NewWallPaperName=$(get_new_wallpaper_name) 
                convert ~/Downloads/$image ~/Pictures/Wallpapers/$NewWallPaperName.jpg
                rm ~/Downloads/$image
        done
}

while [[ 1 ]]; do
        convert_downloads_to_wallpapers
        sleep 60
done
