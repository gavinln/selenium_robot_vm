#!/bin/bash

DIRNAME=`dirname $0`
export TERM=ansi
tmux -f /vagrant/vm/tmux.conf new-session -d -s selenium "/vagrant/vm/start_hub.sh"
tmux split-window -p 25 -d "/vagrant/vm/start_node.sh"
tmux split-window -p 75 -d "cd /vagrant/vm;./sjybot.sh;bash -i"
tmux select-pane -t 1
tmux attach-session -t selenium
