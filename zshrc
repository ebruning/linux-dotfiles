export ZSH="/home/ethan/.oh-my-zsh"

ZSH_THEME="simple"
#ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

alias v=vim

export PATH=$PATH:~/bin

function rdp () {
	xfreerdp /u:ethan /p: /v:${1} /size:2048x1152 /cert-ignore &
}
