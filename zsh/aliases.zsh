alias reload!='. ~/.zshrc'
alias cfg-etc='vim /etc/default'
alias getc='nzbget -o outputmode=curses -C'
alias apt5='sudo apt-get check && sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove --purge && sudo apt-get autoclean'

alias cls='clear' # Good 'ol Clear Screen command
alias e-aliases='vim ~/.dotfiles/zsh/aliases.zsh'
alias e-mopidy='vim ~/.config/mopidy/mopidy.conf'
ssh() {
	if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux" ]; then
		tmux rename-window "$*"
		command ssh "$@"
		tmux set-window-option automatic-rename "on" 1>/dev/null
	else
		command ssh "$@"
	fi
}
alias mov-imdb='python ~/Code/Movie-Ratings/imdb2.py $1'
