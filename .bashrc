#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ..='cd ..'
alias remove='sudo pacman -Rcns'
alias install='sudo pacman -S'
alias list-unused='sudo pacman -Qdtq'
alias remove-unused='sudo pacman -R $(pacman -Qdtq)'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
PS1='[\u@\h \W]\$ '
