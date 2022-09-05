#!/bin/sh

# Huge thanks to PapaChurbz for systemd configuration!
# Install script written by Luckyblocks - pool operator of The #1 Zero Fee Ravencoin mining pool - https://ravenpool.ninja
# support@ravenpool.ninja

set -x
echo "Installing Ravencoin Daemon...please wait..."
sleep .2
adduser raven --system --group
mkdir -p /usr/bin/raven.d
cd /tmp
echo "Downloading the daemon"
sleep 3
wget https://github.com/RavenProject/Ravencoin/releases/download/v4.6.1/raven-4.6.1-7864c39c2-x86_64-linux-gnu.tar.gz
sleep 10
tar -xf raven-4.6.1-7864c39c2-x86_64-linux-gnu.tar.gz
sleep 2
cd raven-4.6.1-7864c39c2
cp -r . /usr/bin/raven.d
ln -s /usr/bin/raven.d/bin/raven-cli /usr/bin/raven-cli
ln -s /usr/bin/raven.d/bin/ravend /usr/bin/ravend
echo -n 'rpcpassword=' > raven.conf
openssl rand -base64 41 >> raven.conf
mkdir -p /root/.raven
cp raven.conf /root/.raven
mkdir -p /home/user/.raven
cp raven.conf /home/user/.raven
mkdir /etc/raven
echo 'maxconnections=48' >> raven.conf
cp raven.conf /etc/raven/raven.conf
chown raven:raven /etc/raven/raven.conf
mkdir -p /var/lib/ravend
touch /var/lib/ravend/ravend.pid
chown -R raven:raven /var/lib/ravend
echo "Creating the systemd service..."
sleep 1
cd /etc/systemd/system
wget https://raw.githubusercontent.com/RavenProject/Ravencoin/master/contrib/init/ravend.service
sleep 3
echo "Enabling and starting the service"
sleep 1
systemctl daemon-reload
sleep 1
systemctl enable ravend.service
sleep 1
systemctl start ravend.service
echo "Installation is complete!"
echo "Please review logs above for any errors!"
