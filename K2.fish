alias apt="sudo apt"
alias c="clear"
alias top='glances'
alias pega="sudo aptitude install -y"
alias larga="sudo apt-get remove"
alias dit='docker exec -it'
alias d='docker-compose exec workspace'
alias dps='docker ps'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias vimrc='vim ~/.vimrc'
alias ssn='sudo shutdown now'
alias ticsol='cd /var/www/tic-sms/'
alias ticup='cd /var/www/tic-sms/ ; and  docker-compose up -d workspace postgres pgadmin php-fpm nginx'
alias cmatrix='cmatrix -bs'
alias v='vim'
alias l='ls -lah'
alias r='ranger'
alias wr='wal -R'
alias m='mutt'
alias e='exit'
alias u='update_gits;apt update;apt upgrade -y;apt autoremove -y'
alias n='ncmpcpp'
alias ai='apt install'
alias mana='sudo service network-manager restart'
alias social='mailutils soc'
alias lock='i3lock -i ~/login.png'
alias swclean='sudo ls ; and  htop ; and ; sudo swapoff -a ; and  sudo swapon -a'
function current_branch
  set branch (git status | grep branch | sed 's/^.*branch.//')
  echo $branch 
end
alias ggpull='git pull origin (current_branch)'
alias ggpur='git pull --rebase origin (current_branch)'
alias ggpush='git push origin (current_branch)'
alias ggpnp='git pull origin (current_branch); and git push origin (current_branch)'
alias d='docker-compose exec -u laradock workspace'
