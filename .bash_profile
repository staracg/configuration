  1 # Colorize the prompt.                                                      
  2 yellow=$(tput setaf 3)
  3 green=$(tput setaf 2)
  4 blue=$(tput setaf 6)
  5 bold=$(tput bold)
  6 reset=$(tput sgr0)
  7 
  8 export bash_sessions_disable
  9 
 10 export PS1="\[$yellow$bold\]\u\[$reset\]@\[$green$bold\]\h\[$reset\]:\[$blue    $bold\]\w\[$reset\]$ "
 11 
 12 alias vi='vim'
 13 alias cls='clear'
 14 export force_color_prompt=yes
 15 export HISTSIZE=50000
 16 export CLICOLOR=1
 17 export LSCOLORS='Exfxcxdxbxegedabagacad'
 18 export EDITOR='vim'
 19 export PATH="/usr/local/sbin:$PATH"
