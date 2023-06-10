#!/usr/bin/env bash

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias -- -="cd -"

alias rm="rm -rf --"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# Shortcuts
alias g="git"
alias n="npm"
alias q="exit"
alias y="yarn"
