export TERM="xterm-256color"
export PATH=~/bin:~/scripts:$PATH
export PATH=~/.npm-global/bin:$PATH

set -s escape-time 1
export ZSH=/home/k2/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
source ~/scripts/K2.zsh

ZSH_THEME="hyperzsh"

plugins=(
  git
  zsh-completions
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export EDITOR='vim'

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=magenta'

bindkey -v
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey -M viins "^[OA" up-line-or-beginning-search
bindkey -M viins "^[OB" down-line-or-beginning-search
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M viins 'kk' edit-command-line
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search
bindkey -M vicmd 'jk' vi-insert
bindkey 'jk' autosuggest-accept
bindkey 'ç' autosuggest-execute

function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/[% JEDI]%}/(main|viins)/[% INSERT]%}"
}

RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1
source "$HOME/devops/devops"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
