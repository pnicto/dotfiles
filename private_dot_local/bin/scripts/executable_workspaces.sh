#!/usr/bin/bash

json_file=~/.local/bin/scripts/sessions.json

sessions=$(jq -r '.sessions | keys[]' "$json_file")

selected_session=$(echo "$sessions" | rofi -dmenu -p "session" -no-custom -config ~/.config/rofi/arc_dark_transparent_colors.rasi)

commands=$(jq -r ".sessions[\"$selected_session\"][]" "$json_file")

for action in "$commands"; do
	eval "$action" &
done
