#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f "~/.profile" ]] && source ~/.profile

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
