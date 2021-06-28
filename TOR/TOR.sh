wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc

echo -e "deb https://deb.torproject.org/torproject.org $(lsb_release -sc) main \ndeb-src https://deb.torproject.org/torproject.org $(lsb_release -sc) main" > /etc/apt/sources.list.d/tor.list
wget -O- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -
sudo apt update
apt-get install tor deb.torproject.org-keyring torsocks
sudo apt install -y tor
sudo apt install -y deb.torproject.org-keyring
sudo apt install -y screen
sudo apt-get install 
sudo apt install apt-transport-https curl
sudo apt install privoxy


sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc


sudo /etc/init.d/tor start
bash -c 'echo "
cat /var/lib/tor/other_hidden_service/hostname
