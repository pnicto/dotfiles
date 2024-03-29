#!/bin/bash

# shellcheck source=./.env
source ~/.local/bin/scripts/.env

url="https://cms.bits-hyderabad.ac.in/lib/ajax/service.php?sesskey=${CMS_SESS_KEY}&info=message_popup_get_popup_notifications"

notifications_count=$(
	curl --insecure --silent "$url" \
		--data-raw '[{"index":0,"methodname":"message_popup_get_popup_notifications","args":{"limit":20,"offset":0,"useridto":9560}}]' \
		-H "cookie: MoodleSession=${CMS_COOKIE};" |
		jq -r '.[].data.unreadcount'
)

# to get notifications I don't remember but I had to do this
XDG_RUNTIME_DIR=/run/user/$(id -u)

export XDG_RUNTIME_DIR

if ((notifications_count > 0)); then
	dunstify "CMS" "You have $notifications_count notifications" -u critical -t 0
	echo "CMS $notifications_count"
else
	echo "CMS $notifications_count"
fi
