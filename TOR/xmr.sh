#!/bin/sh

sudo apt-get update && sudo apt-get upgrade -y && sudo apt update && sudo apt upgrade -y 
sudo apt-get install git build-essential cmake automake libtool autoconf
sudo apt-get install libtool m4 automake
sudo apt-get install libtool gm4 automake
sudo apt-get install libtool gnum4 automake
sudo apt-get install gcc++ 

git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/config.json
