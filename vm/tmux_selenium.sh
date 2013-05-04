#!/bin/bash

DIRNAME=`dirname $0`
export TERM=ansi
tmux -f /vagrant/vm/tmux.conf new-session -d -s selenium "/vagrant/vm/start_hub.sh"
tmux split-window -p 50 -d "cd /vagrant/selenium;bash -i"
tmux select-pane -t 1
tmux attach-session -t selenium
