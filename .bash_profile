# Colorize the prompt.
yellow="$(tput setaf 3)"
green="$(tput setaf 2)"
bold="$(tput bold)"
reset="$(tput sgr0)"
Cyan="$(tput setaf 6)"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

export HISTSIZE=1000
export CLICOLOR=1
export LSCOLORS='ExFxCxDxBxegedabagaced'
export EDITOR='vim'
export PS1="\[$yellow$bold\]\u\[$reset\]@\[$green$bold\]\h\[$reset\]:\[$Cyan$bold\]\w\[$reset\]$ "
