alias matlab=/usr/local/MATLAB/R2011a/bin/matlab
alias ls='ls --color -h --group-directories-first'

genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

alias tmux="tmux -2"
alias nomatlab="matlab -nodesktop -nosplash"
PS1="\[\033[1;36m\]\w\n\[\033[1;36m\]\u@\H\[\033[1;33m\] $ \[\033[0m\]"

# make up work better
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
