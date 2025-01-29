#!/bin/bash
sudo apt-get -y install tmux
sudo apt-get -y install python3
mkdir $HOME/sys
mkdir $HOME/sys/bin
mkdir $HOME/sys/bin/restarters
cd $HOME/sys/
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/command_pinecone
cd bin
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/upgrade.sh
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/restarters/restart-sys-soft.sh
mv restart-sys-soft.sh restarters/restart-sys-soft.sh
cd restarters
cd $main
bash $HOME/sys/command_pinecone
