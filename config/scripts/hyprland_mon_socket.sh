#!/bin/sh

echo 0 > /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor
echo $(hyprctl monitors | head -n 1 | cut -d ' ' -f 2) > /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor_2


function handle {
	if [[ ${1:0:10} == "focusedmon" ]]; then
		new="${1:12}"
		len=${#new}
		new="${new::length-3}"
		echo $new > /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor_2
		monitor_response=$(hyprctl monitors | grep "r $new")
		len2=${#monitor_response}
		mon_id="${monitor_response:length-3}"
		mon_id="${mon_id::1}"
		echo $mon_id > /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor
	elif [[ ${1:0:12} == "monitoradded" ]]; then
		$HOME/.config/scripts/multimon/init.sh
	fi
}

function handle {
	case $1 in
		focusedmon*)
			new="${1:12}"
			len=${#new}
			new="${new::length-3}"
			echo $new > /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor_2
			monitor_response=$(hyprctl monitors | grep "r $new")
			len2=${#monitor_response}
			mon_id="${monitor_response:length-3}"
			mon_id="${mon_id::1}"
			echo $mon_id > /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor
			;;
		monitoradded*)
			$HOME/.config/scripts/multimon/init.sh
			;;
	esac
}

socat -t 86400 -U - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | while read -r line; do handle "$line"; done
