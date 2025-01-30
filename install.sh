#!/bin/bash
sudo apt-get -y install tmux
sudo apt-get -y install python3
mkdir $HOME/sys
mkdir $HOME/sys/bin
mkdir $HOME/sys/bin/restarters
cd $HOME/sys/
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/command_pinecone
chmod +x command_pinecone
cd bin
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/upgrade.sh
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/restarters/restart-sys-soft.sh
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/build.sh
mv restart-sys-soft.sh restarters/restart-sys-soft.sh
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/pinecone
chmod +x pinecone
sudo mv pinecone /bin/pinecone
cd restarters
cd $main
# sudo sh $HOME/sys/bin/build.sh
clear
echo "Done!"
