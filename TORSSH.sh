apt-get update &> /dev/null
apt-get tor -y &> /dev/null
apt-get install openssh-server -y  &> /dev/null
sed -i 's\#HiddenServiceDir /var/lib/tor/other_hidden_service/\HiddenServiceDir /var/lib/tor/hidden_ssh_service/\ ' /etc/tor/torrc
sed -i '75s\#HiddenServicePort 80 127.0.0.1:80\HiddenServicePort 80 127.0.0.1:80\ ' /etc/tor/torrc
sed -i '76s\#HiddenServicePort 22 127.0.0.1:22\HiddenServicePort 22 127.0.0.1:22\ ' /etc/tor/torrc
ssh-keygen -f id_rsa -b 4096 -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
mkdir -p /var/run/sshd
sed -i 's\#PermitRootLogin prohibit-password\PermitRootLogin yes\ ' /etc/ssh/sshd_config
sed -i 's\#PubkeyAuthentication yes\PubkeyAuthentication yes\ ' /etc/ssh/sshd_config
sed -i 's\#AuthorizedKeysFile	.ssh/authorized_keys .ssh/authorized_keys2\AuthorizedKeysFile	.ssh/authorized_keys\ ' /etc/ssh/sshd_config
cat ~/.ssh/id_rsa
apt install apache2 -y &> /dev/null
nohup tor &> /dev/null &
cat /var/lib/tor/hidden_ssh_service/hostname
