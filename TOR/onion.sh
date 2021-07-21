#!/bin/sh
sudo apt-get install --reinstall systemd -y
sudo apt-get install tor -y
sudo service tor stop
sudo apt-get install -y sed
chmod +w /etc/tor/torrc

sed -ir '75s/#HiddenServiceDir/HiddenServiceDir/ ' /etc/tor/torrc
sed -ir '18s/#SOCKSPort/SOCKSPort/ ' /etc/tor/torrc
sed -ir 's/#ORPort/ORPort/ ' /etc/tor/torrc
sed -ir '76s/#HiddenServicePort/HiddenServicePort/ ' /etc/tor/torrc
sed -ir '76s/80/8080/g ' /etc/tor/torrc

chmod +x /etc/tor/torrc

sudo systemctl enable tor
sudo service tor start
