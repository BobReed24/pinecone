#!/bin/bash
sudo apt-get -y install tmux
mkdir $HOME/sys
mkdir $HOME/sys/bin
mkdir $HOME/sys/bin/restarters
cd $HOME/sys/
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/command_pine.py
cd bin
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/upgrade.sh
chmod +x upgrade.sh
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/restarters/restart-sys-soft.sh
mv restart-sys-soft.sh restarters/restart-sys-soft.sh
cd restarters
chmod +x restart-sys-soft.sh
cd $main
python $HOME/sys/command_pine.py
