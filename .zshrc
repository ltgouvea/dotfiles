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
antigen theme  agnoster
antigen apply


if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

bindkey -v
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search
bindkey 'ç' autosuggest-accept
source ~/.cache/wal/colors.sh
cat ~/.cache/wal/sequences &>/dev/null
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Updates editor information when the keymap changes.
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
}

# define right prompt, regardless of whether the theme defined it
RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1
