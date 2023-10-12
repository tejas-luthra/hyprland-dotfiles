status=$(cat /sys/class/power_supply/BAT1/status)
energy_now=$(cat /sys/class/power_supply/BAT1/energy_now)
energy_full=$(cat /sys/class/power_supply/BAT1/energy_full)
percent=$(awk "BEGIN { print(int(($energy_now/$energy_full)*100)) }")

case $status in
    "Full")
        echo "󱟢 $percent%"
        ;;
    "Charging")
        echo "󰂄 $percent%"
        ;;
    "Discharging")
        echo "󱟤 $percent%"
        ;;
    "Not charging")
        echo "󰁿 $percent%"
        ;;
esac
