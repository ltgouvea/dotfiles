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
set -s escape-time 0
function homestead () {
	( cd ~/Homestead && vagrant $* )
}
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
source ~/.cache/wal/colors.sh
source ~/.oh-my-zsh/plugins/laravel5/laravel5.plugin.zsh
(wal -r -t &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
