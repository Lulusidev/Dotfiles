#!/bin/bash

main()
{
	cd ~/
#	sudo pacman -S wget unzip zip git chorium neofetch vim neovim nitrogen flameshot picom termite i3status dmenu rofi pipes.sh nodejs termite perl 

	#preparando yay
	yay()
	
		#install oh my bash
	
	bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

	#pegar dotfiles of git
	
	#mkdir ~/.config/i3 ~/.config/i3status

	mkdir ~/.config/termite/

	cp -rf ~/Dotfiles/bspwm ~/.config/bspwm/
	cp -rf ~/Dotfiles/sxhkd ~/.config/sxhkd
	cp -rf ~/Dotfiles/picom.conf ~/.config
	cp -rf ~/Dotfiles/.bashrc ~/
	cp -rf ~/Dotfiles/neofetch ~/.config/neofech
	cp -rf ~/Dotfiles/rofi ~/.config/rofi
}

yay()
{
	cd ~/
	git clone https://aur.archlinux.org/yay.git
	cd yay
	sudo makepkg -si
	cd ~/
	rm -rf yay
}
#main()
yay
