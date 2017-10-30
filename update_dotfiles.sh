#!/bin/bash
dotfiles() (
	push() {
		cd ~/dotfiles
		sudo rm -rf ./*
		sudo cp ~/.zshrc .
		sudo cp ~/.vimrc .
		sudo cp ~/K2.zsh .
		sudo cp ~/.tmux.conf .
		sudo cp -r ~/.config/i3 ./i3
		sudo cp -r ~/.config/polybar ./polybar
		sudo cp -r ~/.i3/ ./i3_bumblebee
		sudo cp -r ~/.config/ranger/ ./ranger
		sudo cp -r ~/.config/termite/ ./termite
		sudo cp /etc/X11/Xsession ./Xsession
		cd ~
	}
	pull() {
		cd ~/dotfiles
		sudo mv ./zshrc ~/.zshrc
		sudo mv ./.vimrc ~/.vimrc 
		sudo mv ./K2.zsh ~/K2.zsh
		sudo mv ./.tmux.conf ~/.tmux.conf
		sudo mv -r ./i3 ~/.config/i3 
		sudo mv -r ./polybar ~/.config/polybar 
		sudo mv -r ./i3 ~/.i3/bumblebee-status 
		sudo mv -r ./ranger ~/.config/ranger/ 
		sudo mv -r ./termite ~/.config/termite/ 
		sudo mv ./Xsession /etc/X11/Xsession
		cd ~
	}
	[[ $1 == 'push' ]] && push
	[[ $1 == 'pull' ]] && pull
)
