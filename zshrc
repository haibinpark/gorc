#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors
alias cls='clear'
alias ~='cd ~'
alias ..='cd ..'

#Golang Evirement
export GOROOT=$HOME/tools/go
#export GOBIN=$GOROOT/bin
export GOARCH=amd64
export GOOS=linux
export GOPATH=$HOME/projs
export PATH=$GOROOT/bin:${GOPATH//://bin:}/bin:$PATH

#JAVA Evirement
export JAVA_HOME=$HOME/tools/jdk1.7.0_25
export PATH=$JAVA_HOME/bin:$PATH


