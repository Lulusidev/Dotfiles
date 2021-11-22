#!/bin/bash

main()
{
	cd ~/
#	sudo pacman -S wunfetch wget unzip zip git chorium neofetch vim neovim nitrogen flameshot picom termite i3status dmenu rofi pipes.sh nodejs termite perl 

	sudo pacman -S wget
	#preparando yay
	yay()
	
	#install oh my bash
	
	bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

	#pegar dotfiles of git
	#i3config
	#mkdir ~/.config/i3 ~/.config/i3status

	mkdir ~/.config/termite/ ~/.config/polybar

	cp -rf ~/Dotfiles/polybar ~/.config/polybar
	cp -rf ~/Dotfiles/bspwm ~/.config/
	cp -rf ~/Dotfiles/sxhkd ~/.config/
	cp -rf ~/Dotfiles/picom.conf ~/.config
	cp -rf ~/Dotfiles/.bashrc ~/
	cp -rf ~/Dotfiles/neofetch ~/.config/
	cp -rf ~/Dotfiles/rofi ~/.config/
}

yay()
{
	cd ~/
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	cd ~/
	rm -rf yay
}
main
yay
