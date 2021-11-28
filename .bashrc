# Path to your oh-my-bash installation.
export OSH=/home/wasser/.oh-my-bash
OSH_THEME="mytheme"

#export PATH=$PATH:/home/wasser/.anime-terminal

gen-add-ssh (){

if [ $# -ne 2 ]; then
	echo "HI Bro,use genadd-ssh [file-ssh] [email]"
else
	ssh-keygen -o -a 100 -t $1 -f ~/.ssh/$1 -C $2
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/$1
fi
}

#Arch package duplicate
#	ls | sort | awk -v re='(.*)-[^-]*-[^-]*$' 'match($0, re, a) { if (!(a[1] in p)){p[a[1]]} else {print} }' | xargs sudo rm -rf
#}

txttopdf ()
{
if [ $# -ne 1 ]; then
	echo 'bro,use txtpdf [arquive_with_text]'
else
	#need ghost script and enscript to work
 
	psout=${1/.txt/.ps}
	pdfout=${1/.txt/.pdf}

	enscript -p $psout $1

	ps2pdf $psout $pdfout
	rm -f $psout
fi
}

#Extraction
#use ex <file>
#from github.com/brunomontezano
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Vim
alias vim='nvim'
alias catl='less'

#alias mkc='~/.make.sh'
#make binary C
mkc () {
if [ $# -ne 2 ]; then
        echo 'bro,use make [source.c] [outputname]'
else
        echo 'clang -ggdb0 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow  source.c  -lcrypt -lm -o out'
        clang -ggdb0 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow    $1  -lcrypt -lm -o $2
fi

}

#exports
export EDITOR="nvim"
export BROWSER="brave"

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source $OSH/oh-my-bash.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#Atalhos para o xbps(Void Linux)
alias xi='sudo xbps-install'
alias xu='sudo xbps-install -Suv'
alias xr='sudo xbps-remove'
alias xsearch='sudo xbps-query -Rs'

alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h -t 15'
alias la='ls -a' 
