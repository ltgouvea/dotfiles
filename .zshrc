export PATH=~/bin:$PATH
PATH="${PATH}:${HOME}/.local/bin"
export TERM="xterm-256color"
source ~/K2.zsh
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='ag -g ""'
set -s escape-time 1

source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme  refined
antigen apply

bindkey -v
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M viins 'kk' edit-command-line
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search
bindkey 'jk' autosuggest-accept
bindkey 'ç' autosuggest-execute
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
  echo "${${KEYMAP/vicmd/[% JEDI-MODE]%}/(main|viins)/[% INSERT]%}"
}

# define right prompt, regardless of whether the theme defined it
RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1
