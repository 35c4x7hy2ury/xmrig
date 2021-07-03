#!/bin/sh

sudo apt-get install git build-essential cmake automake libtool autoconf gcc++
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/config.json
