alias ls='ls --color -h --group-directories-first'
alias ll='ls --color -hla --group-directories-first'
alias tmux="tmux -2"
alias python=python3
alias mv='mv -i'
export EDITOR='vim'
export VISUAL='vim'

genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

#PS1="\[\033[1;36m\]\w \[\033[1;36m\]\u@\H\[\033[1;33m\]\n$ \[\033[0m\]"
#PS1="\[\033[1;33m\]\u\[\033[1;33m\]@\H\[\033[1;36m\]\w\[\033[1;33m\]\n $ \[\033[0m\]"
PS1="\[\033[1;36m\]\w\[\033[1;33m\] $ \[\033[0m\]"

HISTFILESIZE=500000

# make up-arrow work better
#set -o vi
bind '"\e[A": history-search-backward'
bind '"\e|B": history-search-forward'

# fix ls colors
LS_COLORS="di=1;93:fi=0;92:ex=0;91"; export LS_COLORS

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

set -o noclobber

###
# FZF
###
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
