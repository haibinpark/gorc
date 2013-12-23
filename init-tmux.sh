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
    $cmd new -d -n dev -s $session
    $cmd neww -n debug -t $session
    $cmd neww -n tmp -t $session
    $cmd neww -n db -t $session 
    $cmd neww -n file -t $session 
    $cmd neww -n sys -t $session 
    $cmd neww -n git -t $session 
    $cmd neww -n server -t $session 
    $cmd neww -n vim -t $session "vim"
    $cmd selectw -t $session:1
fi

$cmd att -t $session

exit 0
