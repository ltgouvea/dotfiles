export PATH=~/bin:$PATH
PATH="${PATH}:${HOME}/.local/bin"
export TERM="xterm-256color"
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_OPTS='
--color dark,hl:33,hl+:37,fg+:235,bg+:136,fg+:254
--color info:254,prompt:37,spinner:108,pointer:235,marker:235
'
set -s escape-time 1
source ~/K2.zsh
source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme  agnoster
antigen apply
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=magenta'
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
bindkey -M vicmd 'jk' vi-insert
bindkey 'jk' autosuggest-accept
bindkey 'ç' autosuggest-execute

# Updates editor information when the keymap changes.
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/[% JEDI]%}/(main|viins)/[% INSERT]%}"
}

# define right prompt, regardless of whether the theme defined it
RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1
source "$HOME/devops/devops"
source ~/.fzf.zsh
(cat ~/.cache/wal/sequences &)
