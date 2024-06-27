#!/usr/bin/env bash

# You can call this script like this:
# $ ./brightnessControl.sh up
# $ ./brightnessControl.sh down

function get_brightness {
	brightnessctl | grep 'Current brightness' | awk '{print $4}' | sed -e 's/%//' -e 's/(//' -e 's/)//'
}

function send_notification {
	brightness=$(get_brightness)
	notify-send -t 2000 "$brightness%" -h int:value:"$brightness" --replace-id=555
}

case $1 in
up)
	# increase the backlight by 5%
	brightnessctl set 5%+
	send_notification
	;;
down)
	# decrease the backlight by 5%
	brightnessctl set 5%-
	send_notification
	;;
esac
