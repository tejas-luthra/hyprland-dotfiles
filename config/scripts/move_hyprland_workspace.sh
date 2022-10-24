current_mon=$(cat /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor)
current_mon_plus=$(($current_mon+1))
hyprctl dispatch movetoworkspace $current_mon_plus$1
