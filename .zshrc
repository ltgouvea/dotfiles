export PATH=~/bin:$PATH
PATH="${PATH}:${HOME}/.local/bin"
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
(wal -r -t &)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
