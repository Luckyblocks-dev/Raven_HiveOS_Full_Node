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
    # ...Maybe I add more colors

    NC="\033[0m" # No Color

    # printf "${(P)1}${2} ${NC}\n" # <-- zsh
    printf "${!1}${2} ${NC}\n" # <-- bash
}
#### END COLOR SCRIPT

### PRINT RAVEN AND BANNER ###
cecho "PURPLE" "                               WWX0Okddkkkxk0NW "
cecho "PURPLE" "                             WN0kdddddd dxkkOKXXXXNWWW "
cecho "PURPLE" "                           WXkolllloxk R xdxOOkkOkkkO0KXNW "
cecho "PURPLE" "                           XokCccloodo A C2kcoodO000KXXNW "
cecho "PURPLE" "                          WOllooolcck2 V 12kclox0NW "
cecho "PURPLE" "                         W0doolcCkkCcl E oxxkkkxkXW "
cecho "PURPLE" "                        WKxooolodxxxkk N kxxxxxxk0W "
cecho "PURPLE" "                        N0kkkkOkkkkkkk P xxxxxxxxOXW "
cecho "PURPLE" "                       WKkxdoddddxxxxx O xkkkkkkkkkKW "
cecho "PURPLE" "                       Xdcoollllllllll O lloooddddxkKW "
cecho "PURPLE" "                       0CCclolllllllll L lllllllllldodK "
cecho "PURPLE" "                      Nd2kCClollllllll . lllllllllldc1COW " 
cecho "PURPLE" "                      Kc12Ckklolllllll N lllllllllook12xW "
cecho "PURPLE" "                     Wx211CC1koollllll I llllllllldl21lK "
cecho "PURPLE" "                     Xl111kC21Coolllll N llllllllldc1kkW "
cecho "PURPLE" "                    Wkk1112Ck11Coollll J llllllllooC1lX "
cecho "PURPLE" "                    Xo11111CC111coolll A llllllllolkkOW "
cecho "PURPLE" "                    OC11111kC2112coolll llllllldl2oX "
cecho "PURPLE" "                   Nd2111112Ck1112cdolllllllllooCCOW "
cecho "PURPLE" "                   Ok11111111112Ck11111111CdolloxK "
cecho "PURPLE" "                   No211111111111CC111111112cdood0W "                                                                       
cecho "PURPLE" "                   0C111111111111kC2111111112cddON "                                                                        
cecho "PURPLE" "                  Nd21111111111112cckkkkkkkk2koOX "                                                                         
cecho "PURPLE" "                 Kc111111111112cd0XKKKKKKKKKKXN "                                                                           
cecho "PURPLE" "               2111111112CoONW "                                                                                            
cecho "PURPLE" "               Xl1111112kokXWM "                                                                                            
cecho "PURPLE" "              WOk1111klkK "                                                                                                 
cecho "PURPLE" "             Xo112cx0N "                                                                                                    
cecho "PURPLE" "            0cCd0N "                                                                                                        
cecho "PURPLE" "            WOxK "

cecho "CYAN" "**************************************************************************** "                                                
cecho "CYAN" "  ____                                         _         _        _       "                                                   
cecho "CYAN" " |  _ \ __ ___   _____ _ __  _ __   ___   ___ | |  _ __ (_)_ __  (_) __ _  "                                                  
cecho "CYAN" " | |_) / _: \ \ / / _ \ :_ \| :_ \ / _ \ / _ \| | | :_ \| | |_ \ | |/ _- | "                                                  
cecho "CYAN" " |  _ < (_| |\ V /  __/ | | | |_) | (_) | (_) | |_| | | | | | | || | (_| | "                                                  
cecho "CYAN" " |_| \_\__-_| \_/ \___|_| |_| .__/ \___/ \___/|_(_)_| |_|_|_| |_|/ |\__-_| "                                                  
cecho "CYAN" "                            |_|                                |__/        "                                                  
cecho "CYAN" "**************************************************************************** "                                                
cecho "YELLOW" "This Feature is brought to you by Ravenpool.ninja - the original Zero-Fee RVN Mining Pool!"                                 
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

reqSpace=380000000

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
cecho "GREEN" "https://bit.ly/RVN_Node"
cecho "GREEN" "*********************************"
cecho "CYAN" "     All finished! Exiting..."
cecho "GREEN" "*********************************"
