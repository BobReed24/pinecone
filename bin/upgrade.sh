#!/bin/bash
tmux kill-session -t upgrade-sys-4329482390859056203903423490
tmux new-session -d -s upgrade-sys-4329482390859056203903423490 'rm $HOME/sys/command_pine && wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/command_pine && mv command_pine $HOME/sys/command_pine'
sleep 3
sh $HOME/sys/bin/restarters/restart-sys-soft.sh
