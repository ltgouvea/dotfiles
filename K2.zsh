alias apt="sudo apt"
alias c="clear"
alias top='glances'
alias pega="sudo aptitude install -y"
alias larga="sudo apt-get remove"
alias arstart='sig-arteris;gfa;ggpull;dcu -d;api-arteris;gfa;ggpull;dcu -d;v'
alias arstop='sig-arteris;dcd;api-arteris;dcd;'
alias zshconf='subl ~/.zshrc'
alias soma_on='cd /etc/openvpn/client && sudo openvpn --config Firewall-udp-1194.ovpn'
alias dit='docker exec -it'
alias d='docker-compose exec workspace'
alias dps='docker ps'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias vimrc='vim ~/.vimrc'
alias ssn='sudo shutdown now'
alias ticsol='cd /var/www/tic-sms/'
alias ticup='cd /var/www/tic-sms/ && docker-compose up -d workspace postgres pgadmin php-fpm nginx'
alias cmatrix='cmatrix -bs'
alias -g gp='| grep -i'
alias v='vim'
alias r='ranger'
alias wr='wal -R'
alias m='mutt'
alias e='exit'
alias u='apt update;apt upgrade -y;apt autoremove -y'
alias n='ncmpcpp'
alias ai='apt install'
alias mana='sudo service network-manager restart'
source ~/update_gits
source ~/mailutils
source ~/dist_free
source ~/update_dotfiles
alias lock='i3lock -i ~/login.png'
