output=$(amixer sget Master | grep 'Front Left:')
ismuted=$(echo $output | awk -F ' ' '{print $6}')
volume=$(echo $output | awk -F'[][]' '{print $2}')

if [[ $ismuted == "[on]" ]]; then
	toshow="󰕾 "$volume
else
	toshow=" "$volume
fi

echo $toshow