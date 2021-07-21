#!/bin/sh

sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt update -y && sudo apt upgrade -y
sudo apt-get install --reinstall systemd -y
sudo apt-get install tor -y
sudo service tor stop
sudo apt-get install -y sed

sudo sed -i '75s/#HiddenServiceDir/HiddenServiceDir/ ' /etc/tor/torrc
sudo sed -i '18s/#SOCKSPort/SOCKSPort/ ' /etc/tor/torrc
#sudo sed -i 's/#SOCKSPort/SOCKSPort/ ' /etc/tor/torrc
#sudo sed -i 's/#ORPort/ORPort/ ' /etc/tor/torrc
sudo sed -i '76s/#HiddenServicePort/HiddenServicePort/ ' /etc/tor/torrc
sudo sed -i '76s/80/8080/g ' /etc/tor/torrc
#sudo sed -i '76s/80 127.0.0.1:80/4444 pool.minexmr.com:4444/ ' /etc/tor/torrc




sudo systemctl enable tor
sudo service tor start

wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-x64.tar.gz && tar xf xmrig-6.13.1-linux-x64.tar.gz && cd xmrig-6.13.1 && rm -rf config.json && wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/config.json

cd xmrig-6.13.1

sudo sed -i '4d' config.json
sudo cat /var/lib/tor/other_hidden_service/hostname | sed '1s/^/4i /' | sed -i -f- config.json
sudo sed -i '4s/$/",/ ' config.json 
sudo sed -i '4s|^|        "host": "|' config.json

#sudo sed -i '3s/true/false/ ' config.json
#sudo sed -i '9d' config.json
#sudo cat /var/lib/tor/other_hidden_service/hostname | sed '1s/^/9i /' | sed -i -f- config.json
#sudo sed -i '9s/$/:4444",/ ' config.json 
#sudo sed -i '9s|^|            "url": "|' config.json
#sudo sed -i '13s/true/false/ ' config.json


chmod +x xmrig && ./xmrig
