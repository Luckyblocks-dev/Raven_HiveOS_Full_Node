#!/bin/bash

# Huge thanks to PapaChurbz for systemd configuration!
# Install script written by Luckyblocks - pool operator of The #1 Zero Fee Ravencoin mining pool - https://ravenpool.ninja
# support@ravenpool.ninja

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
cecho "YELLOW" "Expanding the disk...please wait..."
disk-expand
sleep 5
cecho "YELLOW" "Installing Ravencoin Daemon...please wait..."
sleep 4
cecho "YELLOW" "Creating a raven user and group..."
sleep 3
adduser raven --system --group
mkdir -p /usr/bin/raven.d
cd /tmp
cecho "YELLOW" "Downloading the daemon..."
sleep 1
wget https://github.com/RavenProject/Ravencoin/releases/download/v4.6.1/raven-4.6.1-7864c39c2-x86_64-linux-gnu.tar.gz
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
wget https://raw.githubusercontent.com/RavenProject/Ravencoin/master/contrib/init/ravend.service
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
cecho "YELLOW" "Don't forget to open up your firewall/port forward 8767 !!!"
sleep 1
cecho "YELLOW" "Printing your IP address, you NEED THIS FOR PORT FORWARDING"
ifconfig | grep -A 1 'wlan0'
ifconfig | grep -A 1 'eth0'
cecho "CYAN" "Copy your IP address, eg, 192.168.x.x from the above output"
sleep .5
cecho "CYAN" "To use in the next step for Port Forwarding"
sleep .5
cecho "CYAN" "Full directions at:"
sleep .5
cecho "GREEN" "https://bit.ly/RVN_Node"
cecho "RED" "All finished! Exiting..."
