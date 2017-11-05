alias zshconfig="nano ~/.zshrc"
alias apt="sudo apt"
alias c="clear"
alias top='glances'
alias pega="sudo aptitude install -y"
alias larga="sudo apt-get remove"
alias atualiza="sudo apt-get update && sudo apt-get upgrade"

alias abenepi="cd ~/var/www/projeto-abenepi"
alias artisan="php artisan"
alias zshconf='subl ~/.zshrc'
alias tmux='tmux -2'
alias gad='gatsby develop'
alias cnpj='xsel -b < ~/.cnpj.txt'

alias soma_on='cd /etc/openvpn/client && sudo openvpn --config Firewall-udp-1194.ovpn'
source ~/devops/devops
source ~/update_dotfiles.sh
alias dit='docker exec -it'
alias d='docker-compose exec workspace'
alias dps='docker ps'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dab='docker exec -it arteris_php bash'
alias vimrc='vim ~/.vimrc'
alias ssn='sudo shutdown now'
alias laraup='docker-compose up -d workspace postgres pgadmin php-fpm nginx'
alias ticsol='cd /var/www/tic-sms/laradock'
alias ticup='cd /var/www/tic-sms/laradock && docker-compose up -d workspace postgres pgadmin php-fpm nginx'
alias cmatrix='cmatrix -bs'
alias v='vim'
alias r='ranger'

alias wr='wal -R'
