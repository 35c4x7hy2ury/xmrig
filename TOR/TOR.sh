sudo apt-get update && sudo apt-get upgrade -y 
sudo apt update && sudo apt upgrade -y

wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc

sudo apt-get install screen -y
sudo apt-get install tor -y
sudo apt-get install privoxy -y

sudo /etc/init.d/tor stop

sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc

