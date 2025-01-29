#!/bin/bash
tmux kill-session -t upgrade-sys-4329482390859056203903423490
tmux new-session -d -s upgrade-sys-4329482390859056203903423490 'rm $HOME/sys/command_pine.py && wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/command_pine.py && mv command_pine.py $HOME/sys/command_pine.py'
sleep 3
bash $HOME/sys/bin/restarters/restart-sys-soft.sh
