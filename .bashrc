#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
complete -F _complete_alias config
alias brave="brave & disown"
alias bat="cat /sys/class/power_supply/BAT0/capacity"
alias b='echo -e "enter brightness:"; read val; xrandr --output eDP-1 --brightness "${val}"'
alias compile="sudo make uninstall && sudo make clean install"
