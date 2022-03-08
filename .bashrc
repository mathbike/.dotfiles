#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
off=$(tput sgr0)
green=$(tput setaf 71)
PS1='${green}[\u@\h \W]\$ ${off}'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias brave="brave & disown"
alias bat="cat /sys/class/power_supply/BAT0/capacity"
alias b='echo -e "enter brightness:"; read val; xrandr --output eDP-1 --brightness "${val}"'
alias v='echo -e "enter volume:"; read val; amixer set Master ${val}'
alias compile="sudo make uninstall && sudo make clean install"
alias start1="sh ~/scripts/dwmstartup.sh"
alias close="sh ~/scripts/close.sh"

