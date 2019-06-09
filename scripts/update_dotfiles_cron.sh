#!/bin/sh
export DISPLAY=:0
cd /home/k2/dotfiles/
cp /home/k2/.K2.fish K2.fish
cp /home/k2/.git.fish git.fish
cp -r /home/k2/config/i3* .
cp -r /home/k2/.ncmpcpp/ .
cp -r /home/k2/.config/rofi .
cp -r /home/k2/.config/fish .
cp /home/k2/.vimrc .
cp /home/k2/.vim/*.vim .vim/
cp /home/k2/.Xdefaults .
DATE=$(date '+A, %d de %B de %Y. Hora: %H:%M.')

git add --all .
git commit -m "Update automatizado diário. Data: $DATE" 
git push origin master
/usr/bin/notify-send "[CRONJOB]" "Update automatizado diário realizado com sucesso" 
