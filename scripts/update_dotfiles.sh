#!/bin/bash

dotfiles_push()
{
	cd ~/dotfiles/
	cp -r ~/config/i3* .
	cp -r ~/.ncmpcpp/ .
	cp -r ~/.config/rofi .
	cp -r ~/.config/fish .
	cp ~/.vimrc .
	cp ~/.Xdefaults .
}

dotfiles_pull()
{
	cd ~
	cp -r ~/dotfiles/config/i3* ./.config/
	cp -r ~/dotfiles/.ncmpcpp/ .
	cp -r ~/dotfiles/.config/rofi ./.config/
	cp -r ~/dotfiles/.config/fish/ ./.config/
	cp ~/dotfiles/.vimrc .
	cp ~/dotfiles/.Xdefaults .
}
