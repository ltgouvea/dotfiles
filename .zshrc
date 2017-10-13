export PATH=~/bin:$PATH
PATH="${PATH}:${HOME}/.local/bin"
export ZSH=~/.oh-my-zsh
ZSH_THEME="bullet-train"
source $ZSH/oh-my-zsh.sh
export UPDATE_ZSH_DAYS=2
COMPLETION_WAITING_DOTS="true"
export TERM="xterm-256color"
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_OPTS='
  --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255
  --color info:7,prompt:2,spinner:1,pointer:232,marker:1
'
set -s escape-time 0
function homestead () {
	( cd ~/Homestead && vagrant $* )
}

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
source ~/.oh-my-zsh/plugins/laravel5/laravel5.plugin.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
(wal -r -t &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
