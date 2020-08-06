alias reload!='. ~/.zshrc'
alias cfg-etc='vim /etc/default'
alias getc='nzbget -o outputmode=curses -C'
alias apt5='sudo apt-get check && sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove --purge && sudo apt-get autoclean'

alias cls='clear' # Good 'ol Clear Screen command
alias e-aliases='vim ~/.dotfiles/zsh/aliases.zsh'
alias e-localrc='vim ~/.localrc'
alias e-localvim='vim ~/.localvim'
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
alias e-gopro_process='vim ~/Code/GoPro-Studio-for-linux/gopro_process.sh'
alias e-vim='vim ~/.config/nvim/init.vim'
alias space='df -h /dev/sdc1 /dev/sdd1 /dev/sde1 /dev/sdf1 /dev/sdg1'
alias fif='grep -rnw '.' -e '$1'' # Searches inside folder/subfolders for files containing $1
alias ff='find '$1' -type f | fzf > selected'
alias tb="nc termbin.com 9999" #Piping to termbin paste
#alias backupfolder='tar -zcvf $1\_$(date '+%Y-%m-%d').tar.gz $1'
backupfolder() {
	tar -zcvf "${1}_$(date '+%Y-%m-%d').tar.gz" "$1"
}
alias dev='cd ~/Development'
