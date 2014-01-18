#!/bin/zsh

#
ln -sf ~/repos/devrc ~/.vim

# install vimrc
ln -sf ~/.vim/vimrc ~/.vimrc
#install zshrc
ln -sf ~/.vim/zshrc ~/.zshrc

#config tmux.conf
ln -sf ~/.vim/tmuxrc ~/.tmux.conf

#create .bin folder

mkdir ~/.bin

#create tmux shell
ln -sf ~/.vim/init-tmux.sh ~/.bin/sm
