#!/bin/bash

# shellcheck source=./.env
source ~/.local/bin/scripts/.env

url="https://cms.bits-hyderabad.ac.in/webservice/rest/server.php?wsfunction=message_popup_get_popup_notifications&moodlewsrestformat=json&wstoken=${CMS_TOKEN}&useridto=9560"

notifications_count=$(curl --insecure --silent -X POST "$url" | jq -r '.unreadcount')

# to get notifications I don't remember but I had to do this
XDG_RUNTIME_DIR=/run/user/$(id -u)

export XDG_RUNTIME_DIR

if ((notifications_count > 0)); then
	dunstify "CMS" "You have $notifications_count notifications" -u critical -t 0
	echo "CMS $notifications_count"
else
	echo "CMS $notifications_count"
fi
