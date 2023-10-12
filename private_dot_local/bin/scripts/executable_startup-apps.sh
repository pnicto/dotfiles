#!/usr/bin/bash

obsidian &

qbittorrent &

komga --komga.config-dir="$HOME/.config/komga" --server.port=8443 &

airdcppd &

sleep 5 && aw-at &

discord --start-minimized &

imwheel -d
