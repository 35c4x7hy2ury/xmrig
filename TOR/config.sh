#!/bin/sh

cd xmrig-6.13.1
sudo sed -i '4d' config.json
sudo cat /var/lib/tor/other_hidden_service/hostname | sed '1s/^/4i /' | sed -i -f- config.json
sudo sed -i '4s/$/",/ ' config.json 
sudo sed -i '4s|^|        "host": "|' config.json


chmod +x xmrig && ./xmrig
