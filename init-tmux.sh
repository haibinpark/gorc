#!/bin/sh
#
# name     : init-tmux.sh, tmux environment made easy
# author   : Haibin Zhao <zhaohaibin@outlook.com>
# license  : GPL
# created  : 2013 September 25
#

cmd=$(which tmux)      # tmux path
session=$(hostname -s) # session name

if [ -z $cmd ]; then
    echo "You need to install tmux."
    exit 1
fi

$cmd has -t $session 2> /dev/null

if [ $? != 0 ]; then
    $cmd new -d -n vim -s $session "vim"
    $cmd neww -n irssi -t $session "irssi"
    $cmd neww -n cmus -t $session "cmus"
    $cmd neww -n go-dev -t $session "go-dev"
    $cmd selectw -t $session:3
fi

$cmd att -t $session

exit 0
