#!/bin/sh

sudo apt-get update && sudo apt-get upgrade -y && sudo apt update && sudo apt upgrade -y 
sudo apt-get install nano -y && sudo apt-get install tor -y && sudo apt-get install privoxy -y
sudo apt-get install --reinstall systemd
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc
sudo /etc/init.d/tor stop
sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc
sudo systemctl enable tor
sudo /etc/init.d/tor start
