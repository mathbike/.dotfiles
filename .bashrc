#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# terminal promt
off=$(tput sgr0)
green=$(tput setaf 71)
PS1='${green}[\u@\h \W]\$ ${off}'

# configuration settings 
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias compile="sudo make uninstall && sudo make clean install"

# launch shortcuts
alias brave="brave & disown"

# system settings
alias v='echo -e "enter volume:"; read val; amixer set Master ${val}; pkill -RTMIN+10 dwmblocks'
alias b='echo -e "enter brightness:"; read val; brightnessctl set ${val}%; pkill -RTMIN+10 dwmblocks'
alias bat="cat /sys/class/power_supply/BAT0/capacity"

# workspace startups
alias start1="sh ~/scripts/dwmstartup.sh"
alias close="sh ~/scripts/close.sh"

