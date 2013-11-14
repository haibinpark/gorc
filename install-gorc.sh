#!/bin/zsh
# install vimrc
ln -sf ~/.vim/vimrc ~/.vimrc
#install zshrc
ln -sf ~/.vim/zshrc ~/.zshrc
#install ctags for golang
#ln -sf ~/.vim/ctags ~/.ctags
#config tmux.conf
ln -sf ~/.vim/tmuxrc ~/.tmux.conf

#create tmux shell
ln -sf ~/.vim/init-tmux.sh ~/.bin/initmux
