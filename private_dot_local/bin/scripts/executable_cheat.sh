#!/bin/bash

languages=$(echo "golang c cpp typescript python" | tr " " "\n")
core_utils=$(echo "find xargs sed awk jq" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read query

if echo "$languages" | grep -qs $selected; then
	curl -s cht.sh/$selected/$(echo "$query" | tr " " "+") | less
else
	curl -s cht.sh/$selected~$query | less
fi
