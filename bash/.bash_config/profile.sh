# Enable color highlight
export CLICOLOR=1

# VIM > Emacs > nano
export EDITOR=vim

# Change Command Prompt
source ~/.git-prompt.sh

# Change git prompt show dir state
GIT_PS1_SHOWDIRSTATE=true

# The real slim shady
function __user {
  if [ $USER != "caiobep" ]; then 
    echo $USER 
  fi
}

# Colors
WHITE=$(tput sgr0)
BOLD=$(tput bold)
BLUE=$(tput setaf 4)
CYAN=$(tput setaf 6)

# My Favorite PS1
# export PS1="\u ▲ \h\e[33m\$(__git_ps1)\] \e[m\W\] "
# export PS1="$(__user) ▲ \h$BLUE$BOLD\$(__git_ps1) $WHITE\W "
export PS1="\[\e[34m\]\u\[\e[m\]▲\W\\$ "
export PS1="\[\e[0m\]$(__user)▲\[\e[1;94m\]\$(__git_ps1)\[$(tput sgr0)\] \W "