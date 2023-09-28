#!/bin/bash

hour=$(date '+%H')
minute=$(date '+%M')
clock=""

if (( $minute > 30 )); then
	hour_test=$(($hour+1))
	if (( $hour_test > 23 )); then
		hour_test=0
	fi
else
	hour_test=$hour
fi

printf -v hour_test "%02d" $hour_test

if [[ $hour_test == "00" ]] || [[ $hour_test == "12" ]]; then
	clock="󱑖"
elif [[ $hour_test == "01" ]] || [[ $hour_test == "13" ]]; then
	clock="󱑋"
elif [[ $hour_test == "02" ]] || [[ $hour_test == "14" ]]; then
	clock="󱑌"
elif [[ $hour_test == "03" ]] || [[ $hour_test == "15" ]]; then
	clock="󱑍"
elif [[ $hour_test == "04" ]] || [[ $hour_test == "16" ]]; then
	clock="󱑎"
elif [[ $hour_test == "05" ]] || [[ $hour_test == "17" ]]; then
	clock="󱑏"
elif [[ $hour_test == "06" ]] || [[ $hour_test == "18" ]]; then
	clock="󱑐"
elif [[ $hour_test == "07" ]] || [[ $hour_test == "19" ]]; then
	clock="󱑑"
elif [[ $hour_test == "08" ]] || [[ $hour_test == "20" ]]; then
	clock="󱑒"
elif [[ $hour_test == "09" ]] || [[ $hour_test == "21" ]]; then
	clock="󱑓"
elif [[ $hour_test == "10" ]] || [[ $hour_test == "22" ]]; then
	clock="󱑔"
elif [[ $hour_test == "11" ]] || [[ $hour_test == "23" ]]; then
	clock="󱑕"
else
	clock="NO"
fi

echo "$clock $hour:$minute"
