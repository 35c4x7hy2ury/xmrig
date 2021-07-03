#!/bin/sh

sudo apt-get install tor -y
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc
sudo /etc/init.d/tor stop
sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc
sudo systemctl enable tor
sudo /etc/init.d/tor restart
sudo /etc/init.d/tor start
