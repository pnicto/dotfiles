#!/usr/bin/env bash

declare -A dict
arr=()

dict[3000]=3000
dict[5173]=5173
dict[8080]=8080
dict[9000]=9000
dict[aw]=5600
dict[dc]=5700
dict[komga]=8443
dict[syncthing]=8384

for key in "${!dict[@]}"; do
	arr+=("${key}")
done

selected=$(echo "${arr[@]}" | sed 's/\s/\n/g' | rofi -dmenu -config ~/.config/rofi/arc_dark_transparent_colors.rasi)

if [[ "$selected" != "" ]]; then
	if [[ "${dict[$selected]}" != "" ]]; then
		xdg-open "http://localhost:${dict[$selected]}/"
	else
		xdg-open "http://localhost:$selected/"
	fi
fi
