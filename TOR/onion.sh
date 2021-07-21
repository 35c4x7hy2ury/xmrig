#!/bin/sh
sudo apt-get install --reinstall systemd -y
sudo apt-get install tor -y
sudo service tor stop
sudo apt-get install -y sed


sed -i '75s/#HiddenServiceDir/HiddenServiceDir/ ' /etc/tor/torrc | sudo tee /etc/tor/torrc
sed -i '18s/#SOCKSPort/SOCKSPort/ ' /etc/tor/torrc | sudo tee /etc/tor/torrc
sed -i 's/#ORPort/ORPort/ '  | sudo tee /etc/tor/torrc
sed -i '76s/#HiddenServicePort/HiddenServicePort/ ' /etc/tor/torrc | sudo tee /etc/tor/torrc
sed -i '76s/80/8080/g ' /etc/tor/torrc | sudo tee /etc/tor/torrc


sudo systemctl enable tor
sudo service tor start
