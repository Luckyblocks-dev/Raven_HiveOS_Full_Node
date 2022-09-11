#!/bin/bash

# Huge thanks to PapaChurbz for systemd configuration!
sleep 1
# Install script written by Luckyblocks - pool operator of The #1 Zero Fee Ravencoin mining pool - https://ravenpool.ninja
# support@ravenpool.ninja
sleep 1.5

#### COLOR SCRIPT - echo "YELLOW" OUTPUT COLOR TEXT
cecho(){
    RED="\033[0;31m"
    GREEN="\033[0;32m"  # <-- [0 means not bold
    YELLOW="\033[1;33m" # <-- [1 means bold
    CYAN="\033[1;36m"
    PURPLE="\033[0;35m"
    WHITE="\033[0;37m"

    NC="\033[0m" # No Color

    # printf "${(P)1}${2} ${NC}\n" # <-- zsh
    printf "${!1}${2} ${NC}\n" # <-- bash
}
#### END COLOR SCRIPT

cecho "CYAN" "**************************************************************************** "                                                
cecho "CYAN" "  ____                                         _         _        _       "                                                   
cecho "CYAN" " |  _ \ __ ___   _____ _ __  _ __   ___   ___ | |  _ __ (_)_ __  (_) __ _  "                                                  
cecho "CYAN" " | |_) / _: \ \ / / _ \ :_ \| :_ \ / _ \ / _ \| | | :_ \| | |_ \ | |/ _- | "                                                  
cecho "CYAN" " |  _ < (_| |\ V /  __/ | | | |_) | (_) | (_) | |_| | | | | | | || | (_| | "                                                  
cecho "CYAN" " |_| \_\__-_| \_/ \___|_| |_| .__/ \___/ \___/|_(_)_| |_|_|_| |_|/ |\__-_| "                                                  
cecho "CYAN" "                            |_|                                |__/        "                                                  
cecho "CYAN" "**************************************************************************** "                                                
cecho "YELLOW" "This Feature is brought to you by Ravenpool.ninja - the original Zero-Fee RVN Mining Pool!"  
### PRINT RAVEN AND BANNER ###

cecho "PURPLE" "                                          mmoJJJi "                             
cecho "PURPLE" "                                       mMJJjoPP  J "                            
cecho "PURPLE" "                                    jJJJJJJ zJJJoPPP/PPPPP "                     
cecho "PURPLE" "                                   KKKKKKKo oPKKJ ooJoPPPPP "                 
cecho "PURPLE" "                                  QQooJJJ QQ# R #QQQQQQQQ "                         
cecho "PURPLE" "                                 JJJJoKKKKKK# A #PPPPP "                        
cecho "PURPLE" "                                 PjQQHP PPPP# V #PPPPPP "                      
cecho "PURPLE" "                                oPPPPPPPPPPP# E #PPPPPP "
cecho "PURPLE" "                               ooPPPPPPPPPPP# N #PPPPPP "                      
cecho "PURPLE" "                             IjIIIIIIIIIIjoo# P #PPPPPPP "
cecho "PURPLE" "                            jKo1111111111111# O #11111111 "                      
cecho "PURPLE" "                            jKo1111111111111# O #11111111o "                     
cecho "PURPLE" "                            QQJQQJ1111111111# L #1111111jhQo "                   
cecho "PURPLE" "                           jKKKSKKo111111111# . #1111111oKKKKo "                 
cecho "PURPLE" "                           QQQQoQQQo11111111# N #1111111oQQQ2 "                  
cecho "PURPLE" "                          jKKKKHKKKKo1111111# I #1111112KKKK "                   
cecho "PURPLE" "                          QQQQQQ QQQQ 111111# N #111111 QQQ	"                     
cecho "PURPLE" "                         HKKKKKKjKKKKKo11111# J #1111111KKI "                    
cecho "PURPLE" "                        oQQQQQQQQ(QQQQQ 1111# A #1111oQQQi "                     
cecho "PURPLE" "                        KKKKKKKKKoKKKKKK 11111111 11111 KK "                      
cecho "PURPLE" "                       oQQQQQQQQQQlQQQQQQ 111111111111QQI "                      
cecho "PURPLE" "                       KKKKKKKKKKKoKKKKKKKH 111111111oKK "                       
cecho "PURPLE" "                      jQQQQQQQQQQQJQQQQQQQQQ 11111111oQ "                        
cecho "PURPLE" "                      KKKKKKKKKKKKKPKKKKKKKKK 111111jKo "                        
cecho "PURPLE" "                     jQQQQQQQQQQQQQoQQQQQQQQQQ 11111 Q "                         
cecho "PURPLE" "                     KKKKKKKKKKKKKKKjKKKKKKKKKK 1111I "                          
cecho "PURPLE" "                    jQQQQQQQQQQQQQQQoQQQQQQQQQQQ 11PP "                          
cecho "PURPLE" "                    KKKKKKKKKKKKKKKKHKKKKKKKKKKKK Vo "                           
cecho "PURPLE" "                   IQQQQQQQQQQQQQQQQI "                                          
cecho "PURPLE" "                   KKKKKKKKKKKKKKo "                                             
cecho "PURPLE" "                  HQQQQQQQQQQH "                                                  
cecho "PURPLE" "                 oKKKKKKKK "
cecho "PURPLE" "                 QQQQQQ "                                                         
cecho "PURPLE" "                oKKo " 
cecho "PURPLE" "                ojQ "
cecho "PURPLE" "               jo "
sleep 1
cecho "GREEN" " ASCII art work contributed by Robert Catley - https://bit.ly/Rcatley "
sleep 2
cecho "CYAN" "**************************************************************************** "                                                
cecho "CYAN" "  ____                                         _         _        _       "                                                   
cecho "CYAN" " |  _ \ __ ___   _____ _ __  _ __   ___   ___ | |  _ __ (_)_ __  (_) __ _  "                                                  
cecho "CYAN" " | |_) / _: \ \ / / _ \ :_ \| :_ \ / _ \ / _ \| | | :_ \| | |_ \ | |/ _- | "                                                  
cecho "CYAN" " |  _ < (_| |\ V /  __/ | | | |_) | (_) | (_) | |_| | | | | | | || | (_| | "                                                  
cecho "CYAN" " |_| \_\__-_| \_/ \___|_| |_| .__/ \___/ \___/|_(_)_| |_|_|_| |_|/ |\__-_| "                                                  
cecho "CYAN" "                            |_|                                |__/        "                                                  
cecho "CYAN" "**************************************************************************** "                                                
cecho "YELLOW" "This Feature is brought to you by Ravenpool.ninja - the #1 Zero-Fee RVN Mining Pool!"                                 
sleep 8
### END PRINT RAVEN AND BANNER ###

