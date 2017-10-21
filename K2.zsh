function watch {
	peerflix \'$1\' --vlc 
}

alias zshconfig="nano ~/.zshrc"
alias c="clear"
alias pega="sudo aptitude install -y"
alias larga="sudo apt-get remove"
alias atualiza="sudo apt-get update && sudo apt-get upgrade"

alias abenepi="cd ~/var/www/projeto-abenepi"
alias artisan="php artisan"
alias zshconf='subl ~/.zshrc'
alias tmux='tmux -2'
alias tldr='sudo tldr'
alias gad='gatsby develop'
alias cnpj='xsel -b < ~/.cnpj.txt'

alias soma_on='cd /etc/openvpn/client && sudo openvpn --config Firewall-udp-1194.ovpn'
source ~/devops/devops
alias dit='docker exec -it'
alias dps='docker ps'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dab='docker exec -it arteris_php bash'
alias vimrc='vim ~/.vimrc'
alias ssn='sudo shutdown now'
