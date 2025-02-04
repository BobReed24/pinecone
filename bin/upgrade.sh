#!/bin/bash
tmux new-session -d -s upgrade-sys-4329482390859056203903423490 'sudo rm /pinecone/command_pinecone && wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/command_pinecone && sudo chmod +x command_pinecone && sudo mv command_pinecone /pinecone/command_pinecone'
sleep 3
sh /pinecone/bin/restarters/restart-sys-soft.sh
tmux kill-session -t upgrade-sys-4329482390859056203903423490
