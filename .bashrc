#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'
alias remove='sudo pacman -R'

alias df='df -h'
alias free='free -h'
alias myip="ip -f inet address | grep inet | grep -v 'lo$' | cut -d ' ' -f 6,13 && curl ifconfig.me && echo ' external ip'"

# Exa
alias l='exa -ll --color=always --group-directories-first'
alias ls='exa -al --header --icons --group-directories-first'

# Git aliases
alias gp="git push -u origin main"
alias gsave="git commit -m 'save'"
alias gs="git status"
alias gc="git clone"
alias tr="tree"

# Editor
export VISUAL=nvim;
export EDITOR=nvim;

# Dunst
alias hi="notify-send 'Hi there!' 'Welcome to the antonio desktop! ' -i ''"

# Add Color
#alias ls='ls --color=auto'
alias grep='grep --color=auto'

# PS1 Customization
#PS1='[\u@\h \W]\$ '
#PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ " 
# Colour codes
RED="\\[\\e[1;31m\\]"
GREEN="\\[\\e[1;32m\\]"
YELLOW="\\[\\e[1;33m\\]"
BLUE="\\[\\e[1;34m\\]"
MAGENTA="\\[\\e[1;35m\\]"
CYAN="\\[\\e[1;36m\\]"
WHITE="\\[\\e[1;37m\\]"
ENDC="\\[\\e[0m\\]"

# Set a two-line prompt. If accessing via ssh include 'ssh-session' message.
if [[ -n "$SSH_CLIENT" ]]; then ssh_message="-ssh_session"; fi
PS1="${MAGENTA}\t ${GREEN}\u ${WHITE}at ${YELLOW}\h${RED}${ssh_message} ${WHITE}in ${BLUE}\w \n${CYAN}\$${ENDC} "

# Golang
export PATH="~/scripts:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
