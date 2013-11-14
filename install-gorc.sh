#!/bin/zsh
# install vimrc
ln -sf ~/.vim/vimrc ~/.vimrc
#install zshrc
ln -sf ~/.vim/zshrc ~/.zshrc

#config tmux.conf
ln -sf ~/.vim/tmuxrc ~/.tmux.conf

#create tmux shell
ln -sf ~/.vim/init-tmux.sh ~/.bin/initmux
