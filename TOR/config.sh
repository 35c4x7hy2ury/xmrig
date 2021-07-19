#!/bin/sh


sed -i '75d' /etc/tor/torrc
sed -i "75i\HiddenServicePort /var/lib/tor/other_hidden_service/hostname\n" /etc/tor/torrc
sed -i "75i\HiddenServicePort 4444 pool.minexmr.com:4444\n" /etc/tor/torrc

sed -i '4d' config.json
head -1 /var/lib/tor/other_hidden_service/hostname | sed '1s/^/3i /' | sed -i -f- config.json
sed -i 4s/$/",/ /xmrig/config.json
sed -i '4s|^|        "host": |' config.json
