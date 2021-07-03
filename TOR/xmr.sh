#!/bin/sh

git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)

cd ..
cd ..
sudo cp xmrig/build/xmrig  xmrig/xmrig && wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/config.json && rm -rf bin  build  CHANGELOG.md  cmake  CMakeLists.txt  doc  LICENSE  package.json  README.md  res  scripts  src
