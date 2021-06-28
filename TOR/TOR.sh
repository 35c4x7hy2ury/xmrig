wget https://raw.githubusercontent.com/ceeb57f83688/xmrig/main/TOR/torrc
sudo apt get install net-tools -y
sudo apt-get install openssh-server -y
sudo apt-get install torsocks -y
sudo apt install tor -y
sudo apt install screen -y
sudo apt install privoxy -y
sudo apt-get update && sudo apt-get upgrade -y 
sudo apt update && sudo apt upgrade -y

sudo /etc/init.d/tor stop

sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc

sudo /etc/init.d/tor start
bash -c 'echo "

cat /var/lib/tor/other_hidden_service/hostname
