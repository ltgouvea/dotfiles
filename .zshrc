export PATH=~/bin:$PATH
PATH="${PATH}:${HOME}/.local/bin"
export TERM="xterm-256color"
source ~/K2.zsh
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='ag -g ""'
set -s escape-time 0

source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme  refined
antigen apply


if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

bindkey 'ç' autosuggest-accept
source ~/.cache/wal/colors.sh
(wal -r -t &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
