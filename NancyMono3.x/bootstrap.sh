#!/bin/bash
MONO3_FILENAME="mono-3.0.12-bin.tar.bz2"
MONO3_BINARY="http://samples.nancyfx.org/content/$MONO3_FILENAME"

#apt-get update
#apt-get upgrade
apt-get install -y ruby
apt-get install -y wget
apt-get install -y build-essential
apt-get install -y gettext

echo "Grabbing: $MONO3_BINARY"
wget -q $MONO3_BINARY
tar xk -C "/opt" -f $MONO3_FILENAME
echo export PATH="$PATH:/opt/mono/bin" >> /etc/profile.d/mono.sh
echo export LD_LIBRARY_PATH="/opt/mono/lib" >> /etc/profile.d/mono.sh

gem install rake
gem install albacore
cd /vagrant
echo cd \/vagrant > /home/vagrant/.bashrc
rm -rf /etc/motd

. ./extras.sh

echo Nancy on Mono >> /etc/motd
echo +++++++++++++ >> /etc/motd
echo >> /etc/motd
echo The directory you are now in is shared with the host \(the same directory as you copied the vagrantfile into\) - on your local machine clone the source as you would normally then inside this VM type \"cd \[directory name\]\" then \"rake mono\" and observe the output. >> /etc/motd
echo >> /etc/motd
