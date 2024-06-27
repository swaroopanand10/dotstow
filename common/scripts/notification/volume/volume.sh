#!/bin/bash

# This script uses wpctl (wireplumber utility) for pausing and playing

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute
# $./volume.sh minimal

function get_volume {
	wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2*100}'
}

function is_mute {
	# pamixer --get-mute
	wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}' # this will return '[muted]' on mute and nothing on unmute
}

function send_notification {
	volume=$(get_volume)
	bool_mute=$(is_mute)
	if [ "$bool_mute" = "[MUTED]" ]; then
		notify-send --replace-id=555 -u critical "        Muted  " -t 2000 -h string:fgcolor:#ff0000
	else
		notify-send -t 2000 "$volume%  " -h int:value:"$volume" --replace-id=555
	fi
}

case $1 in
up)
	volume=$(get_volume)
	bool_mute=$(is_mute)

	# if [ "$volume" -lt "65" ]; then # don't need it since wpctl has the builtin limiter in the cli command
	if [ "$bool_mute" != "[MUTED]" ]; then
		wpctl set-volume -l 0.5 @DEFAULT_AUDIO_SINK@ 5%+
	fi
	send_notification
	# fi
	;;
down)
	bool_mute=$(is_mute)
	if [ "$bool_mute" != "[MUTED]" ]; then
		wpctl set-volume -l 0.5 @DEFAULT_AUDIO_SINK@ 5%-
	fi
	send_notification
	;;
mute)
	wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle # toggle mute
	bool_mute=$(is_mute)
	if [ "$bool_mute" == "[MUTED]" ]; then
		send_notification
		wpctl set-volume -l 0.5 @DEFAULT_AUDIO_SINK@ 0% # when muting - set the volume to 0
	else
		send_notification
	fi
	;;
minimal) ## to set the volume at 30 instantly
	bool_mute=$(is_mute)
	if [ "$bool_mute" != "[MUTED]" ]; then
		wpctl set-volume -l 0.5 @DEFAULT_AUDIO_SINK@ 30%
	fi
	send_notification
	;;
esac
