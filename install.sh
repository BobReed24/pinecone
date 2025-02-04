#!/bin/bash
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR='tee -a' visudo
sudo apt-get -y install tmux
sudo apt-get -y install python3
sudo mkdir /pinecone
sudo mkdir /pineocne/bin
sudo mkdir /pinecone/bin/restarters
sudo cd /pinecone/
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/command_pinecone
chmod +x command_pinecone
cd bin
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/upgrade.sh
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/restarters/restart-sys-soft.sh
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/build.sh
sudo mv restart-sys-soft.sh restarters/restart-sys-soft.sh
wget https://raw.githubusercontent.com/BobReed24/hunkon-os/refs/heads/main/bin/pinecone
sudo chmod +x pinecone
sudo mv pinecone /bin/pinecone
cd restarters
cd $main
# sudo sh /sys/bin/build.sh
clear
echo "Finished installing Pinecone!"
echo "
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                              .==-+:-=.                                             
                                            .-+#*=+*-==-.                                           
                                          .:.-=:*=-*-#+#....                                        
                                         ..=-==#--*=*%#**=-.                                        
                                        .-=:+*+-+##%---#*::..                                       
                                       .+=+#**+###*+%#*#=+*:.                                       
                                       ..=*::=##%+-#*%*=:-----.                                     
                                     .--*=+#*%#*-+#%%#%#+%%*=.                                      
                                     .:-***%--+-*##%%*=-**+-:-=.                                    
                                   ..--:.:*%=+##*%%%-#*+#%#*=..                                     
                                   .:+:+*=*%#%%%#--*#%%%%%%%%%#*.                                   
                                   .:-:-+#=.:+##+%%%#%#+--=+#%%#:                                   
                                  .*=-+++*#*#%*+%%%%%*#%%#+#%+-..                                   
                                   ...-*+-=#%%%%%%%%%%%%%%%%####+.                                  
                                  .*...-:::===%#.....=%%.....=%#+.                                  
                                 .:-=+*#%%%+%%%::=*%#-++*%%%%#----.                                 
                                .-++-+**+---=+*#%%%%%%%%%%%%%%%#*+:.                                
                                .:*-:+%*:-=*...:=%=:..::##-::..-*#+.                                
                                .-=:....*%%%%##%#.:.#=#-.+#%%%%%-.                                  
                                 ...+%#*-:-+*#%%*%%%%%%%%%%%%##%%%*..                               
                                .--::++-.-#=...-%+-...-+%%*====++=-..                               
                               .-=*:....*%%%%%%#....===..=%%%%%####=.                               
                               .--.:%%%%*---+#%%%%%%%%%%%%%%=...#%:.                                
                               . .:*+#%:..+-....=%####%%%%+:-##%#=....                              
                               :-.-+..=*%%%%%%%%+. .--::=*%%%%%%#*=+#.                              
                               --:=%#=:--*#+%%%***++#%%%%%%*#--*%%%#-.                              
                               ..-#*+%%%=......=%%%%%%%%%%#-.=%%%=...                               
                              :-...-###%%%=-%*::-*%#*#%%%%%%%%%%%....                               
                              .+==*.....=#%%%%%%%#-..:=..+%%%%%%%%%=-.                              
                               .:-*+*#*:.=#%%%%%%*++**%%%%%*-.+#%%%#=.                              
                               .===.=#%%%#-...:=%%%%%%%%%#=*#%%%%%*..                               
                                .-*+*-.+#%%**%==#%%#-*#%%%%%##%%%#*:.                               
                                 .:.-*#%#++%%%%%%+.:+*-=%%*-+%%*-:..                                
                                  .-+**%%%*-:=*%%%%%%%%*=+%%%%%*=:.                                 
                                   ..-+%#**%%%%%%%%%%%%#%%#+-.:-.                                   
                                      ..:+#%%%%%%%%%%%%%%%#+-..                                     
                                       .... ..:#%%%%%*...                                           
                                              .=+##%%=.                                             
                                              .:#+#%%-                                              
                                              .--+%%%.                                              
                                               .#-+%#:                                              
                                               .*=#%=                                               
                                                :**%-                                               
                                                .-=%-                                               
                                                .-#=.                                               
                                                 ...                                                
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    "
echo "
                              ____  _                                 
                              |  _ \(_)_ __   ___  ___ ___  _ __   ___ 
                              | |_) | | '_ \ / _ \/ __/ _ \| '_ \ / _ \
                              |  __/| | | | |  __/ (_| (_) | | | |  __/
                              |_|   |_|_| |_|\___|\___\___/|_| |_|\___|"
echo "Made by @BobReed24 on github"
echo "Repo at https://github.com/BobReed24/pinecone"
