abbr vs "vim -S ~/.vim.current"
abbr dce 'docker-compose exec'
abbr dps 'docker ps'
abbr dcu 'docker-compose up'
abbr dcd 'docker-compose down'
abbr vimrc 'vim ~/.vimrc'
abbr ssn 'sudo shutdown now'
abbr cat 'bat'
abbr cmatrix 'cmatrix -bs'
abbr v './vessel'
abbr l 'ls -lah'
abbr r 'ranger'
abbr wr 'wal -R'
abbr m 'mutt'
abbr u "sudo apt update; and sudo apt upgrade -y; and sudo apt autoclean; and sudo apt autoremove -y"
abbr n 'ncmpcpp'
abbr nv 'nvim'
abbr apt 'sudo apt'
abbr ai 'sudo apt install'
abbr mana 'sudo service network-manager restart'
abbr lock 'i3lock -i ~/login.png'
abbr swclean 'sudo ls ; and  htop ; and ; sudo swapoff -a -g ; and  sudo swapon -a'
abbr chx 'chmod +x '
abbr gentags "ctags -R --exclude '.git' --exclude 'node_modules' --exclude 'vendor' --exclude 'public' --exclude 'laradock' --exclude '*.js'"

function current_branch
  set branch (git status | grep On | sed 's/^.*branch.//')
  echo $branch 
end

function fish_user_key_bindings
bind ç forward-char execute
bind \cs down-or-search
bind \cr up-or-search
end

export EDITOR='vim'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore node_modules --ignore .git --ignore vendor -g ""'

source ~/.trocadigital.fish
source ~/.inhouse.fish

set ANDROID_HOME /usr/lib/android-sdk/
set JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/bin/
set FLUTTER_HOME /home/k2/.flutter_sdk/bin/
set DART_HOME /usr/lib/dart/bin/
set PUB_CACHE_HOME /home/k2/.pub-cache/bin/
set PATH /home/k2/.npm-packages/bin $PATH 
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $JAVA_HOME $PATH
set PATH $FLUTTER_HOME $PATH
set PATH $DART_HOME $PATH
set PATH $PUB_CACHE_HOME $PATH
set PATH /home/linuxbrew/.linuxbrew/bin/ $PATH
set GTK_IM_MODULE ibus

export LESS_TERMCAP_mb=(set_color green --bold)
export LESS_TERMCAP_md=(set_color green --bold)
export LESS_TERMCAP_so=(set_color yellow --bold)
export LESS_TERMCAP_us=(set_color red --bold -u)
