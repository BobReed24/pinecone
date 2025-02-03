#!/bin/bash
tmux new-session -d -s upgrade-sys-4329482390859056203903423490 'rm $HOME/pinecone/command_pinecone && wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/command_pinecone && chmod +x command_pinecone && mv command_pinecone $HOME/pinecone/command_pinecone'
sleep 3
sh $HOME/pinecone/bin/restarters/restart-sys-soft.sh
tmux kill-session -t upgrade-sys-4329482390859056203903423490
