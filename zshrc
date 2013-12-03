# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
#define my self
alias ll="ls --color -l"
#Basic directory operations
alias ...='cd ../..'
#super user
alias _='sudo'
#clear
alias cls='clear'
#cd ~
alias ~='cd ~'

#GOPATH
export PROJS=$HOME/projs
export GOPATH=$PROJS/go

#Go Envirement
export GOROOT=$HOME/tools/go
export GOARCH=amd64
export GOOS=linux

export PATH=$GOROOT/bin:${GOPATH://bin//}/bin:$PATH

#Qt
export QT_HOME=$HOME/tools/Qt5.1.1/5.1.1/gcc_64
export PATH=$QT_HOME/bin:$PATH
export LD_LIBRARY_PATH=$QT_HOME/lib/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$QT_HOME/plugins/:$LD_LIBRARY_PATH
export LIBRARY_PATH=$QT_HOME/lib/:$LIBRARY_PATH
export LIBRARY_PATH=$QT_HOME/plugins/:$LIBRARY_PATH

#C++ Include
export CPLUS_INCLUDE_PATH=/usr/pgsql-9.3/include:$CPLUS_INCLUDE_PATH
export PQ_LIB_PATH=/usr/pgsql-9.3/lib
export LD_LIBRARY_PATH=$PQ_LIB_PATH:$LD_LIBRARY_PATH
export LIBRARY_PATH=$PQ_LIB_PATH:$LIBRARY_PATH

#JDK
export JAVA_HOME=$HOME/tools/jdk1.7.0_25
export PATH=$JAVA_HOME/bin:$PATH

#manual bin path
export PATH=$HOME/.bin:$PATH



#vim tags
function _get_tags {
  [ -f ./tags ] || return
    local cur
      read -l cur
        echo $(echo $(awk -v ORS=" "  "/^${cur}/ { print \$1 }" tags))
        }
        compctl -x 'C[-1,-t]' -K _get_tags -- vim
#end vim tags

#tmux
#if [[ "$TERM" != "screen-256color" ]]; then
#   exec tmux -S /var/tmux/$USER new-session -A -s "$USER"
#fi
if [[ $SHLVL != "2" ]]; then
    tmux -S /var/tmux/$USER new-session -s "$USER"
fi

