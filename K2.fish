abbr vs "vim -S ~/.vim.current"
abbr top 'glances'
abbr dit 'docker exec -it'
abbr d 'docker-compose exec workspace'
abbr dps 'docker ps'
abbr dcu 'docker-compose up'
abbr dcd 'docker-compose down'
abbr vimrc 'vim ~/.vimrc'
abbr ssn 'sudo shutdown now'
abbr ticsol 'cd /var/www/tic-sms/'
abbr ticup 'cd /var/www/tic-sms/ ; and  docker-compose up -d workspace postgres pgadmin php-fpm nginx'
abbr cmatrix 'cmatrix -bs'
abbr v './vessel'
abbr l 'ls -lah'
abbr r 'ranger'
abbr wr 'wal -R'
abbr m 'mutt'
abbr e 'exit'
abbr u "update_gits; and sudo apt update; and sudo apt upgrade -y; and sudo apt autoclean; and sudo apt autoremove -y"
abbr n 'ncmpcpp'
abbr apt 'sudo apt'
abbr ai 'sudo apt install'
abbr mana 'sudo service network-manager restart'
abbr social 'mailutils soc'
abbr lock 'i3lock -i ~/login.png'
abbr swclean 'sudo ls ; and  htop ; and ; sudo swapoff -a -g ; and  sudo swapon -a'
abbr d 'docker-compose exec -u laradock workspace'
abbr chx 'chmod +x '
abbr cwp 'rm -rf ~/.cache/wal/; and wal -i ~/Pictures/wallpaper.jpg -a -g 85 --backend colorthief --saturate 0.5 -g'
abbr cwpt 'rm -rf ~/.cache/wal/; and wal --theme random_dark -a -g 85 --backend colorthief --saturate 0.5 -g'
abbr gentags "ctags -R --exclude '.git' --exclude 'node_modules' --exclude 'vendor' --exclude 'public' --exclude 'laradock' --exclude '*.js'"
abbr tdcore '~/Projects/Revelare/troca-digital-core/'
abbr tdpainel '~/Projects/Revelare/troca-digital-painel/'
abbr tdportal '~/Projects/Revelare/troca-digital-portal/'
abbr tdaplicativo '~/Projects/Revelare/troca-digital-aplicativo/'

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
export FZF_DEFAULT_COMMAND='ag --ignore node_modules -g ""'
source ~/.trocadigital.fish
set ANDROID_HOME /usr/lib/android-sdk/
set JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/bin/
set PATH /home/k2/.npm-packages/bin $PATH 
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $JAVA_HOME $PATH

export LESS_TERMCAP_mb=(set_color green --bold)
export LESS_TERMCAP_md=(set_color green --bold)
export LESS_TERMCAP_so=(set_color yellow --bold)
export LESS_TERMCAP_us=(set_color red --bold -u)
