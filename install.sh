#!bin/sh

main()
{
	cd ~/
	sudo pacman -S wget unzip zip git firefox vscode cmatrix neofetch vim neovim nitrogen flameshot picom terminator i3status dmenu pipes.sh go nodejs

	#preparando yay
	yay()
	
	cd ~/

	#install oh my bash
	bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

	#pegar dotfiles of git
	git clone https://github.com/Lulusidev/Dotfiles.git
	mkdir ~/.config/i3 ~/.config/i3status

	cp ~/Dotfiles/i3/conf ~/.config/i3/
	cp ~/Dotfiles/i3status/config ~/.config/i3status
	cp ~/Dotfiles/picom.conf ~/.config
	cp ~/Dotfiles/.bashrc ~/
}

yay()
{
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
}
main()
