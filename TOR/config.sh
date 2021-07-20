#!/bin/sh

cd xmrig-6.13.1
sed -i '4d' config.json
cat /var/lib/tor/other_hidden_service/hostname | sed '1s/^/4i /' | sed -i -f- config.json
sed -i '4s/$/",/ ' config.json 
sed -i '4s|^|        "host": |' /content/xmrig-6.13.1/config.json

chmod +x xmrig && ./xmrig
