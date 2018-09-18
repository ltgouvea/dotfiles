abbr -a c="clear"
abbr -a top='glances'
abbr -a dit='docker exec -it'
abbr -a d='docker-compose exec workspace'
abbr -a dps='docker ps'
abbr -a dcu='docker-compose up'
abbr -a dcd='docker-compose down'
abbr -a vimrc='vim ~/.vimrc'
abbr -a ssn='sudo shutdown now'
abbr -a ticsol='cd /var/www/tic-sms/'
abbr -a ticup='cd /var/www/tic-sms/ ; and  docker-compose up -d workspace postgres pgadmin php-fpm nginx'
abbr -a cmatrix='cmatrix -bs'
abbr -a v='vim'
abbr -a l='ls -lah'
abbr -a r='ranger'
abbr -a wr='wal -R'
abbr -a m='mutt'
abbr -a e='exit'
abbr -a u="update_gits; and sudo apt update; and sudo apt upgrade -y; and sudo apt autoclean; and sudo apt autoremove -y"
abbr -a n='ncmpcpp'
abbr -a apt='sudo apt'
abbr -a ai='sudo apt install'
abbr -a mana='sudo service network-manager restart'
abbr -a social='mailutils soc'
abbr -a lock='i3lock -i ~/login.png'
abbr -a swclean='sudo ls ; and  htop ; and ; sudo swapoff -a ; and  sudo swapon -a'
abbr -a d='docker-compose exec -u laradock workspace'
abbr -a chx='chmod +x '

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
