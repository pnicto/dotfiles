#!/usr/bin/bash

# shellcheck source=./.env
source ~/.local/bin/scripts/.env

curl 'http://172.16.0.30:8090/login.xml' \
	-H 'Accept: */*' \
	-H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8' \
	-H 'Connection: keep-alive' \
	-H 'Content-Type: application/x-www-form-urlencoded' \
	-H 'DNT: 1' \
	-H 'Origin: http://172.16.0.30:8090' \
	-H 'Referer: http://172.16.0.30:8090/httpclient.html' \
	-H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0' \
	--data-raw "mode=191&username=$SOPHOS_USER&password=$SOPHOS_PASSWORD&a=1701656918323&producttype=0" \
	--compressed \
	--insecure &

obsidian &

qbittorrent &

komga --komga.config-dir="$HOME/.config/komga" --server.port=8443 &

thunderbird --headless &

airdcppd &

sleep 5 && aw-at &

discord --start-minimized &

imwheel -d
