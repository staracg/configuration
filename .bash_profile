# Colorize the prompt.
yellow=$(tput setaf 3)
green=$(tput setaf 2)
blue=$(tput setaf 104)
bold=$(tput bold)
reset=$(tput sgr0)
purple=$(tput setaf 30)

export PS1="\[$yellow$bold\]\u\[$reset\]@\[$green$bold\]\h\[$reset\]:\[$purple$bold\]\w\[$reset\]$ "

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export HISTSIZE=1000
export CLICOLOR=1
#export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export LSCOLORS='ExFxCxDxBxegedabagaced'
export EDITOR='vim'
export PATH="/usr/local/sbin:$PATH"