cecho "CYAN" "Starting..."
sleep 1.5
cecho "YELLOW" "Huge thanks to @PapaChurbz for systemd configuration!"
sleep 4
cecho "CYAN" "Checking for updates..."
sleep 3
apt update
sleep 10
cecho "CYAN" "Installing system updates..."
apt upgrade -y
sleep 15
cecho "CYAN" "Removing install files..."
sleep 3
apt autoremove -y
cecho "CYAN" "Completeing system updates..."
selfupgrade
sleep 12
cecho "CYAN" "Moving onward with the installation..."
sleep 3
cecho "YELLOW" "Expanding the disk...please wait..."
disk-expand
sleep 5
cecho "YELLOW" "Checking your available disk space now..."
sleep 5

reqSpace=38000000

availSpace=$(df "$HOME" | awk 'NR==2 { print $4 }')

if (( availSpace < reqSpace )); then

  cecho "RED" "You do not have enough disk space, exiting..." >&2

  exit 1

fi

cecho "CYAN" "Available disk space looks good, continuing with install..."
sleep 7
cecho "YELLOW" "Installing Ravencoin Daemon...please wait..."
sleep 4
cecho "YELLOW" "Creating a raven user and group..."
sleep 3
adduser raven --system --group
mkdir -p /usr/bin/raven.d
cd /tmp
cecho "YELLOW" "Downloading the daemon..."
sleep 1
wget -q https://github.com/RavenProject/Ravencoin/releases/download/v4.6.1/raven-4.6.1-7864c39c2-x86_64-linux-gnu.tar.gz
sleep 10
cecho "YELLOW" "Unzipping and installing..."
sleep 3
tar -xf raven-4.6.1-7864c39c2-x86_64-linux-gnu.tar.gz
sleep 2
cd raven-4.6.1-7864c39c2
cp -r . /usr/bin/raven.d
ln -s /usr/bin/raven.d/bin/raven-cli /usr/bin/raven-cli
ln -s /usr/bin/raven.d/bin/ravend /usr/bin/ravend
echo -n 'rpcpassword=' > raven.conf
openssl rand -base64 41 >> raven.conf
cecho "YELLOW" "Creating the directories and Raven configuration file..."
sleep 5
mkdir -p /root/.raven
cp raven.conf /root/.raven
mkdir -p /home/user/.raven
cp raven.conf /home/user/.raven
mkdir /etc/raven
echo 'maxconnections=24' >> raven.conf
cp raven.conf /etc/raven/raven.conf
chown raven:raven /etc/raven/raven.conf
mkdir -p /var/lib/ravend
touch /var/lib/ravend/ravend.pid
chown -R raven:raven /var/lib/ravend
cecho "YELLOW" "Creating the systemd service for automatic start-up at boot"
sleep 5
cd /etc/systemd/system
wget -q https://raw.githubusercontent.com/Luckyblocks-dev/Raven_HiveOS_Full_Node/main/ravend.service
sleep 3
cecho "YELLOW" "Enabling and starting the service"
sleep 3
systemctl daemon-reload
sleep 1
systemctl enable ravend.service
sleep 1
systemctl start ravend.service
cecho "YELLOW" "Installation is complete!"
sleep 2
cecho "YELLOW" "Please review logs above for any errors!"
sleep 1
cecho "YELLOW" "Don't forget to open up your firewall / port forward 8767 !"
sleep 1
cecho "YELLOW" "Printing your IP address for port forwarding step..."
ifconfig | grep -A 1 'wlan0'
ifconfig | grep -A 1 'eth0'
cecho "CYAN" "Copy your IP address it's the one after 'inet' "
sleep .5
cecho "CYAN" "To use in the next step for Port Forwarding"
sleep .5
cecho "CYAN" "Full directions at:"
sleep .5
cecho "WHITE" "https://bit.ly/RVN_Node"
cecho "GREEN" "*********************************"
cecho "CYAN" "     All finished! Exiting..."
cecho "GREEN" "*********************************"
cecho "YELLOW" "Would you like to send a tip or buy me a coffee?"
cecho "YELLOW" "Donations also help keep Ravenpool.ninja always zero-fee mining forever!"
cecho "WHITE" "You can send RVN to RBg1dCtD7qHPhX7XZDvzer1fKSAsCv9vVE"
