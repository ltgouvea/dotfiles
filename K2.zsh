alias zshconfig="nano ~/.zshrc"
alias apt="sudo apt"
alias c="clear"
alias top='glances'
alias pega="sudo aptitude install -y"
alias larga="sudo apt-get remove"
alias atualiza="sudo apt-get update && sudo apt-get upgrade"

alias abenepi="cd ~/var/www/projeto-abenepi"
alias artisan="php artisan"
alias arstart='sig-arteris;gfa;ggpull;dcu -d;api-arteris;gfa;ggpull;dcu -d;v'
alias arstop='sig-arteris;dcd;api-arteris;dcd;'
alias zshconf='subl ~/.zshrc'
alias tmux='tmux -2'
alias gad='gatsby develop'
alias cnpj='xclip ~/.cnpj'

alias soma_on='cd /etc/openvpn/client && sudo openvpn --config Firewall-udp-1194.ovpn'
source ~/devops/devops
source ~/update_dotfiles
alias dit='docker exec -it'
alias d='docker-compose exec workspace'
alias dps='docker ps'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dab='docker exec -it arteris_php bash'
alias vimrc='vim ~/.vimrc'
alias ssn='sudo shutdown now'
alias laraup='docker-compose up -d workspace postgres pgadmin php-fpm nginx'
alias ticsol='cd /var/www/tic-sms/'
alias ticup='cd /var/www/tic-sms/ && docker-compose up -d workspace postgres pgadmin php-fpm nginx'
alias cmatrix='cmatrix -bs'
alias -g gp='| grep -i'
alias v='vim'
alias r='ranger'

alias wr='wal -R'
alias m='mutt'
alias music='cmus'
alias e='exit'
alias u='apt update;apt upgrade -y;apt autoremove -y'
alias n='ncmpcpp'
source ~/update_gits
source ~/mailutils
source ~/dist_free
alias ai='apt install'
venceremos() {
	c
	cat ~/art
}
DIST_FREE_FLAG='false'
