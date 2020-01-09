#!/bin/bash

dotfiles_push()
{
    cd ~/dotfiles/
    cp ~/.K2.fish K2.fish
    cp ~/.git.fish git.fish
    cp -r ~/config/i3* .
    cp -r ~/.ncmpcpp/ .
    cp -r ~/.config/rofi .
    cp -r ~/.config/fish .
    cp -r ~/.vim/UltiSnips/ .vim/UltiSnips
    cp ~/.vimrc .
    cp ~/.vim/*.vim .vim/
    cp ~/.Xdefaults .
}

dotfiles_pull()
{
    cd ~
    cp -r ~/.dotfiles/i3* ./.config/
    cp -r ~/.dotfiles/.ncmpcpp/ .
    cp -r ~/.dotfiles/rofi ./.config/
    cp -r ~/.dotfiles/fish/ ./.config/
    cp ~/.dotfiles/.vimrc .
    cp -r ~/.dotfiles/.vim/* ~/.vim/
    cp ~/.dotfiles/.Xdefaults .
    cp ~/.dotfiles/K2.fish ~/.K2.fish
    cp ~/.dotfiles/git.fish ~/.git.fish
}
