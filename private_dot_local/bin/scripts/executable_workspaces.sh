#!/usr/bin/bash

sessions=$(jq -r '.sessions | keys[]' sessions.json)

selected_session=$(echo "$sessions" | rofi -dmenu -p "session" -no-custom -config ~/.config/rofi/arc_dark_transparent_colors.rasi)

commands=$(jq -r ".sessions[\"$selected_session\"][]" sessions.json)

for action in "$commands"; do
	eval "$action" &
done
