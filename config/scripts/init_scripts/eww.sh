mon_count=$1

bar_format="

(defwindow bar%s
    :geometry
        (geometry
            :x \"10\"
            :y \"10\"
            :height \"42px\"
            :width \"100%%\"
            :anchor \"top center\"
        )
    :monitor %s
    :exclusive \"true\"
    :wm-ignore \"false\"
    :windowtype \"dock\"
    :stacking \"fg\"
    (centerbox
        :orientation \"h\"
        :class \"bar\"
        :space-evenly false
        :spacing 10
        (box
            :class \"left\"
            :halign \"start\"
            :spacing 10
            :space-evenly false
            (network)
            (volume)
        )
        (box
            :class \"center\"
            :halign \"center\"
            :spacing 10
            :space-evenly false
            (player)
        )
        (box
            :class \"right\"
            :halign \"end\"
            :spacing 10
            :space-evenly false
			$(if [[ -f '/sys/class/power_supply/BAT1/capacity' ]]; then echo "(battery)"; fi)
            (date)
            (time)
        )
    )
)

"

pkill eww
rm $HOME/.config/eww/eww.yuck
cp $HOME/.config/eww/eww.yuck.template $HOME/.config/eww/eww.yuck

for ((i=0; i<mon_count; i++))
do
    echo $(printf "$bar_format" "$i" "$i") >> "$HOME/.config/eww/eww.yuck"
done

eww daemon

for ((i=0; i<mon_count; i++))
do
    eww open bar$i
done
