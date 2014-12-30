alias matlab=/usr/local/MATLAB/R2011a/bin/matlab
alias ls='ls --color -h --group-directories-first'

genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

alias tmux="tmux -2"
alias nomatlab="matlab -nodesktop -nosplash"
PS1="\[\033[1;36m\]\w \[\033[1;36m\]\u@\H\[\033[1;33m\]\n$ \[\033[0m\]"
PS1="\[\033[1;36m\]\u@\H\[\033[1;33m\]: \[\033[1;36m\]\w\n\[\033[1;33m\]$ \[\033[0m\]"

# make up work better
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# fix ls colors
LS_COLORS='di=0;95'; export LS_COLORS

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

