#!/bin/sh
sudo apt-get install --reinstall systemd -y
sudo apt-get install tor -y
sudo service tor stop
sudo apt-get install -y sed


sudo sed -i '75s/#HiddenServiceDir/HiddenServiceDir/ ' /etc/tor/torrc
sudo sed -i '18s/#SOCKSPort/SOCKSPort/ ' /etc/tor/torrc
sudo sed -i 's/#ORPort/ORPort/ ' /etc/tor/torrc
sudo sed -i '76s/#HiddenServicePort/HiddenServicePort/ ' /etc/tor/torrc
sudo sed -i '76s/80/8080/g ' /etc/tor/torrc


sudo systemctl enable tor
sudo service tor start
