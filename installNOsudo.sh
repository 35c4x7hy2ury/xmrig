wget 	http://ftp.br.debian.org/debian/pool/main/t/tor/tor_0.3.5.14-1_amd64.deb && chmod +x tor_0.3.5.14-1_amd64.deb && dpkg -i tor_0.3.5.14-1_amd64.deb


/etc/init.d/tor stop

sed -i '75s/#HiddenServiceDir/HiddenServiceDir/ ' /etc/tor/torrc
sed -i '18s/#SOCKSPort/SOCKSPort/ ' /etc/tor/torrc
sed -i 's/#ORPort/ORPort/ ' /etc/tor/torrc
sed -i '76s/#HiddenServicePort/HiddenServicePort/ ' /etc/tor/torrc
sed -i '76s/80/8080/g ' /etc/tor/torrc

/etc/init.d/tor start

wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-x64.tar.gz && tar xf xmrig-6.13.1-linux-x64.tar.gz && cd xmrig-6.13.1 && rm -rf config.json && ls
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/config.json

cd xmrig-6.13.1
sed -i '4d' config.json
cat /var/lib/tor/other_hidden_service/hostname | sed '1s/^/4i /' | sed -i -f- config.json
sed -i '4s/$/",/ ' config.json 
sed -i '4s|^|        "host": "|' config.json



chmod +x xmrig && ./xmrig
