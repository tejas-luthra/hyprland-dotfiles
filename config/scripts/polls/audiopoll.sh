playerinput=$(playerctl metadata --format '{{xesam:title}} // {{xesam:artist}}')

info=$(~/.config/scripts/stringshorten.sh "$playerinput" 70)

if [[ $info != "" ]]; then
	echo $info
	eww update show_player=true
else
	echo ""
	eww update show_player=false
fi
