export PATH=~/bin:$PATH
export ZSH=~/.oh-my-zsh
ZSH_THEME="bullet-train"
export UPDATE_ZSH_DAYS=2
COMPLETION_WAITING_DOTS="true"
plugins=(git tmux)
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM="xterm-256color"
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='ag -g ""'
set -s escape-time 0
function homestead () {
	( cd ~/Homestead && vagrant $* )
}

